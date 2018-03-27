//Formulas del modulo 1
//@ sourceURL=/formulasK.js
//
//Generales
function get_Pres(pres, E, unie, unis){
    //Para convertir PSIG en PSIA,  sumarle a la primera 14,7 (la presion atmosferica)
    var presAt = localAtmosphericPressure_Form(E);
    var presS = null; 
    
    if(unis === unie){
        return pres;
    }
    
    if(unie === "psig"){
        if(unis === "psia"){
            presS = parseFloat(pres)+ parseFloat(presAt);
        }
    }else if(unie === "psia"){
        if(unis === "psig"){
            presS = parseFloat(pres) - parseFloat(presAt);
        }
    }
    return presS;    
}

function localAtmosphericPressure_Form(E){
    
    var res = (14.54)*((55096-E+361)/(55096+E-361));
    return  res.toFixed(1);
}

function getZ(tem, pres, G, uniP, E){
    
    //Z1 = getZ(T1, P1, GasG, "psia", elev); //Z succiòn calculado
    
    var presPsig = get_Pres(pres, E, uniP, "psia"); //convertir a psia
    //var Z = (1)/(1+((3.44*(Math.pow(10,5)*presPsig)*Math.pow(10,1.785*G))/(Math.pow(tem, 3.825))));
    var Z = (1)/(1+((3.444*(Math.pow(10,5)*presPsig)*Math.pow(10,1.785*G))/(Math.pow(tem, 3.825))));
    
    return Z;
}

function get_Rc(k){
    return Math.pow((2/(k+1)), (k/(k-1)));
}

function is_Subsonico(p1, p2, rc){
    
    if(p2 > p1 * rc){
        return true; //Es subsonico
    }
    
    return false;
    
}

function get_Time(value, unie, unis){
    if(unis === unie){
        return value;
    }
    
    if(unis === "hr"){     //cem a in 
        if(unie === "min"){
            return value / 60;
        }else if(unie === "seg"){
            return value / 3600;
        }
    }else if(unis === "min"){   //in a cm
        if(unie === "seg"){
            return value / 60;
        }else if(unie === "hr"){
            return value * 60;
        }
    }else if(unis === "seg"){
         if(unie === "min"){
            return value * 60;
        }else if(unie === "hr"){
            return value * 3600;
        }
    }
}

function get_Flujo(value, unie, unis){
    
    //alert(value);
    //alert("De " + unie + " a " + unis);
    
    if(unis === unie){
        return value;
    }
     
    if(unie === "SCFH"){     //cem a in 
        if(unis === "MSCFH"){
            return value / Math.pow(10,3);
        }else if(unis === "MMSCFH"){
            return value / Math.pow(10,6);
        }else if(unis === "SCFD"){
            return value * 24;
        }else if(unis === "MSCFD"){
            return get_Flujo(value, "SCFH", "MSCFH")/24;
        }else if(unis === "MMSCFD"){
            return value * 24 / Math.pow(10,6);
        }
    }else if(unie === "MSCFH"){   //in a cm
        if(unis === "SCFH"){
            return value * Math.pow(10,3);
        }else if(unis === "MMSCFH"){
            return value / Math.pow(10,3);
        }else if(unis === "SCFD"){
            return get_Flujo(value, "MSCFH", "SCFH")*24;
        }else if(unis === "MSCFD"){
            return value * 24;
        }else if(unis === "MMSCFD"){
            return get_Flujo(value, "MSCFH", "MMSCFH")*24;
        }
    }else if(unie === "MMSCFH"){
         if(unis === "SCFH"){
            return value * Math.pow(10,6);
        }else if(unis === "MSCFH"){
            return value / Math.pow(10,3);
        }else if(unis === "SCFD"){
            //return get_Flujo(value, "MMSCFH", "MMSCFD") *  Math.pow(10,6);
            return value * Math.pow(10,6) * 24;
        }else if(unis === "MSCFD"){
            //return get_Flujo(value, "MMSCFH", "MSCFH")/24;
            return value * Math.pow(10,3) * 24;
        }else if(unis === "MMSCFD"){
            return value * 24;
        }
    }else if(unie === "SCFD"){   //in a cm
        if(unis === "MSCFD"){
            return value / Math.pow(10,3);
        }else if(unis === "MMSCFD"){
            return value / Math.pow(10,6);
        }else if(unis === "SCFH"){
            return value * 24;
        }else if(unis === "MSCFH"){
            return get_Flujo(value, "SCFD", "MSCFD")*24;
        }else if(unis === "MMSCFH"){
            return get_Flujo(value, "SCFD", "MMSCFD") * Math.pow(10,6);
        }
    }else if(unie === "MSCFD"){
         if(unis === "SCFD"){
            return value * Math.pow(10,3);
        }else if(unis === "MMSCFD"){
            return value / Math.pow(10,3);
        }else if(unis === "SCFH"){
            return get_Flujo(value, "MSCFD", "MSCFH") * Math.pow(10,3);
        }else if(unis === "MSCFH"){
            return value * 24;
        }else if(unis === "MMSCFH"){
            return get_Flujo(value, "MSCFD", "MMSCFD") * 24;
        }
    }else if(unie === "MMSCFD"){
         if(unis === "SCFD"){
            return value * Math.pow(10,6);
        }else if(unis === "MSCFD"){
            return value * Math.pow(10,3);
        }else if(unis === "SCFH"){
            return get_Flujo(value, "MMSCFD", "MMSCFH") * Math.pow(10,6);
        }else if(unis === "MSCFH"){
            return get_Flujo(value, "MMSCFD", "MMSCFH") * Math.pow(10,3);
        }else if(unis === "MMSCFH"){
            return value * 24;
        }
    }
    
    return null;
}

function get_Long(long, unie, unis){
    
    if(unis === unie){
        return long;
    }
     
    if(unis === "in"){     //cem a in 
        if(unie === "cm"){
            return long * 0.39370;
        }else if(unie === "ft"){
            return long * 12;
        }else if(unie === "mt"){
            return long * 39.3701;
        }else if(unie === "kl"){
            return long * 39370.1;
        }else if(unie === "mil"){
            return long * 63360;
        }else if(unie === "mm"){
            return long * 0.039370;
        }
    }else if(unis === "cm"){   //in a cm
        if(unie === "in"){
            return long/0.39370;
        }else if(unie === "ft"){
            return long * 30.48;
        }else if(unie === "mt"){
            return long * 100;
        }else if(unie === "kl"){
            return long * 100000;
        }else if(unie === "mil"){
            return long / 0.0000062137;
        }else if(unie === "mm"){
            return long / 10;
        }
    }else if(unis === "ft"){
        if(unie === "in"){
            return long/12;
        }else if(unie === "cm"){
            return long/30.48;
        }else if(unie === "mt"){
            return long * 3.28084;
        }else if(unie === "kl"){
            return long * 3280.84;
        }else if(unie === "mil"){
            return long * 5280;
        }else if(unie === "mm"){
            return long *  0.0032808;
        }
    }else if(unis === "mt"){
        if(unie === "in"){
            return long / 39.3701;
        }else if(unie === "ft"){
            return long/3.2808;
        }else if(unie === "cm"){
            return long * 0.01;
        }else if(unie === "kl"){
            return long * 1000;
        }else if(unie === "mil"){
            return long / 0.00062137;
        }else if(unie === "mm"){
            return long / 1000;
        }
    }else if(unis === "kl"){
        if(unie === "in"){
            return long/39370;
        }else if(unie === "ft"){
            return long/3280.8;
        }else if(unie === "cm"){
            return long * 0.00001;
        }else if(unie === "mt"){
            return long * 0.001;
        }else if(unie === "mil"){
            return long / 0.62137;
        }else if(unie === "mm"){
            return long / 1000000;
        }
    }else if(unis === "mil"){
        if(unie === "in"){
            return long * 0.000015783;
        }else if(unie === "ft"){
            return long * 0.00018939;
        }else if(unie === "cm"){
            return long * 0.0000062137;
        }else if(unie === "mt"){
            return long *  0.00062137;
        }else if(unie === "kl"){
            return long * 0.62137;
        }else if(unie === "mm"){
            return long * 0.00000062137;
        }
    }else if(unis === "mm"){
        if(unie === "in"){
            return long / 0.039370;
        }else if(unie === "ft"){
            return long / 0.0032808;
        }else if(unie === "cm"){
            return long / 0.1;
        }else if(unie === "mt"){
            return long / 0.001;
        }else if(unie === "kl"){
            return long / 0.000001;
        }else if(unie === "mil"){
            return long / 0.00000062137;
        }
    }
    
    return null;
}

function get_Long_Cuadrada(long, unie, unis){
    
    if(unis === unie){
        return long;
    }
     
    if(unis === "in"){     //cem a in 
        if(unie === "cm"){
            return long / (Math.pow(2.24, 2));
        }else if(unie === "ft"){
            return long * 144;
        }
    }else if(unis === "cm"){   //in a cm
        if(unie === "in"){
            return long / 0.155;
        }else if(unie === "ft"){
            return long / 0.0010764;
        }
    }else if(unis === "ft"){
        if(unie === "in"){
            return long * 0.0069444;
        }else if(unie === "cm"){
            return long * 0.0010764;
        }
    }
    
    return null;
}

function get_Long_Inv(long, unie, unis){
    
    if(unis === unie){
        return long;
    }
     
    if(unis === "cm"){     
        if(unie === "in"){
            return long / 2.5399;
        }
    }else if(unis === "ft"){
        if(unie === "mt"){
            return long / 3.28084;
        }
    }
    return null;
}

function get_Temp(temp, unie, unis){
    
    if(unie === unis){
        return temp;
    }
     
    if(unis === "R"){     //A ºR 
        if(unie === "F"){   
            return temp + 460;
        }else if (unie === "C"){
            return temp * 1.8 + 491.67;
        }else if(unie === "R"){
            return temp;
        }
    }else if(unis === "F"){    //A ºF
        if(unie === "F"){
            return temp;
        }else if (unie === "C"){
            return temp * (9/5) + 32; //de C a F
        }else if(unie === "R"){ //de R a F
            return temp - 460;
        }
        
    }else if(unis === "C"){    //A ºC
        if(unie === "F"){//de F a C
            return (temp - 32)* (5/9);
        }else if (unie === "C"){
            return temp;
        }else if(unie === "R"){ ////de R a C
            return (temp-491.67) / 1.8;
        }
    }
    
    
    return null;
}

function puntos(num, dec) {
    //alert(num+" "+dec);
    if (dec === 0) {
        return num.toLocaleString();
    } else {
        if (dec == 1) {
            //  alert(num.toLocaleString('de-DE', { style: 'decimal', decimal: '1' }));
            return num.toLocaleString('de-DE', {style: 'decimal', decimal: '1'});
        } else {
            return num.toLocaleString('de-DE', {style: 'decimal', decimal: '3'});
        }

    }
}




//----------------------------------Modulo 1------------------------------------------

//1.1.1 Cabeza adiabatica

function adiabaticHead_Form(vari, uni){
    
    var elev =  get_Long(parseFloat(vari.enteree_ah), uni.ee_sel_ah, "ft"); //Altura [ft]
    var Ps = get_Pres(parseFloat(vari.suctionp_ah), elev, uni.sp_sel_ah, "psia"); //Presión de succión psia
    var Pd = get_Pres(parseFloat(vari.dischargep_ah), elev, uni.dp_sel_ah, "psia"); //Presión de descarga psia
    var efad =  parseFloat(vari.adiabatice_ah); //Eficiencia adiabatica
    
    //var Tb = get_Temp(vari.basetemperature_ah, "C", "R");
    //alert(Tb);
    
    var MW = 0;
    var GasG = 0;
    var Mair = 28.96443;    //Mair=28.96443 g/mole (molecular weight of standard air - CRC, 1983).
    var G = parseFloat(vari.gst_ah);
    
    if(vari.gs_sel_ah === "9"){ //Gas Specific Gravity (Relative to Air)
        MW = G * Mair; //G = M / Mair ,  where G=gas specific gravity, M=gas molecular weight, 
        GasG = G;
    }else if(vari.gs_sel_ah === "63"){ // Gas Molecular Weight
        MW = G;
        GasG = MW / Mair; //G = M / Mair
    }
    
    var Ts = get_Temp(parseFloat(vari.suctiont_ah), uni.st_sel_ah, "R"); //Temperatura de succiòn ªR    
    
    var k = parseFloat(vari.gass_ah); //Relación de calor específico del gas
    
    var Zs;
    
    if(vari.opz_ah === "compfactors2_ah"){
        Zs = parseFloat(vari.z1s_ah); //Z1 - Factor de compresibilidad en condiciones de succión
    }else{
        Zs = getZ(Ts, Ps, GasG,  "psia", elev); //Z1 - Factor de compresibilidad en condiciones de succión:
    }
    
    var Rc = 1545.3/MW;
    var Ha = (Zs * Rc * Ts * (k/(k-1)) * (Math.pow((Pd/Ps),((k-1)/k)) -1) )/ efad; //Cabeza adiabatica [ft * lbf/lbm]:
    
    var Td = Ts * (Math.pow(Pd, (k-1)/k)/Math.pow(Ps, (k-1)/k) - 1 )/efad + Ts;  //Temperatura de descarga [°F]:
    
    var Zd = getZ(Td, Pd, GasG, "psia", elev); //Z1 - Factor de compresibilidad en condiciones de succión:
    var Zavg = (parseFloat(Zs) + parseFloat(Zd))/2; //Promedio Z1, Z2
    var Na = (Ts/(Td-Ts))*( (Zs/Zd) * Math.pow(Pd/Ps,((k-1)/k)) - 1 ); //Na (Eficiencia Isotrópica)
    
    
    var HP1 = (0.0857 * (k/(k-1)) * Ts * Zavg * (1/Na) * ( Math.pow(Pd/Ps,((k-1)/k)) - 1 ))/efad; //Adiabatic GHP per Unit of the Flowrate [HP/MMSCFD]:
    
    Td = get_Temp(Td, "R", uni.st_sel_ah).toFixed(2);
    
    var res = [Td, Zs.toFixed(4) , Ha.toFixed(4), HP1.toFixed(4), Na.toFixed(4), Zd.toFixed(4)];
    
    changeToDecimal(res);
    
    return  res;
}

//1.1.2 Adiabatic Horse Power
function adiabaticHorsePower_Form(vari, uni){
    //Validado Julio
    
    var elev =  get_Long(parseFloat(vari.enteree_ahp), uni.ee_sel_ahp, "ft"); //Altura [ft]
    var MW = 1;
    var GasG = 0;
    var Mair = 28.96443;    //Mair=28.96443 g/mole (molecular weight of standard air - CRC, 1983).
    
    var Ps = get_Pres(parseFloat(vari.suctionp_ahp), elev, uni.sp_sel_ahp, "psia"); //Presión de succión psia
    var Pd = get_Pres(parseFloat(vari.dischargep_ahp), elev, uni.dp_sel_ahp, "psia"); //Presión de descarga psia
    var Ts = get_Temp(parseFloat(vari.suctiont_ahp), uni.st_sel_ahp, "R"); //Temperatura de succión ºR
    var k = parseFloat(vari.gass_ahp); //Relación de calor específico del gas
    
    var Q = get_Flujo(parseFloat(vari.capacityr_ahp), uni.cr_sel_ahp, "MMSCFD"); //Flujo estándar
    var Nm = parseFloat(vari.mechanicale_ahp); //Eficiencia mecánica:
    var G = parseFloat(vari.gst_ahp); // Gas Molecular Weight ò  Gas Specific Gravity (Relative to Air)
    var efad = parseFloat(vari.adiabatice_ahp);
    var Pb = get_Pres(parseFloat(vari.basepressure_ahp), elev, uni.bp_sel_ahp, "psia");
    var Tb = get_Temp(parseFloat(vari.basetemperature_ahp), uni.bt_sel_ahp, "R");
    
    if(vari.gs_sel_ahp === "9"){ //Gas Specific Gravity (Relative to Air)
        MW = G * Mair; //G = M / Mair ,  where G=gas specific gravity, M=gas molecular weight, 
        GasG = G;
    }else if(vari.gs_sel_ahp === "63"){ // Gas Molecular Weight
        MW = G;
        GasG = MW / Mair; //G = M / Mair
    }
    
       
    var Zs=0, Zd=0;
    
    var Td = Ts * (Math.pow(Pd, (k-1)/k)/Math.pow(Ps, (k-1)/k) - 1 )/efad + Ts; //Temperatura de descarga
    
    if(vari.opz_ahp === "compfactors2_ahp"){
        Zs = vari.z1s_ahp; //Z succiòn dado
        Zd = vari.z2d_ahp; //Z descarga dado
    }else{
        Zs = getZ(Ts, Ps, GasG, "psia", elev); //Z succiòn calculado
        Zd =  getZ(Td, Pd, GasG, "psia", elev); //Z descarga calculado
    }
    
        
    var Rc = 1545.3/MW;
    var Ha = (Zs * Rc * Ts * (k/(k-1)) * (Math.pow((Pd/Ps),((k-1)/k))-1))/efad;  //Cabeza adiabatica [ft*lbf/lbm]:
    
    var Na = (Ts/(Td-Ts))*( (Zs/Zd) * Math.pow(Pd/Ps,((k-1)/k)) - 1 );
    var Zavg = (parseFloat(Zs) + parseFloat(Zd))/2; //Promedia Z1, Z2
    
    var HP = (0.0857 * (k/(k-1)) * Q * Ts * Zavg * (1/Na) * ( Math.pow(Pd/Ps,((k-1)/k)) - 1 ))/efad; //Potencia adiabática [HP]:
    var HP1 = (0.0857 * (k/(k-1)) * Ts * Zavg * (1/Na) * ( Math.pow(Pd/Ps,((k-1)/k)) - 1 ))/efad; //Potencia adiabatica por unidad de flujo [HP/MMSCFD]:
    
    var BHP = HP/Nm; //Potencia brake [HP]
    var Zb =  getZ(Tb, Pb, GasG, "psia", elev);
    
    var facACFM = (1000000/(24*60));
    
    
    var Qr = (facACFM * (Q / ((Ps/Pb) * (Tb/Ts) * (Zb/Zs)))).toFixed(2); // Flujo real [ACFM]
    
    Zd = parseFloat(Zd);
    Zs = parseFloat(Zs);
    
    Td = get_Temp(Td, "R", uni.st_sel_ahp).toFixed(4);
    Zavg = Zavg.toFixed(4);
    Ha = Ha.toFixed(4);
    HP1 = HP1.toFixed(4);
    HP = HP.toFixed(4);
    BHP = BHP.toFixed(4);
    Zd = Zd.toFixed(4);
    Zs = Zs.toFixed(4);
    
    
    
    var res = [Td, Zavg, Ha, HP1, HP, BHP, Qr, Zs, Zd];  
    
    changeToDecimal(res);
    return  res;
    
}

//1.1.3 Polytropic Horse Power
function polytropicHorsePower_Form(vari, uni){
    
    var elev =  get_Long(parseFloat(vari.enteree_php), uni.ee_sel_php, "ft"); //Altura [ft]:
    var MW = 1;
    var GasG = 0;
    var Mair = 28.96443;    //Mair=28.96443 g/mole (molecular weight of standard air - CRC, 1983).
    
    var P1 = get_Pres(parseFloat(vari.suctionp_php), elev, uni.sp_sel_php, "psia"); //Presión de succión:
    var P2 = get_Pres(parseFloat(vari.dischargep_php), elev, uni.dp_sel_php, "psia"); //Presión de descarga:
    var T1 = get_Temp(parseFloat(vari.suctiont_php), uni.st_sel_php, "R"); //Temperatura de succión:
    var Pb = get_Pres(parseFloat(vari.basepressure_php), elev, uni.bp_sel_php, "psia"); //Presión base:
    var Tb = get_Temp(parseFloat(vari.basetemperature_php), uni.bt_sel_php, "R"); //Temperatura base
    
    var k = parseFloat(vari.gass_php); //Relación de calor específico del gas:
    var Q = get_Flujo(parseFloat(vari.capacityr_php), uni.cr_sel_php, "MMSCFD");  //Capacity/Required Tasa de flujo [MMSCFD]:
    var Nm = parseFloat(vari.mechanicale_php); // Mechanical Efficiency:
    var Np = parseFloat(vari.polytropice_php); //Plytropic Efficience:
    var G = parseFloat(vari.gst_php);      // Gas Molecular Weight ò  Gas Specific Gravity (Relative to Air)
    var efad = parseFloat(vari.adiabatice_php); //Eficiencia adiabatica
    
    if(vari.gs_sel_php === "9"){ //Gas Specific Gravity (Relative to Air)
        MW = G * Mair; //G = M / Mair ,  where G=gas specific gravity, M=gas molecular weight, 
        GasG = G;
    }else if(vari.gs_sel_php === "63"){ // Gas Molecular Weight
        MW = G;
        GasG = MW / Mair; //G = M / Mair
    }
    
    var Z1, Z2;
    
    var T2 = (T1 * Math.pow(P1, (1-k)/k))/Math.pow(P2, (1-k)/k); //Temperatura de descarga 
    if(vari.opz_php === "compfactors2_php"){
        Z1 = vari.z1s_php; //Z succiòn dado
        Z2 = vari.z2d_php; //Z descarga dado
    }else{ 
        Z1 = getZ(T1, P1, GasG, "psia", elev); //Z succiòn calculado
        Z2 =  getZ(T2, P2, GasG, "psia", elev); //Z descarga calculado
    }
    
    var n = (Np * k)/(Np*k-k+1);
    
    var Rc = 1545.3/MW;
    var Ha = Z1 * Rc * T1 * (k/(k-1)) * (Math.pow((P2/P1),((k-1)/k))-1); //Cabeza adiabatica [ft*lbf/lbm]:
    
    var Zavg = (parseFloat(Z1) + parseFloat(Z2))/2;
    var HP = (0.0857 * ((n)/(n-1)) * Q * T1 * Zavg * (1/Np) * ( Math.pow(P2/P1,((n-1)/n)) - 1 ))/efad; // Potencia adiabática [HP]:
    var HP1 = HP/Q; //Potencia adiabatica por unidad de flujo [HP/MMSCFD]:
    var BHP = HP/Nm; //Potencia brake [HP]
    
    var Zb = getZ(Tb, Pb, GasG, "psia", elev); //Z base
    
    var facACFM = (1000000/(24*60));    
    var ACFM = (Q*(((Pb/(Tb))*((T1)/(P1))*(Z1/Zb)))) * facACFM;
    T2 = get_Temp(T2, "R", uni.st_sel_php).toFixed(2);
    
    Z1 = parseFloat(Z1);
    Z2 = parseFloat(Z2);
    
    var res = [n.toFixed(4), T2, Zavg.toFixed(4), Ha.toFixed(4), HP.toFixed(4), HP1.toFixed(4), BHP.toFixed(2), ACFM.toFixed(4), Z1.toFixed(4), Z2.toFixed(4)];    
    changeToDecimal(res);
    return  res;
    
}

//1.1.4 Fan Laws
function fanLaws_Form(vari, uni){
    
    //Validado Formula con Excel Julio
    //Validado BD
    
    var Q1 = get_Flujo(parseFloat(vari.initialflowrate_fl), uni.if_sel_fl, "MMSCFD"); //Tasa de flujo inicial            
    var H1 = parseFloat(vari.initialcompressorhead_fl); //Cabeza inicial [ft * lbf/lbm]:
    var BHP1 = parseFloat(vari.initialshafthorsepower_fl); // Potencia inicial brake [HP]:
    var N1 = parseFloat(vari.initialimpellerrotational_fl); //Velocidad inicial [rpm]:
    var N2 = parseFloat(vari.finalimpellerrotational_fl); //Velocidad final [rpm]:
    
    var Q2 = Q1/(N1/N2); //Flujo final [MMSCFD]
    var H2 = (H1/Math.pow(N1/N2, 2)).toFixed(2); //Cabeza final [ft * lbf/lbm]
    var BHP2 = (BHP1/Math.pow(N1/N2, 3)).toFixed(2); //Potencia final brake [HP]
    
    Q2 = get_Flujo(Q2, "MMSCFD", uni.if_sel_fl).toFixed(2);
    var res = [Q2, H2, BHP2];   
    changeToDecimal(res);
    
    return  res;
}

//1.1.5 Capacity Horse Power
function capacityHorsePower_Form(vari, uni){
    
    //Validado Excel Julio
    //Valido BD
    
    var elev =  get_Long(parseFloat(vari.enteree_chp), uni.ee_sel_chp, "ft"); //Altura [ft]
    var Pb = get_Pres(parseFloat(vari.basepressure_chp), elev, uni.bp_sel_chp, "psia"); //Presión base:
    var Ps = get_Pres(parseFloat(vari.suctionp_chp), elev, uni.sp_sel_chp, "psia"); //Presión succiòn:
    var Pd = get_Pres(parseFloat(vari.dischargep_chp), elev, uni.dp_sel_chp, "psia"); //Presión descarga:
    
    var Tb = get_Temp(parseFloat(vari.basetemperature_chp), uni.bt_sel_chp, "R");  //Temperatura base
    var T1 = get_Temp(parseFloat(vari.suctiont_chp), uni.st_sel_chp, "R"); //Temperatura de succión:
    

    var D = get_Long(parseFloat(vari.borec_chp), uni.bc_sel_chp, "in"); //Bore/Cylinder Inside Diameter:
    var s = get_Long(parseFloat(vari.stroket_chp), uni.str_sel_chp, "in"); //Stroke/Travel Length of Piston:
    var n = parseFloat(vari.rotationals_chp); //Rotational Speed
    var d = get_Long(parseFloat(vari.pistonrd_chp), uni.prd_sel_chp, "in"); //Piston Rod Diameter
    
    var C = parseFloat(vari.cylindercl_chp);   //Cylider Clearance
    var G = parseFloat(vari.gst_chp); /// Gas Molecular Weight ò  Gas Specific Gravity (Relative to Air)
    var k = parseFloat(vari.gass_chp); //Relación de calor específico del gas
    var Nm = parseFloat(vari.mechanicale_chp); //Compresor Mechanical Efficiency
    var opP = vari.pact_sel_chp.trim();
    
    var A = parseFloat(vari.effect_chp); //Effect of leakage, Losses, etc [%]
    var Lw = parseFloat(vari.effect2_chp); //Effect due to Lack of Lubrication [%]
    
    var Z1, Z2;
    var T2 = T1 * (Math.pow(Pd, (k-1)/k)/Math.pow(Ps, (k-1)/k) - 1 )/Nm + T1; //Temperatura de descarga [°F]:
    
    
    if(vari.opz_chp === "compfactors2_chp"){
        Z1 = vari.z1s_chp; //Z1 - Compressibility Factor at Suction:
        Z2 = vari.z2d_chp; //Z2 - Compressibility Factor at Discharge:
    }else{
        Z1 = getZ(T1, Ps, G, "psia", elev); //Z1 - Compressibility Factor at Suction:
        Z2 =  getZ(T2, Pd, G, "psia", elev); //Z2 - Compressibility Factor at Discharge:
    }
    
   
    
    var Zb =  getZ(Tb, Pb, G, "psia", elev);
    
    var PD; 
    
    if(opP === "1"){ //Piston Acting Compression Type
        PD = ((s*n*Math.PI*Math.pow(D, 2))/(4*1728));    //Piston Displacement [ft3/min]:     
    }else if(opP === "2"){
        PD = (s*n*Math.PI*(Math.pow(D, 2)-Math.pow(d, 2)))/(1728*4);   //Piston Displacement [ft3/min]:     
    }else if(opP === "3"){
        PD = (s*n*Math.PI*(2*Math.pow(D, 2)-Math.pow(d, 2)))/(1728*4);  //Piston Displacement [ft3/min]:     
    }else if(opP === "4"){ 
        PD = (2*s*n*Math.PI*(Math.pow(D, 2)-Math.pow(d, 2)))/(1728*4);  //Piston Displacement [ft3/min]:     
    }
    
    
    var r = Pd/Ps;    
    var VE = 100 - A - Lw - r - C * ((Z1/Z2)*(Math.pow(r, (1/k)))-1); //Volumetric Efficiency
     
    var Qact = PD * (VE/100); //Cylinder Capacity [ft3/min]
    var Qs = Qact * (Ps/Pb) * (Tb/T1) * (Zb/Z1) * 60 * 24 / 1000000; //Equivalent Capacity [MMSCFD]:
    
    var HP = 100/33 * Ps * (Qs/Nm) * ((k-1)/k) * (Math.pow(r, (k-1)/k) - 1); //Cylinder Brake Horse Power [HP]
    
    T2 = get_Temp(T2, "R", uni.st_sel_chp);
    Z1 = parseFloat(Z1);
    Z2 = parseFloat(Z2);
   
    var res = [PD.toFixed(4), T2.toFixed(4), Z1.toFixed(4), Z2.toFixed(4), VE.toFixed(4), Qact.toFixed(4), Qs.toFixed(4), HP.toFixed(1)];   
    changeToDecimal(res);
    
    return  res;
}

//1.1.6 Diameter Gas Velocity
function diameterGV_Form(vari, uni){
    
    //Validado formula con Excel Julio
    //Validado BD
    
    var elev = get_Long(parseFloat(vari.enteree_dgv), uni.al_sel_dgv, "ft"); //Altura [ft]
    var Q = get_Flujo(parseFloat(vari.flowr_dgv), uni.fr_sel_dgv, "MMSCFD");
    var Pb = get_Pres(parseFloat(vari.basepressure_dgv), elev, uni.bp_sel_dgv, "psia"); //Presión base:
    var Pf = get_Pres(parseFloat(vari.flowingp_dgv), elev, uni.fp_sel_dgv, "psia"); //Presión de flujo:
    var Tf = get_Temp(parseFloat(vari.flowingt_dgv), uni.ft_sel_dgv, "R"); //Temperatura de flujo:
    var Tb = get_Temp(parseFloat(vari.basetemperature_dgv), uni.bt_sel_dgv, "R"); //Temperatura base:
    var G  = vari.gst_dgv;
    var v; //Velocidad del gas [ft/min]
    var D; //Diametro interno de la tuberia [in]
        
    var MW = 1;
    var GasG = 0;
    var Mair = 28.96443;
    
    if(vari.gs_sel_dgv === "9"){ //Gas Specific Gravity (Relative to Air)
        MW = G * Mair; //G = M / Mair ,  where G=gas specific gravity, M=gas molecular weight, 
        GasG = G;
    }else if(vari.gs_sel_dgv === "63"){ // Gas Molecular Weight
        MW = G;
        GasG = MW / Mair; //G = M / Mair
    }
    
    var presPsig = get_Pres(parseFloat(vari.flowingp_dgv), elev, uni.fp_sel_dgv, "psig"); //Presion en psig  
    
    var Z = Math.pow((1+((presPsig*344400* Math.pow(10,(1.78* GasG)))/(Math.pow(Tf,3.825)))),(-1));
   //             (1+)
    if(vari.tipo_sel_dgv == "2"){ //Se calcula el diametro, se pide la velocidad
        v = parseFloat(vari.gasv_dgv);
        res = Math.pow((127.3* Math.pow(10,3) * Q * Pb * Tf * Z)/(v * Pf * Tb), 0.5);  //   Diametro interno de la tuberia
    }else{ //Se calcula la velocidad, se pide el diametro
        D = get_Long(parseFloat(vari.pipeinternald_dgv), uni.pid_sel_dgv, "in"); 
        res =(127.3*Math.pow(10,3)*Q*Pb*Tf*Z) / ((Math.pow(D,2) * Pf * Tb)); //Velocidad del gas [ft/min]:
    }
    
    var res = [res.toFixed(4), Z.toFixed(4)];  
    changeToDecimal(res);
    
    return  res;
}
//7844653
//Radicado: 7291
//7529
//
//
//1.1.7 Formulas Martin

//1.3 form 1 Regulator and Station Piping Sizing
function regulatorSizing1_Form(vari, uni){
    
    //Validado Hoja de Excel
    //Pendiente conversion de Flujo
    
    var elev = get_Long(parseFloat(vari.enteree_rs), uni.ee_sel_rs, "ft"); //Altura [ft]
    var Gf = parseFloat(vari.gs_rs); //Gravedad especifica del gas
    var p1 = get_Pres(parseFloat(vari.p1_rs), elev, uni.p1_sel_rs, "psia"); //P1- Presión de entrada:
    var p2 = get_Pres(parseFloat(vari.p2_rs), elev, uni.p2_sel_rs, "psia"); //P2- Presión de salida:
 
    
    var Q =  get_Flujo(parseFloat(vari.flowrate_rs), uni.fr_sel_rs, "MSCFH"); //Q - Flujo:
    var T = get_Temp(parseFloat(vari.flowingg_rs), uni.fg_sel_rs, "R"); //Temperatura de flujo del gas:
    var C1 = parseFloat(vari.c1_rs); //C1- Coeficiente de Recuperación de la Válvula:
    var Ca = parseFloat(vari.capacityr_rs); //Factor de Capacidad (80% Recomendado)
    var k = parseFloat(vari.k_rs); //Relación de calor especifico:
    
    
    var Rc = get_Rc(k);
    
    var Cgc, Cgr, exp1, FlowC;
    if(is_Subsonico(p1, p2, Rc)){
        exp1 = Math.pow(520/(Gf*T), 0.5);
        Cgc = (Q*1000)/((p1)*exp1*Math.sin(((3417/C1)*Math.pow((p1-p2)/(p1),0.5))*Math.PI/180)); //Cg- Coeficiente de Dimensionamiento- Calculado:
        Cgr = Cgc/(Ca/100); //Cgr-Coeficiente de Dimensionamiento- Recomendado:
        FlowC = 1; //Flow Conditions:
    }else{
        exp1 = Math.pow(520/(Gf*T), 0.5);
        Cgc = (Q*1000)/((p1)*exp1); //Cg- Coeficiente de Dimensionamiento- Calculado:
        Cgr = Cgc/(Ca/100); //Cgr-Coeficiente de Dimensionamiento- Recomendado:
        FlowC = 2;//"Sonic Flow"; //Flow Conditions:
    }   
    
    var res = [Cgc.toFixed(2), Cgr.toFixed(2), FlowC];
    changeToDecimal(res);
    
    return res;
}

//1.3 form 2 Regulator and Station Piping Sizing
function regulatorSizing2_Form(vari, uni){
    //Validado Hoja de Excel
    //Pendiente conversion de Flujo
    
    var elev = get_Long(parseFloat(vari.enteree_rs), uni.ee_sel_rs, "ft"); //Altura [ft]
    var P1 = get_Pres(parseFloat(vari.p1opu_rs), elev, uni.p1opu_sel_rs, "psia"); //P1- Presión de Operación-Aguas Arriba
    var Qb = get_Flujo(parseFloat(vari.flowrateu_rs), uni.fru_sel_rs, "MSCFH"); //Q - Flujo
    var u1 = parseFloat(vari.ag_rs);     //V-Velocidad del Gas Asumida [ft/sec]
    var Tf = parseFloat(vari.tempu_rs); // T-Factor de Temperatura
    var T = get_Temp(parseFloat(vari.flowingg_rs), uni.fg_sel_rs, "R");  //Temperatura de flujo del gas
    var syms = parseFloat(vari.smys_rs); //SMYS- Esfuerzo de Fluencia Especificado [pstemp_rsi]
    var Jf = parseFloat(vari.jfu_rs); //E- Factor de Junta Longitudinal
    var Df = parseFloat(vari.df_rs); // Factor de diseño
        
    var ID1 = Math.pow((((Qb*1000)*((14.7/P1)*(T/520))*(1/3600)/(u1))*(4/Math.PI)), (1/2)) * 12; //verificación de la formula
    
    var P1psig = get_Pres(P1, elev, "psia", "psig");
    var esp = ((P1psig * ID1) / (2 * syms))*(1 / (Df*Jf*Tf)); //Espesor de Pared Mínimo Requerido [in]
    var OD1 = (ID1+esp).toFixed(2); ///OD1- Diametro Exterior Calculado [in]:*/
    
    
    var res = [ID1.toFixed(3), esp.toFixed(3),OD1 ];
    changeToDecimal(res);
    
    return res;
}

//1.3 form 3 Regulator and Station Piping Sizing
function regulatorSizing3_Form(vari, uni){
    
    var elev = get_Long(parseFloat(vari.enteree_rs), uni.ee_sel_rs, "ft"); //Altura [ft]
    var P2 = get_Pres(parseFloat(vari.p2op_rs), elev, uni.p2op_sel_rs, "psia"); //P1- Presión de Operación-Aguas Arriba
    var Qb = get_Flujo(parseFloat(vari.flowrated_rs), uni.frd_sel_rs, "MSCFH"); //Q - Flujo 
    var T = get_Temp(parseFloat(vari.flowingg_rs), uni.fg_sel_rs, "R"); //Temperatura de flujo del gas
    var u1 = parseFloat(vari.agd_rs); //V- Velocidad del Gas Asumida [ft/sec]
    var syms = parseFloat(vari.smysd_rs); //SMYS- Esfuerzo de Fluencia Mínimo [psi]
    var Df = parseFloat(vari.df_rs); // F- Factor de Diseño
    var Jf = parseFloat(vari.jfdp_rs); // Longitudinal Joint Factor - E
    var Tf = parseFloat(vari.tempu_rs); // T-Factor de Temperatura
    
    var ID2 = Math.pow((((Qb*1000)*((14.7/P2)*(T/520))*(1/3600)/(u1))*(4/Math.PI)), (1/2)) * 12;
    
    var P2psig = get_Pres(P2, elev, "psia", "psig");
    var esp = ((P2psig * ID2) / (2 * syms))*(1 / (Df*Jf*Tf)); //Espesor de Pared Mínimo Requerido [in]
    
    var OD2 = (ID2+esp).toFixed(2); ///OD1- Diametro Exterior Calculado [in]:*/
    
    var res = [ID2.toFixed(3), esp.toFixed(3), OD2];
    changeToDecimal(res);
    
    return res;
}


//1.13 Relief Valve Sizing
function reliefValveSizing_Form(vari,uni){
    var elev =  get_Long(parseFloat(vari.enteree_rvs), uni.ee_sel_rvs, "ft"); //Altura
    
    var opso = vari.opso; //Area o flow
    var opsk = vari.opsk; //Gra esp, o peso mole
    
    var P1 = get_Pres(parseFloat(vari.relief_rvs), elev, uni.rv_sel_rvs, "psia"); //>Set de presión de la válvula de alívio
    var T = get_Temp(parseFloat(vari.gasvaporf_rvs), uni.gfv_sel_rvs, "R"); //Temperatura del gas o vapor
    var P2 = get_Pres(parseFloat(vari.gasp_rvs), elev, uni.bp_sel_rvs, "psia"); // Back pressure
    
    
    
    var Fl = parseFloat(vari.requiredf_rvs); //Flujo requerido [MSCFH]
    
    var Kd = parseFloat(vari.effectivec_rvs);  //Kd- Coeficiente de descarga efectivo
    var Kb = parseFloat(vari.capacityc_rvs); //Kb- Factor de corrección de capacidad
    var Z = parseFloat(vari.compressibilityf_rvs); //Factor de compresibilidad
    var M = parseFloat(vari.molecularws_rvs); //Peso Molecular
    var G = parseFloat(vari.specificg_rvs); // Gravedad Específica
    var k = parseFloat(vari.specifich_rvs); // Relación de calor específico
    var A = parseFloat(vari.requiredeff_rvs); //Área efectiva de descarga requerida [in2]
    var Kc = 1;
    
    var Pcf = Math.pow((2 / (k + 1)),(k / (k - 1)))* P1;  //Razón de Flujo Crítico:
    var C = 520 * Math.pow((k *    Math.pow((2 / (k + 1)), ((k + 1) / (k - 1)))  ), (0.5)); //C - Coeficiente
    
    var V; //
    var tf; //Condición de Flujo: 
    var out; //Área Efectiva de Descarga [in2]: 
    var r = P2 / P1;
    var F2 = Math.pow(((k / (k - 1)) * Math.pow(r, (2 / k)) * ((1 - Math.pow(r, ((k - 1) / k))) / (1 - r))), 0.5);
    
    if(opso == "sizingo1_rvs") //Área de descarga efectiva requerida
    { // 'Cálculo de Área'
        V =  Fl * 1000 / (60);
        
        if(opsk == "selectk2_rvs")
        {   // 'Gravedad Especifica'
            if (P2 <= Pcf){
                tf = "1";
                A = (V * Math.pow((T * Z * G),0.5)) / (1.175 * C * Kd * P1 * Kb * Kc);
            }else{
                tf = "2";
                A = (V / (864 * F2 * Kd * Kc)) * Math.pow((Z * T * G / (P1 * (P1 - P2))), 0.5);
            }
        }else{ //Peso Molecular'
            if(P2 <= Pcf)
            { 
                tf = "1";
                A = (V * Math.pow((T * Z * M), 0.5)) / (6.32 * C * Kd * P1 * Kb * Kc);
            }else{
                tf = "2";
                A = (V / (4645 * F2 * Kd * Kc)) * Math.pow((Z * T * M / (P1 * (P1 - P2))), 0.5);
            }
        }
        
        out = A;
    }
    else{  // Flujo requerido a través de la válvula 
        //'Cálculo de Flujo'
        if(opsk == "selectk2_rvs")
        {   // 'Gravedad Especifica'
            if (P2 <= Pcf){
                tf = "1";
                V = (1.175 * C * Kd * P1 * Kb * Kc * A / Math.pow((T * Z * G), 0.5)) * (60 / 1000);
            }else{
                tf = "2";
                V = (864 * F2 * Kd * Kc * A * Math.pow(((P1 * (P1 - P2)) / (Z * T * G)), 0.5)) * (60 / 1000);
            }
        }else{//Peso Molecular'
            if (P2 <= Pcf){
                tf = "1";
                V = (6.32 * C * Kd * P1 * Kb * Kc * A / Math.pow((T * Z * M), 0.5)) * (60 / 1000);
            }else{
                tf = "2";
                V = (4645 * F2 * Kd * Kc * A * Math.pow(((P1 * (P1 - P2)) / (Z * T * M)), 0.5)) * (60 / 1000);
            }
        }
        
        out = V;
    }
    
    var res = [(Pcf/P1).toFixed(3), tf, out.toFixed(3), C.toFixed(2), Z.toFixed(3)];
    changeToDecimal(res);
    
    return res;
}


//1.14 Relief Valve Reaction Force
function reliefValveReaction_Form(vari,uni){
    
    var opsk = vari.opsk_rvr;
    var elev = get_Long(parseFloat(vari.enteree_rvr), uni.ee_sel_rvr, "ft"); //Altura [ft]
    var W = parseFloat(vari.requiredf_rvr); // Flujo del gas o vapor [lbm/hr]
    var k = parseFloat(vari.specifichs_rvr); //Relación de calor específico
    var T = get_Temp(parseFloat(vari.temperatureo_rvr), uni.tempo_sel_rvr, "R"); // Temperatura en la salida
    var P = get_Pres(parseFloat(vari.staticp_rvr), elev, uni.sp_sel_rvr, "psig"); // Presión estática dentro de la salida en el punto de descarga [psig]
    var A = get_Long(parseFloat(vari.areao_rvr), uni.ao_sel_rvr, "in"); //Área de la salida en el punto de descarga [in]
    var M; // Peso molecular del gas o vapor
    var G; // Gravedad Específica
    
    var F = (W/366) * (Math.sqrt((k*T)/((k-1)*M))) + (A*P);
    
    if(opsk === "selectk2_rvr")
    {   // 'Gravedad Especifica'
        G = parseFloat(vari.specificgra_rvr);
        M = G * 28.96443;
    }else{
        M = parseFloat(vari.pesomolecular_rvr); 
        G = M / 28.96443;
    }  
    
    var Z = getZ(T, P, G, "psig", elev); //Z1 - Factor de compresibilidad en condiciones de succión:
    
    F = (W/366)* Math.pow((k*T)/((k-1)*M),0.5) + (A*P); //Fuerza de reacción en el punto de descarga [lbf]
    
    var res = [F.toFixed(2), Z.toFixed(3)];
    changeToDecimal(res);
    
    return res;

}

//1.15 Hot Tap Sizing
function hotTapSizing_Form(vari, uni){
    
    // OK Excel Julio
    
    //Obtenido de excel
    /*var elev =  parseFloat(vari.enteree_htz);
    var G = parseFloat(vari.gsg_htz);
    var Co = parseFloat(vari.orificec_htz);
    var F = parseFloat(vari.criticalf_htz);
    
    var dP = get_Pres(parseFloat(vari.pressurel_htz), elev, uni.pl_sel_htz, "psig");
    var T = get_Temp(parseFloat(vari.flowingt_htz), uni.flowt_sel_htz, "R");
    var P = get_Pres(parseFloat(vari.pressure_htz), elev, uni.pre_sel_htz, "psig");
    
    var Fr = get_Flujo(parseFloat(vari.flowrate_htz), uni.fr_sel_htz, "MSCFH");
    var r = (P-dP)/P;
    var aux = Math.pow((  ((Co/(Co-1))*  Math.pow(r,(2/Co)))  *   ((1 - Math.pow(r,(Co-1)/Co))/(1-r))   ), 1/2);
    var M = 28.964*F;
    
    var Z = getZ(T, P, G, uni.dp_sel_chp, elev); //(1/(1+(((2/3)*((Math.pow(P1, 3) - Math.pow(P1-P2, 3))/(Math.pow(P1, 2)- Math.pow(P1-P2, 2)))* 344400 * Math.pow(10, (1.785*G)))/ (Math.pow(T,3.825)))));
   
    var calOA = (((Fr*1000/60)/(4647*Co*aux))* Math.pow(((Z*M*T)/(P*dP)), 1/2)); //redondear a techo
    var branchGV = (((Fr*1000/3600)*(14.65/(P+14.7))*(T/(60+460)))/(calOA/144));
    var calTD = Math.pow((calOA*4/Math.PI), (1/2)); //redondear techo
    
    var condFlujo =  "FLUJOSÓNICO";
    
    if((P-dP)>=(P*F))
    {
        condFlujo = "FLUJO SUB-SÓNICO";
    }
    
    var res = [branchGV, calOA, calTD, Z, condFlujo];*/
    
    var elev = get_Long(parseFloat(vari.enteree_htz), uni.ee_sel_htz, "ft"); //Altura [ft]
    var P1 = get_Pres(parseFloat(vari.pressure_htz), elev, uni.pre_sel_htz, "psig"); // Presión del cabezal (psig)
    var dP = parseFloat(vari.pressurel_htz); //Delta P
    var T = get_Temp(parseFloat(vari.flowingt_htz), uni.flowt_sel_htz, "R"); //Temperatura del gas
    var Qm = get_Flujo(parseFloat(vari.flowrate_htz), uni.fr_sel_htz, "SCFH"); //Flow Rate (SCFM)
    var G = parseFloat(vari.gsg_htz); //Gas Specific Gravity
    var dC = parseFloat(vari.holec_htz); // Diámetro de la corona (in)    
    var k =  parseFloat(vari.specifich_htz); // Specific Heat Ratio
    var K = parseFloat(vari.orificec_htz); // Orifice Coefficient
    var Pb = get_Pres(parseFloat(vari.pressureb_htz), elev, uni.preb_sel_htz, "psia"); // Presión base (psig)
    var Tb = get_Temp(parseFloat(vari.baset_htz), uni.bt_sel_htz, "R"); //Temperatura base (R)
    
    var P2 = P1 - dP; //Presión en la derivación
    
    var Z;
    
    if(vari.opz_htz === "compfactors2_htz"){
        Z = parseFloat(vari.z1s_htz); //Z1 - Factor de compresibilidad en condiciones de succión
    }else{
        Z = getZ(T, P1, G, "psig", elev); //Z1 - Factor de compresibilidad en condiciones de succión:
    }
    
    var Rc = Math.pow((2/(k+1)),(k/(k-1)));
    
    var P2psia = get_Pres(P2, elev, "psig", "psia");
    var P1psia = get_Pres(P1, elev, "psig", "psia");
    
    var condFlujo =  "1";  
    var F; //Flowing Conditions:
    var A; //Calculated Orifice Area [in2]
    var d; //Calculate Tap Diameter [in]
    
    //Qm SCFH
    //Qm debe estar en SCFM
    
    var QmMin = Qm / 60;
    
    //alert(P2psia);
    //alert(Rc);
    
    
    //if(P2psia>=P1psia*Rc){
    if(is_Subsonico(P1psia, P2psia, Rc)){
        condFlujo =  "2";
        F = Math.pow(((  Math.pow(((P1psia)/(P2psia)),((k-1)/k)) * (Math.pow(((P1psia)/(P2psia)),((k-1)/k)) - 1)  ) / (((k-1)/k)*(((P1psia)/(P2psia))-1))), (0.5));
        A = (QmMin/(4647*k*F))* Math.pow((28.964*G*T)/(P2*dP), 0.5);        
    }else{
        F = 520* Math.pow( k * Math.pow((2/(k+1)), ((k+1)/(k-1))), 0.5);
        A = QmMin * Math.pow((28.964*G*T*Z), 0.5) /(6.32*F*K*P1psia); 
    }
    
    var Q2 = get_Flujo(Qm, "SCFH", "MMSCFD");
    
    var d = Math.pow(((4*A)/Math.PI), 0.5); //Calculate Tap Diameter [in]
       
    var v = (127.3 * Math.pow(10,3) * Q2 * Pb * T * Z /( Math.pow(d,2)* P1psia * Tb))/60; //Branch Gas Velocity [ft/sec]:
    var res = [Z, v, condFlujo, A, d];
    changeToDecimal(res);
    return res;
    
}

//=============MODULO 6=============================
//Tubería Hidrostática 6.1
function pipelinehydrostatic_Form(vari, uni){
    
    //es un excel
    //Validado excel
    //Vbo de Julio
    
    var fwt = -1;
    var tt = get_Temp(parseFloat(vari.testt_phy), uni.tt_sel_phy, "F"); //Temperatura de prueba
    var ttc = get_Temp(tt, "F", "C");
    
    
    var parametros = {
        "opcion" : "60",
        "temp": tt,
        "from" : "phy"
    };
    
    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        async: false,
        dataType:'json',
        beforeSend: function (xhr) {                            
            block("Cargando...");
        },
        success: function(data, status, request){ 
            fwt = data.row.fwt;
        },
        complete: function(){
            unBlock();
        }
     });
    
    
    var elev = get_Long(parseFloat(vari.enteree_phy), uni.h_sel_phy, "ft");
    var po =  get_Long(parseFloat(vari.pipeo_phy), uni.po_sel_phy, "in"); //Diametro externo de la tubería
    var pw = parseFloat(vari.pipew_phy); //Espesor de pared
    var pi = get_Long(parseFloat(vari.pipei_phy), uni.pi_sel_phy, "in"); // Diametro interno de la tuberia
    var tp = get_Pres(parseFloat(vari.testp_phy), elev, uni.tp_sel_phy, "psig");//Presión de prueba
    var pl = get_Long(parseFloat(vari.pipelinel_phy), uni.pl_sel_phy, "ft"); //Longitud de la tubería
    
    var cw = comprensibilidad(ttc); //(1/(1-(4.5*Math.pow(10,(-5)))*(tp/14.73))); //Compresibilidad del agua debido al aumento de la presión
    var cvi = 1+((po/pw)*(0.91*tp/(30*Math.pow(10,6))))+((3.6*Math.pow(10,-6))*(tt-60)); //Cambio de volúmen debido al aumento de la presión
    var cvt = 1+((tt-60)*18.2*Math.pow(10,-6)); //Cambio de volúmen de acuerdo al cambio de temperatura
    var ct = parseFloat(fwt);//Cambio térmico en el volúmen específico de agua   
   
    var vllt = 0.0408*pl*Math.pow(pi,2); //Volúmen de llenado de la tubería [Galones]
    
    var crta = cvt/ct; //Cambio del volúmen de acuerdo a la relación Tubería/Agua
    var vr = vllt*cw*cvi*cvt;  //Volúmen requerido para la prueba hidrostática [Galones]
    var iv = vr-vllt; //Volúmen incremental requerido para la prueba histrostatica [Galones]
    var fc = 0.0003*Math.pow(tt, 2)-0.0224*tt+3.3465; //Factor de compresibilidad para el agua  [in3/in3/Psig]X 10-6
    var aux = -64.268+17.0105*tt-0.20369*Math.pow(tt,2)+0.0016048*Math.pow(tt,3);   
    var cp = ((aux/Math.pow(10,6))-2*1.116*(Math.pow(10,-5)))/((tt*(1-Math.pow(0.3,2)))/((30*Math.pow(10,6))*pw+fc*Math.pow(10,-6))); //Cambio de presión  [Psi/°F]
    
    var res = [cw.toFixed(8),cvi.toFixed(6),cvt.toFixed(6),
        ct.toFixed(6),crta.toFixed(6),vllt.toFixed(1),
        vr.toFixed(1),iv.toFixed(1),fc.toFixed(2),
        cp.toFixed(1)];
    changeToDecimal(res);
    
    return res;
}

function comprensibilidad(xo){

    //Programa   que calcula el factor de comprensibilidad para el agua
    //mediante un polinomio de orden n en la forma de Newton

    var n = 3;
    var x=[0,10,20,50];

    var y=[3.35*Math.pow(10,-6), 3.14*Math.pow(10,-6), 3.01*Math.pow(10,-6), 2.89*Math.pow(10,-6)];
    var c = [];
    c[0] = y[0];
    var sumatoria = c[0];    
    
    for (var i=1; i <= n; i++)
    {
        var d = x[i]-x[i-1];
        var u = c[i-1];
        for (var k = i-2; k >= 0; k = k - 1)
        {
            u = u*(x[i]-x[k])+c[k];
            d = d*(x[i]-x[k]);
        }
        c[i] = (y[i]-u)/d; 
        var productoria = 1;
        for ( var j=0; j <= i-1; j++)
        {
            productoria = productoria*(xo-x[j]);
        }
        sumatoria = sumatoria + c[i]*productoria;
    }

    return sumatoria;
}

//  Prueba de presión de la tubería de gas 6.2
function gaspipelineMod6_Form(vari, uni){
        
    //Validado Vbo Julio
    var h = get_Long(parseFloat(vari.enteree_gp), uni.h_sel_gp, "ft"); //Altura [ft]
    var P1 = get_Pres(parseFloat(vari.initialt_gp), h, uni.it_sel_gp, "psig"); //Initial Test Pressure 
    var t = get_Time(parseFloat(vari.shut_gp), uni.shut_sel_gp, "seg"); // Shut-in Time
    
    var D = get_Long(parseFloat(vari.internalpd_gp), uni.ipd_sel_gp, "in"); //Internal Pipe Diameter
    var A = 949; //Tomado de un despeje del formulario de toolbox
    
    var res = (t*P1)/(A*D); //Acceptable Pressure Loss
    
    var res = [res.toFixed(2)];
    changeToDecimal(res);
    return  res;
}

function pipelineTime_Form(vari, uni){
    return [1,2];
}

function packPipeline_Form(vari, uni){
    
    //Vbo Julio
    //Consultar con Manuel
    
    var elev = get_Long(parseFloat(vari.h_pap), uni.h_sel_pap, "ft");; // Altura al nivel del mar
    var Mair = 28.96443;    //Mair=28.96443 g/mole (molecular weight of standard air - CRC, 1983).
    
    var Tave = get_Temp(parseFloat(vari.gasavetemp_pap), uni.gat_sel_pap, "R"); ///Gas Average Temperature
    var Pb = get_Pres(parseFloat(vari.basep_pap), elev, uni.bp_sel_pap, "psia"); //Presión base
    var P1 =  get_Pres(parseFloat(vari.upstreamp_pap), elev, uni.up_sel_pap, "psia"); //Upstream Pressure
    var P2 = get_Pres(parseFloat(vari.downstreamp_pap), elev, uni.dp_sel_pap, "psia"); //Downstream Pressure
    var D = get_Long(parseFloat(vari.internalp_pap), uni.ip_sel_pap, "ft");    // Internal Pipe Diameter //
    var L = get_Long(parseFloat(vari.lenghtp_pap), uni.lp_sel_pap, "ft"); //Length of pipeline
    var R = 10.73; //Gas constant
    var GasG = 0;
    var G = parseFloat(vari.gst_pap);
    
    if(vari.gs_sel_pap === "9"){ //Gas Specific Gravity (Relative to Air)
        GasG = G;
    }else if(vari.gs_sel_ah === "63"){ // Gas Molecular Weight
        //aqui G es igual a M
        GasG = G / Mair; //G = M / Mair
    }
    
    var Pave = (2/3)*(P1+P2-(P1*P2)/(P1+P2)); // Average Pressure
    var Zave = getZ(Tave, Pave, GasG, "psia", elev); // Average Compressibility Factor:
    var nt = (Math.PI * Math.pow(D,2) * Pave * L)/(4 * Zave * R * Tave); // Total numbers of moles of gas, lb moles
    
    var Vb = (nt * R * Tave)/Pb; // Pack in Gas Pipeline
    
    var res = [Pave.toFixed(2),Zave.toFixed(4),Vb.toFixed(0)];
    changeToDecimal(res);
    return res;
}

function purginCalculations_Form(vari, uni){
    
    var elev = get_Long(parseFloat(vari.h_pca), uni.h_sel_pca, "ft"); //Altura [ft]
    var D = get_Long(parseFloat(vari.internald_pca), uni.idp_sel_pca, "in"); // Internal diameter of the pipe section:
    var L = get_Long(parseFloat(vari.lenghtp_pca), uni.lp_sel_pca, "mil");  // Length of the pipe section
    var K = parseFloat(vari.blowoffc_pca); //Blow-off coefficient
    var P2 = get_Pres(parseFloat(vari.blowoffp_pca), elev, uni.bop_sel_pca, "psia");  //Blow-off pressure, just upstream of the valve (Recommended: 18-20)
    
    //Metodo A
    //paso 1
    var C = (0.0361)*D;
    var C2 = Math.pow(C,2);
    var K2 = Math.pow(K,2);
    var Num = 1+((C2/(C2+K2))/(1+Math.pow((C2/(C2+K2)), 0.5)));
    var Den = C *Math.pow((K2/(K2+C2)),0.5);
    var T = (0.0078 * Math.pow(D, 2) * L)* (Num/Den);
    var rT = 2*T;//Recommended purge time
    
    //Para encontrar P1
    var P1 = 0.001 + P2;
    var aux = ((0.0117) * Math.pow(D, 2) * L * ((P1 + P2)/2) * Math.sqrt(L)) / (C * Math.sqrt(Math.pow(P1,2) - Math.pow(P2,2)));
    if(aux < T){
        P1 = 0.001 + P1;
        aux = ((0.0117) * Math.pow(D, 2) * L * ((P1 + P2)/2) * Math.sqrt(L)) / (C * Math.sqrt(Math.pow(P1,2) - Math.pow(P2,2)));
    }
    
    var Q = 0.001; //Tasa de flujo at critical velocity:
    var coe1 = Math.pow(P1) - Math.pow(P2); 
    var coe2 = (Q * Math.sqrt(L))/(0.0361 * Math.pow(D, 8/3));
    
    if(coe1 < coe2){
        Q = Q + 0.001;
        coe2 = (Q * Math.sqrt(L))/(0.0361 * Math.pow(D, 8/3));
    }
    
    var Pm = (P1 + P2)/2;
    var P12 = Math.pow(P1,2);
    var c = 60/14.73;    
    var V1 = (T*P2*K)/(c*Pm); //Actual volume of pipe section - Assumed filed with air before purging
    
    var C2 = Math.pow(C, 2);
    var K2 = Math.pow(K, 2); 
    var V1a = (C * Math.pow(P12 - (C2*P12)/(K2+C2), 0.5)* (T/60)) - V1;  //Volume of gas lost - minumun time
    var V2a = (C * Math.pow(P12 - (C2*P12)/(K2+C2), 0.5)* ((2*T)/60)) - V1;  //Volume of gas lost - recommended time
    
    //Metodo B       
    var D2 = Math.pow(D, 2);
    var aux = C2/(K2+C2);
    var aux2 = Math.pow(aux,0.5);
    var aux3 = Math.pow(K2/(K2+C2),0.5);
    
    var Tb = 0.0078*D2*L* ( (1 + (aux/(1+aux2))) / (C * aux3) ); //Minumin purge time
    var rTb = 2*Tb; //Recommended purge time
    var V1b = (K*P1*(Tb/60))-V1; //Volume of gas lost - minumun time
    var V2b = (K*P1*((2*Tb)/60))-V1; //Volume of gas lost - recommended time
    
    Q = parseFloat(Q).toFixed(1);
    P1 = parseFloat(P1).toFixed(1);
    V1 = parseFloat(V1).toFixed(1);
    rT = parseFloat(rT).toFixed(1);
    V1a = parseFloat(V1a).toFixed(1);
    V2a = parseFloat(V2a).toFixed(1);
    Tb = parseFloat(Tb).toFixed(1);
    rTb = parseFloat(rTb).toFixed(1);
    V1b = parseFloat(V1b).toFixed(1);
    V2b = parseFloat(V2b).toFixed(1);
    
    var res = [Q,P1,V1,rT,rT,V1a,V2a,Tb,rTb,V1b,V2b];
    changeToDecimal(res);
    return res;
}

//=========== Modulo 7 =======================
//MAOP 7.1
function maop_Form(vari, uni){
    
    //Validado Excel Julio
    //Validado BD
    
    var T = parseFloat(vari.tempu_ma); //Temperature Derating Factor
    var D = get_Long(parseFloat(vari.nomps_ma), uni.pipeo_sel_ma, "in"); //Diametro externo de la tubería 
    var t = get_Long(parseFloat(vari.wallt_ma), uni.np_sel_ma, "in"); //Espesor de la pared nominal de la tubería
    var d = get_Long(parseFloat(vari.maximund_ma), uni.md_sel_ma, "in"); //Maximun Depth of Corroded Area
    var L = get_Long(parseFloat(vari.longitudinale_ma), uni.le_sel_ma, "in"); //Longitudinal Extent of Corroded Area
    var S = parseFloat(vari.grade_ma); //Specified Minimun Yield Strength - SYMS
    var F = parseFloat(vari.df_ma); // Desing Factor - F
    var MAOP = parseFloat(vari.mop_ma); //Maximun Operating Pressure - MOP
    
    //Hallar el valor de la ecuacion L = 1.12B raiz(Dt)
    var B = Math.sqrt(Math.pow((d/t)/(1.1 *  (d/t) - 0.15), 2)-1);
    var Leq2 =  1.12 * B * Math.sqrt(D*t);
    
    var A;
    if(d/t > 0.1 && L > Leq2)
    {
         //If the measured maximum depth of the corroded area is greater than 10 % of the nominal wall thickness,
         //and the measured longitudinal extent of the corroded area is greater than the value determined by Equation (2)
         A = 0.893 * (L /Math.sqrt(D*t));
    }else{
        A = 0.893 * (L /Math.sqrt(D*t));
    }
    
    var aux = (2*S*t*F*T)/D;    
    var P = Math.max(MAOP, aux);   //Desing Pressure - ANSI B.31.8: 
   
    var Pp = 1; //Maximun Safe Pressure - Corroded Area:
    
    if(A <= 4){
        Pp = 1.1 * P * ((1-(2*d/(3*t)))/(1-((2*d)/(3*t*Math.pow((Math.pow(A,2)+1),0.5))))); //Maximun Safe Pressure - Corroded Area
    }else{
        Pp = 1.1 * P * (1-d/t); //Maximun Safe Pressure - Corroded Area
    }
    
    var res = [Pp.toFixed(1),P.toFixed(2),A.toFixed(2)];
    changeToDecimal(res);
    return res;
}

//Maximun Allowable Longitudinal Extent of Corrosion 7.2
function maximunAllowable_Form(vari, uni){
    //Validado Excel Julio
    //Validado BD
    var d = get_Long(parseFloat(vari.maximund_mal), uni.md_sel_mal, "in");//Maximun Depth of corroded area
    var D = get_Long(parseFloat(vari.pipeo_mal), uni.po_sel_mal, "in");  // Diametro externo de la tubería
    var t = get_Long(parseFloat(vari.nomip_mal), uni.np_sel_mal, "in"); // Espesor de la pared nominal de la tubería
    
    //var porpitin = 100*D/t;
    
    var Pd = (d / t); //Corrosion Depth
    var B;
    
    if(Pd > 0.1 && Pd < 0.8){
        B = 4;
    }else{
        B = Math.pow((Math.pow(((d / t) / (1.1 * (d / t) - 0.15)),2) - 1), 0.5);
    }

    var L = 1.12 * B * Math.pow((D * t), 0.5); //Maximun allowable longitudinal extent of corrosionc
    
    var res = [L.toFixed(2)];
    changeToDecimal(res);
    return res;
}

function rateElectrical_Form(vari){
    
    //Validado Julio
    //Validado BD
    
    var Ec = parseFloat(vari.potentialc_re); //Potential of the cathode with respect to a reference electrode
    var Ea = parseFloat(vari.potentiala_re); //Potential of the anode with respect to the same reference electrode
    var Rt = parseFloat(vari.totalr_re); // Total resistance to electrical current flow thugh the cell
    
    var I = (Ea-Ec)/Rt; //Rate of the electrical current flow through the corrosion cell
    
    var res = [I.toFixed(2)];
    changeToDecimal(res);
    return res;
}

function relationship_Form(vari, uni){
    
    var p = get_Long(parseFloat(vari.electrolyter_rel), uni.er_sel_rel, "cm"); //Electrolyte resistivity
    var dL = get_Long(parseFloat(vari.distancee_rel), uni.de_sel_rel, "cm"); //Distance through the electrolyte traveled by the current
    var A = parseFloat(vari.crosss_rel); //Cross sectional area through which the current flows
    
    var R = (p*dL)/A; //Electrical resistance
    var res =[R.toFixed(2)];
    changeToDecimal(res);
    return res;
}

function electroyleResistance_Form(vari, uni){
    
    var p = get_Long(parseFloat(vari.electrolyter_ere), uni.er_sel_ere, "cm"); //Resistivity of soil:
    var Ka = parseFloat(vari.geof_ere);//Geometry Factor for the Central Electrode
    var d =  get_Long(parseFloat(vari.distancec_ere), uni.dc_sel_ere, "cm"); //Length of Electrode
    
    var r = Ka * p;
    
    var R = ((2.303*p)/(2*Math.PI*1)) * Math.log10(d/r); //Log Base 10
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
}

function electricalResistance_Form(vari, uni){
    
    //Validado Julio
    //Validado BD
    
    var L = get_Long(parseFloat(vari.length_elr), uni.le_sel_elr, "cm"); //Length of the Conductor
    var A = get_Long_Cuadrada(parseFloat(vari.cross_elr), uni.cs_sel_elr, "cm"); //Cross Sectional Area of the Conductor
    var p = get_Long(parseFloat(vari.conductorr_elr), uni.cr_sel_elr, "cm"); //Conductor Resistivity
    
    var R = p * (L/A); //Electrical Resistanace of a Conductor
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
}

function ohm_Form(vari, uni){
    var Ec = parseFloat(vari.potentiald_ohm); //Potential difference between the polarized cathode and reference electrode
    var Ea = parseFloat(vari.potentiale_ohm); //Potential difference between the polarized anode and the same reference electrode:
    var Kc = parseFloat(vari.geometryc_ohm); //Geometry factor for a cathode
    var Ka = parseFloat(vari.geometrya_ohm); //Geometry factor for an anode
    var p = get_Long(parseFloat(vari.averages_ohm), uni.as_sel_ohm, "cm"); //Average soil resistivity
    
    var I = ((Ec-Ea)/(Ka-Kc))*p; // Corrosion current
    var res = [I.toFixed(2)];
    changeToDecimal(res);
    return res;
}
//
//=============MODULO 8=============================

//Modulo 8 1.1
function estimatedWeight_Form(vari, uni){
    
    var La = parseFloat(vari.assumedl_ew); //Assumed Life of a Magnesium Anode:
    var Ia = parseFloat(vari.electricalc_ew); //Electrical Current Flow from the Anode to the pipe:
    var Ep = parseFloat(vari.polarizedp_ew); //Polarized Potential Difference between pipe and reference electrode:
    var Ea = parseFloat(vari.polarizedae_ew); //Polarized Potential Difference between the anode and same reference electrode
    var p = get_Long(parseFloat(vari.averages_ew), uni.ave_sel_ew, "cm"); //Average soil resistivity
    
    Ia = (Ep-Ea)/(0.00545*p);
    var Wa = (La/0.0571)*(Ia); //Estimated Weight of a Magnesium Anode [lbs]:
    
    var EW = Math.abs(Wa);
    var res = [EW.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

//Modulo 8 1.2
function resistanceEarthIAGB_Form(vari, uni){
    
    var r = get_Long(parseFloat(vari.resistancee_riagb), uni.res_sel_riagb, "cm");
    var p = get_Long(parseFloat(vari.actuals_riagb), uni.act_sel_riagb, "cm");
    var K = parseFloat(vari.correctionf_riagb); //Correction Factor for anode grouping
    var N = parseFloat(vari.numbera_riagb); // Number of Anodes
    
    var R = ((r*1000)*(p*1000)*K)/(N); //Total Group Bed to the Earth Resistance
    
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

//Modulo 8 1.3
function rudengergsFormula_Form(vari, uni){
 
    var I = parseFloat(vari.grounda_rf); //Ground Anode Current amperes
    var p = get_Long(parseFloat(vari.actuals_rf), uni.act_sel_rf, "cm"); //Earth resistivity in ohm-centimeters
    var y = get_Long(parseFloat(vari.lengtha_rf), uni.xdi_sel_rf, "ft"); //>Length of Anode in Earth
    var x = get_Long(parseFloat(vari.xdistance_rf), uni.al_sel_rf, "ft"); //X Distance from the ground to anode
    var Vx = 1;
    
    if(x > 10*y){
        Vx = (0.0052*I*p)/x;  //Potential at X caused by Ground Anode Current [V]
    }else{
        Vx = ((0.038*I*p)/(Math.PI*y))*Math.log10((y+Math.sqrt(y*y + x*x))/x); //Potential at X caused by Ground Anode Current [V]
    }
    
    var res = [Vx.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

//Modulo 8 1.4
function resistanceEarthSVA_Form(vari, uni){

    var p = get_Long(parseFloat(vari.soilr_rsva), uni.so_sel_rsva, "cm"); //Soil Resistivity    
    var L = get_Long(parseFloat(vari.anodel_rsva), uni.al_sel_rsva, "ft"); //Anode Length ft
    var d = get_Long(parseFloat(vari.anoded_rsva), uni.ad_sel_rsva, "ft"); //Anode Diameter
    
    var R = ((0.00521*p)/(L))*(2.3*Math.log10((8*L)/d)-1); // Vertical Anode Resistance to Earth [Ohm]
    
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

//Modulo 8 1.5
function resistanceEarthMVA_Form(vari, uni){

    var p = get_Long(parseFloat(vari.soilr_rmva), uni.so_sel_rmva, "cm");  //Soil Resistivity ohm-cm
    var L = get_Long(parseFloat(vari.anodel_rmva), uni.al_sel_rmva, "ft"); //Anode Length ft
    var d = get_Long(parseFloat(vari.anoded_rmva), uni.ad_sel_rmva, "ft"); //Anode Diameter ft
    var N = parseFloat(vari.numbera_rmva); //Number of Anodes in Parallel:
    var s = get_Long(parseFloat(vari.anodes_rmva), uni.as_sel_rmva, "ft"); // Anode Spacing ft
    
    var R = ((0.00521*p)/(N*L))*(2.3*Math.log10((8*L)/d) -1 + ((2*L)/s)*2.3*Math.log10(0.655*N)); //Anode Resistance to Earth
    
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

//Modulo 8 1.6
function resistanceEarthSHA_Form(vari, uni){
    
    var p = get_Long(parseFloat(vari.soilr_rsha), uni.so_sel_rsha, "cm"); //Soil Resistivity ohm.com
    var L = get_Long(parseFloat(vari.anodel_rsha), uni.al_sel_rsha, "ft"); //Anode Length ft
    var d = get_Long(parseFloat(vari.anoded_rsha), uni.ad_sel_rsha, "ft"); //Anode Diameter ft
    var h = get_Long(parseFloat(vari.distancee_rsha), uni.di_sel_rsha, "ft"); //Distance Earth of a Single Horizontal Anode: ft
    
    var R = ((0.052*p)/(L))*(2.303*Math.log10((4*L)/d) + ((2*h)/L) - 2); //Resistance to Earth of a Single Horizontal Anode [Ohm]
    //var R = ((0.00521*p)/(L))*(2.3*Math.log10((8*L)/d) - 1 ); //Resistance to Earth of a Single Horizontal Anode [Ohm]
    var res = [R.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}


function requiredNumberAnodes_Form(vari){
    
    var E = parseFloat(vari.drivingv_rn); //Driving Volatage
    var R = parseFloat(vari.anoder_rn); //Anode Resistance
    var It = parseFloat(vari.totalc_rn); // Total Current
     
   
    var Ia = E/R; 
    var N = It/Ia; //Required Number of Anodes
    
    var res = [N.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

function powerConsumption_Form(vari){
     
    var Er = parseFloat(vari.rectifiero_pc); //Rectifier Output Voltage
    var Ir = parseFloat(vari.rectifierc_pc); //Rectifier Current Output
    var Ur = parseFloat(vari.utilityr_pc); //Utility Rate
    
    var P = 1.5 * Er * Ir; //Power Consumption per Month [$/kWh]
    var MB = P * Ur; // Montly Bill [$]
    
    var res = [P.toFixed(2), MB.toFixed(2)];
    changeToDecimal(res);
    return res;
    
}

function cathodicProtection_Form(vari, uni){
    var p =  get_Long(parseFloat(vari.specificr_cc), "cm", "mt"); //Specific Resistance of pipeline material
    var Do = get_Long(parseFloat(vari.pipeod_cc), uni.pi_sel_cc, "mt"); //Diametro externo de la tubería
    var Ro = parseFloat(vari.pipeel_cc) * 0.092903; //Pipe to Electrolyte insulation resistance
    var L = get_Long(parseFloat(vari.halfd_cc), uni.ha_sel_cc, "mt"); //Half Distance between drain points (anodes)
    var X = get_Long(parseFloat(vari.xdistance_cc), uni.xd_sel_cc, "mt"); // X - Distance from the Drain Point (anode)
    var Eo = parseFloat(vari.pipeep_cc); //Pipe to Electrolyte potential at the drain point
    var Ir = get_Long(parseFloat(vari.pipew_cc), uni.pip_sel_cc, "mt");//Espesor de la pared de la tubería
    
    var Di = Do - 2 * Ir; //Diametro interno de la tubería
    var Au = 1;
    var Rl = 4 * ((p/(Math.PI*(Math.pow(Do,2) - Math.pow(Di,2)))));//Linear Electrical Resisstance of the Pipe Section [ohm/m]:
    var Rt = (Ro/(Math.PI*Do))*3.28084; //Leakage/Transverse Resistance of the pipeline section [ohm/ft]:
    Rl = get_Long_Inv(Rl, "mt", "ft");
    
    var Rk = Math.sqrt(Rl*Rt); // Characteristics Resistance of the pipeline section [ohms]:
    var a = Math.sqrt(Rl/Rt); // Attenuation constant of the pipeline section [1/ft]:
    
    var Lft = get_Long(L, "mt", "ft");
    var Xft = get_Long(L, "mt", "ft");
    var Ex = Eo * ((Math.cosh(a)*(Lft-Xft))/(Math.cosh(a)*Lft));
    
    
    var res = [Rl.toFixed(4), Rt.toFixed(2), Rk.toFixed(2), a.toFixed(8), Ex];
    changeToDecimal(res);
    return res;
    
}
//------------------- Modulo 9 ------------------------

function distribuitedStatic_Form(vari, uni){
   
    var w =  parseFloat(vari.unitw_dst);
    var H = get_Long(parseFloat(vari.hight_dst), uni.hi_sel_dst, "ft");
    var Bd = get_Long(parseFloat(vari.trench_dst), uni.tre_sel_dst, "ft");
    var Ku = parseFloat(vari.ku_dst);
    var N = get_Long(parseFloat(vari.n_dst), uni.n_sel_dst, "ft");
    var M = get_Long(parseFloat(vari.m_dst), uni.m_sel_dst, "ft");
    var M1 = get_Long(parseFloat(vari.m1_dst), uni.m1_sel_dst, "ft");
    var DR = parseFloat(vari.dr_dst); 
    var Bd = get_Long(parseFloat(vari.bd_dst), uni.bd_sel_dst, "ft");
    var Do = get_Long(parseFloat(vari.do_dst), uni.do_sel_dst, "ft");
    var ep = parseFloat(vari.ep_dst); 
    var epn = parseFloat(vari.en_dst); 
    var type = vari.type_dst;
    
   
    if(type === "1"){
   
        var P = 0;

        if(vari.p_dst === "pp_dst"){
            P = distribuitedPrism_Form(w, H);        
        }else if(vari.p_dst === "pm_dst"){
            P = distribuitedMarston_Form(w, H, Ku, Bd);
        }else if(vari.p_dst === "p_dst"){
            P = distribuitedCombined_Form(w, H, Ku, Bd);
        }


        var Pl = 1; //No se encuentra formula ni dato de entrada

        var S = ((P + Pl)*DR)/288;
        var Icm = getIc(N/H, M/H);
        var Icm1 = getIc(N/H, M1/H);
        var epnep = epn/ep;


        var res = [P.toFixed(2), (N/H).toFixed(2), (M/H).toFixed(2), (M1/H).toFixed(2), 
                S.toFixed(2), Icm.toFixed(2), Icm1.toFixed(3), (Bd/Do).toFixed(2),
                    epnep.toFixed(2)];
        changeToDecimal(res);
        return  res;
        
        //306.11
    }
   
 
}

function getIc(x, y){
    
    var mat = new Array(13);
    
    mat[0] = new Array(14);         
    mat[0][0] = 1; mat[0][1] = 1; mat[0][2] = 1; mat[0][3] = 1; mat[0][4] = 1; mat[0][5] = 1; mat[0][6] = 1; 
    mat[0][7] = 1; mat[0][8] = 1; mat[0][9] = 1; mat[0][10] = 1; mat[0][11] = 1; mat[0][12] = 1; mat[0][13] = 1;
    
    mat[1] = new Array(14);         
    mat[1][0] = 1; mat[1][1] = 1; mat[1][2] = 1; mat[1][3] = 1; mat[1][4] = 1; mat[1][5] = 1; mat[1][6] = 1; 
    mat[1][7] = 1; mat[1][8] = 1; mat[1][9] = 1; mat[1][10] = 1; mat[1][11] = 1; mat[1][12] = 1; mat[1][13] = 1;
    
    mat[2] = new Array(14);         
    mat[2][0] = 1; mat[2][1] = 1; mat[2][2] = 1; mat[2][3] = 1; mat[2][4] = 1; mat[2][5] = 1; mat[2][6] = 1; 
    mat[2][7] = 1; mat[2][8] = 1; mat[2][9] = 1; mat[2][10] = 1; mat[2][11] = 1; mat[2][12] = 1; mat[2][13] = 1;
    
    mat[3] = new Array(14);         
    mat[3][0] = 1; mat[3][1] = 1; mat[3][2] = 1; mat[3][3] = 1; mat[3][4] = 1; mat[3][5] = 1; mat[3][6] = 1; 
    mat[3][7] = 1; mat[3][8] = 1; mat[3][9] = 1; mat[3][10] = 1; mat[3][11] = 1; mat[3][12] = 1; mat[3][13] = 1;
    
    mat[4] = new Array(14);         
    mat[4][0] = 1; mat[4][1] = 1; mat[4][2] = 1; mat[4][3] = 1; mat[4][4] = 1; mat[4][5] = 1; mat[4][6] = 1; 
    mat[4][7] = 1; mat[4][8] = 1; mat[4][9] = 1; mat[4][10] = 1; mat[4][11] = 1; mat[4][12] = 1; mat[4][13] = 1;
    
    mat[5] = new Array(14);         
    mat[5][0] = 1; mat[5][1] = 1; mat[5][2] = 1; mat[5][3] = 1; mat[5][4] = 1; mat[5][5] = 1; mat[5][6] = 1; 
    mat[5][7] = 1; mat[5][8] = 1; mat[5][9] = 1; mat[5][10] = 1; mat[5][11] = 1; mat[5][12] = 1; mat[5][13] = 1;
    
    
    mat[6] = new Array(14);         
    mat[6][0] = 1; mat[6][1] = 1; mat[6][2] = 1; mat[6][3] = 1; mat[6][4] = 1; mat[6][5] = 1; mat[6][6] = 1; 
    mat[6][7] = 1; mat[6][8] = 1; mat[6][9] = 1; mat[6][10] = 1; mat[6][11] = 1; mat[6][12] = 1; mat[6][13] = 1;
    
    mat[7] = new Array(14);         
    mat[7][0] = 1; mat[7][1] = 1; mat[7][2] = 1; mat[7][3] = 1; mat[7][4] = 1; mat[7][5] = 1; mat[7][6] = 1; 
    mat[7][7] = 1; mat[7][8] = 1; mat[7][9] = 1; mat[7][10] = 1; mat[7][11] = 1; mat[7][12] = 1; mat[7][13] = 1;
    
    mat[8] = new Array(14);         
    mat[8][0] = 1; mat[8][1] = 1; mat[8][2] = 1; mat[8][3] = 1; mat[8][4] = 1; mat[8][5] = 1; mat[8][6] = 1; 
    mat[8][7] = 1; mat[8][8] = 1; mat[8][9] = 1; mat[8][10] = 1; mat[8][11] = 1; mat[8][12] = 1; mat[8][13] = 1;
    
    mat[9] = new Array(14);         
    mat[9][0] = 1; mat[9][1] = 1; mat[9][2] = 1; mat[9][3] = 1; mat[9][4] = 1; mat[9][5] = 1; mat[9][6] = 1; 
    mat[9][7] = 1; mat[9][8] = 1; mat[9][9] = 1; mat[9][10] = 1; mat[9][11] = 1; mat[9][12] = 1; mat[9][13] = 1;
    
     mat[10] = new Array(14);         
    mat[10][0] = 1; mat[10][1] = 1; mat[10][2] = 1; mat[10][3] = 1; mat[10][4] = 1; mat[10][5] = 1; mat[10][6] = 1; 
    mat[10][7] = 1; mat[10][8] = 1; mat[10][9] = 1; mat[10][10] = 1; mat[10][11] = 1; mat[10][12] = 1; mat[10][13] = 1;    
    
    mat[11] = new Array(14);         
    mat[11][0] = 1; mat[11][1] = 1; mat[11][2] = 1; mat[11][3] = 1; mat[11][4] = 1; mat[11][5] = 1; mat[11][6] = 1; 
    mat[11][7] = 1; mat[11][8] = 1; mat[11][9] = 1; mat[11][10] = 1; mat[11][11] = 1; mat[11][12] = 1; mat[11][13] = 1;
    
     mat[12] = new Array(14);         
    mat[12][12] = 1; mat[12][1] = 1; mat[12][2] = 1; mat[12][3] = 1; mat[12][4] = 1; mat[12][5] = 1; mat[12][6] = 1; 
    mat[12][7] = 1; mat[12][8] = 1; mat[12][9] = 1; mat[12][10] = 1; mat[12][11] = 1; mat[12][12] = 1; mat[12][13] = 1;
    
    mat[13] = new Array(14);         
    mat[13][0] = 1; mat[13][1] = 1; mat[13][2] = 1; mat[13][3] = 1; mat[13][4] = 1; mat[13][5] = 1; mat[13][6] = 1; 
    mat[13][7] = 1; mat[13][8] = 1; mat[13][9] = 1; mat[13][10] = 1; mat[13][11] = 1; mat[13][12] = 1; mat[13][13] = 1;
    
    return mat[0][0];
}

function distribuitedPrism_Form(w, H){
   
    return w*H;
}

function distribuitedMarston_Form(w, H, Ku, Bd){
   
    var numCd = 1 - (Math.pow(Math.E, -2*Ku*(H/Bd)));
    
    var Cd = numCd/(2*Ku);
   
    return w*Bd*Cd;
   
 
}

function distribuitedCombined_Form(w, H, Ku, Bd){
   
    var pp = distribuitedPrism_Form(w, H);
    var pm = distribuitedMarston_Form(w, H, Ku, Bd);
   
    return 0.6*pm + 0.4*pp;
}

function allowable_Form(vari, uni){
    
    var D = get_Long(parseFloat(vari.do_all), uni.do_sel_all, "in"); //Pipe Outside Diameter [in]
    var DR =  parseFloat(vari.pdr_all); //Pipe Dimension Ratio
    var fy =  parseFloat(vari.tyd_all); //Tensible Yield Desing Safety Factor
    var ft =  parseFloat(vari.tut_all); //Time Under Tension Desing Safety Factor
    var Ty =  parseFloat(vari.tys_all); //Tensible Yield Strengh [psi]
   
    
    var ATL =  fy * ft * Ty * Math.PI * Math.pow(D, 2) * (1/DR - (1/Math.pow(DR, 2))); //ATL - Allowable Tensible Load [lbf]
    var res = [ATL.toFixed(0)];
    changeToDecimal(res);
    return res;
}

function installation_Form(vari, uni){
    //R <= 1200*Dia Ext
    //var R = H / (1-cosB) > 1200 Diametro
    
    var D = get_Long(parseFloat(vari.pod_ins), uni.pod_sel_ins, "in"); //Pipe Outside Diameter [in]
    var DR =  parseFloat(vari.bd_ins); // Standart Diameter Ratio
    var ya = parseFloat(vari.eg_ins); //Specific Gravity of Pipe Material
    var yb = parseFloat(vari.sgmd_ins); //Specific Gravity of Mud Slurry (Conservativly assumed 1.5)
    var B = parseFloat(vari.paex_ins) * Math.PI / 180; // Bore Hole Angle at Pipe Exit [rad]
    var A = parseFloat(vari.paecro_ins) * Math.PI / 180; // Bore Hole Angle at Pipe Entry [rad]
    var H = get_Long(parseFloat(vari.h_ins), uni.h_sel_ins, "ft"); //Depth of Bore beneth Surface [ft]
    var Ea = parseFloat(vari.ampaecro_ins); //Apparent Modulus of Elasticity [psi]
    var va = parseFloat(vari.cf_ins); //Friction Coefficient before Pipe Enters Bore Hole
    var vb = parseFloat(vari.cfb_ins); //Friction Coefficient Applicable within Lubricated Bore Hole
    var L1 =  get_Long(parseFloat(vari.l1_ins), uni.l1_sel_ins, "ft");  //// Length Of Pipe Required for Handling and Thermal Contraction [ft]
    var Dh = get_Long(parseFloat(vari.bac_ins), uni.bac_sel_ins, "in"); //Backreamed Hole Diameter [in]
    var dP = parseFloat(vari.hy_ins); //Hydrokinetic Pressure [psi] (Estimated 10 psi)
    var Lt = get_Long(parseFloat(vari.cro_ins), uni.cro_sel_ins, "ft"); //Horizontal Transition Distance [ft]
    var uw = parseFloat(vari.uw_ins); //Unit Weigth of Water [lb/ft3]
    var esp = get_Long(parseFloat(vari.mpwt_ins), uni.mpwt_sel_ins, "in"); // Minimun Pipe Wall Thickness
    
    
    var asps = parseFloat(vari.asps_ins); // Allowable/Safe Pull Stress [psi]
    var perpipe = parseFloat(vari.perp_ins); // Percent of Pipe [%]:
    
    var Rs = H / (1-Math.cos(B)); //Local Radius of Curvature along Path Segment [ft]
    var Re = H / (1-Math.cos(A)); //Local Radius of Curvature along Path Segment [ft]
    var L2 = Re * Math.sin(A); // Horizontal Distance to Achive Desired Depth [ft]
    var L4 = Rs * Math.sin(B); // Horizontal Distance to Rise to Surface [ft]
    var L3 = Lt - L2 - L4; // Additional Distance Traversed at Desired Depth [ft]
    var pw = 0.03611; //Wight Density of Water [lbf/in3]
    var wa = (Math.PI * (D*D) * ((DR - 1)/(DR*DR)) * pw * ya)*12; // Weight of Empty Pipe [lbf/ft]
    var wb = ((Math.PI * (D*D))/4 * pw * yb)*12 - wa; //Upward Buoyant Force [lbf/ft]
    var Ravgex = 2*H/(Math.pow(B,2)); //Average Radius of Curvature along Path Segment [ft]
    var Ravgen = 2*H/(Math.pow(A,2)); //Average Radius of Curvature along Path Segment [ft]
    var RavgenIn = get_Long(Ravgen, "ft", "in");
    var ea = D/(2*RavgenIn); //Peak Axial Strain [in/in]
    var ra = asps*ea; //Peak Axial Stress [psi]
    
    var Ta =  Math.exp(va*A) * (va*wa*(L1+L2+L3+L4)); //Pull Force on Pipe at Point A [lbf]; error por el wa
    var Tb = Math.exp(vb*A) * (Ta + vb*Math.abs(wb)*L2 + wb*H - va*wa*L2*Math.exp(va*A)); //Pull Force on Pipe at Point B [lbf];
    var Tc = Tb + vb*Math.abs(wb)*L3 - Math.exp(vb*A)*(va*wa*L3*Math.exp(va*A)); //Pull Force on Pipe at Point C [lbf];
    var Td = Math.exp(vb*B)*(Tc + vb*Math.abs(wb)*L4 - wb*H - Math.exp(vb*A)*(va*wa*L4*Math.exp(va*A)));//Pull Force on Pipe at Point D [lbf];
    
    var dT = dP * (Math.PI/8) * (Math.pow(Dh,2)-Math.pow(D,2)); //Pulling Force Increment [lbf]
    var ro_a = (Ta + dT) * (1/(Math.PI*Math.pow(D,2))) * (Math.pow(DR, 2)/(DR-1)); //Average Axial Stress on Pipe Cross-Section at Point A [psi]
    var ro_b = (Tb + dT) * (1/(Math.PI*Math.pow(D,2))) * (Math.pow(DR, 2)/(DR-1)); //Average Axial Stress on Pipe Cross-Section at Point B [psi]
    var ro_c = (Tc + dT) * (1/(Math.PI*Math.pow(D,2))) * (Math.pow(DR, 2)/(DR-1)); //Average Axial Stress on Pipe Cross-Section at Point C [psi]
    var ro_d = (Td + dT) * (1/(Math.PI*Math.pow(D,2))) * (Math.pow(DR, 2)/(DR-1)); //Average Axial Stress on Pipe Cross-Section at Point D [psi]
    
    var shp = (H * yb * uw)/144; //Static Head Pressure [psi]
    var mp = 0.1947 * Math.pow((uw*yb), 0.646) * Math.pow(H, 0.614); //Maximun Pressure During Pullback [psi]
    var area = (Math.PI/4) * (Math.pow(D,2) - Math.pow(D-2*esp,2));
    var bre = area * asps; //Breakaway Links Settings [lbf]
    var ova = 0;
    
    if(perpipe >= 0 && perpipe <=6){
        ova = 0.5432 - 0.0761 * (perpipe - 6);
    }else if(perpipe > 6 && perpipe <=12){        
        ova = 0.5432-0.0648*(perpipe-6)+0.0077*(perpipe-6)*(perpipe-8)-0.0001*(perpipe-6)*(perpipe-8)*(perpipe-10);        
    }else if(perpipe > 12){
        ova = 0.33;
    }
    
    
    
    var res = [wa.toFixed(1), wb.toFixed(1), Ravgex.toFixed(2), Ravgen.toFixed(2), ea.toFixed(6), 
        ra.toFixed(6), Ta, Tb.toFixed(2),Tc.toFixed(2), Td.toFixed(2),
        ro_a.toFixed(2), ro_b.toFixed(2), ro_c.toFixed(2), ro_d.toFixed(2), 
        L2.toFixed(2), L3.toFixed(2), L4.toFixed(2), shp.toFixed(2), mp.toFixed(2), 
        bre.toFixed(2), ova.toFixed(2)];
    
    return res;
    
}

function postInstallation_Form(vari, uni){
   
    var Di = get_Long(parseFloat(vari.intb_poi), uni.intb_sel_poi, "ft");
    var D = get_Long(parseFloat(vari.pod_poi), uni.pod_sel_poi, "in"); //Pipe Outside Diameter
    var fi = parseFloat(vari.ifa_poi); // Angle of Soil Internal Friction    
    var r = parseFloat(vari.uws_poi); //Soil Weight [lb/ft3]
    var H = get_Long(parseFloat(vari.dbo_poi), uni.dbo_sel_poi, "ft"); //Depth of Cover
    var d = fi; //Angle of Wall Friction
    var B = 1; //"silo" width
    var t = (get_Long(Di, "ft", "in") - D)/(-2); //Pipe wall Thickness
    
    var r2 = 1;
    var yw = parseFloat(vari.uwf_poi);  //Weight of Fluid in Bore Hole
    var E = parseFloat(vari.ame_poi);// Modulus of Elasticity
    
    var u = parseFloat(vari.pr_poi);  //Poisson Ratio
    var R = get_Long(parseFloat(vari.rac_poi), uni.rac_sel_poi, "in"); //Radius of Curvature
    var perov = parseFloat(vari.po_poi);  //Percent of Ovality
    
    
    
    
    //ResultsArching Factor
    var I = (Math.pow(t,3)/12) ;//Moment of Inertia of Pipe Cross-Section
    var K = Math.pow(Math.tan((45 - (fi/2))*Math.PI/180), 2);  //Earth Pressure Coefficient
    var k = (1 - Math.exp(-2 * (K*H/B) * Math.tan((d/2)*Math.PI/180)))/(2 * (K*H/B) * Math.tan((d/2)*Math.PI/180)); //Arching Factor
    
    var Pe = (k*r*H)/144;//External Earth Pressure
    var delta =  D * ((0.1169 * yw * Math.pow((D/2), 4)) / (E*I));//Ring Deformation
    var bd = delta/D; //Buoyant Deflection
    var z = (2/3 * (1-Math.pow(u,2)) * Math.pow(D-t), 4)/(16*r2*R);
    var deltay = ((2/3)*z + (71/135)*Math.pow(z,2)) * D;
    var re = deltay/D; // Reissner Effect Deflection
    var ova = 0;
    
    if(perov >= 0 && perov <=6){
        ova = 0.5432 - 0.0761 * (perov - 6);
    }else if(perov > 6 && perov <=12){        
        ova = 0.5432-0.0648*(perov-6)+0.0077*(perov-6)*(perov-8)-0.0001*(perov-6)*(perov-8)*(perov-10);        
    }else if(perov > 12){
        ova = 0.33;
    }
    
    
    
    return [K.toFixed(2), k.toFixed(2), Pe.toFixed(2), bd.toFixed(2), re.toFixed(2), ova.toFixed(2)];
    
}

//----------------------Modulo 10 (Selector)------------------------
function capacidadMedidoresMas_Form(vari, uni){
    
    //Validado Johan
    //Validado BD
    
    var modelo = vari.mo_sel;
    var presop = parseFloat(vari.presionop);
    var presba = parseFloat(vari.preisonba);
    var fmin = parseFloat(vari.flujomin);
    var fmax = parseFloat(vari.flujomax);
    var por = 0.75;
    var medidores = vari.medidores.split("@");    
    var modEva = modEva = modelo.split(",")[0];
    var capaopt = 0;
    
    var fp = (presop+14.7)/14.7;
    var capmodev = parseFloat(modelo.split(",")[1]);
    var capmodev2 = capmodev*fp/((500+presba)/presba).toFixed(2);
    
    var trabminev = (fmin/capmodev2)*100;
    var trabmaxev = (fmax/capmodev2)*100;
    
    var capmodopt = 0;
    var mendis = undefined;
    var medopt = undefined;
   
    //Buscar el mayor mas cercano
    for(var cont = 0; cont < medidores.length - 1; cont ++){
       
        var medi = new Array(5);
         
        medi[3] = medidores[cont].split(",")[0];
                
        var cap_ref = parseFloat(medidores[cont].split(",")[1]);
        
        if(cap_ref*fp/((500+14.7)/14.7) > fmax){
            if( mendis == undefined){
                mendis = (cap_ref*fp/((500+presba)/presba)) - fmax;
                capmodopt = (cap_ref*fp/((500+presba)/presba)).toFixed(2);
                medopt =  medi[3];
            }else{
                if((cap_ref*fp/((500+presba)/presba)) - fmax < mendis){
                    mendis = (cap_ref*fp/((500+presba)/presba)) - fmax;
                    capmodopt = (cap_ref*fp/((500+presba)/presba)).toFixed(2);
                    medopt =  medi[3];
                }
            }
        }
    }
    
    var trabmaxopt = (fmax/capmodopt)*100;
    
    var res = [medopt, trabmaxopt.toFixed(2), capmodopt, modEva, trabmaxev.toFixed(2), capmodev2.toFixed(2), trabminev.toFixed(2), capmodopt];
    return res;
    
    
}

function capacidadMedidores_Form(vari, uni){
    
    //Validado Johan
    //Validado BD
    
    var modelo = vari.mo_sel;
    var presop = parseFloat(vari.presionop);
    var presba = parseFloat(vari.preisonba);
    var fmin = parseFloat(vari.flujomin);
    var fmax = parseFloat(vari.flujomax);
    var por = 0.75;
    var medidores = vari.medidores.split("@");    
    var modEva = modEva = modelo.split(",")[0];
    var capaopt = 0;
    
    var menor = null;
    var mediOpt = null;
    var maxcapPor = null;
    var maxcap = null;
    var maxcapPorEv = null;
    var maxcapEv = null;
    var sw = false;
    
    for(var cont = 0; cont < medidores.length - 1; cont ++){
       
        var medi = new Array(5);
        
        medi[3] = medidores[cont].split(",")[0];
        
        var aux1 = (uni.po_sel.split(",")[1] === "psig" ? 1 : 14.504); //1 si es psi, 14.504 si es bar 
        var aux2 = (uni.pb_sel.split(",")[1] === "psig" ? 1 : 14.504); 
        
        var cap_ref = parseFloat(medidores[cont].split(",")[1]);
        medi[4] = ((presop*aux1+presba*aux2)/(presba*aux2)*cap_ref).toFixed(2); //capa_maxima
        medi[0] = (fmax / medi[4]).toFixed(2); //porcentaje
        
        medi[1] = por - medi[0];
        
        if(medi[1]<0 || medi[1]>1){
            medi[2] = "N";
        }else{
            medi[2] = medi[1];
            if(sw === false){
                sw = true;
                menor = medi[2];
                mediOpt = medi[3];
                maxcapPor = medi[0];
                maxcap = medi[4];
                capaopt = cap_ref;
            }
            
            if(menor !== null){
                if(medi[2] < menor){
                    menor = medi[2];
                    mediOpt = medi[3];
                    maxcapPor = medi[0];
                    maxcap = medi[4];
                    capaopt = cap_ref;
                }
            }
        }
        
        if(medi[3] == modEva){
            maxcapPorEv = medi[0];
            maxcapEv = medi[4];
        }
    }
    
    var capminev = ((fmin/maxcapEv)*100).toFixed(2);
    
    var res = [mediOpt, maxcapPor*100, maxcap, modEva, maxcapPorEv*100, maxcapEv, capminev, capaopt];
    return res;
    
    
}

function valslamshut_Form(vari, uni){
    
    //Validado Johan
    //Validado BD
    
    var fun = vari.tam_sel_sh.split(",");
    var prest = get_Pres(parseFloat(vari.prest_sh), 0, uni.prest_sel_sh, "psig");
    var pmin = get_Pres(parseFloat(vari.pmin_sh), 0, uni.pmin_sel_sh, "psig");
    var pmax = get_Pres(parseFloat(vari.pmax_sh), 0, uni.pmax_sel_sh, "psig");
    
    var min = Math.min(prest, pmin, pmax);
    var max = Math.max(prest, pmin, pmax);
    
    var x0 = parseFloat(fun[0]);
    var x1 = parseFloat(fun[1]);
    var x2 = parseFloat(fun[2]);
    var x3 = parseFloat(fun[3]);
    var x4 = parseFloat(fun[4]);
    var x5 = parseFloat(fun[5]);
    var x6 = parseFloat(fun[6]);
    
    var resfun = (x0 + x1*prest + x2*Math.pow(prest,2)+ x3*Math.pow(prest,3) + x4*Math.pow(prest,4) +x5*Math.pow(prest,5) + x6*Math.pow(prest,6))*1;
    
    var res = [resfun.toFixed(1)];
    
    var parametros = {
        "opcion": "106",
        "minimo": min,
        "maximo": max
    };

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
        },
        success: function(data, status, request){

            if(data.minimo.length > 0){
                
                if(uni.mecanismo_sel_sh == "1"){
                    res[4] = "N/A";
                    res[5] = "N/A";
                    res[6] = "N/A";
                }else{
                
                    res[4] = data.minimo[0].partnum;
                    res[5] = data.minimo[0].color;
                    res[6] = data.minimo[0].maxpre;
                }
                
            }else{
                res[4] = "";
                res[5] = "";
                res[6] = "";
            }
            
            if(data.maximo.length > 0){
                if(uni.mecanismo_sel_sh == "2"){
                    res[1] = "N/A";
                    res[2] = "N/A";
                    res[3] = "N/A";
                }else{
                    res[1] = data.maximo[0].partnum;;
                    res[2] = data.maximo[0].color;
                    res[3] = data.maximo[0].maxpre;
                }
            }else{
                res[1] = "";
                res[2] = "";
                res[3] = "";
            }

        },
        error: function (xhr, ajaxOptions, err) {
             alert("Ha ocurrido un error al consultar la especificación del mecanismo de acción");
        },
        complete: function(){
           unBlock();
        }
    });
    
    
    return res;
    
}
          
function valvulas_Form(vari, uni){
    //Validado excel Johan
    //Validado BD
    
    var setpresion = parseFloat(vari.presiondis_val);
    var k = parseFloat(vari.relak_val);
    var pb = parseFloat(vari.presionb_val);
    var kd = parseFloat(vari.coefdes_val);
    var faccor = parseFloat(vari.factcor_val);
    var flujo = get_Flujo(parseFloat(vari.flujomax_val), uni.flujomax_sel_val, "MMSCFD") ;
    var pesomol = parseFloat(vari.pesom_val);
    var temp = get_Temp(parseFloat(vari.tempope_val), uni.tempope_sel_val, "R");
    var min = parseFloat(vari.nivelsobmin_val);
    var max = parseFloat(vari.nivelsobmax_val);
    var p1 = setpresion + Math.max(min,max) + pb;
    var p2 = setpresion + pb;
    
    var z =1/(1+((setpresion+14.7)*344400*  Math.pow(10,(1.785*0.56)))/(Math.pow(temp,3.825)));
    
    flujo = flujo * (1000000/24/60);
    
    var f = 1;
    var aux1 = p2/p1;
    var aux2 = k/(k-1);
    var aux3 = 2/k;
    var aux4 = (k+1)/k;
    
    if(Math.pow(aux1,aux3) - Math.pow(aux1, aux4) == 0){
        f = 0.457;
    }else{
        f = Math.pow(aux2*(Math.pow(aux1,aux3) - Math.pow(aux1, aux4)),0.5);
    }
        
      
    
    var c =  -232.5527231693* Math.pow(k,6) + 2084.7153229713*Math.pow(k,5) - 7707.7085888386*Math.pow(k,4) + 15047.087213993*Math.pow(k,3) - 16391.1680313646*Math.pow(k,2) + 9568.7385516521*k - 2053.7570916026;
    
        
    var areasonica = flujo/(6.32*c*kd*p1 *faccor)*Math.pow(pesomol*temp*z, 0.5);
    var areasubsonica = flujo/(4645*f*kd*p1)*Math.pow(pesomol*temp*z, 0.5);
    
    var velsonica = flujo /(areasonica/ 144);
    var velsubsonica = flujo /( areasubsonica/144);
    
    var areares = areasubsonica;
    var tipoflujo = "Flujo Subsonico";
    if(velsonica>80000 || velsubsonica>80000){
        areares = areasonica;
        tipoflujo = "Flujo Sonico";
    }
    
    var dim = vari.dim_sel_val.split(",")[1];
    var resdim = (dim === "1" ? "api" : "asme");
    var resori = {"info": [  ] };
    var swmin = 0;
    var posmin = 0;
    var minorival;
    var orirecom;
    var orimin;
    var flujorecom;
    
    var parametros = {
        "opcion": "104",
        "dim" : resdim
    };

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
            block("Cargado datos...");
        },
        success: function(data, status, request){
            
            for(var i = 0; i < data.row.length; i++){
                var orival = parseFloat(data.row[i].valor);
                if(orival - areares >= 0){                    
                    resori.info[resori.info.length] =  orival - areares;
                    if(swmin === 0){
                        minorival = orival - areares;
                        posmin = i;
                        swmin = 1;
                    }else{
                        if(orival - areares < minorival){
                            minorival = orival - areares;
                            posmin = i;
                        }
                    }
                }
            }
            
            orimin = parseFloat(data.row[posmin].valor);
            orirecom = data.row[posmin].orificio;
            flujorecom = 6.32*orimin*kd*p1*c*faccor/(Math.pow(z*temp*pesomol, 0.5));
        },
        error: function (xhr, ajaxOptions, err) {
            
        },
        complete: function(){
           unBlock();
        }
    });
    
    flujorecom = flujorecom / 694;
    
    parametros = {
        "opcion": "105",
        "orificio" :  orirecom,
        "type": uni.mod_sel_val
    };
    
    var modelo;

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
            block("Cargado datos...");
        },
        success: function(data, status, request){
           var pos = 5;
           var presd = parseFloat(vari.presiondis_val);
           if(presd < 274){
               pos = 2;
           }else if(presd < 739){
               pos = 3;
           }else if(presd < 1439){
               pos = 4;
           }
           
           modelo = data.row[pos - 2].valor;
            
        },
        error: function (xhr, ajaxOptions, err) {
            
        },
        complete: function(){
           unBlock();
        }
    });
    
    var flujorecpor =  parseFloat(vari.flujomax_val) / flujorecom;
   
   
    var res = [z, tipoflujo, areares, c, orirecom, orimin, flujorecom, "MMSCFD", modelo, flujorecpor, temp, flujo];
    
    return res;
}

function actuadores_Form(vari, uni){
    
    // Validado excel Johan
    //Validado BD
    
    var swPMinr = 0;
    var swPmaxr = 0;
    var idPreminr = -1;
    var idPremaxr = -1;
    var torqueMinr = "N/A";
    var torqueMaxr = "N/A";
    
    var torqueEs = parseFloat(vari.torquees_act);
    var torqueMax = parseFloat(vari.torquema_act);
    var presion = vari.pre_sel_act;
    
    var uniTorque = parseFloat(uni.toes_sel_act);
    var maxRequerido = Math.round(Math.max(torqueEs, torqueMax)*uniTorque*1.13);
    var porTrabajo = 0;
    var max = -1;
    var minPrer = "N/A";
    var maxPrer = "N/A";
    var maxPre = "N/A";
    var vecMax = [];
    
    var parametros = {
        "max_requerido": maxRequerido,
        "id_actuador" : $("#moac_sel_act").val(),
        "opcion": "101",
        "from": "act"
    };

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
            block("Cargado datos...");
        },
        success: function(data, status, request){
            var tope = data.row.length;
            var i = 0;
            while(i<tope){
                
                vecMax[vecMax.length] = data.row[i].maximo;
                
                if(data.row[i].id_presion === presion){
                    porTrabajo = data.row[i].maximos;
                } 
                
                var maximoF = parseFloat(data.row[i].maximo);
                
                if(max < maximoF){
                    max = maximoF;
                    maxPre = data.row[i].name;
                }
                
                if(parseFloat(data.row[i].aux)>1 && swPMinr === 0){
                    swPMinr = 1;
                    idPreminr = data.row[i].id_presion;
                    minPrer = data.row[i].name;
                }
                
                if(parseFloat(data.row[i].aux)>1.75 && swPmaxr === 0){
                    swPmaxr = 1;
                    idPremaxr = data.row[i].id_presion;
                    maxPrer = data.row[i].name;
                }
                i = i+1;
            }
            
            i = 0;
            var sw = 0;
            while(i<tope && sw <=2){
                if(data.row[i].id_presion === idPreminr){
                    torqueMinr = data.row[i].maximo;
                    sw = sw + 1;
                }
                
                if(data.row[i].id_presion === idPremaxr){
                    torqueMaxr = data.row[i].maximo;
                    sw = sw + 1;
                }
                i = i + 1;
            }
        },
        error: function (xhr, ajaxOptions, err) {
            show_OkDialog($("#error_Dialog_act"), "Error");
        },
        complete: function(){
           unBlock();
        }
    });
    
    var porTramin = ((maxRequerido/uniTorque/torqueMinr)*100).toFixed(2);
    var porTramax = ((maxRequerido/uniTorque/torqueMaxr)*100).toFixed(2);
    
    if(torqueMinr == "N/A"){
        porTramin = "N/A";
    }
    if(torqueMaxr == "N/A"){
        porTramax = "N/A";
    }
   
    return [(porTrabajo*100).toFixed(2), max, maxPre, minPrer, maxPrer, torqueMinr, torqueMaxr, porTramin, porTramax, vecMax];
   
}

function platina_Form(vari){
    
    //Validado Melitsa
    //Bd OK
    
    var Dbc = 0; var Db = 0; var Dext = 0;
    
    var parametros = {
        "tipo": vari.type_sel_pla,
        "nps": vari.nps_sel_pla,
        "opcion": "108",
        "from": "act"
    };

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
            block("Cargado datos...");
        },
        success: function(data, status, request){
            Dbc = data.dbc;
            Db = data.db;
            Dext = data.dext;
            
        },
        error: function (xhr, ajaxOptions, err) {
            show_OkDialog($("#error_Dialog_act"), "Error");
        },
        complete: function(){
           unBlock();
        }
    });
    
    var flujo_pla =  parseFloat(vari.flujo3_pla); //Flujo de diseño [acfh]    
    var d = 0.00925*Math.sqrt((flujo_pla)); //Orifice Dia. [in]
    var tinicial = d/8;
    var t = 0;     
    
    for(var i = 2/16; i<= 8/16; i=i+1/16){
       if(i > tinicial){
           t = i;
           i = 9/16;
       }
    }
    
    var D = Dbc - Db - 1/8;
    var L = Dext - D + 2;
   
    return [t, d.toFixed(4), tinicial.toFixed(3), Dbc, Db, Dext, D, L];
}  

function reguladores_Form(vari, uni){
    
    //Validado Johan
    //Validabo BD
    
    var mod = vari.mod_sel_reg;
    var tam = vari.tam_sel_reg;
    var pmin = get_Pres(parseFloat(vari.rangomin_reg), 0, uni.rangomin_sel_reg, "psig");
    var pmax = get_Pres(parseFloat(vari.rangomax_reg), 0, uni.rangomax_sel_reg, "psig");
    var preg = get_Pres(parseFloat(vari.presionr_reg), 0, uni.presionr_sel_reg, "psig");
    var flujo = get_Flujo(parseFloat(vari.flujomax_reg), uni.flujomax_sel_reg, "SCFH");    
    var temp = get_Temp(parseFloat(vari.tempope_reg), uni.tempope_sel_reg, "F");
    var gesp = parseFloat(vari.grav_reg);
    
    
    var cv, presLl = 0;
    var cMR = "N/A*";
    var porT = "N/A*";
    
    var parametros = {
        "opcion": "109",
        "tamano": tam,
        "modelo": mod
    };

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
        },
        success: function(data, status, request){

            if(data.row.length > 0){                
                cv = parseFloat(data.row[0].cv);
                
                if(cv != 0){
                    presLl = Math.min(pmin, pmax);
                    
                    var capaMax = 59.64 * cv * (presLl + 14.65) * Math.pow((presLl-preg)/(presLl+14.65), 0.5) * Math.pow((520/(gesp*(temp+460))), 0.5) * 24/1000000;
                    
                    var capaCritico = cv * 32.5 * (presLl + 14.65)* Math.pow((520/(gesp *(temp+460))), 0.5) * 24/1000000;
                    var real = Math.min(capaMax, capaCritico);

                    var porcentaje = 0;            
                    if(real != 0){
                        porcentaje = flujo / (real*1000000/24);
                    }

                    var status = porcentaje;
                    if(porcentaje > 0.8){
                        status = 0;
                    }

                    cMR = Math.min(capaMax, capaCritico) * (1000000/24); 
                    porT = flujo / cMR;
                }else{
                    alert("Este Modelo no está disponible en el tamaño especificado");
                }
            }

        },
        error: function (xhr, ajaxOptions, err) {
             alert("Ha ocurrido un error al consultar la especificación del mecanismo de acción");
        },
        complete: function(){
           unBlock();
        }
    });
    
    /*var parametros = {
        "opcion": "110",
        "presLl": presLl,
        "temp": temp,
        "flujo": flujo,
        "preg": preg,
        "gesp": gesp
    };
    
    var maxS =  -1;
    var modS = "";
           

    $.ajax({
        type: "POST",
        url: "Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async : false,
        beforeSend: function (xhr) {
        },
        success: function(data, status, request){

           //alert(JSON.stringify(data));
           //alert(data.row.length);
           for(var i = 0; i < data.row.length; i++){
               if(parseFloat(data.row[i].maximo) > maxS){
                   maxS = parseFloat(data.row[i].maximo);
                   modS = data.row[i].modelo;
               }
           }

        },
        error: function (xhr, ajaxOptions, err) {
             alert("Ha ocurrido un error al consultar la especificación del mecanismo de acción");
        },
        complete: function(){
           unBlock();
        }
    });
    alert(modS);*/
    return [porT, cMR];
    
}
          

//Computadores de Flujo: Validadp Excel Johan y Validado BD, no se realizan calculos, se especifican descripciones

//Transmisores: Validadp Excel Johan y Validado BD, no se realizan calculos, se especifican descripciones

//Motorized Valves: Validadp Excel Johan y Validado BD, no se realizan calculos, se especifican descripciones

//MODULOS MARTIN

//Formulas del modulo 1

//Modulo 1----------------------------------------
//1.1.7
function p_wall_thinkness_Form(vari, uni) {

    /* P = desing pressure                  || designp_ppw
     D = Nominal Outside Diameter         || nominalos_ppw
     S = Specified Minimun Yield Strength || specifiedmys_ppw
     F = Design Factor -F                 || designf_ppw 
     E = Longitudinal Joint Factor        || ljf_ppw
     T = Temperature Derating Factor      || temperaturedf_ppw
     K = Sobre Espesor
     */

    var elev = get_Long(parseFloat(vari.enteree_ppw), uni.al_sel_ppw, "ft"); //Altura [ft]
    var P = get_Pres(parseFloat(vari.designp_ppw), elev, uni.dp_sel_ppw, "psig");
    var D = get_Long(parseFloat(vari.nominalos_ppw), uni.nod_sel_ppw, "in");
    var tc = get_Long(parseFloat(vari.especp_ppw), uni.ac_sel_ppw, "in");
    var S = parseFloat(vari.specifiedmys_ppw);
    var F = parseFloat(vari.designf_ppw);
    var E = parseFloat(vari.ljf_ppw);
    var T = parseFloat(vari.temperaturedf_ppw);
    var t = ((P * D) / (2 * S * F * E * T)) + tc;
    return  t.toFixed(3);
}

//1.2
function reinforcementwelded_Form(vari, uni) {
    /*
     df   = Desing Factor
     temp = Temperature
     p1   = Operating Pressure [PSIG]
     odh  = D - Outside Diameter of the Header
     nwtb = H - Nominal Wall Thickness of the Branch [in.]
     smys = Specified Minimum Yield Strength 
     ljf  = E - Longitudinal Joint Factor
     bodh = Db - Outside Diameter of the Header 
     bnwtb= B - Nominal Wall Thickness of the Branch
     smys2= Specified Minimum Yield Strength -
     ljf1 = E - Longitudinal Joint Factor
     mrod = Minimun Reinforcement Outside Diamenter[in.]
     tar  = In Accordance with ASME B31.8 value of M >=0.25
     rsmys= Reinforcement SMYS
     
     */
    
    var elev = get_Long(parseFloat(vari.h_rwb), uni.h_sel_rwb, "ft"); //Altura [ft]
    var df = parseFloat(vari.df_rwb);
    var temp = parseFloat(vari.temp_rwb);
    var p1 = get_Pres(parseFloat(vari.p1_rwb), elev, uni.p1_sel_rwb, "psig");
    var odh = parseFloat(vari.odh_rwb);
    var nwtb = parseFloat(vari.nwtb_rwb);
    var smys = parseFloat(vari.smys_rwb);
    var ljf = parseFloat(vari.ljf_rwb);
    var bodh = parseFloat(vari.bodh_rwb);
    var bnwtb = parseFloat(vari.bnwtb_rwb);
    var smys2 = parseFloat(vari.smys2_rwb);
    var ljf1 = parseFloat(vari.ljf1_rwb);
    var mrod = get_Long(parseFloat(vari.mrod_rwb), uni.mrod_sel_rwb, "in");
    var tar = parseFloat(vari.tar_rwb);
    var rsmys = parseFloat(vari.rsmys_rwb);
    
    

    var rwtoth = p1 * odh / (2 * df * temp * ljf * smys);
    
    var etithw = nwtb - rwtoth;
    var rwtotb = p1 * bodh / (2 * temp * ljf1 * df * smys2);
    var etitb = bnwtb - rwtotb;
    
    var d = (bodh - 2 * bnwtb);    
    var arrr = d * rwtoth;
    
    var a1rr = (nwtb - rwtoth) * d;
    
    var lheight = 0;
    if ((2.5 * nwtb) < (2.5 * bnwtb + 0.38)) {
        lheight = 2.5 * nwtb;
    } else {
        lheight = 2.5 * bnwtb + 0.38;
    }
    var a2eaibo = 2 * etitb * lheight;
    var a2cea = a2eaibo * (smys2 / smys);
    var a3ra = arrr - a1rr - a2cea;
    var appa = tar * (mrod - bodh);
    var eerr = a3ra / (2 * bodh);
    var lmrr = a3ra / tar;
    var dmrr = bodh + lmrr;

    rwtoth = rwtoth.toFixed(3);
    etithw = etithw.toFixed(3);
    rwtotb = rwtotb.toFixed(3);
    etitb = etitb.toFixed(3);
    arrr = arrr.toFixed(3);
    a1rr = a1rr.toFixed(3);
    lheight = lheight.toFixed(3);
    a2eaibo = a2eaibo.toFixed(3);
    a2cea = a2cea.toFixed(3);

    a3ra = a3ra.toFixed(3);
    appa = appa.toFixed(3);
    eerr = eerr.toFixed(3);
    lmrr = lmrr.toFixed(3);
    dmrr = dmrr.toFixed(3);


    var res = [eerr, lmrr, dmrr, rwtoth, etithw, rwtotb, etitb, arrr, a1rr, lheight, a2eaibo, a2cea, a3ra, appa];
    return res;
}

//Formulas del modulo 2

//FORMULAS MODULO 2 

//Formulas del modulo 2

//PamhandleA - Downstreampressure

function downstreampressure_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     Q  = Flow rate
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
    h = Height
     */

    var Tb = parseFloat(vari.basetemperature_adp);
    var Pb = parseFloat(vari.basepressure_adp);
    var Tf = parseFloat(vari.gasflowingtemp_adp);
    var G = parseFloat(vari.gasspecificgra_adp);
    var Ef = parseFloat(vari.pipelineefficiency_adp);
    var P1 = parseFloat(vari.upstreampressure_adp);
    var Q = parseFloat(vari.flowrate_adp);
    var D = parseFloat(vari.internalpipe_adp);
    var L = parseFloat(vari.lengthof_adp);
    var h1 = parseFloat(vari.upstreamelevation_adp);
    var h2 = parseFloat(vari.downstreamelevation_adp);
    var h = get_Long(parseFloat(vari.enteree_adp), uni.ee_sel_adp, "ft"); 

    var ok = 1;
    var P2 = 0;
    var Le;

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_adp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.gasft_sel_adp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), h, uni.bte_sel_adp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), h, uni.up_sel_adp, "psia");
    // P2 = get_Pres(parseFloat(P2),h, uni.bp_sel_adp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_adp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_apd, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_apd, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_apd, "mt");

    /* L =   L / 1609;
     Tb = Tb + 460;
     Tf = Tf + 460;*/
//alert(Tb+"-"+Pb+"-"+Tf+"-"+G+"-"+Ef+"-"+P1+"-"+Q+"-"+P2+"-"+L+"-"+h1+"-"+h2);
    h1 = h1 * 3.28;
    h2 = h2 * 3.28;
    var Z = 1;
    var e = Math.E;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var sw = 10;

    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    while (sw > 0) {
        if (((-Math.pow((Q / (435.87 * Ef * Math.pow((Tb / Pb), 1.0788) * Math.pow(D, 2.6182))), 1.8539) * (Z * Math.pow(G, 0.8539) * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (435.87 * Ef * Math.pow((Tb / Pb), 1.0788) * Math.pow(D, 2.6182))), 1.8539) * (Z * Math.pow(G, 0.8539) * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
    P2 = puntos(P2, 1);
    //P2 = get_Pres(parseFloat(P2),h, uni.bp_sel_adp, "psia");
    //Salida
    // Downstream Pressure
    var res = [P2];
    return  res;
}
function flowrate_Form(vari, uni) {
   
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     h = Height
     */
    

    var Tb = parseFloat(vari.basetemperature_adp); // *
    var Pb = parseFloat(vari.basepressure_adp);   //*
    var Tf = parseFloat(vari.gasflowingtemp_adp); // *
    var G = parseFloat(vari.gasspecificgra_adp);  // *
    var E = parseFloat(vari.pipelineefficiency_adp);
    var P1 = parseFloat(vari.upstreampressure_adp); // *
    var D = parseFloat(vari.internalpipe_adp);
    var P2 = parseFloat(vari.downstreampressure_adp);
    var L = parseFloat(vari.lengthof_adp);
    var H1 = parseFloat(vari.upstreamelevation_adp);
    var H2 = parseFloat(vari.downstreamelevation_adp);
    
    
    
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_adp, "R");  //Temperatura base Base Temperature
    Tf = get_Temp(parseFloat(Tf), uni.gasft_sel_adp, "R");  //Gas flow temperature 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_adp, "psia"); //Presión base
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_adp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_adp, "psia");

    L = get_Long(parseFloat(L), uni.le_sel_apd, "mil");
    H1 = get_Long(parseFloat(H1), uni.ue_sel_apd, "ft");
    H2 = get_Long(parseFloat(H2), uni.de_sel_apd, "ft");
    D = get_Long(parseFloat(D), uni.de_sel_apd, "in");
    
    var sw = true;
    
    var Pavg = (2 / 3) * (P1 + P2 - P1 * P2 / (P1 + P2));
    
    var Z = 1 / (1 + ((Pavg * 344400 * Math.pow(10,1.785) * G) / (Math.pow(Tf,3.825))));
    var Le, S;
    if(H1 != 0 || H2 != 0){
       S = 0.0375 * G * (H2 - H1) / (Tf * Z);
       Le = L * (Math.pow(Math.E, S) - 1) / S;
    }
    else{
       Le = L;
       S = 0 ;
    }
    
    var Q = (435.87 * E * Math.pow(Tb / Pb, 1.0788)) * Math.pow((Math.pow(P1,2) - Math.pow(Math.E, S) * Math.pow(P2,2)) / (Tf * Le * Z * Math.pow(G,0.8539)), 0.5394) * Math.pow(D,2.6182);
    //alert((Math.pow(P1,2) - Math.pow(Math.E, S) * Math.pow(P2,2)) / (Tf * Le * Z * Math.pow(G,0.8539)));
    
    var res = [Q/1000];
    
    //changeToDecimal(res);
    
    return  res;

    
    /*
    
    var Le = 0;

    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * ((Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G))) / Math.pow(Tf, 3.825));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    //
    var op1 = 435.87 * Ef * Math.pow((Tb / Pb), 1.0788);
    var op2 = (Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2));
    var op3 = (Z * Math.pow(G, 0.8539) * Tf * Le);
    var Q = op1 * Math.pow((op2 / op3), 0.5394) * Math.pow(D, 2.6182);
    Q = puntos(Q, 0);
    var res = [Q];
    //Salida
    // Flow Rate
    return  res;*/
}
function internalpipediameter_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
    h = Height
     */
    var Tb = parseFloat(vari.basetemperature_adp) + 460;
    var Pb = parseFloat(vari.basepressure_adp);
    var Tf = parseFloat(vari.gasflowingtemp_adp) + 460;
    var G = parseFloat(vari.gasspecificgra_adp);
    var Ef = parseFloat(vari.pipelineefficiency_adp);
    var P1 = parseFloat(vari.upstreampressure_adp);
    var Q = parseFloat(vari.flowrate_adp);
    var P2 = parseFloat(vari.downstreampressure_adp);
    var L = parseFloat(vari.lengthof_adp);
    var h1 = parseFloat(vari.upstreamelevation_adp);
    var h2 = parseFloat(vari.downstreamelevation_adp); 
    var h = get_Long(parseFloat(vari.enteree_adp), uni.ee_sel_adp, "ft"); 
    var sw = true;
    //alert(Tb+"-"+Pb+"-"+Tf+"-"+G+"-"+Ef+"-"+P1+"-"+Q+"-"+P2+"-"+L+"-"+h1+"-"+h2);
    var D = 0.1;
    var Z = 1;
    var e = Math.E;

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_adp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.gasft_sel_adp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), h, uni.bte_sel_adp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), h, uni.up_sel_adp, "psia");
    P2 = get_Pres(parseFloat(P2), h, uni.bp_sel_adp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_adp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_apd, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_apd, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_apd, "mt");

    //L =   L / 1609;
    var Pavg = 2 / 3 * ((Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G))) / Math.pow(Tf, 3.825));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));

    var Le;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }


    var D = Math.pow((Q / (435.87 * Ef * Math.pow((Tb / Pb), 1.0788) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * Math.pow(G, 0.8539) * Tf * Le)), 0.5394))), (1 / 2.6182));
    D = puntos(D, 3);
    //Salida
    //  D  = Internal Pipe Diameter
    var res = [D];
    return  res;
}
function upstreampressure_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     h = Height
     */
    var Tb = parseFloat(vari.basetemperature_adp) + 460;
    var Pb = parseFloat(vari.basepressure_adp);
    var Tf = parseFloat(vari.gasflowingtemp_adp) + 460;
    var G = parseFloat(vari.gasspecificgra_adp);
    var Ef = parseFloat(vari.pipelineefficiency_adp);
    var P2 = parseFloat(vari.downstreampressure_adp);
    var Q = parseFloat(vari.flowrate_adp);
    var D = parseFloat(vari.internalpipe_adp);
    var L = parseFloat(vari.lengthof_adp);
    var h1 = parseFloat(vari.upstreamelevation_adp);
    var h2 = parseFloat(vari.downstreamelevation_adp);
    var sw = 10;
    var Le;
    var Z = 1;
    var e = Math.E;
//L =   L / 1609;

    var h = get_Long(parseFloat(vari.enteree_adp), uni.ee_sel_adp, "ft"); 
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_adp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.gasft_sel_adp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), h, uni.bte_sel_adp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
//P1 = get_Pres(parseFloat(P1),0, uni.up_sel_adp, "psia");
    P2 = get_Pres(parseFloat(P2), h, uni.bp_sel_adp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_adp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_apd, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_apd, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_apd, "mt");


    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;

    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

//alert(s+" "+Pa1+" "+Pa2+" "+P2a+" "+Math.pow(e , s));
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (435.87 * Ef * Math.pow((Tb / Pb), 1.0788) * Math.pow(D, 2.6182))), 1.8539) * (Z * Math.pow(G, 0.8539) * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        // alert(P1a);
        var P1 = P1a - Pa1;
        //alert(P1);
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s == 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    //Salida
    //Upstream Pressure
    P1 = puntos(P1, 1);
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_adp, "psia");
    var res = [P1];
    return  res;
}

// PamhandleB - Downstream 
function downstreampressureB_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_bdp);
    var Pb = parseFloat(vari.basepressure_bdp);
    var Tf = parseFloat(vari.gasflowingtemp_bdp);
    var G = parseFloat(vari.gasspecificgra_bdp);
    var Ef = parseFloat(vari.pipelineefficiency_bdp);
    var P1 = parseFloat(vari.upstreampressure_bdp);
    var Q = parseFloat(vari.flowrate_bdp);
    var D = parseFloat(vari.internalpipe_bdp);
    var L = parseFloat(vari.lengthof_bdp);
    var h1 = parseFloat(vari.upstreamelevation_bdp);
    var h2 = parseFloat(vari.downstreamelevation_bdp);

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_bdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_bdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_bdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_bdp, "psia");
//P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_bdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_bdp, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_bdp, "in");
    L = get_Long(parseFloat(L), uni.le_sel_bdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_bdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_bdp, "mt");


    /*L =   L / 1609;
     Tb = Tb + 460;
     Tf = Tf + 460;*/

    h1 = h1 * 3.28;
    h2 = h2 * 3.28;
    var Z = 1;
    var e = Math.E;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var Le;
    if (s == 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var sw = 20;
    while (sw > 0) {
        if (((-Math.pow((Q / (737 * Ef * Math.pow((Tb / Pb), 1.02) * Math.pow(D, 2.53))), 1.961) * (Z * Math.pow(G, 0.961) * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            //Label17.Visible = True
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (737 * Ef * Math.pow((Tb / Pb), 1.02) * Math.pow(D, 2.53))), 1.961) * (Z * Math.pow(G, 0.961) * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            var P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s == 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
//Salida
    //Downstream Pressure
    P2 = puntos(P2, 1);
    var res = [P2];
    return  res;
}
function flowrateB_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_bdp);
    var Pb = parseFloat(vari.basepressure_bdp);
    var Tf = parseFloat(vari.gasflowingtemp_bdp);
    var G = parseFloat(vari.gasspecificgra_bdp);
    var Ef = parseFloat(vari.pipelineefficiency_bdp);
    var P1 = parseFloat(vari.upstreampressure_bdp);
    var D = parseFloat(vari.internalpipe_bdp);
    var P2 = parseFloat(vari.downstreampressure_bdp);
    var L = parseFloat(vari.lengthof_bdp);
    var h1 = parseFloat(vari.upstreamelevation_bdp);
    var h2 = parseFloat(vari.downstreamelevation_bdp);

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_bdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_bdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_bdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_bdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_bdp, "psia");
    
    D = get_Long(parseFloat(D), uni.diam_sel_bdp, "in");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_bdp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_bdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_bdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_bdp, "mt");


    /*L =   L / 1609;
     Tb = Tb + 460;
     Tf = Tf + 460;*/

    h1 = h1 * 3.28;
    h2 = h2 * 3.28;
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * ((Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G))) / Math.pow(Tf, 3.825));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    var Le;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Q = 737 * Ef * Math.pow((Tb / Pb), 1.02) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * Math.pow(G, 0.961) * Tf * Le)), 0.51) * Math.pow(D, 2.53);
    Q = puntos(Q, 0);
    //Salida
    //Flow Rate
    var res = [Q];
    return  res;
}
function internalpipediameterB_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_bdp);
    var Pb = parseFloat(vari.basepressure_bdp);
    var Tf = parseFloat(vari.gasflowingtemp_bdp);
    var G = parseFloat(vari.gasspecificgra_bdp);
    var Ef = parseFloat(vari.pipelineefficiency_bdp);
    var P1 = parseFloat(vari.upstreampressure_bdp);
    var Q = parseFloat(vari.flowrate_bdp);
    var P2 = parseFloat(vari.downstreampressure_bdp);
    var L = parseFloat(vari.lengthof_bdp);
    var h1 = parseFloat(vari.upstreamelevation_bdp);
    var h2 = parseFloat(vari.downstreamelevation_bdp);


    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_bdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_bdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_bdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_bdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_bdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_bdp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_bdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_bdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_bdp, "mt");

    var Le;

    h1 = h1 * 3.28;
    h2 = h2 * 3.28;
    var Z = 1;
    var e = Math.E;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    var D = Math.pow((Q / (737 * Ef * Math.pow((Tb / Pb), 1.02) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * Math.pow(G, 0.961) * Tf * Le)), 0.51))), (1 / 2.53));
    D = puntos(D, 3);
    var res = [D];
    //Salida
    //Internal pipe Diameter
    return  res;
}
function upstreampressureB_Form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_bdp) + 460;
    var Pb = parseFloat(vari.basepressure_bdp);
    var Tf = parseFloat(vari.gasflowingtemp_bdp) + 460;
    var G = parseFloat(vari.gasspecificgra_bdp);
    var Ef = parseFloat(vari.pipelineefficiency_bdp);
    var P2 = parseFloat(vari.downstreampressure_bdp);
    var Q = parseFloat(vari.flowrate_bdp);
    var D = parseFloat(vari.internalpipe_bdp);
    var L = parseFloat(vari.lengthof_bdp);
    var h1 = parseFloat(vari.upstreamelevation_bdp);
    var h2 = parseFloat(vari.downstreamelevation_bdp);

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_bdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_bdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_bdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
//P1 = get_Pres(parseFloat(P1),0, uni.up_sel_bdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_bdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_bdp, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_bdp, "in");
    L = get_Long(parseFloat(L), uni.le_sel_bdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_bdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_bdp, "mt");

    var sw = 20;
    var Le;
    var Z = 1;
    var e = Math.E;
    L = L / 1609;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (737 * Ef * Math.pow((Tb / Pb), 1.02) * Math.pow(D, 2.53))), 1.961) * (Z * Math.pow(G, 0.961) * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
//Salida
    //Upstream Pressure
    var res = [P1];
    return  res;
}
//COLE BROOK-WHITE 

function flowrate_cl_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_cfr);
    var Pb = parseFloat(vari.basepressure_cfr);
    var u = parseFloat(vari.pipelineroughness_cfr);
    var Tf = parseFloat(vari.gasflowingtemp_cfr);
    var G = parseFloat(vari.gasspecificgra_cfr);
    var Ef = parseFloat(vari.pipelineefficiency_cfr);
    var Q = 0;
    var P1 = parseFloat(vari.upstreampressure_cfr);
    var D = parseFloat(vari.internalpipe_cfr);
    var P2 = parseFloat(vari.downstreampressure_cfr);
    var L = parseFloat(vari.lengthof_cfr);
    var h1 = parseFloat(vari.upstreamelevation_cfr);
    var h2 = parseFloat(vari.downstreamelevation_cfr);

    var Le = 0;

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_cfr, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_cfr, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_cfr, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_cfr, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_cfr, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_cfr,"MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_cfr, "in");
    L = get_Long(parseFloat(L), uni.le_sel_cfr, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_cfr, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_cfr, "mt");

    /*L =   L / 1609;
     Tb = Tb + 460;
     Tf = Tf + 460;*/


    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var Re = 1000;
    var F = 10;
    var F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
    var sw = 10;
    var V = 0.0000069;

    while (sw > 1) {
        var op1 = Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5);
        Q = 38.77 * F * Ef * (Tb / Pb) * op1 * Math.pow(D, 2.5);
        Re = 0.0004778 * Pb / Tb * (G * Q / V / D);
        F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
        sw = sw - 1;
    }
    Q = puntos(Q, 0);
    /*  Salida
     Q  = Flow Rate
     */
    return [Q];
}
function downstream_cl_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_cfr);
    var Pb = parseFloat(vari.basepressure_cfr);
    var u = parseFloat(vari.pipelineroughness_cfr);
    var Tf = parseFloat(vari.gasflowingtemp_cfr);
    var G = parseFloat(vari.gasspecificgra_cfr);
    var Ef = parseFloat(vari.pipelineefficiency_cfr);
    var Q = parseFloat(vari.flowrate_cfr);
    var P1 = parseFloat(vari.upstreampressure_cfr);
    var D = parseFloat(vari.internalpipe_cfr);
    //var P2 = parseFloat(vari.downstreampressure_cfr);
    var L = parseFloat(vari.lengthof_cfr);
    var h1 = parseFloat(vari.upstreamelevation_cfr);
    var h2 = parseFloat(vari.downstreamelevation_cfr);
    // alert(Q);
    var Le = 0;

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_cfr, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_cfr, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_cfr, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_cfr, "psia");
    // P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_cfr, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_cfr, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_cfr, "in")
    L = get_Long(parseFloat(L), uni.le_sel_cfr, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_cfr, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_cfr, "mt");

    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    Le = L;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));

    //alert(Pb+" "+Tb+" "+G+" "+Q+" "+V+" "+D);
    var Re = 0.0004778 * Pb / Tb * (G * Q / V / D);
    var F = 10;
    //alert(Re+" "+u+" "+D+" "+F);
    var sw = 10;
    while (sw > 1) {
        F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
        sw = sw - 1;
    }
    Z = 1;
    sw = 10;
    var P2 = 0;

    while (sw > 1) {
        if (((-Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            // Presión arriba insuficiente
            P2 = 0;
            sw = 0;
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);

            P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));

            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
    if (P2 == 0) {
        alert("Presión Aguas Arriba insuficiente ");
    }
    P2 = puntos(P2, 1);
    /*  Salida
     P2 = Downstream Pressure
     */
    return [P2];

}
function upstream_cl_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_cfr);
    var Pb = parseFloat(vari.basepressure_cfr);
    var u = parseFloat(vari.pipelineroughness_cfr);
    var Tf = parseFloat(vari.gasflowingtemp_cfr);
    var G = parseFloat(vari.gasspecificgra_cfr);
    var Ef = parseFloat(vari.pipelineefficiency_cfr);
    var Q = parseFloat(vari.flowrate_cfr);
    //var P1 = parseFloat(vari.upstreampressure_cfr);
    var D = parseFloat(vari.internalpipe_cfr);
    var P2 = parseFloat(vari.downstreampressure_cfr);
    var L = parseFloat(vari.lengthof_cfr);
    var h1 = parseFloat(vari.upstreamelevation_cfr);
    var h2 = parseFloat(vari.downstreamelevation_cfr);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_cfr, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_cfr, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_cfr, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_cfr, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_cfr, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_cfr, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_cfr, "in")
    L = get_Long(parseFloat(L), uni.le_sel_cfr, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_cfr, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_cfr, "mt");

    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;

    var F = 10;
    var Re = 0.0004778 * Pb / Tb * (G * Q / V / D);
    var sw = 10;

    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    //  alert("1."+u+" "+D+" "+F+" "+Re);
    while (sw > 1) {
        F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
        sw = sw - 1;
    }

    Z = 1;
    sw = 10;
    // alert("2."+F+" "+Q+" "+Ef+" "+Tb+" "+Pb+" "+D+" "+Z+" "+G+" "+Tf+" "+Le);
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        // alert("3."+P1a);
        var P1 = P1a - Pa1;
        //  alert("4."+P1+" "+P2+" "+(Math.pow(P1 , 3) - Math.pow(P2 , 3))+" "+(Math.pow(P1 , 2) - Math.pow(P2 , 2)));
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
        // alert("5."+Pavg);
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        // alert("6."+Z);
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  Salida
     P1 = Upstream Pressure
     */
    return [P1];
}
function internal_cl_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_cfr);
    var Pb = parseFloat(vari.basepressure_cfr);
    var u = parseFloat(vari.pipelineroughness_cfr);
    var Tf = parseFloat(vari.gasflowingtemp_cfr);
    var G = parseFloat(vari.gasspecificgra_cfr);
    var Ef = parseFloat(vari.pipelineefficiency_cfr);
    var Q = parseFloat(vari.flowrate_cfr);
    var P1 = parseFloat(vari.upstreampressure_cfr);
    //var D = parseFloat(vari.internalpipe_cfr);
    var P2 = parseFloat(vari.downstreampressure_cfr);
    var L = parseFloat(vari.lengthof_cfr);
    var h1 = parseFloat(vari.upstreamelevation_cfr);
    var h2 = parseFloat(vari.downstreamelevation_cfr);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_cfr, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_cfr, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_cfr, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_cfr, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_cfr, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_cfr, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_cfr, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_cfr, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_cfr, "mt");

    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var V = 0.0000069;
    var Re = 1000;
    var D = 1;
    var F = 10;
    F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
    var sw = 10;
    while (sw > 0) {
        D = Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5))), 0.4);
        Re = 0.0004778 * Pb / Tb * (G * Q / V / D);
        F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
        sw = sw - 1;
    }

    D = puntos(D, 3);
    /*  Salida
     D  = Internal Pipe Diameter
     */
    return [D];
}
// WAYMOUNTH 
function flowrate_wdp_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_wdp);
    var Pb = parseFloat(vari.basepressure_wdp);
    var u = parseFloat(vari.pipelineroughness_wdp);
    var Tf = parseFloat(vari.gasflowingtemp_wdp);
    var G = parseFloat(vari.gasspecificgra_wdp);
    var Ef = parseFloat(vari.pipelineefficiency_wdp);
    var P1 = parseFloat(vari.upstreampressure_wdp);
    var D = parseFloat(vari.internalpipe_wdp);
    var P2 = parseFloat(vari.downstreampressure_wdp);
    var L = parseFloat(vari.lengthof_wdp);
    var h1 = parseFloat(vari.upstreamelevation_wdp);
    var h2 = parseFloat(vari.downstreamelevation_wdp);

    var Le = 0;

    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_wdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_wdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_wdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_wdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_wdp, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_wdp,"MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_wdp, "in");
    L = get_Long(parseFloat(L), uni.le_sel_wdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_wdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_wdp, "mt");

    var Z = 1;
    var e = Math.E;


    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Q = 433.5 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5) * Math.pow(D, 2.667);
    Q = puntos(Q, 0);
    /*  Salida
     *  Q  = Tasa de flujo
     */
    return [Q];
}
function internal_wdp_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_wdp);
    var Pb = parseFloat(vari.basepressure_wdp);
    var u = parseFloat(vari.pipelineroughness_wdp);
    var Tf = parseFloat(vari.gasflowingtemp_wdp);
    var G = parseFloat(vari.gasspecificgra_wdp);
    var Ef = parseFloat(vari.pipelineefficiency_wdp);
    var P1 = parseFloat(vari.upstreampressure_wdp);
    // var D = parseFloat(vari.internalpipe_wdp);
    var Q = parseFloat(vari.flowrate_wdp);
    var P2 = parseFloat(vari.downstreampressure_wdp);
    var L = parseFloat(vari.lengthof_wdp);
    var h1 = parseFloat(vari.upstreamelevation_wdp);
    var h2 = parseFloat(vari.downstreamelevation_wdp);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_wdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_wdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_wdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_wdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_wdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_wdp, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_wdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_wdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_wdp, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var D = Math.pow((Q / (433.5 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5))), 0.375);
    D = puntos(D, 3);
    /* salida
     D  = Internal Pipe Diameter
     */
    return [D];
}
function downstream_wdp_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_wdp);
    var Pb = parseFloat(vari.basepressure_wdp);
    var u = parseFloat(vari.pipelineroughness_wdp);
    var Tf = parseFloat(vari.gasflowingtemp_wdp);
    var G = parseFloat(vari.gasspecificgra_wdp);
    var Ef = parseFloat(vari.pipelineefficiency_wdp);
    var P1 = parseFloat(vari.upstreampressure_wdp);
    var D = parseFloat(vari.internalpipe_wdp);
    var Q = parseFloat(vari.flowrate_wdp);
    //var P2 = parseFloat(vari.downstreampressure_wdp);
    var L = parseFloat(vari.lengthof_wdp);
    var h1 = parseFloat(vari.upstreamelevation_wdp);
    var h2 = parseFloat(vari.downstreamelevation_wdp);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_wdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_wdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_wdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_wdp, "psia");
    // P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_wdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_wdp, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_wdp, "in");
    L = get_Long(parseFloat(L), uni.le_sel_wdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_wdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_wdp, "mt");
    var Z = 1;
    var e = Math.E;
    var P2 = 0;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1;
    var sw = 10;
    while (sw > 0) {
        if (((-Math.pow((Q / (433.5 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            //alert("No se cumple una condición ");
            P2 = 0;
            sw = 0;
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (433.5 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        }
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    if (P2 == 0) {
        alert("Presión Arriba  ");
    } else {
        P2 = puntos(P2, 1);

    }
    /* Salida
     P2 = Downstream Pressure
     */
    return [P2];

}
function upstream_wdp_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_wdp);
    var Pb = parseFloat(vari.basepressure_wdp);
    var u = parseFloat(vari.pipelineroughness_wdp);
    var Tf = parseFloat(vari.gasflowingtemp_wdp);
    var G = parseFloat(vari.gasspecificgra_wdp);
    var Ef = parseFloat(vari.pipelineefficiency_wdp);
    // var P1 = parseFloat(vari.upstreampressure_wdp);
    var D = parseFloat(vari.internalpipe_wdp);
    var Q = parseFloat(vari.flowrate_wdp);
    var P2 = parseFloat(vari.downstreampressure_wdp);
    var L = parseFloat(vari.lengthof_wdp);
    var h1 = parseFloat(vari.upstreamelevation_wdp);
    var h2 = parseFloat(vari.downstreamelevation_wdp);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_wdp, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_wdp, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_wdp, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_wdp, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_wdp, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_wdp, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_wdp, "in");
    L = get_Long(parseFloat(L), uni.le_sel_wdp, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_wdp, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_wdp, "mt");
    var Z = 1;
    var e = Math.E;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Z = 1;
    var sw = 10;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (433.5 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), 2) * (Z * G * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  Salida
     P1 = Upstream Pressure
     */
    return [P1];
}
//AGA
function flowrate_aga_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_aga);
    var Pb = parseFloat(vari.basepressure_aga);
    var u = parseFloat(vari.pipelineroughness_aga);
    var Tf = parseFloat(vari.gasflowingtemp_aga);
    var G = parseFloat(vari.gasspecificgra_aga);
    var Ef = parseFloat(vari.pipelineefficiency_aga);
    //var Q = parseFloat(vari.flowrate_aga);
    var P1 = parseFloat(vari.upstreampressure_aga);
    var D = parseFloat(vari.internalpipe_aga);
    var P2 = parseFloat(vari.downstreampressure_aga);
    var L = parseFloat(vari.lengthof_aga);
    var h1 = parseFloat(vari.upstreamelevation_aga);
    var h2 = parseFloat(vari.downstreamelevation_aga);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_aga, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_aga, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_aga, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_aga, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_aga, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_aga,"MMSCFD");

    L = get_Long(parseFloat(L), uni.diam_sel_aga, "in");
    L = get_Long(parseFloat(L), uni.le_sel_aga, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_aga, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_aga, "mt");

    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    //var Re = 1000;
    // var F = 10;
    // var F = -4 * Math.log(u / 3.7 / D + 1.4125 * F / Re) / Math.log(10);
    // var sw = 10;
    var V = 0.0000069;
    // while(sw > 1 ){
    F = 4 * Math.log(3.7 * D / u) / Math.log(10);
    //sw = sw - 1 ;
    //}
    var Q = 38.77 * F * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5) * Math.pow(D, 2.5);
    Q = puntos(Q, 0);
    /* Salida
     Q  = Tasa de flujo
     */
    return [Q];
}
function internal_aga_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_aga);
    var Pb = parseFloat(vari.basepressure_aga);
    var u = parseFloat(vari.pipelineroughness_aga);
    var Tf = parseFloat(vari.gasflowingtemp_aga);
    var G = parseFloat(vari.gasspecificgra_aga);
    var Ef = parseFloat(vari.pipelineefficiency_aga);
    var Q = parseFloat(vari.flowrate_aga);
    var P1 = parseFloat(vari.upstreampressure_aga);
    //var D = parseFloat(vari.internalpipe_aga);
    var P2 = parseFloat(vari.downstreampressure_aga);
    var L = parseFloat(vari.lengthof_aga);
    var h1 = parseFloat(vari.upstreamelevation_aga);
    var h2 = parseFloat(vari.downstreamelevation_aga);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_aga, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_aga, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_aga, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_aga, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_aga, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_aga, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_aga, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_aga, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_aga, "mt");

    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var D = 1;
    var F = 4 * Math.log(3.7 * D / u) / Math.log(10);
    var sw = 10;
    while (sw > 0) {
        var D = Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le)), 0.5))), 0.4);
        F = 4 * Math.log(3.7 * D / u) / Math.log(10);
        sw = sw - 1;
    }
    /*   Salida
     D  = Internal Pipe Diameter
     */
    D = puntos(D, 3);
    return [D];
}
function downstream_aga_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_aga);
    var Pb = parseFloat(vari.basepressure_aga);
    var u = parseFloat(vari.pipelineroughness_aga);
    var Tf = parseFloat(vari.gasflowingtemp_aga);
    var G = parseFloat(vari.gasspecificgra_aga);
    var Ef = parseFloat(vari.pipelineefficiency_aga);
    var Q = parseFloat(vari.flowrate_aga);
    var P1 = parseFloat(vari.upstreampressure_aga);
    var D = parseFloat(vari.internalpipe_aga);
    //var P2 = parseFloat(vari.downstreampressure_aga);
    var L = parseFloat(vari.lengthof_aga);
    var h1 = parseFloat(vari.upstreamelevation_aga);
    var h2 = parseFloat(vari.downstreamelevation_aga);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_aga, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_aga, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_aga, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_aga, "psia");
    //P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_aga, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_aga, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_aga, "in");
    L = get_Long(parseFloat(L), uni.le_sel_aga, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_aga, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_aga, "mt");

    var Z = 1;
    var e = Math.E;

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var F = 4 * Math.log(3.7 * D / u) / Math.log(10); //'fórmula de F
    Z = 1; //'Z2 asumido
    var sw = 10;
    var P2 = 0;
    while (sw > 1) {
        if (((-Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            //Label17.Visible = True

            sw = 0;
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)); //'presión promedio
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
    if (P2 == 0) {
        alert("Presión Aguas Arriba insuficiente ");
    }
    P2 = puntos(P2, 1);
    /*   Salida
     P2 = Downstream Pressure
     */
    return [P2];
}
function upstream_aga_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_aga);
    var Pb = parseFloat(vari.basepressure_aga);
    var u = parseFloat(vari.pipelineroughness_aga);
    var Tf = parseFloat(vari.gasflowingtemp_aga);
    var G = parseFloat(vari.gasspecificgra_aga);
    var Ef = parseFloat(vari.pipelineefficiency_aga);
    var Q = parseFloat(vari.flowrate_aga);
    //var P1 = parseFloat(vari.upstreampressure_aga);
    var D = parseFloat(vari.internalpipe_aga);
    var P2 = parseFloat(vari.downstreampressure_aga);
    var L = parseFloat(vari.lengthof_aga);
    var h1 = parseFloat(vari.upstreamelevation_aga);
    var h2 = parseFloat(vari.downstreamelevation_aga);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_aga, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_aga, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_aga, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_aga, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_aga, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_aga, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_aga, "in");
    L = get_Long(parseFloat(L), uni.le_sel_aga, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_aga, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_aga, "mt");
    var Z = 1;
    var e = Math.E;
    // var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;

    var F = 10;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    F = 4 * Math.log(3.7 * D / u) / Math.log(10);// 'fórmula de F
    var Z = 1;// 'Z1 asumido
    var sw = 10;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (38.77 * F * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));// 'presión promedio
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }

        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  SAlida
     P1 = Upstream Pressure
     */
    return [P1];
}
//IGT
function flowrate_igt_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_igt);
    var Pb = parseFloat(vari.basepressure_igt);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp_igt);
    var G = parseFloat(vari.gasspecificgra_igt);
    var Ef = parseFloat(vari.pipelineefficiency_igt);
    //var Q = parseFloat(vari.flowrate_igt);
    var P1 = parseFloat(vari.upstreampressure_igt);
    var D = parseFloat(vari.internalpipe_igt);
    var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof_igt);
    var h1 = parseFloat(vari.upstreamelevation_igt);
    var h2 = parseFloat(vari.downstreamelevation_igt);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_igt, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_igt, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_igt, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_igt, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_igt, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_igt,"MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_igt, "in");
    L = get_Long(parseFloat(L), uni.le_sel_igt, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_igt, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_igt, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;

    var Q = 136.9 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (/* Z * */  Math.pow(G, 0.8) * Tf * Le * Math.pow(V, 0.2))), 0.555) * Math.pow(D, 2.667);
    Q = puntos(Q, 0);
    /* Salida
     Q  = Tasa de flujo
     */
    return [Q];
}
function internal_igt_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_igt);
    var Pb = parseFloat(vari.basepressure_igt);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp_igt);
    var G = parseFloat(vari.gasspecificgra_igt);
    var Ef = parseFloat(vari.pipelineefficiency_igt);
    var Q = parseFloat(vari.flowrate_igt);
    var P1 = parseFloat(vari.upstreampressure_igt);
    //var D = parseFloat(vari.internalpipe_igt);
    var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof_igt);
    var h1 = parseFloat(vari.upstreamelevation_igt);
    var h2 = parseFloat(vari.downstreamelevation_igt);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_igt, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_igt, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_igt, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_igt, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_igt, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_igt, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_igt, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_igt, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_igt, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;
    var D = Math.pow((Q / (136.9 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (/* Z * */ Math.pow(G, 0.8) * Tf * Le * Math.pow(V, 0.2))), 0.555))), (1 / 2.667));

    D = puntos(D, 3);
    /*  Salida
     D  = Internal Pipe Diameter
     */
    return [D];
}
function downstream_igt_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_igt);
    var Pb = parseFloat(vari.basepressure_igt);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp_igt);
    var G = parseFloat(vari.gasspecificgra_igt);
    var Ef = parseFloat(vari.pipelineefficiency_igt);
    var Q = parseFloat(vari.flowrate_igt);
    var P1 = parseFloat(vari.upstreampressure_igt);
    var D = parseFloat(vari.internalpipe_igt);
    //var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof_igt);
    var h1 = parseFloat(vari.upstreamelevation_igt);
    var h2 = parseFloat(vari.downstreamelevation_igt);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_igt, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_igt, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_igt, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_igt, "psia");
    //P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_igt, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_igt, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_igt, "in");
    L = get_Long(parseFloat(L), uni.le_sel_igt, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_igt, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_igt, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1; //Z2 asumido
    var sw = 10;
    var P2 = 0;
    while (sw > 0) {
        if (((-Math.pow((Q / (136.9 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), (1 / 0.555)) * (Math.pow(G, 0.8) * Tf * Le * Math.pow(V, 0.2)) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            //Label17.Visible = True
            sw = 0;
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (136.9 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), (1 / 0.555)) * (/* Z * */ Math.pow(G, 0.8) * Tf * Le * Math.pow(V, 0.2)) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)); //'presión promedio
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
    if (P2 == 0) {
        alert("Presión Arriba Insuficiente");
    }
    P2 = puntos(P2, 1);
    /* Salida
     P2 = Downstream Pressure
     */
    return [P2];
}
function upstream_igt_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature_igt);
    var Pb = parseFloat(vari.basepressure_igt);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp_igt);
    var G = parseFloat(vari.gasspecificgra_igt);
    var Ef = parseFloat(vari.pipelineefficiency_igt);
    var Q = parseFloat(vari.flowrate_igt);
    //var P1 = parseFloat(vari.upstreampressure_igt);
    var D = parseFloat(vari.internalpipe_igt);
    var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof_igt);
    var h1 = parseFloat(vari.upstreamelevation_igt);
    var h2 = parseFloat(vari.downstreamelevation_igt);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_igt, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_igt, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_igt, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_igt, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_igt, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_igt, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_igt, "in");
    L = get_Long(parseFloat(L), uni.le_sel_igt, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_igt, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_igt, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1; //'Z1 asumido
    var sw = 10;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (136.9 * Ef * (Tb / Pb) * Math.pow(D, 2.667))), (1 / 0.555)) * (/* Z * */ Math.pow(G, 0.8) * Tf * Le * Math.pow(V, 0.2)) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)); //'presión promedio
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  Salida
     P1 = Upstream Pressure
     */
    return [P1];
}
//MUELLER
function flowrate_mll_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    //var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_mll, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_mll, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_mll, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_mll, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_mll, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_mll,"MMSCFD");
    
    D = get_Long(parseFloat(D), uni.diam_sel_mll, "in");
    L = get_Long(parseFloat(L), uni.le_sel_mll, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_mll, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_mll, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;
    //var Re = 0.0004778 * Pb / Tb * (G * Q / V / D);// 'fórmula de Re

    var Q = 85.7368 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (/* Z  * */ Math.pow(G, 0.7391) * Tf * Le * Math.pow(V, 0.2609))), 0.575) * Math.pow(D, 2.725);
    Q = puntos(Q, 0);
    /* Salida
     Q  = Tasa de flujo
     */
    return [Q];
}
function internal_mll_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    //var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_mll, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_mll, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_mll, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_mll, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_mll, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_mll, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_mll, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_mll, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_mll, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;
    var D = Math.pow((Q / (85.7368 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (/*Z * */ Math.pow(G, 0.7391) * Tf * Le * Math.pow(V, 0.2609))), 0.575))), 0.36697);
    /* Salida
     D  = Internal Pipe Diameter
     */
    D = puntos(D, 3);
    return [D];
}
function downstream_mll_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    //var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_mll, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_mll, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_mll, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_mll, "psia");
    //P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_mll, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_mll, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_mll, "in");
    L = get_Long(parseFloat(L), uni.le_sel_mll, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_mll, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_mll, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    //alert(s+" "+Pa1+" "+P1a+" "+Pa2);
    Z = 1; //'Z2 asumido
    var sw = 20;
    //alert(Q+" "+Ef+" "+Tb+" "+Pb+" "+D+" "+Z+" "+G+" "+Tf+" "+Le+" "+V+" "+P1a+" "+e+" "+s);
    while (sw > 0) {
        if (((-Math.pow((Q / (85.7368 * Ef * (Tb / Pb) * Math.pow(D, 2.725))), 1.739) * (Math.pow(G, 0.7391) * Tf * Le * Math.pow(V, 0.2609)) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            // Label17.Visible = True
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (85.7368 * Ef * (Tb / Pb) * Math.pow(D, 2.725))), 1.739) * (Math.pow(G, 0.7391) * Tf * Le * Math.pow(V, 0.2609)) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            // alert(P2a);
            var P2 = P2a - Pa2;
            // alert(P2);
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)); //'presión promedio
            // alert(Pavg);
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }

    P2 = puntos(P2, 1);
    /* Salida
     P2 = Downstream Pressure
     */
    return [P2];
}
function upstream_mll_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    //var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_mll, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_mll, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_mll, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_mll, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_mll, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_mll, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_mll, "in");
    L = get_Long(parseFloat(L), uni.le_sel_mll, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_mll, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_mll, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Z = 1; //'Z1 asumido
    var sw = 20;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (85.7368 * Ef * (Tb / Pb) * Math.pow(D, 2.725))), 1.739) * (Math.pow(G, 0.7391) * Tf * Le * Math.pow(V, 0.2609)) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));// 'presión promedio
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  Salida
     P1 = Upstream Pressure
     */
    return [P1];
}
//SPITZGLASS
function flowrate_spi_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    //var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);
    //alert(Tb+" "+Pb+" "+Tf+" "+G+" "+Ef+" "+P1+" "+D+" "+P2+" "+L+" "+h1+" "+h2);
    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_spi, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_spi, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_spi, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_spi, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_spi, "psia");

    //Q = get_Flujo(parseFloat(Q),uni.if_sel_spi,"MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_spi, "in");
    L = get_Long(parseFloat(L), uni.le_sel_spi, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_spi, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_spi, "mt");
    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    //alert(L+" "+Tb+" "+Tf+" "+Z+" "+e);
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    //alert(s+" "+Le+" "+P1a+" "+Pa1+" "+Pa2+" "+P2a);
    var V = 0.0000069;

    var Q = 729.6087 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le * (1 + 3.6 / D + 0.03 * D))), 0.5) * Math.pow(D, 2.5);

    /*Salida
     Q  = Tasa de flujo
     */
    Q = puntos(Q, 0);
    return [Q];
}
function internal_spi_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    //var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_spi, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_spi, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_spi, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_spi, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_spi, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_spi, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_spi, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_spi, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_spi, "mt");
    var Z = 1;
    var e = Math.E;
    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;
    var D = 1;// 'D asumido
    var sw = 10;
    while (sw > 0) {
        D = Math.pow((Q / (729.6087 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(e, s) * Math.pow(P2a, 2)) / (Z * G * Tf * Le * (1 + 3.6 / D + 0.03 * D))), 0.5))), 0.4);
        D = D.toFixed(3);
        sw = sw - 1;
    }

    D = puntos(D, 3);
    /* Salida
     D  = Internal Pipe Diameter
     */
    return [D];
}
function downstream_spi_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    //var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_spi, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_spi, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_spi, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_spi, "psia");
    //P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_spi, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_spi, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_spi, "in");
    L = get_Long(parseFloat(L), uni.le_sel_spi, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_spi, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_spi, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1;// 'Z2 asumido
    var sw = 10;
    var P2 = 0;
    while (sw > 0) {
        if (((-Math.pow((Q / (729.6087 * Ef * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * Math.pow(G, 0.961) * Tf * Le * (1 + 3.6 / D + 0.03 * D)) + Math.pow(P1a, 2)) / Math.pow(e, s)) < 0) {
            //Label17.Visible = True
            sw = 0;
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (729.6087 * Ef * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le * (1 + 3.6 / D + 0.03 * D)) + Math.pow(P1a, 2)) / Math.pow(e, s)), 0.5);
            var P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2)); //'presión promedio
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }
    P2 = puntos(P2, 1);
    if (P2 == 0) {
        alert("Presión Arriba Insuficiente");
    }
    /*  Salida
     P2 = Downstream Pressure
     */
    return [P2];
}
function upstream_spi_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    //var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_spi, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_spi, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_spi, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_spi, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_spi, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_spi, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_spi, "in");
    L = get_Long(parseFloat(L), uni.le_sel_spi, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_spi, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_spi, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1; //'Z1 asumido
    var sw = 10;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (729.6087 * Ef * (Tb / Pb) * Math.pow(D, 2.5))), 2) * (Z * G * Tf * Le * (1 + 3.6 / D + 0.03 * D)) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));// 'presión promedio
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    /*  Salida
     P1 = Upstream Pressure    
     */
    return [P1];
}
//FRITZCHE
function flowrate_fri_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    //var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_fri, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_fri, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_fri, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_fri, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_fri, "psia");

    // Q = get_Flujo(parseFloat(Q),uni.if_sel_fri,"MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_fri, "in");
    L = get_Long(parseFloat(L), uni.le_sel_fri, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_fri, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_fri, "mt");
    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;

    var Q = 410.1688 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - /* Math.pow(e , s) * */ Math.pow(P2a, 2)) / (/* Z * */  Math.pow(G, 0.8587) * Tf * Le)), 0.538) * Math.pow(D, 2.69);
    /*  Salida
     Q  = Tasa de flujo
     */
    Q = puntos(Q, 0);
    return [Q];
}
function internal_fri_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     P2 = Downstream Pressure
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    //var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_fri, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_fri, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_fri, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_fri, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_fri, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_fri, "MMSCFD");

    L = get_Long(parseFloat(L), uni.le_sel_fri, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_fri, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_fri, "mt");
    var Z = 1;
    var e = Math.E;

    var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));
    Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));

    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    P1a = P1 + Pa1;
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }

    var V = 0.0000069;
    var D = 1;// 'D asumido
    D = Math.pow((Q / (410.1688 * Ef * (Tb / Pb) * Math.pow(((Math.pow(P1a, 2) - Math.pow(P2a, 2)) / (Math.pow(G, 0.8587) * Tf * Le)), 0.538))), 0.37174);
    /*  Salida
     Q  = Tasa de flujo
     */
    D = puntos(D, 3);
    return [D];
}
function downstream_fri_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P1 = Upstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    //var P2 = parseFloat(vari.downstreampressure_igt);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_fri, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_fri, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_fri, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    P1 = get_Pres(parseFloat(P1), 0, uni.up_sel_fri, "psia");
    //P2 = get_Pres(parseFloat(P2),0, uni.bp_sel_fri, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_fri, "MMSCFD");


    D = get_Long(parseFloat(D), uni.diam_sel_fri, "in");
    L = get_Long(parseFloat(L), uni.le_sel_fri, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_fri, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_fri, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var P1a = P1 + Pa1;
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    var Z = 1; //'Z2 asumido
    var sw = 10;
    while (sw > 0) {
        if (((-Math.pow((Q / (410.1688 * Ef * (Tb / Pb) * Math.pow(D, 2.69))), 1.8587) * (Math.pow(G, 0.8587) * Tf * Le) + Math.pow(P1a, 2))) < 0) {
            //Label17.Visible = True
        } else {
            var P2a = Math.pow(((-Math.pow((Q / (410.1688 * Ef * (Tb / Pb) * Math.pow(D, 2.69))), 1.8587) * (Math.pow(G, 0.8587) * Tf * Le) + Math.pow(P1a, 2))), 0.5);
            var P2 = P2a - Pa2;
            var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));//'presión promedio
            Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
            s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
            if (s === 0) {
                Le = L;
            } else {
                Le = L * (Math.pow(e, s) - 1) / s;
            }
        }
        sw = sw - 1;
    }

    P2 = puntos(P2, 1);
    /* Salida
     P2 = Downstream Pressure
     */
    return [P2];
}
function upstream_fri_form(vari, uni) {
    /*
     Tb = Temperatura base
     Pb = Presión base
     Tf = Gas Temperatura de flujo
     G  = Gas Specific Gravity
     Ef = Pipeline Efficiency Factor
     P2 = Downstream Pressure
     D  = Internal Pipe Diameter
     Q  = Tasa de flujo
     L  = Length of Pipeline
     h1 = Upstream Elevation
     h2 = Downstream Elevation
     */
    var Tb = parseFloat(vari.basetemperature);
    var Pb = parseFloat(vari.basepressure);
    //var u = parseFloat(vari.pipelineroughness_igt);
    var Tf = parseFloat(vari.gasflowingtemp);
    var G = parseFloat(vari.gasspecificgra);
    var Ef = parseFloat(vari.pipelineefficiency);
    var Q = parseFloat(vari.flowrate);
    //var P1 = parseFloat(vari.upstreampressure);
    var D = parseFloat(vari.internalpipe);
    var P2 = parseFloat(vari.downstreampressure);
    var L = parseFloat(vari.lengthof);
    var h1 = parseFloat(vari.upstreamelevation);
    var h2 = parseFloat(vari.downstreamelevation);

    var Le = 0;
    Tb = get_Temp(parseFloat(Tb), uni.bt_sel_fri, "R");  //Temperatura base 
    Tf = get_Temp(parseFloat(Tf), uni.ee_sel_fri, "R");  //Temperatura base 

    Pb = get_Pres(parseFloat(Pb), 0, uni.bte_sel_fri, "psia"); //Presión base: preguntar por elevación
    //en vez de 0 debe ir o Pa1 o Pa2 que son el calculo de la altura
    //P1 = get_Pres(parseFloat(P1),0, uni.up_sel_fri, "psia");
    P2 = get_Pres(parseFloat(P2), 0, uni.bp_sel_fri, "psia");

    Q = get_Flujo(parseFloat(Q), uni.if_sel_fri, "MMSCFD");

    D = get_Long(parseFloat(D), uni.diam_sel_fri, "in");
    L = get_Long(parseFloat(L), uni.le_sel_fri, "mt");
    h1 = get_Long(parseFloat(h1), uni.ue_sel_fri, "mt");
    h2 = get_Long(parseFloat(h2), uni.de_sel_fri, "mt");
    var Z = 1;
    var e = Math.E;
    var V = 0.0000069;
    var s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
    var Pa1 = 14.54 * (55096 - (h1 - 361)) / (55096 + (h1 - 361));
    var Pa2 = 14.54 * (55096 - (h2 - 361)) / (55096 + (h2 - 361));
    var P2a = P2 + Pa2;
    if (s === 0) {
        Le = L;
    } else {
        Le = L * (Math.pow(e, s) - 1) / s;
    }
    Z = 1;// 'Z1 asumido
    var sw = 10;
    while (sw > 0) {
        var P1a = Math.pow(((Math.pow((Q / (410.1688 * Ef * (Tb / Pb) * Math.pow(D, 2.69))), 1.8587) * (Math.pow(G, 0.8587) * Tf * Le) + Math.pow(e, s) * Math.pow(P2a, 2))), 0.5);
        var P1 = P1a - Pa1;
        var Pavg = 2 / 3 * (Math.pow(P1, 3) - Math.pow(P2, 3)) / (Math.pow(P1, 2) - Math.pow(P2, 2));// 'presión promedio
        Z = 1 / (1 + (Pavg * 344400 * Math.pow(10, (1.785 * G)) / Math.pow(Tf, 3.825)));
        s = 0.0375 * G * (h2 / Z - h1 / Z) / Tf;
        if (s === 0) {
            Le = L;
        } else {
            Le = L * (Math.pow(e, s) - 1) / s;
        }
        sw = sw - 1;
    }
    P1 = puntos(P1, 1);
    
    /*  Salida
     P1 = Upstream Pressure
     */
    return [P1];
}
//=============MODULO 5=============================
//PIR 5.2
function erf_Form(vari, uni) {
    /* 
     *  longacor_erf    = Longitud del área corroída
     *  pmpmac_erf      = Porcentaje máximo de pérdida de metal del área corroída
     *  dianoex_erf     = Diámetro nominal externo
     *  esnotu_erf      = Espesor nominal de la tubería
     *  smys_erf        = SMYS
     *  maop_erf        = MAOP
     *  cllocalidad_erf = Clase de localidad
     * 
     * 
     */

    var longacor_erf = get_Long(parseFloat(vari.longacor_erf), uni.de_sel_erf, "mm");
    //alert(parseFloat(vari.longacor_erf));
    //alert(longacor_erf);
    var pmpmac_erf = parseFloat(vari.pmpmac_erf); //porcentaje
    pmpmac_erf = pmpmac_erf / 100;
    var dianoex_erf = get_Long(parseFloat(vari.dianoex_erf), uni.dn_sel_erf, "in");
    var esnotu_erf = get_Long(parseFloat(vari.esnotu_erf), uni.en_sel_erf, "in");
    var smys_erf = parseFloat(vari.smys_erf); //psi
    var maop_erf = get_Pres(parseFloat(vari.maop_erf), 0, uni.maop_sel_erf, "psig"); //psi
    var fdiseno = parseFloat(vari.cllocalidad_erf);
    
    var L = longacor_erf/25.4;
    var A = 0.893*L/(Math.pow(dianoex_erf*esnotu_erf, 0.5));
    
    var G = 0;
    if (A <= 4) {
        G = 1.1 * smys_erf * ((1 - (2 / 3) * pmpmac_erf) / (1 - (2 / 3) * (pmpmac_erf / Math.sqrt((Math.pow(A, 2) + 1)))));
    } else {
        G = 1.1 * smys_erf * (1 - pmpmac_erf);
    }
    G = G.toFixed(4);
    
    var Pfalla = 2*G*esnotu_erf/dianoex_erf;
    
    
    
    var P = 0;
    if ((2 * smys_erf * esnotu_erf * fdiseno / dianoex_erf) > maop_erf) {
        P = (2 * smys_erf * esnotu_erf * fdiseno / dianoex_erf);
    } else {
        P = maop_erf;
    }

    P = P.toFixed(4);
    
    var P1 = 0;
    if (A <= 4) {
        P1 = 1.1 * P * ((1 - 2 / 3 * pmpmac_erf) / (1 - 2 / 3 * (pmpmac_erf / Math.sqrt((Math.pow(A, 2) + 1)))));
    } else {
        P1 = 1.1 * A * (1 - pmpmac_erf);
    }
    
    var smysM_erf = smys_erf + 10000;

    var Dt = L / Math.pow((dianoex_erf * esnotu_erf), 0.5);
    Dt = Math.pow(Dt, 2);
    Dt.toFixed(4);
    var M = 0;
    if (Dt > 50) {
        M = 0.032 * Dt + 3.3;
    } else {
        M = Math.pow((1 + 0.6275 * Dt - 0.003375 * Dt * Dt), 0.5);
    }
    
    M = M.toFixed(4);
    
    var Gf = smysM_erf * (1 - 0.85 * pmpmac_erf) / (1 - 0.85 * pmpmac_erf / M);
    Gf = Gf.toFixed(4);
    var Pf = 2 * Gf * esnotu_erf / dianoex_erf;
    Pf = parseInt(Pf);
    var Psegura = Pf * fdiseno;
    Psegura = Psegura.toFixed(4);
    var pfp  = maop_erf / Psegura ;
    pfp = pfp.toFixed(3);
    var fos = Pf / maop_erf ;
    fos = fos.toFixed(3);
    
    //var res = [Pfalla.toFixed(4), P1.toFixed(4), (maop_erf/P1).toFixed(4), Pf, Psegura, pfp, fos];
    var res=[Pfalla.toFixed(4), P1.toFixed(4), (maop_erf/P1).toFixed(4), (Pf)+"", Psegura, pfp, fos];
    changeToDecimal(res);
    return res;
    
    
    

    /*smys_erf;//= get_Pres(parseFloat(smys_erf),0, uni.smys_sel_erf, "psia"); //Presión base: preguntar por elevación
    maop_erf;//= get_Pres(parseFloat(maop_erf),0, uni.maop_sel_erf, "psia"); //Presión base: preguntar por elevación

    /*  L           =  get_Long(parseFloat(L) ,uni.de_sel_erf, "mm") ;
     dianoex_erf =  get_Long(parseFloat(dianoex_erf) ,uni.dn_sel_erf, "mm") ;
     esnotu_erf  =  get_Long(parseFloat(esnotu_erf) ,uni.en_sel_erf, "mm") ;
     
    var L = longacor_erf / 25.4;// preguntar porque esta division a que esta pasando mm

    L = L.toFixed(4);

    var A = 0.893 * L / (Math.sqrt((dianoex_erf * esnotu_erf)));
    A = A.toFixed(4);


    var G = 0;
    if (A <= 4) {
        G = 1.1 * smys_erf * ((1 - (2 / 3) * pmpmac_erf) / (1 - (2 / 3) * (pmpmac_erf / Math.sqrt((Math.pow(A, 2) + 1)))));
    } else {
        G = 1.1 * smys_erf * (1 - pmpmac_erf);
    }
    G = G.toFixed(4);

    var pfalla = 2 * G * esnotu_erf / dianoex_erf;
    pfalla = pfalla.toFixed(4);

    var fdiseno = 0;
    if (cllocalidad_erf === 1) {
        fdiseno = 0.72;
    } else {
        if (cllocalidad_erf === 2) {
            fdiseno = 0.62;
        } else {
            if (cllocalidad_erf === 3) {
                fdiseno = 0.5;
            } else {
                if (cllocalidad_erf === 4) {
                    fdiseno = 0.4;
                } else {
                    fdiseno = 0;
                }
            }
        }
    }
    var P = 0;
    if ((2 * smys_erf * esnotu_erf * fdiseno / dianoex_erf) > maop_erf) {
        P = (2 * smys_erf * esnotu_erf * fdiseno / dianoex_erf);
    } else {
        P = maop_erf;
    }

    P = P.toFixed(4);

    var P1 = 0;
    if (A <= 4) {
        P1 = 1.1 * P * ((1 - 2 / 3 * pmpmac_erf) / (1 - 2 / 3 * (pmpmac_erf / Math.sqrt((Math.pow(A, 2) + 1)))));
    } else {
        P1 = 1.1 * A * (1 - pmpmac_erf);
    }

    P1 = P1.toFixed(4);

    var smysM_erf = smys_erf + 10000;

    var Dt = L / Math.pow((dianoex_erf * esnotu_erf), 0.5);
    Dt = Math.pow(Dt, 2);
    Dt.toFixed(4);
    var M = 0;
    if (Dt > 50) {
        M = 0.032 * Dt + 3.3;
    } else {
        M = Math.pow((1 + 0.6275 * Dt - 0.003375 * Dt * Dt), 0.5);
    }
    M = M.toFixed(4);
    var Gf = smysM_erf * (1 - 0.85 * pmpmac_erf) / (1 - 0.85 * pmpmac_erf / M);
    Gf = Gf.toFixed(4);
    // alert(Gf);
    var Pf = 2 * Gf * esnotu_erf / dianoex_erf;
    Pf = parseInt(Pf);
    //alert(Pf);
    var Psegura = Pf * fdiseno;
    Psegura = Psegura.toFixed(4);
    // alert(Psegura);
    /*
     *  Salida - Resultados (B31G)
     *  pfalla             = Presión de falla de la pérdida de metal
     *  P1                 = Presión segura de operación
     *  (maop_erf/P1)      = ERF
     *  Salida - Resultados  (B31G Modificado)
     *  Pf                 = Presión de falla de la pérdida de metal 
     *  Psegura            = Presión segura de operación:
     *  (maop_erf/Psegura) = ERF
     *  (Pf/maop_erf)      = FOS
     *  
     
    pfalla = parseInt(pfalla);
    P1 = parseInt(P1);
    var erf =  maop_erf / P1;
    erf = erf.toFixed(3);
    Psegura = parseInt(Psegura);
    var pfp  = maop_erf / Psegura ;
    pfp = pfp.toFixed(3);
    var fos = Pf / maop_erf ;
    fos = fos.toFixed(3);
    return [pfalla, P1, erf, Pf, Psegura, pfp , fos];*/

}

//=============MODULO 3=============================
//3.1
function bending_stress_form(vari,uni) {
    /*
     * Entrada
     * 
     *  F15 = Diametro externo de la tubería
     *  F16 = Espesor de la pared de la tubería
     *  F17 = Pipe Length
     *  F18 = Modulus of Elasticity
     * 
     */


    var F15 = parseFloat(vari.pipe_dia_bds);    // in
    var F16 = parseFloat(vari.pipe_wt_bds);     // in
    var F17 = parseFloat(vari.pipe_lenght_bds); // ft
    var F18 = parseFloat(vari.mod_elas_bds);    // psi
    
   F15 = get_Long(parseFloat(F15), uni.ee_sel_bds, "in");
   F16 = get_Long(parseFloat(F16), uni.ee1_sel_bds, "in");
   F17 = get_Long(parseFloat(F17), uni.pipe_lenght_sel_bds, "ft");
   F18 = get_Pres(parseFloat(F18), 0, uni.dp_sel_ppw, "psig");
 
 
    var E_MaxEsFl = (10.2 * (10.69 * (F15 - F16) * F16) * F15 * Math.pow(F17, 2)) / (Math.pow(F15, 4) - Math.pow((F15 - 2 * F16), 4));
    var E_DM = (7.6 * (10.69 * (F15 - F16) * F16) * Math.pow(F17, 4)) / (F18 * (Math.pow(F15, 4) - Math.pow((F15 - 2 * F16), 4)));
    // E_DM = E_DM.toFixed(10);
    var A_MaxEsFl = 1.5 * E_MaxEsFl;
    var A_DM = 5 * E_DM;

    var V_MaxEsFl = 6 * E_MaxEsFl;
    var V_DM = 48 * E_DM;
    /*
     *  Salida
     *  FIXED ENDS SUPPORT :
     *  E_MaxEsF1 = Maximun Bending Stress
     *  E_DM      = Maximun Deflection
     *  
     *  SIMPLE SUPPORT :
     *  A_MaxEsFl = Maximun Bending Stress
     *  A_DM      = Maximun Deflection
     *  
     *  CANTILEVER SUPPORT :
     *  V_MaxEsFl = Maximun Bending Stress
     *  V_DM      = Maximun Deflection
     *  
     */
    E_MaxEsFl = E_MaxEsFl.toFixed(1);
    E_DM      = E_DM.toFixed(3);
    
    A_MaxEsFl = A_MaxEsFl.toFixed(1);
    A_DM      = A_DM.toFixed(3);
    
    V_MaxEsFl = V_MaxEsFl.toFixed(1);
    V_DM      = V_DM.toFixed(3);
    
    return [E_MaxEsFl, E_DM, A_MaxEsFl, A_DM, V_MaxEsFl, V_DM];
}
//3.2
function bending_stress_fluid_form(vari,uni) {
    /*
     * Entrada
     *  F15 = Unit Weight of Fluid (Default Water) 
     *  F16 = Diametro externo de la tubería
     *  F17 = Pipe Inside Diameter
     *  F18 = Velocity of Fluid
     *  F19 = Lenght of Pipe
     * 
     */
    var F15 = parseFloat(vari.unit_weight_bdsf);
    var F16 = parseFloat(vari.pipe_dia_bdsf);
    var F17 = parseFloat(vari.pipe_in_dia_bdsf);
    var F18 = F16 - 2 * F17;
    var F19 = parseFloat(vari.vel_fluid_bdsf);
    var F20 = parseFloat(vari.lenght_pipe_bdsf);
    
    F16 = get_Long(parseFloat(F16), uni.pipe_diam_sel_bdsf, "in");
    F17 = get_Long(parseFloat(F17), uni.pipe_in_diam_sel_bdsf, "in");
    F20 = get_Long(parseFloat(F20), uni.lenght_pipe_sel_bdsf, "ft");
    
    
    var ef = (F15 * (Math.pow(F16, 2)) * (Math.pow(F19, 2)) * (Math.pow(F20, 2))) / (58.4 * ((Math.pow(F16, 4)) - (Math.pow(F18, 4))));
    /*
     * Salida
     * ef = Bending Stress
     */
    ef = ef.toFixed(1);
    return [ef];
}
//3.3
function buoyancy_analisis_form(vari, uni) {
    /*
     * ENTRADA
     * F16 = Water Density 
     * F17 = Concrete Coating Density
     * F18 = Corrision Coating Density
     * F19 = Nominal Outside Diameter
     * F20 = Nominal Wall Thickness
     * F21 = Design Specific Gravity Ratio
     * F22 = Corrosion Coating Thickness
     * F23 = Pipe Lenght
     * 
     */
    var F16 = parseFloat(vari.nomout_basc);
    var F17 = parseFloat(vari.nom_wall_basc);
    var F18 = parseFloat(vari.spec_gra_basc);
    var F19 = parseFloat(vari.corr_coa_thick_basc);
    var F20 = parseFloat(vari.pipe_lenght_basc);
    var F21 = parseFloat(vari.water_dens);
    var F22 = parseFloat(vari.conc_water_dens);
    var F23 = parseFloat(vari.corr_coa);
    
    F16 = get_Long(F16, uni.nomout_sel_basc, "in");
    F17 = get_Long(F17, uni.nom_wall_sel_basc, "in");
    F20 = get_Long(F20, uni.pipe_len_sel_basc, "ft");

    var F27 = 10.68 * (F16 - F17) * F17;
    var F30 = (-F18 - (F16 / 3) * (F16 - 32 * F17)) * (48 / (F16 * (63 - F22)));
    var F28 = (Math.PI / 4) * ((F16 / 12) + 2 * ((F30 / 12) + F19 * (8.33 * Math.pow(10, (-5)))));

    var B40 = (F16 / 12) + (2 * (F19 * 8.33 * Math.pow(10, (-5))));
    var B41 = Math.pow(B40, 2);
    var B42 = Math.pow((F16 / 12), 2);
    // alert(B40+" "+B41+" "+B42);

    var F29 = 3.1416 * (B41 - B42) / 4;
    F29 = roundToTwo(F29);
    var F31 = F28 - ((Math.PI / 4) * ((F16 / 12) + 2 * (F19 * 8.33 * Math.pow(10, (-5)))));
    var F32 = F27 + F29 * F23 + F31 * F22;
    var F33 = F28 * F21;
    var F34 = F32 - F33;
    var F35 = F34 * F20;
    /*
     * SALIDA
     * F27 = Pipe Weight 
     * F28 = Total Volume
     * F29 = Corrosion Coating Volume
     * F30 = Concrete Coating Thickness
     * F31 = Concrete Coating Volume
     * F32 = Weight of Pipe in Air
     * F33 = Weight of Water Displaced
     * F34 = Weight of Sugmerged Pipe
     * F35 = Weight per Joint
     * 
     */

    return [F27.toFixed(2), F28.toFixed(2), F29.toFixed(2), F30.toFixed(2), F31.toFixed(2), F32.toFixed(2), F33.toFixed(2), F34.toFixed(2), F35.toFixed(2)];





}
function roundToTwo(num) {
    return +(Math.round(num + "e+2") + "e-2");
}
//3.4
function buyancy_weight_form(vari, uni) {
    /*
     * ENTRADA
     * F14 = Nominal Pipe Outside Diameter
     * F15 = Espesor de la pared nominal de la tubería 
     * F16 = Corrosion Coating Thickness
     * F17 = Espesor de capa de concreto
     * F18 = Densidad del agua
     * F19 = Densidad del recubrimiento
     * F20 = Densidad del Producto
     * F21 = Densidad del Concreto
     * F22 = Factor de Seguridad
     * 
     */
    var F14 = parseFloat(vari.nomout_baw);
    var F15 = parseFloat(vari.nom_wall_baw);
    var F16 = parseFloat(vari.corr_coa_baw);
    var F17 = parseFloat(vari.esp_capa_baw);
    var F18 = parseFloat(vari.vol_agua_baw);
    var F19 = parseFloat(vari.dens_recu_baw);
    var F20 = parseFloat(vari.dens_prod_baw);
    var F21 = parseFloat(vari.dens_conc_baw);
    var F22 = parseFloat(vari.safe_fact_baw);

    F14 = get_Long(F14, uni.nomout_sel_baw, "in");
    F15 = get_Long(F15, uni.nom_wall_sel_baw, "in");
    F16 = get_Long(F16, uni.corr_coa_sel_baw, "in");
    
    var F26 = ((Math.PI / 4) * Math.pow(((F14 + 2 * F16) / 12), 2)) * F18;
    var F27 = 10.6802 * F15 * (F14 - F15);
    var F28 = (((Math.PI / 4) * Math.pow(((F14 + 2 * F16) / 12), 2)) - ((Math.PI / 4) * Math.pow(((F14) / 12), 2))) * F19;
    var F29 = ((Math.PI / 4) * Math.pow(((F14 - 2 * F15) / 12), 2)) * F20;
    var F30 = F27 + F28 + F29;
    var F31 = (F26 - F30) * F22;
    var F32 = (Math.PI / 4) * (Math.pow(((F14 + 2 * F16 + 2 * F17) / 12), 2) - Math.pow(((F14 + 2 * F16) / 12), 2)) * F21;
    var F33 = F32 / F31;

    /*
     * SALIDA
     * F26 = Buoyant Force
     * F27 = Weight of Pipe in the Air
     * F28 = Weight of Coating in the Air
     * F29 = Weight of Product int the Pipe
     * F30 = Downward Force of the Pipe
     * F31 = Net Controlling Force
     * F32 = Downward Force of the Concrete Weight 
     * F33 = Concrete Weight Spacing
     * 
     * 
     */


    return [F26.toFixed(2), F27.toFixed(2), F28.toFixed(2), F29.toFixed(2), F30.toFixed(2), F31.toFixed(2), F32.toFixed(2), F33.toFixed(2)];
}
//3.5
function design_pressure_form(vari) {
    /*
     *  Entrada
     *  nom_pipeop_dp = Tamaño nominal de la tubería
     *  D  = Nominal Outside Diameter
     *  t = Nominal Wall Thickness
     *  gra_pipeop_dp = Grade
     *  S = Specified Minimun Yield Strength
     *  F = Design Factor 
     *  E = Longitudinal Join Factor
     *  T = Temperature Derating Factor
     */
    var nom_pipeop_dp = parseFloat(vari.nom_pipeop_dp);
    var D = parseFloat(vari.nomout_pipeop_dp);
    var t = parseFloat(vari.nomwall_pipeop_dp);
    var gra_pipeop_dp = parseFloat(vari.gra_pipeop_dp);
    var S = parseFloat(vari.yield_pipeop_dp);
    var F = parseFloat(vari.fact_pipeop_dp);
    var E = parseFloat(vari.long_pipeop_dp);
    var T = parseFloat(vari.temp_pipeop_dp);

    var P = 2 * S * t * F * E * T / D;
    /*
     * Salida
     * P = Design Pressure 
     */
    return [P.toFixed(3)];
}
//3.6
function desing_pressure_polyethylene_form(vari) {

    /*
     * ENTRADA
     *  TextBox5 = Tamaño nominal de la tubería
     *  TextBox6 = Outside Diameter
     *  TextBox7 = Espesor de pared
     *  TextBox8 = Hydrostatic Design Basis
     *  TextBox9 = Design Factor
     *  
     */

    var TextBox5 = parseFloat(vari.nom_pipeop_dpp);
    var TextBox6 = parseFloat(vari.out_pipeop_dpp);
    var TextBox7 = parseFloat(vari.wall_pipeop_dpp);
    var TextBox8 = parseFloat(vari.hyd_pipeop_dpp);
    var TextBox9 = parseFloat(vari.fact_pipeop_dpp);
    var ComboBox2 = parseFloat(vari.minimal_sel_dpp);
    //ComboBox2 = 21; // coregir cuando se carge el combo
    var t = TextBox6 / ComboBox2;
    /*if (t < 0.062){
     TextBox7 = 0.0622;
     }else{
     TextBox7 = t;
     }*/
    // alert(t+" "+TextBox8+" "+TextBox7+" "+TextBox9+" "+TextBox6+" "+TextBox7);
    var P = 2 * TextBox8 * TextBox7 * TextBox9 / (TextBox6 - TextBox7);
    /*
     * Salida
     *  P = Design Pressure  
     */
    return [P.toFixed(2)];

}
//3.7
function gaspipeline_form(vari) {
    /*
     * ENTRADA
     * Dp   = Diametro externo de la tubería [in]
     * P0   = Pipe Internal Pressure [psig]
     * Dc   = Depth of Cover [ft]
     * Y    = Average Unit Weight of Soil 
     * w    = Natural Gas Specific Heat Radio
     * a1   = Alpha 1 - Creater Wall Angle at Ground Level [°]
     * a2   = Alpha 2 - Creater Wall Angle at Half Depht [°]
     * Psoil= w Soil Parameter
     */
    var Dp = parseFloat(vari.Dp);
    var P0 = parseFloat(vari.P0);
    var Dc = parseFloat(vari.Dc);
    var Y = parseFloat(vari.Y);
    var w = parseFloat(vari.w);
    var a1 = parseFloat(vari.alpha1);
    var a2 = parseFloat(vari.alpha2);
    var Psoil = parseFloat(vari.Psoil);

    Psoil = Psoil * 16;

    var Rw = 0.28 + 0.62 * (5 - w) - 0.07 * (25 - Math.pow(w, 2));
    var D = 0;
    var W = 0; // COMO SACO A Y B EN LA FORMULA
    var a = a1;
    var b = a2;
    if (0.28 < Rw && Rw < 1.3) {
        if (w <= 0.6) {
            D = 4.3 * Dp + Dc;
        }
        if (0.6 < w && w < 2) {
            D = ((Rw * Dp) / 0.3) + Dc;
        }
        if (2 <= w) {
            D = 2.2 * Dp + Dc;
        }
    } else {
        D = 0;
    }
    W = 2 * a * Math.pow((1 - Math.pow(b - D, 2) / Math.pow(b, 2)), 0.5);

    var op1 = 0.64 * Math.pow(Math.pow(Dp, 3) * P0, 0.67);
    var op2 = 0.65 * Math.pow(Math.pow(Dp, 3) * P0, 0.33);
    var op3 = 0.83 * Math.pow(Dc, 2);

    var RW = Math.sqrt(op1 + op2 - op3);
    var Rp = Dp / 2;
    var ww = Dc + Rp;
    var Uky = 2.54;

    var Ux = Math.sqrt((Y * P0) / (3 * Psoil * (Math.pow(Y, 2) - 1)));

    var W1 = 2 * Math.sqrt(((Dp * ww) / Uky) * Ux - Math.pow(ww, 2));

    /*
     * SALIDA 
     *  Rw = R Soil Parameter Funcion
     *  D = Depth of Crater 
     *  W = Width of Crater 
     *  RW = Radius of Crater 
     *  Ux = Velocity of Explosive Gases 
     *  (D*3.2) = Depth of Crater 
     *  W1 =Width of Crater 
     * 
     * 
     */

    return [Rw, D, W, RW, Ux, (D * 3.2), W1];
}
//3.8
function hoop_longitudinal_form(vari) {
    /*
     * ENTRADA
     * F15 = Tamaño nominal de la tubería
     * F16 = Nominal Outside Diameter
     * F17 = Nominal Wall Thickness
     * F18 = Internal Pressure
     * 
     */
    var F15 = parseFloat(vari.nom_pipe_hoop);
    var F16 = parseFloat(vari.nomout_hoop);
    var F17 = parseFloat(vari.nom_wall_hoop);
    var F18 = parseFloat(vari.int_press_hoop);
    var F21 = F18 * F16 / (2 * F17);
    var F22 = F18 * F16 / (4 * F17);
    /*
     * Salida
     * F21 = Hoop Stress
     * F22 = Logitudinal Stress
     */

    return [F21.toFixed(1), F22.toFixed(1)];
}
//3.9
function install_pipelines_Form(vari) {

    /*
     * ENTRADA
     *  E11 = 
     *  E12 =
     *  E13
     *  E14
     *  G11
     * 
     * 
     * 
     */
    var E11 = parseFloat(vari.E11);
    E11 = E11.toFixed(2);
    var TextBox5 = E11;
    var E12 = parseFloat(vari.E12);
    E12 = E12.toFixed(2);
    var TextBox6 = E12;
    var E13 = parseFloat(vari.E13);
    E13 = E13.toFixed(2);
    var E14 = parseFloat(vari.E14);
    E14 = E14.toFixed(2);
//alert(E14);
    var G11 = parseFloat(vari.G11); // TextBox10
    G11 = G11.toFixed(2);
    var TextBox10 = G11;
    var G12 = parseFloat(vari.G12); // TextBox11
    G12 = G12.toFixed(2);
    var TextBox11 = G12;
    var E18 = parseFloat(vari.E18);
    E18 = E18.toFixed(2);
    var E19 = parseFloat(vari.E19);
    E19 = E19.toFixed(2);
    var E22 = parseFloat(vari.E22); // TextBox15
    E22 = E22.toFixed(2);
    var TextBox15 = E22;
    var E23 = parseFloat(vari.E23); // TextBox16
    E23 = E23.toFixed(2);
    var TextBox16 = E23;
    var E24 = parseFloat(vari.E24); // TextBox17
    E24 = E24.toFixed(2);
    var TextBox17 = E24;
    var E27 = parseFloat(vari.E27); // TextBox18}
    E27 = E27.toFixed(2);
    var TextBox18 = E27;
    var E30 = parseFloat(vari.E30); // TextBox19
    E30 = E30.toFixed(2);
    var TextBox19 = E30;
    var E31 = parseFloat(vari.E31); // TextBox20
    E31 = E31.toFixed(2);
    var TextBox20 = E31;
    var E32 = parseFloat(vari.E32); // TextBox21
    E32 = E32.toFixed(2);
    var TextBox21 = E32;
    var E35 = parseFloat(vari.E35);
    E35 = E35.toFixed(2);
    var TextBox22 = E35;
    var E36 = parseFloat(vari.E36);
    E36 = E36.toFixed(2);
    var TextBox23 = E36;
    var TextBox8 = parseFloat(vari.TextBox8);
    TextBox8 = TextBox8.toFixed(2);

//alert(E11+" "+E12+" "+E13+" "+E14+" "+G11+" "+G12+" "+E18+" "+E19+" "+E22+" "+E23+" "+E27+" "+E30+" "+E31+" "+E32+" "+E35+" "+E36+" "+TextBox8);
    var TextBox24 = (E11 - E12) * E12 * 10.69;
    var TextBox25 = (Math.PI / 4) * Math.pow((E11 / 12), 2);
    // (3.1416 / 4 ) * 80/12 Ele 2 = 0.7854 * 0.4356 = 0.342120
    var TextBox26 = (Math.PI / 4) * Math.pow(((E11 - (2 * E12)) / 12), 2);
    var TextBox28 = E14 * TextBox25;
    var E44 = TextBox28;
    var TextBox13 = E18;
    var TextBox14 = E19;
    var E18 = TextBox13;
    var E19 = TextBox14;
    var E40 = (E11 - E12) * E12 * 10.69;
    var E45 = E40 - E44;
    var TextBox29 = E45;
    var E56 = Math.abs(E45 * E18 * Math.cos(E19 * Math.PI / 180) * G11);
    var TextBox30 = E56;
    var E57 = 12 * Math.PI * E11 * E18 * G12;
    var TextBox31 = E57;
    var E58 = E56 + E57 - (E45 * E18 * Math.sin(E19 * Math.PI / 180));
    var TextBox32 = E58;
    var E59 = E58;
    var TextBox33 = E59;
    var E66 = TextBox33;

// salida 
    var TextBox39 = Math.abs(E45 * E27 * G11);
    var TextBox40 = 12 * Math.PI * E11 * E27 * G12;
    var E70 = 12 * Math.PI * E11 * E27 * G12;
    var E69 = Math.abs(E45 * E27 * G11);
    var TextBox41 = E70 + E69;
    var E71 = E70 + E69;


    var Tave = 1000;
    var Taver = 0;
    var sw = 0;
    while (sw == 0) {  // inicio mientras que 
        var h = TextBox17 * (1 - Math.cos(TextBox16 * 3.1416 / 180));
//alert(TextBox17+" "+TextBox16+" "+Math.cos( TextBox16 * 3.1416 / 180));
        var i = 3.1416 * (Math.pow((TextBox5 - TextBox6), 3) * (TextBox6 / 8));
        var j = Math.pow((TextBox8 * i / Tave), (1 / 2));
        var U = 12 * TextBox15 / j;

        var E90 = U;
//alert(U);
        var Tangenteh = Math.tanh(E90 / 2);
        var X = 3 * TextBox15 - (j / 2) * Tangenteh;
        var F91 = Math.cosh(E90 / 2);
        var Cosenoh = F91;

        var Y = 18 * Math.pow(TextBox15, 2) - Math.pow(j, 2) * (1 - (1 / Cosenoh));
//alert(Math.pow(TextBox15 , 2)+" "+j+" "+Math.pow(j , 2)+" "+Cosenoh+" "+( 1 - ( 1 / Cosenoh ) ));
        var n = (12 * Tave * h - (TextBox29 / 12) * Math.cos(TextBox16 * 3.1416 / 180) * Y) / X;
//alert(Tave+" "+h+" "+TextBox29+" "+Math.cos(TextBox16 * 3.1416 / 180)+" "+TextBox16+" "+Y+" "+X+" "+n);
        var frict = n * TextBox10;
        var Drag = 12 * 3.1416 * TextBox5 * TextBox15 * TextBox11;

        var Tcb = 2 * frict + Drag - (TextBox29 * TextBox15 * Math.sin(TextBox16 * 3.1416 / 180));
        var Tc = Tcb + TextBox33;
        Taver = (Tc + TextBox33) / 2;
        if (((Taver - Tave) / Tave) > 0.01) {
            Tave = Taver;
        } else {
            sw = 1;
        }
    } // fin mientras que 
    var TextBox34 = n;
    var TextBox35 = frict;
    var TextBox36 = Drag;
    var TextBox37 = Tcb;
    var TextBox38 = Tc;
    var E62 = n;
    var E63 = frict;
    var E64 = Drag;
    var E65 = Tcb;
    var E66 = Tc;
    var TextBox42 = E71 + E66;
    var Tavee = 1000;
    var Tavere = 0;
    var switche = 0;

    while (switche == 0) {

        var he = TextBox21 * (1 - Math.cos(TextBox20 * 3.1416 / 180));
        var Ie = 3.1416 * Math.pow((TextBox5 - TextBox6), 3) * (TextBox6 / 8);
        var je = Math.pow((TextBox8 * Ie / Tavee), (1 / 2));
        var Ue = 12 * TextBox19 / je;

        var E92 = Ue;
        var F92 = Math.tanh(E92);
        var Tangentehe = F92;
        var Xe = 3 * TextBox19 - (je / 2) * Tangentehe;
        var F93 = Math.cosh(E92);
        var Cosenohe = F93;
        var Ye = 18 * Math.pow((TextBox19), 2) - Math.pow(je, 2) * (1 - (1 / Cosenohe));
        var Ne = (12 * Tavee * he - (TextBox29 / 12) * Math.cos(TextBox20 * 3.1416 / 180) * Ye) / Xe;
        var fricte = Ne * TextBox10;
        var Drage = 12 * 3.1416 * TextBox5 * TextBox19 * TextBox11;
        var Tde = 2 * fricte + Drage + (TextBox29 * TextBox19 * Math.sin(TextBox20 * 3.1416 / 180));
        var Te = Tde + TextBox42;
        var Tavere = (Te + TextBox42) / 2;
        if (((Tavere - Tavee) / Tavee) > 0.01) {
            Tavee = Tavere;
        } else {
            switche = 1;
        }
    }

    var TextBox43 = Ne;
    var TextBox44 = fricte;
    var TextBox45 = Drage;
    var TextBox46 = Tde;
    var TextBox47 = Te;
    var E75 = Ne;
    var E76 = fricte;
    var E77 = Drage;
    var E78 = Tde;
    var E79 = Te;

    var E35 = TextBox22;
    var E36 = TextBox23;
    var E82 = Math.abs(E45 * E35 * Math.cos(E36 * Math.PI / 180) * G11);
    var E83 = 12 * Math.PI * E11 * E35 * G12;
    var E84 = E83 + E82 + (E45 * E35 * Math.sin(E36 * Math.PI / 180));
    var E85 = E84 + E79;
    var E87 = E84 + E78 + E71 + E65 + E58;
    var TextBox48 = E82;
    var TextBox49 = E83;
    var TextBox50 = E84;
    var TextBox51 = E85;
    var TextBox52 = E87;


//CALCULO DE RESULTADO DE LOS PROYECTOS

    var C103 = E59 / ((Math.PI / 4) * (Math.pow(E11, 2) - Math.pow((E11 - 2 * E12), 2)));
    alert(E13);
    var D103 = 0.9 * E13;
    var E103 = mayorQue(C103, D103);

    var C104 = 0;
    var D104 = 0;
    if (E11 / E12 <= 1500000 / E13) {
        D104 = 0.75 * E13;
    } else {
        if ((E11 / E12 > 1500000 / E13) & (E11 / E12 <= 3000000 / E13)) {
            D104 = (0.84 - (1.74 * E13 * (E11 / (30000000 * E12)))) * E13;
        } else {
            if (E11 / E12 > 3000000 / E13 & E11 / E12 <= 300000) {
                D104 = (0.72 - (0.58 * E13 * (E11 / (30000000 * E12)))) * E13;
            }
        }
    }
    var E104 = mayorQue(C104, D104);

    var C105 = 0, D105 = 0;

    C105 = (((E14 * 12 / 89.76) * (E18 * Math.sin(E19 * Math.PI / 180)) / 19.25) * E11) / (2 * E12);

    if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 0.55 * E13 & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 1.6 * E13) {
        D105 = 0.45 * E13 + 0.18 * (0.88 * 30000000 * Math.pow((E12 / E11), 2));
    } else {
        if (1.6 * E13 < 0.88 * 30000000 * Math.pow((E12 / E11), 2) & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 6.2 * E13) {
            D105 = 1.31 * E13 / (1.15 + (E13 / (0.88 * 30000000 * Math.pow((E12 / E11), 2))));
        } else {
            if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 6.2 * E13) {
                D105 = E13;
            } else {
                D105 = 0.88 * 30000000 * Math.pow((E12 / E11), 2) / 1.5;
            }
        }
    }
    var E105 = mayorQue(C105, D105);

    var C106 = (C103 / (0.9 * E13)) + (C104 / D104);
    var D106 = 1;
    var E106 = mayorQue(C106, D106);

    var C107 = Math.pow(((C103 + C104 - 0.5 * C105) * (1.25 / E13)), 2) + Math.pow((1.5 * C105 / D105), 2) + (2 * 0.3 * (C103 + C104 - 0.5 * C105) * (1.25 / E13) * (1.5 * C105 / D105));
    var D107 = 1;
    var E107 = mayorQue(C107, D107);

    var C110 = E66 / ((Math.PI / 4) * (Math.pow(E11, 2) - Math.pow((E11 - 2 * E12), 2)));
    var D110 = 0.9 * E13;
    var E110 = mayorQue(C110, D110);

    var C111 = (30000000 * E11) / (24 * E24);
    var D111 = 0;

    if (E11 / E12 <= 1500000 / E13)
    {
        D111 = 0.75 * E13;
    } else {
        if (E11 / E12 > 1500000 / E13 & E11 / E12 <= 3000000 / E13) {
            D111 = (0.84 - (1.74 * E13 * (E11 / (30000000 * E12)))) * E13;
        } else {
            if (E11 / E12 > 3000000 / E13 & E11 / E12 <= 300000) {
                D111 = (0.72 - (0.58 * E13 * (E11 / (30000000 * E12)))) * E13;
            }
        }
    }
    var E111 = mayorQue(C111, D111);

    var C112 = (((E14 * 12 / 89.76) * (E22 * Math.sin(E23 * Math.PI / 180) + E18 * Math.sin(E19 * Math.PI / 180)) / 19.25) * E11) / (2 * E12);
    var D112 = 0;
    if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 0.45 * E13 & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 1.6 * E13) {
        D112 = 0.45 * E13 + 0.18 * (0.88 * 30000000 * Math.pow((E12 / E11), 2));
    } else {
        if (1.6 * E13 < 0.88 * 30000000 * Math.pow((E12 / E11), 2) & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 6.2 * E13) {
            D112 = 1.31 * E13 / (1.15 + (E13 / (0.88 * 30000000 * Math.pow((E12 / E11), 2))));
        } else {
            if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 6.2 * E13) {
                D112 = E13;
            } else {
                D112 = 0.88 * 30000000 * Math.pow((E12 / E11), 2) / 1.5;
            }
        }
    }
    var E112 = mayorQue(C112, D112);

    var C113 = (C110 / (0.9 * E13)) + (C111 / D111);
    var D113 = 1;
    var E113 = mayorQue(C113, D113);

    var C114 = Math.pow(((C110 + C111 - 0.5 * C112) * (1.25 / E13)), 2) + Math.pow((1.5 * C112 / D112), 2) + (2 * 0.3 * (C110 + C111 - 0.5 * C112) * (1.25 / E13) * (1.5 * C112 / D112));
    var D114 = 1;
    var E114 = mayorQue(C114, D114);

    var E72 = TextBox42;

    var C117 = E72 / ((Math.PI / 4) * (Math.pow(E11, 2) - Math.pow((E11 - 2 * E12), 2)));
    var D117 = 0.9 * E13;
    var E117 = mayorQue(C117, D117);

    var C118 = 0;
    var D118 = 0;
    if (E11 / E12 <= 1500000 / E13) {
        D118 = 0.75 * E13;
    } else {
        if (E11 / E12 > 1500000 / E13 & E11 / E12 <= 3000000 / E13) {
            D118 = (0.84 - (1.74 * E13 * (E11 / (30000000 * E12)))) * E13;
        } else {
            if (E11 / E12 > 3000000 / E13 & E11 / E12 <= 300000) {
                D118 = (0.72 - (0.58 * E13 * (E11 / (30000000 * E12)))) * E13;
            }
        }
    }
    var E118 = mayorQue(C118, D118);

    var C119 = (((E14 * 12 / 89.76) * (E22 * Math.sin(E23 * Math.PI / 180) + E18 * Math.sin(E19 * Math.PI / 180)) / 19.25) * E11) / (2 * E12);
    var D119 = 0;

    if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 0.45 * E13 & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 1.6 * E13) {
        D119 = 0.45 * E13 + 0.18 * (0.88 * 30000000 * Math.pow((E12 / E11), 2));
    } else {
        if (1.6 * E13 < 0.88 * 30000000 * Math.pow((E12 / E11), 2) & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 6.2 * E13) {
            D119 = 1.31 * E13 / (1.15 + (E13 / (0.88 * 30000000 * Math.pow((E12 / E11), 2))));
        } else {
            if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 6.2 * E13) {
                D119 = E13;
            } else {
                D119 = 0.88 * 30000000 * Math.pow((E12 / E11), 2) / 1.5;
            }
        }
    }
    var E119 = mayorQue(C119, D119);

    var C120 = (C117 / (0.9 * E13)) + (C118 / D118);
    var D120 = 1;
    var E120 = mayorQue(C120, D120);

    var C121 = Math.pow(((C117 + C118 - 0.5 * C119) * (1.25 / E13)), 2) + Math.pow((1.5 * C119 / D119), 2) + (2 * 0.3 * (C117 + C118 - 0.5 * C119) * (1.25 / E13) * (1.5 * C119 / D119));
    var D121 = 1;
    var E121 = mayorQue(C121, D121);

    var C124 = E79 / ((Math.PI / 4) * (Math.pow(E11, 2) - Math.pow((E11 - 2 * E12), 2)));
    var D124 = 0.9 * E13;
    var E124 = mayorQue(C124, D124);

    var C125 = (30000000 * E11) / (24 * E32);
    var D125 = (0.84 - (1.74 * E13 * (E11 / (30000000 * E12)))) * E13;
    var E125 = mayorQue(C125, D125);

    var C126 = (((E14 * 12 / 89.76) * (E18 * Math.sin(E19 * Math.PI / 180)) / 19.25) * E11) / (2 * E12);
    var D126 = 0;
    if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 0.45 * E13 & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 1.6 * E13) {
        D126 = 0.45 * E13 + 0.18 * (0.88 * 30000000 * Math.pow((E12 / E11), 2));
    } else {
        if (1.6 * E13 < 0.88 * 30000000 * Math.pow((E12 / E11), 2) & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 6.2 * E13) {
            D126 = 1.31 * E13 / (1.15 + (E13 / (0.88 * 30000000 * Math.pow((E12 / E11), 2))));
        } else {
            if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 6.2 * E13) {
                D126 = E13;
            } else {
                D126 = 0.88 * 30000000 * Math.pow((E12 / E11), 2) / 1.5;
            }
        }
    }
    var E126 = mayorQue(C126, D126);

    var C127 = (C124 / (0.9 * E13)) + (C125 / D125);
    var D127 = 1;
    var E127 = mayorQue(C127, D127);

    var C128 = Math.pow(((C124 + C125 - 0.5 * C126) * (1.25 / E13)), 2) + Math.pow((1.5 * C126 / D126), 2) + (2 * 0.3 * (C124 + C125 - 0.5 * C126) * (1.25 / E13) * (1.5 * C126 / D126));
    var D128 = 1;
    var E128 = mayorQue(C128, D128);

    var C131 = E85 / ((Math.PI / 4) * (Math.pow(E11, 2) - Math.pow((E11 - 2 * E12), 2)));
    var D131 = 0.9 * E13;
    var E131 = mayorQue(C131, D131);


    var C132 = 0;
    var D132 = 0;
    if (E11 / E12 <= 1500000 / E13) {
        D132 = 0.75 * E13;
    } else {
        if (E11 / E12 > 1500000 / E13 & E11 / E12 <= 3000000 / E13) {
            D132 = (0.84 - (1.74 * E13 * (E11 / (30000000 * E12)))) * E13;
        } else {
            if (E11 / E12 > 3000000 / E13 & E11 / E12 <= 300000) {
                D132 = (0.72 - (0.58 * E13 * (E11 / (30000000 * E12)))) * E13;
            }
        }
    }
    var E132 = mayorQue(C132, D132);

    var C133 = 0;
    var D133 = 0;
    if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 0.45 * E13 & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 1.6 * E13) {
        D133 = 0.45 * E13 + 0.18 * (0.88 * 30000000 * Math.pow((E12 / E11), 2));
    } else {
        if (1.6 * E13 < 0.88 * 30000000 * Math.pow((E12 / E11), 2) & 0.88 * 30000000 * Math.pow((E12 / E11), 2) <= 6.2 * E13) {
            D133 = 1.31 * E13 / (1.15 + (E13 / (0.88 * 30000000 * Math.pow((E12 / E11), 2))));
        } else {
            if (0.88 * 30000000 * Math.pow((E12 / E11), 2) > 6.2 * E13) {
                D133 = E13;
            } else {
                D133 = 0.88 * 30000000 * Math.pow((E12 / E11), 2) / 1.5;
            }
        }
    }

    var E133 = mayorQue(C133, D133);

    var C134 = (C131 / (0.9 * E13)) + (C132 / D132);
    var D134 = 1;
    var E134 = mayorQue(C134, D134);

    var C135 = Math.pow(((C131 + C132 - 0.5 * C133) * (1.25 / E13)), 2) + Math.pow((1.5 * C133 / D133), 2) + (2 * 0.3 * (C131 + C132 - 0.5 * C133) * (1.25 / E13) * (1.5 * C133 / D133));
    var D135 = 1;
    var E135 = mayorQue(C135, D135);

    C103 = C103.toFixed(0);
    D103 = D103.toFixed(0);
    C104 = C104.toFixed(0);
    D104 = D104.toFixed(0);
    C105 = C105.toFixed(0);
    D105 = D105.toFixed(0);
    C106 = C106.toFixed(0);
    D106 = D106.toFixed(0);
    C107 = C107.toFixed(0);
    D107 = D107.toFixed(0);
    C110 = C110.toFixed(0);
    D110 = D110.toFixed(0);
    C111 = C111.toFixed(0);
    D111 = D111.toFixed(0);
    C112 = C112.toFixed(0);
    D112 = D112.toFixed(0);
    C113 = C113.toFixed(0);
    D113 = D113.toFixed(0);
    C114 = C114.toFixed(0);
    D114 = D114.toFixed(0);
    C117 = C117.toFixed(0);
    D117 = D117.toFixed(0);
    C118 = C118.toFixed(0);
    D118 = D118.toFixed(0);
    C119 = C119.toFixed(0);
    D119 = D119.toFixed(0);
    C120 = C120.toFixed(0);
    D120 = D120.toFixed(0);
    C121 = C121.toFixed(0);
    D121 = D121.toFixed(0);
    C124 = C124.toFixed(0);
    D124 = D124.toFixed(0);
    C125 = C125.toFixed(0);
    D125 = D125.toFixed(0);
    C126 = C126.toFixed(0);
    D126 = D126.toFixed(0);
    C127 = C127.toFixed(0);
    D127 = D127.toFixed(0);
    C128 = C128.toFixed(0);
    D128 = D128.toFixed(0);
    C131 = C131.toFixed(0);
    D131 = D131.toFixed(0);
    C132 = C132.toFixed(0);
    D132 = D132.toFixed(0);
    C133 = C133.toFixed(0);
    D133 = D133.toFixed(0);
    C134 = C134.toFixed(0);
    D134 = D134.toFixed(0);
    C135 = C135.toFixed(0);
    D135 = D135.toFixed(0);

    return [TextBox24, TextBox25, TextBox26, TextBox28, TextBox29, TextBox30, TextBox31, TextBox32, TextBox33, TextBox34, TextBox35, TextBox36
                , TextBox37, TextBox38, TextBox39, TextBox40, TextBox41, TextBox42, TextBox43, TextBox44, TextBox45, TextBox46, TextBox47, TextBox48
                , TextBox49, TextBox50, TextBox51, TextBox52, C103, C104, C105, C106, C107, C110, C111, C112, C113, C114, C117, C118, C119, C120, C121, C124,
        C125, C126, C127, C128, C131, C132, C133, C134, C135, D103, D104, D105, D106, D107, D110, D111, D112, D113, D114, D117, D118, D119, D120, D121,
        D124, D125, D126, D127, D128, D131, D132, D133, D134, D135, E103, E104, E105, E106, E107, E110, E111, E112, E113, E114, E117, E118, E119, E120,
        E121, E124, E125, E126, E127, E128, E131, E132, E133, E134, E135];
}
function mayorQue(C, D) {

    if (C < D) {
        return  "Si";
    } else {
        return  "No";
    }

}
//3.10
function installment_pipe_opera_form(vari) {

    /*
     * ENTRADA
     * F13 = Operating Pressure
     * F14 =  Diametro externo de la tubería
     * F15 = Espesor de la pared de la tubería 
     * F16 = Specified Minimun Yield Strength
     * F17 = Installation Temperature
     * F18 = Operating Temperature
     * F19 = Depth of the Pipe at Horizontal Section
     * F20 = Groundwater Table below Datum
     * F21 = Shortest Radius of Curvature
     * F22 = Poisson's Ratio for Steel
     * F23 = Young's Modulus for Steel
     * F24 = Coefficient of Thermal Expansion
     * 
     */
    var F13 = parseFloat(vari.oper_press_ippo);
    var F14 = parseFloat(vari.pipe_dia_ippo);
    var F15 = parseFloat(vari.pipe_wall_ippo);
    var F16 = parseFloat(vari.min_yield_ippo);
    var F17 = parseFloat(vari.inst_temp_ippo);
    var F18 = parseFloat(vari.oper_temp_ippo);
    var F19 = parseFloat(vari.depth_pipe_ippo);
    var F20 = parseFloat(vari.ground_table_ippo);
    var F21 = parseFloat(vari.short_rad_ippo);
    var F22 = parseFloat(vari.poi_rat_ippo);
    var F23 = parseFloat(vari.youn_steel_ippo);
    var F24 = parseFloat(vari.coeff_therm_ippo);


    var F27 = F23 * F14 / (24 * F21);
    var F28 = (F13 - (F19 - F20) * 0.4333) * F14 / (2 * F15);
    var F29 = F23 * F24 * (F17 - F18);
    var F30 = -F27 + F29 + F28 * F22;
    var F31 = (F28 - F30) / 2;
    var F32 = F16 * 0.45;
    var F33;
    if (F31 < F32) {
        F33 = "Aceptable";
    } else {
        F33 = "No Aceptable";
    }
    /*
     * SALIDA
     * F27 =Bending Stress
     * F28 =Hoop Stress
     * F29 =Thermal Stress
     * F30 =Total Longitudinal Compressive Stress
     * F31 =Maximun Shear Stress
     * F32 =Maximun Allowable Shear Stress
     * F33 =Operating Conditions
     * 
     * 
     */

    return [F27, F28, F29, F30, F31, F32, F33];


}
// 3.11
function internal_pressure_form(vari) {
    /*
     * ENTRADA
     * F14 = Tamaño nominal de la tubería
     * F15 = Nominal Outside Diameter
     * F16 = Nominal Espesor de pared
     * F17 = Grade
     * F18 = Specified Minimun Yield Strength
     * F19 = Porcent of SMYS
     * 
     * 
     */
    var F14 = parseFloat(vari.nom_pipe_ipsmys);
    var F15 = parseFloat(vari.nomout_ipsmys);
    var F16 = parseFloat(vari.nom_wall_ipsmys);
    var F17 = parseFloat(vari.grade_ipsmys);
    var F18 = parseFloat(vari.min_yield_ipsmys);
    var F19 = parseFloat(vari.porc_SMYS_ipsmys);

    var F22 = (F19 / 100) * F18 * 2 * F16 / F15;
    /*
     * Salida
     * F22 = Internal Pressure
     * 
     */
    return [F22.toFixed(3)];
}
//3.12
function linear_thermal_form(vari) {
    /*
     * ENTRADA
     * F14 = Pipe Lenght
     * F15 = Coefficient of Linear Expansion
     * F16 = Temperature Change
     * F17 = Modulus of Elasticity 
     * 
     */
    var F14 = parseFloat(vari.pipe_lenght_lther);
    var F15 = parseFloat(vari.coeff_exp_lther);
    var F16 = parseFloat(vari.temp_chan_lther);
    var F17 = parseFloat(vari.mod_elas_lther);

    var F20 = (F15 * 12) * F14 * F16;
    var F21 = F17 * F15 * F16;

    /*
     * SALIDA
     * F20 = Pipe Linear Elongation
     * F21 = Longitudinal Stress Due to Temperature Change
     * 
     */
    return [F20.toFixed(3), F21.toFixed(3)];
}
//3.13
function maximunallowable(vari) {
    var D = parseFloat(vari.D);
    var W = parseFloat(vari.W);
    var MOP = parseFloat(vari.MOP);
    var t = parseFloat(vari.t);
    var SMYS = parseFloat(vari.SMYS);
    var E = parseFloat(vari.E);
    var L = parseFloat(vari.L);
    var d = parseFloat(vari.d);
    var temde = parseFloat(vari.temde);
    var aul = parseFloat(vari.aul);
    var mtp = parseFloat(vari.mtp);
    var maSMYS = parseFloat(vari.maSMYS);
    var F = parseFloat(vari.F);
    var Pmod = parseFloat(vari.Pmod);
    //STEP 2
    if (Pmod == 0) {
        var H = (MOP * D) / (2 * t);
    } else {
        var H = (mtp * D) / (2 * t);
    }
    // STEP 3 revisar Maximum Allowable Bending Stress
    var sm = 0;
    if (Pmod == 0) {
        sm = F * SMYS;
    } else {
        sm = (maSMYS / 100) * SMYS;
    }

    var b1 = (-H + (Math.sqrt(Math.pow(H, 2) - 4 * (Math.pow(H, 2) - Math.pow(sm, 2))))) / 2;
    //var b2 = (-H - ( Math.sqrt( Math.pow( H , 2 ) - 4 * ( Math.pow( H , 2 ) -Math.pow( (F * SMYS) , 2 ) ) ) ) ) / 2;
    var B = b1;
    //STEP 4
    var Re = D / 2;
    var Ri = (D - 2 * t) / 2;
    // Moment of Inertia [in^4]
    var I = (Math.PI / 4) * (Math.pow(Re, 4) - Math.pow(Ri, 4));
    var c = D / 2;
    // Section Modulus [in3]:
    var S = I / (c);
    //  Bending Moment [lb-ft]
    var Bmo = (B * S) / 12;
    // STEP 5 
    var M1 = (W * Math.pow(L, 2)) / 8;
    var L1 = Math.sqrt((8 * (Bmo * 12)) / W);
    alert(E + " " + I + " " + W);
    // STEP 6 
    var d1 = (5 * W * Math.pow(L, 4)) / (384 * E * I);
    var Md = L / 360;

    var MAOP = (F * SMYS * 2 * t) / D;

    return [MAOP, H, B, I, S, Bmo, M1, L1, d1, Md];


}
//3.14
function longitudinal_Stress_Form(vari) {
    /*
     * ENTRADA
     *  TextBox5 = Tamaño nominal de la tubería
     *  TextBox6 = Outside Pipe Diameter
     *  TextBox7 = Espesor de la pared de la tubería
     *  TextBox8 = Inside Pipe Diameter
     *  TextBox9 = Specified Minimun Yield Strength
     *  TextBox10 = Modulus of Elasticity of Steel
     *  TextBox11 = Poisson's Ratio for Steel
     *  TextBox12 = Desired Vertical Deflection of the Pipe
     *  TextBox13 = Maximun Operating Pressure
     *  TextBox14 = Installation Temperature of the Pipe
     *  TextBox15 = Operating Temperature of the Pipe
     *  ComboBox4 = Pipe Design Factor
     *  TextBox17 = Sc - Longitudinal Stress due to Pipe Elast. Curvature
     * 
     * 
     */
    var TextBox5 = parseFloat(vari.TextBox5);
    var TextBox6 = parseFloat(vari.TextBox6);
    var TextBox7 = parseFloat(vari.TextBox7);
    var TextBox8 = parseFloat(vari.TextBox8);
    var TextBox9 = parseFloat(vari.TextBox9);
    var TextBox10 = parseFloat(vari.TextBox10);
    var TextBox11 = parseFloat(vari.TextBox11);
    var TextBox12 = parseFloat(vari.TextBox12);
    var TextBox13 = parseFloat(vari.TextBox13);
    var TextBox14 = parseFloat(vari.TextBox14);
    var TextBox15 = parseFloat(vari.TextBox15);
    var ComboBox4 = parseFloat(vari.ComboBox4);
    var TextBox17 = parseFloat(vari.TextBox17);

    var TextBox18 = (TextBox6 * TextBox13 * TextBox11) / (2 * TextBox7);
    var TextBox19 = (TextBox10 * 0.0000065) * (TextBox14 - TextBox15);
//alert(TextBox10+" "+TextBox14+" "+TextBox15);
    var A = TextBox18;
    var B = TextBox19;
    var C = TextBox17;

    var TextBox20 = A + B + C;

    var D = (38700000 * TextBox6 * TextBox12);
    var E = (77400000 * (TextBox12 * TextBox12));
    var Num = D + E;
    var F = (ComboBox4 * TextBox9);
    var G = TextBox20;
    var Den = F - G;

    if (Num / Den < 0) {
        alert("La resistencia de la tubería no es la adecuada. Se sugiere cambiar el grado y/o factor de diseño a uno mayor o de ser necesario el diametro y/o el espesor de la tubería.");

    } else {
        var TextBox21 = Math.sqrt(Num / Den);
        var TextBox22 = 2.67 * TextBox10 * Math.pow((TextBox12 / TextBox21), 2);
        var TextBox23 = ComboBox4 * TextBox9 - TextBox20 - TextBox22;
        var TextBox24 = Math.sqrt(((0.0286 * TextBox23 * (Math.pow(TextBox6, 4) - Math.pow(TextBox8, 4))) / (Math.pow(TextBox6, 3) - 0.8724 * Math.pow(TextBox8, 2) * TextBox6)));
    }
    var cont = 0;
    var i = 2;
    var Station = "";
    var Deflection = "";
    var cal = 0;
    while (cont < TextBox21) {
        Station = cont + "&" + Station;
        cal = -((16 * Math.pow(cont, 2)) * TextBox12 * (Math.pow((TextBox21 - cont), 2))) / (Math.pow((TextBox21), 4));
        Deflection = cal + "&" + Deflection;
        i = i + 1;
        cont = cont + 5;
    }
    /*
     * Salida
     * TextBox18 = Sp- Esfuerzo Longitudinal por Presión Interna [Psi]
     * TextBox19 = Sr-Esfuerzo Longitudinal por Temperatura
     * TextBox20 = Se- Esfuerzo Longitudinal Existente
     * TextBox21 = L- Longitud Mínima Requerida de la Zanja 
     * TextBox22 = Ss- Esfuerzo Longitudinal por Elongación
     * TextBox23 = Sa- Esfuerzo Longitudinal por Flexión Admisible
     * TextBox24 = Ls- Distancia Máxima permitida entre Apoyos
     * 
     */

    return [TextBox18, TextBox19, TextBox20, TextBox21, TextBox22, TextBox23, TextBox24, Station, Deflection];
}
//3.15
function maximun_impact_form(vari) {
    /*
     * 
     * ENTRADA
     * F15 = Weight of Falling Objetc
     * F16 = Drop Height 
     * F17 = Impact Area Diameter
     * F18 = Unit Weight of Soil
     * F19 = Poisson's Ratio for Soil
     * F20 = Shear Wave Velocity of Near Surface Soil
     * F21 = Empirical Coefficient of Penetration
     * 
     */
    var F15 = parseFloat(vari.weight_fall_milpd);
    var F16 = parseFloat(vari.drop_height_milpd);
    var F17 = parseFloat(vari.imp_area_milpd);
    var F18 = parseFloat(vari.weight_soil_milpd);
    var F19 = parseFloat(vari.poi_soil_milpd);
    var F20 = parseFloat(vari.wave_vel_milpd);
    var F21 = parseFloat(vari.emp_coef);

    var F24 = (F18 / Math.pow(12, 3)) / (32 * 12) * Math.pow(F20, 2) / 10;
    F24 = F24.toFixed(0);
    var F25 = Math.sqrt((32 * F15 * (F16 * 12) * F24 * (F17 * 6)) / ((Math.pow(Math.PI, 2)) * (1 - F19)));
    F25 = F25.toFixed(0);
    var F26 = Math.sqrt(2 * 32.2 * F16);
    F26 = F26.toFixed(4);
    var F27 = F25 / (Math.PI * Math.pow((F17 * 6), 2));
//F27 = F27.toFixed(0);
    var F28 = (F15 / (Math.PI * Math.pow((F17 * 6), 2)));

    var F30 = F21 * (F28 * 144) * (Math.log(1 + Math.pow(F26, 2) / 215000) / Math.log(10));

    /*
     * SALIDA
     * F24 = Soil Shear Modulus
     * F25 = Maximun Load at the Soil Surface
     * F26 = Impact Velocity
     * F27 = Impact Pressure
     * F28 = Weight per Unit of Impact Area
     * F30 = Penetration Depth
     */
    return [F24, F25, F26, F27, F28, F30];

}
//3.16
function pipeanchorforce_form(vari) {
    /*
     * ENTRADA
     * u = Poisson's Ratio
     * E = Young's Modulus of Elasticity
     * thermal = Thermal Expansion Coefficient
     * P = Design Pressure
     * D = Nominal Outside Diameter
     * t = Nominal Inside Diameter
     * Ti = Nominal Espesor de pared
     * To = Installation Temperature
     * d  = Operating Temperature
     * 
     */
    var u = parseFloat(vari.poi_paf);
    var E = parseFloat(vari.you_elas_paf);
    var thermal = parseFloat(vari.ther_exp_paf);
    var P = parseFloat(vari.design_press_paf);
    var D = parseFloat(vari.nomout_paf);
    var t = parseFloat(vari.nom_wall_paf);
    var Ti = parseFloat(vari.temp_paf);
    var To = parseFloat(vari.oper_temp_paf);
    var d = parseFloat(vari.nomin_paf);
    var Sh = (P * d) / (2 * t);
    var Spoisson = u * Sh;
    var DT = To - Ti;
    //Compressive stress
    var Stemp = E * thermal * DT;
    //NET A
    var Sa = Spoisson - Stemp;
    // NET B10
    var Sb = Sh / 2;
    // Net B 2
    var Eb = thermal * DT + (Sh / E) * (0.5 - u);
    //Soil
    var Fs = 80 * (D / 12);
    //Lenght 
    var A = Math.PI * (D - t) * t;
    var L = A * (Sb - Sa) / Fs;
    //total pipe
    var Beta = (Eb / 2) * 12 * L;
    // Anchor
    var F = (Sb - Sa) * A;
    /*
     * Salida
     * Sh = Hoop Stress
     * Stemp = Compressive Stress Due to Temperature Change
     * Sa = Net Longitudinal Stress at Point A
     * Sb = Net Longitudinal Stress at Point B
     * Eb= Net Longitudinal Strain at Point B
     * Fs = Soil Resistance
     * L =  Lenght of the Transition Zone A-B
     * Beta= Total Pipe Movement at Point B
     * F = Anchor Force 
     * 
     * 
     * 
     */
    return [Sh, Stemp, Sa, Sb, Eb, Fs, L, Beta, F];

}
//3.17
function Restrained_form(vari) {

    var Spoisson = parseFloat(vari.Spoisson);
    var E = parseFloat(vari.E);
    var alpha = parseFloat(vari.alpha);
    var P = parseFloat(vari.P);
    var D = parseFloat(vari.D);
    var t = parseFloat(vari.t);
    var Grade = parseFloat(vari.Grade);
    var S = parseFloat(vari.S);
    var T = parseFloat(vari.T);
    var T1 = parseFloat(vari.T1);
    var T2 = parseFloat(vari.T2);
    var Sb = parseFloat(vari.Sb);
    var Sx = parseFloat(vari.Sx);
    var Kfactor = parseFloat(vari.Kfactor);

    // hoop stress
    var Sh = (P * D) / (2 * t);
    // Longitudinal Stress due to Internal Pressure
    var Sp = 0.3 * Sh;
    // Longitudinal Stress due to Thermal Expansion
    var Sr = E * alpha * (T1 - T2);
    //Net Longitudinal Stresses
    var Sl = Sp + Sr + Sb + Sx;
    //Maximun Permitted Longitudinal Stress
    var MSl = 0.9 * S * T;
    //Combined Biaxial Stress
    var Sc = Math.sqrt(Math.pow(Sl, 2) - Sl * Sh + Math.pow(Sh, 2));
    //Maximun Permitted Combined Biaxial Stress 
    var k = Sc / (S * T);
    var MSc = "";
    if (k === 1) {
        MSc = k + " - para carga de larga duración ";
    } else {
        MSc = k + " - Para cargas no periódicas ocasionales de corta duración";
    }
    return [Sh, Sp, Sr, Sl, MSl, Sc, MSc];
}
//3.19
function UnRestrained_form(vari) {
    var Spoisson = parseFloat(vari.Spoisson);
    var E = parseFloat(vari.E);
    var alpha = parseFloat(vari.alpha);
    var P = parseFloat(vari.P);
    var D = parseFloat(vari.D);
    var t = parseFloat(vari.t);
    var Grade = parseFloat(vari.Grade);
    var S = parseFloat(vari.S);
    var T = parseFloat(vari.T);
    var Sb = parseFloat(vari.Sb);
    var Sx = parseFloat(vari.Sx);

    //Hoop Stress
    var Sh = (P * D) / (2 * t);
    // Longitudinal Stress due to Internal Pressure
    var Sp = 0.3 * Sh;
    // Net Longitudinal Stresses
    var Sl = Sp + Sb + Sx;
    //Maximun Permitted Longitudinal Stress
    var MSl = 0.75 * S * T;

    return [Sh, Sp, Sl, MSl];

}
//3.20
function wallthickness_ssp(vari) {
    /*
     * ENTRADA
     * E18= Tamaño nominal de la tubería
     * E19=Nominal Outside Diameter
     * E20=Design Pressure
     * E21=Grade
     * E22=Specified Minimun Yield Strength
     * E23=Design Factor
     * E24=Longitudinal Join Factor
     * E25=Temperature Derating Factor
     * E26= About thickness corroding
     * 
     * 
     */
    var E18 = parseFloat(vari.nom_pipeop_wt);
    var E19 = parseFloat(vari.nomout_pipeop_wt);
    var E20 = parseFloat(vari.despress_pipeop_wt);
    var E21 = (vari.gra_pipeop_wts);
    var E22 = parseFloat(vari.yield_pipeop_wts);
    var E23 = parseFloat(vari.fact_pipeop_wts);
    var E24 = parseFloat(vari.long_pipeop_wts);
    var E25 = parseFloat(vari.temp_pipeop_wts);
    var E26 = parseFloat(vari.about_thick_wts);
    // alert(E18+" "+E19+" "+E20+" "+E21+" "+E22+" "+E23+" "+E24+" "+E25+" "+E26);
    var r = (E18 * E20) / (2 * E22 * E23 * E24 * E25);
    r = r + E26;
    /*
     * Salida
     *  r = Espesor mínimo de la pared de la tubería
     */
    return [r.toFixed(3)];
}
//3.21
function wall_poly_lene_form(vari) {

    var D = parseFloat(vari.nom_pipeop_wtpe);
    var OD = parseFloat(vari.out_pipeop_wtpe);
    var P = parseFloat(vari.despress_pipeop_wtpe);
    var HDB = parseFloat(vari.hyd_pipeop_wtpe);
    var F = parseFloat(vari.fact_pipeop_wtpe);
    var t = P * OD / (2 * HDB * F + P);
    return [t.toFixed(3)];
}

//=============MODULO 4=============================
//4.1
function designuncascro(vari) {
    var D = parseFloat(vari.D);
    var t = parseFloat(vari.t);
    var E = parseFloat(vari.E);
    var g = parseFloat(vari.g);
    var Kz = parseFloat(vari.Kz);
    var Kb = parseFloat(vari.Kb);
    var I = parseFloat(vari.I);
    var P = parseFloat(vari.P);
    var L = parseFloat(vari.L);
    var Bd = parseFloat(vari.Bd);
    var H = parseFloat(vari.H);
    var Cd = parseFloat(vari.Cd);

    //prompt("Cd:"+Cd+" G:"+g+" Bd:"+Bd+" L:"+L+" D:"+D+" I:"+I+" H:"+H);


    var W = 83.3 * Cd * g * Math.pow(Bd, 2) * 0.001 + ((10.4 * L * D * I) / (Math.PI * Math.pow(H, 2) * 1000));

    var Se = (3 * Kb * W * E * D * t) / (E * t + 3 * Kz * P * Math.pow(D, 3));

    var Sl = (P * D) / (2 * t);

    var Sr = Sl + Se;

    return [Cd, W, Se, Sl, Sr];

}
//4.2
function SteelpipelinesCH(vari) {


    var D = parseFloat(vari.D);
    var t = parseFloat(vari.t);
    var tw = parseFloat(vari.tw);
    var Vs = parseFloat(vari.Vs);
    var F = parseFloat(vari.F);
    var SMYS = parseFloat(vari.SMYS);
    var Bd = parseFloat(vari.Bd);
    var E = parseFloat(vari.E);
    var Es = parseFloat(vari.Es);
    var Esr = parseFloat(vari.Esr);
    var Er = parseFloat(vari.Er);
    var P = parseFloat(vari.P);
    var Ps = parseFloat(vari.Ps);
    var Pt = parseFloat(vari.Pt);
    var T = parseFloat(vari.T);
    var AT = parseFloat(vari.AT);
    var Y = parseFloat(vari.Y);
    var H = parseFloat(vari.H);
    var Fi = parseFloat(vari.Fi);
    var PaveTy = parseFloat(vari.PaveTy);
    var lfs = parseFloat(vari.lfs);
    var grade = parseFloat(vari.grade);
    var p = parseFloat(vari.p);
    var T1 = parseFloat(vari.T1);
    var T2 = parseFloat(vari.T2);
    var soil = parseFloat(vari.soil);

    Y = Y / 1728;
    var OBd = Bd;
    Bd = Bd * 0.0833;
    var TS = 'A';
    if (soil == "Soft to medium clays and silts with high  plasticities" || soil == "Soft to medium clays and sits with low/medium plasticities"
            || soil == "Loose sands and gravels" || soil == "Medium dense sands and gravels ") {
        TS = 'A';
    }
    if (soil == "Stiff to very stiff clays and silts  " || soil == "Dense to very dense sands and gravels ") { //14.8/6
        TS = 'B';
    }

    var F52 = tw / D;
    F52 = F52.toFixed(3); //  Math.round10(F52, -3);
    var G200 = H / Bd;
    var Be = valorX0(G200, TS, 'Be').toFixed(2);//1.09; //MBe[(H/Bd),Esr]; 
    //alert(F52+" "+Esr);
    // revisar
    var Khe = valorX0(F52, Esr, 'Khe').toFixed(0);
    ; //Mkhe[(tw/D),Esr];
    Fi = fi(H, 0);//1.47 ;//MIF[Fi,H];
    var Ghh = valorX0(D, H, 'Ghh').toFixed(2); //0.99; //MGhh[D,H];
    var Glh = valorX0(D, H, 'Glh').toFixed(2);//1.01; //MGlh[D,H];
    var Klh = valorX0(F52, Er, 'Klh');//9.9; //Mklh[(tw/D),Er];
    var G298 = OBd / D;
    var Ee = valorX0(G298, '', 'Ee').toFixed(2);
    ;  //MEe[(Bd/D), H];
    //alert(F52+" "+Er);
    var KHh = valorX0(F52, Er, 'KHh');//14.3 ;

    var Shi = (p * D) / (2 * tw);
    var hoop = Shi;
    var alhoop = E * F * SMYS;

    var R = 0;
    var L = 0;

    var Ap = 144;
    var w = 0;
    var Sfg = 12000;
    var Sfl = 0;


    if (H < 4 && D <= 12) {
        if (PaveTy == 0) {
            P = Pt * 1000;
            R = 1;
            L = 1;
        }
        if (PaveTy == 1) {
            P = Pt * 1000;
            R = 0.90;
            L = 1;
        }
        if (PaveTy == 2) {
            P = Ps * 1000;
            R = 1.2;
            L = 0.8;
        }
    }

    if ((H < 4 && D > 12) || (H >= 4)) {
        if (PaveTy == 0) {
            P = Pt * 1000;
            R = 1;
            L = 1;
        }
        if (PaveTy == 1) {
            P = Pt * 1000;
            R = 0.90;
            L = 1;
        }
        if (PaveTy == 2) {
            P = Pt * 1000;
            R = 1.1;
            L = 1;
        }

    }

    w = P / Ap;

    if (lfs == 145 || lfs == 146) {

        Sfl = 21000;
        if (grade == "X52" || grade == "X56" || grade == "X60") {
            Sfl = 23000;
        } else {
            if (grade == "X70") {
                Sfl = 25000;
            } else {
                if (grade == "X80") {
                    Sfl = 27000;
                }
            }
        }
    } else {
        Sfl = 12000;
        if (grade == "X70") {
            Sfl = 13000;
        } else {

            Sfl = 14000;
        }
    }


    var Slh = Klh * Glh * R * L * Fi * w;

    var SHh = KHh * Ghh * R * L * Fi * w;

    var She = Khe * Be * Ee * Y * D;

    var S1 = She + Slh + Shi;

    var SHiC = p * (D - tw) / (2 * tw);

    var S2 = Slh - Es * AT * (T2 - T1) + Vs * (She + SHiC);

    var S3 = -p;

    var Seff = Math.sqrt((1 / 2) * (Math.pow((S1 - S2), 2) + Math.pow((S2 - S3), 2) + Math.pow((S3 - S1), 2)));

    var all_efe_stre = F * E * SMYS;

    var cicly_cir_ste = Klh * Ghh * R * L * Fi * w;
    alert(cicly_cir_ste);
    //-----------------------------------
    var all_barlow = "";
    if (hoop < alhoop) {
        all_barlow = "PASS";
    } else {
        all_barlow = "FAIL";
    }

    //-----------------------------------
    var Allowable_Hoop_Stress = "-";
    var Allowable_Hoop_Stress_num = SMYS * F;
    if (Seff < (SMYS * F)) {
        Allowable_Hoop_Stress = "PASS";
    } else {
        Allowable_Hoop_Stress = "FAIL";
    }
    //----------------------------------- fatigue
    var Allowable_gith_welds = "-";
    var Allowable_gith_welds_num = Sfg * F;
    if (Slh < (Sfg * F)) {
        Allowable_gith_welds = "PASS";
    } else {
        Allowable_gith_welds = "FAIL";
    }
    //----------------------------------- Longitudinal
    //alert(Sfl);
    var Allowable_long_welds = "-";
    var Allowable_long_welds_num = Sfl * F;
    if (SHh < (Sfl * F)) {
        Allowable_long_welds = "PASS";
    } else {
        Allowable_long_welds = "FAIL";
    }
    //-----------------------------------

    alert("here");
    alert(Klh);
    alert(Glh);
    alert(R);
    alert(L);
    alert(Fi);
    alert(w);
    alert("fin here");


    var Slh = Klh * Glh * R * L * Fi * w;

    return [hoop, alhoop, Khe, Be, Ee, She, Fi, KHh, Ghh, SHh, Klh, Glh, Slh, S1, S2, S3, Seff, all_efe_stre, Allowable_gith_welds_num, Allowable_long_welds_num, hoop, alhoop, all_barlow, Seff, Allowable_Hoop_Stress_num, Allowable_Hoop_Stress, Slh, Allowable_gith_welds_num, Allowable_gith_welds, SHh, Allowable_long_welds_num, Allowable_long_welds];
    // 0    1      2   3 4  5   6  7    8  9   10   11  12 13 14 15 16   17           18                       19                        20    21    22         23     24                             25               26   27                         28                 29   30                       31



}
//4.3
function SteelpipelinesCR(vari) {

    var Es = parseFloat(vari.Es);
    var Vs = parseFloat(vari.Vs);
    var AT = parseFloat(vari.AT);
    var p = parseFloat(vari.p);
    var P = parseFloat(vari.P);
    var T1 = parseFloat(vari.T1);
    var D = parseFloat(vari.D);
    var tw = parseFloat(vari.tw);
    var gd = parseFloat(vari.gd);
    var SMYS = parseFloat(vari.SMYS);
    var F = parseFloat(vari.F);
    var E = parseFloat(vari.E);
    var T = parseFloat(vari.T);
    var H = parseFloat(vari.H);
    var Bd = parseFloat(vari.Bd);
    var T2 = parseFloat(vari.T2);
    var Lg = parseFloat(vari.Lg);
    var Nt = parseFloat(vari.Nt);
    var Ep = parseFloat(vari.Ep);
    var Er = parseFloat(vari.Er);
    var Y = parseFloat(vari.Y);
    var w = parseFloat(vari.w);
    var lfs = parseFloat(vari.lfs);
    var grade = parseFloat(vari.grade);
    var soil = vari.soil;

    Y = Y / 1728;
    var OBd = Bd;
    Bd = Bd * 0.0833;
    var Esr = '';
// se debe poreguntar por el tipo de tierra para calcular el Be
//alert("Select: "+soil);
    if (soil == "Soft to medium clays and sits with high plasticities " || soil == "Soft to medium clays and sits with low/medium plasticities "
            || soil == "Loose sands and gravels " || soil == "Medium dense sands and gravels ") {
        Esr = 'A';
    }
    if (soil == "Stiff to very stiff clays and silts " || soil == "Dense to very dense sands and gravels ") { //14.8/6
        Esr = 'B';
    }

    var G200 = H / Bd;

    var Be = valorX0(G200, Esr, 'Be');//1.09; //MBe[(H/Bd),Esr]; 
    alert(Be + "be");
    var F52 = tw / D;
    alert(F52 + "tw/D");
    F52 = F52.toFixed(3); //Math.round10(F52, -3);
    var Khe = valorX0(F52, Ep, 'Khe');
    alert(Khe + "Khe");
    var Fi = fi(H, 1);//1.72 ; //MIF[Fi,H];
    var G298 = OBd / D;
    var Ee = valorX0(G298, '', 'Ee');
    alert(Ee + "Ee");
// Railroad Stiffness Factor for Cyclic Longitudinal Stress
    var KLr = valorX0(F52, Er, 'KLr');//MKL[(tw/D),H];
    alert(KLr + "KLr");
// Railroad Double Track Factor for Circumferential Stress
    var Nh = 0;
    if (Nt == 1) {
        Nh = 1;
    }
    if (Nt == 2) {
        if (H == 6) {
            Nh = 1.07692308 + 0.00480769 * (D - 2);
        }
        if (H == 10) {
            Nh = 1.22115385 + 0.00509907 * (D - 2.4);
        }
        if (H == 14) {
            Nh = 1.38461538 + 0.00509907 * (D - 2.4);
        }

    }
// Railroad Geometry Factor for Cyclic Longitudinal Stress
    alert(D + " " + H + " GLr");
    var GLr = valorX0(D, H, 'GLr') //0.98 ;//MGLr[D,H];
    alert(GLr + "GLr");
// Railroad Double Track Factor For Longitudinal Stress
    var Nl = 1;
// Number of Tracks (1 or 2)
    if (Nt == 1) {
        Nl = 1;
    }
    var m = 0;
    if (Nt == 2) {
        if (H == 6) {
            if (D <= 24) {
                m = (1 - 1.076923) / (24 - 1.44);
                Nl = 1.07692308 + m * (D - 1.44);
            } else {
                m = (1.615384 - 1) / (42 - 24);
                Nl = 1 + m * (D - 24);
            }
        }
        if (H == 10) {
            if (D <= 24.8) {
                m = (1.230769 - 1.076923) / (24.8 - 1.44);
                Nl = 1.07692308 + m * (D - 1.44);
            } else {
                m = (1.961538 - 1.230769) / (42 - 24.8);
                Nl = 1.230769 + m * (D - 24.8);
            }
        }
        if (H == 14) {
            if (D <= 14) {
                m = (1.6773077 - 1.307692) / (14 - 1.44);
                Nl = 1.3076928 + m * (D - 1.44);
            } else {
                if (D > 14 && D <= 24.6) {
                    m = (1.634615 - 1.673077) / (24.6 - 14);
                    Nl = 1.673077 + m * (D - 14);
                } else {
                    m = (2.076923 - 1.634615) / (42 - 24.6);
                    Nl = 1.634615 + m * (D - 24.6);
                }
            }
        }//MNl[D,H];   
    }
//

    var Shi = (p * D) / (2 * tw);
    var SHiC = p * (D - tw) / (2 * tw);
// Hoop Stress  
    var hoop = Shi;
// Allowable Hoop Stress
    var alhoop = E * F * SMYS;
// Stiffness Factor for Earth Load Circumferential Stress 
    Khe;
//Burial Factor for Earth Load Circumferential Stress 
    Be;
// Excavation Factor for Earth Load Circumferential Stress
    Ee;
// Stress due to earth load - Circumferential Stress for Earth Load
    var She = Khe * Be * Ee * Y * D;
    She = parseInt(She);
// Impact Factor
    Fi;
//Railroad Geometry Factor for Cyclic Circumferential Stress
    alert("GHr");
    var GHr = valorX0(D, H, 'GHr');//0.98; //MGHr[D,H] ;//KLr * GLr * Nl * Fi * w;
    alert(GHr + "GHr");
// Railroad Stiffness Factor for Cyclic Circumferential Stress
//alert(F52+" "+Er);
    var KHr = valorX0(F52, Er, 'KHr');//332; //MKHr[(tw/D),Er];
    alert(KHr + "KHr");
//alert(KHr);
//Railroad Cyclic Circumferential Stress 
    var SHr = KHr * GHr * Nh * Fi * w;
    SHr = parseInt(SHr);
// Railroad Cyclic Longitudinal Stress
    var SLr = KLr * GLr * Nl * Fi * w;
    SLr = parseInt(SLr);
//Maximum Circumferential Stress
//var SHiC =   p *( D  -  tw ) / (2 * tw) ;
    var SHiC = p * D / (2 * tw);
    var S1 = She + SHr + SHiC;
    S1 = parseInt(S1);
// Maximum Longitudinal Stress 
    var S2 = SLr - Es * AT * (T2 - T1) + Vs * (She + SHiC);
    S2 = parseInt(S2);
//  Maximum Radial Stress   
    var S3 = -p;
// Total Effective Stress   
    var Seff = Math.sqrt((1 / 2) * (Math.pow((S1 - S2), 2) + Math.pow((S2 - S3), 2) + Math.pow((S3 - S1), 2)));
    Seff = parseInt(Seff);

//   
    var Sfl = 0;
    var Sfg = 12000;

    if (lfs == 145 || lfs == 146) {
        Sfl = 21000;
        if (grade == "X52" || grade == "X56" || grade == "X60") {
            Sfl = 23000;
        } else {
            if (grade == "X70") {
                Sfl = 25000;
            } else {
                if (grade == "X80") {
                    Sfl = 27000;
                }
            }
        }
    } else {
        Sfl = 12000;
        if (grade == "X70") {
            Sfl = 13000;
        } else {

            Sfl = 14000;
        }
    }
// Allowable Effective Stress

    var AES = SMYS * F;
// Fatigue Resistance of Girth Welds 3
    var FRGW = SHr / Nh;
    FRGW = parseInt(FRGW);
    var MAFRGW = Sfg * F;
    var MAX_PF = '';
    if (FRGW <= MAFRLW) {
        MAX_PF = 'PASS';
    } else {
        MAX_PF = 'FAIL';
    }
// Fatigue Resistance of Longitudinal Welds 4
    var FRLW = SLr / Nl;
    FRLW = parseInt(FRLW);
    var MAFRLW = Sfl * F;
    var MAX_FL = '';
    if (FRLW <= MAFRLW) {
        MAX_FL = 'PASS';
    } else {
        MAX_FL = 'FAIL';
    }
    //          allbarlo
    return [Shi, alhoop, Khe, Be, Ee, She, Fi, Nh, KHr, GHr, SHr, Nl, KLr, GLr, SLr, S1, S2, S3, Seff, AES, MAFRGW, MAFRLW, SHiC, FRGW, MAFRGW, FRLW, MAFRLW];
//       0    1    2   3  4  5   6  7   8   9   10 11 12  13   14 15 16 17 18   19    20     21    22     23    24     25    26
}
//4.4
function trackliadanalysis(vari) {
    /*
     * ENTRADA
     *  F14 = Pipe Outside Diameter
     *  F15 = Pipe Wall Thickness
     *  F16 = Specified Minimum Yield Strength
     *  F17 = Maximum Allowable Internal Stress
     *  F18 = Maximum Allowable Combined Stress
     *  F19 = Km-Friction Force Coefficient
     *  F20 = Weight per Unit of Backfill
     *  F21 = Impact Factor
     *  F22 = Operating Weight (Object with Tracks)
     *  F23 = Width of Standard Track Shoe
     *  F24 = Length of the Track on the Ground
     *  F25 = Kb-Bending Coefficient
     *  F26 = Kz-Deflection Coefficient
     *  F27 = Pipe Internal Pressure
     *  F28 = H-Vertical Depth of the Soil Cover
     *  F29 = B-Trench Width
     *  F30 = X - Longitudinal Distance
     *  F31 = Y - Vertical Deflection
     *  
     */

    var F14 = parseFloat(vari.TextBox5);
    var F15 = parseFloat(vari.TextBox6);
    var F16 = parseFloat(vari.TextBox7);
    var F17 = parseFloat(vari.TextBox8);
    var F18 = parseFloat(vari.TextBox9);
    var F19 = parseFloat(vari.TextBox10);
    var F20 = parseFloat(vari.TextBox11);
    var F21 = parseFloat(vari.TextBox12);
    var F22 = parseFloat(vari.TextBox13);
    var F23 = parseFloat(vari.TextBox14);
    var F24 = parseFloat(vari.TextBox15);
    var F25 = parseFloat(vari.TextBox16);
    var F26 = parseFloat(vari.TextBox17);
    var F27 = parseFloat(vari.TextBox18);
    var F28 = parseFloat(vari.TextBox19);
    var F29 = parseFloat(vari.TextBox20);
    var F30 = parseFloat(vari.TextBox21);
    var F31 = parseFloat(vari.TextBox22);

    var F34 = ((1 - Math.exp(-2 * F19 * (F28 / F29))) / (2 * F19));
    F34 = F34.toFixed(3);

    var F35 = F34 * F20 * Math.pow(F29, 2) * 0.0833;
    F35 = F35.toFixed(2);
    //alert(F35);
    var F36 = 0;


    if ((F23 / (2 * F28 * 12)) > 0 && (F23 / (2 * F28 * 12)) <= 1) {
        F36 = (F23 / (2 * F28 * 12));
        F36 = F36.toFixed(1);
    } else {
        if (((F23 / (2 * F28 * 12)) > 1 && (F23 / (2 * F28 * 12)) <= 1.2)) {
            F36 = 1.2;
        } else {
            if ((F23 / (2 * F28 * 12)) > 1.2 && (F23 / (2 * F28 * 12)) <= 1.5) {
                F36 = 1.5;
            } else {
                if ((F23 / (2 * F28 * 12)) > 1.5 && (F23 / (2 * F28 * 12)) <= 2) {
                    F36 = 2;
                }
            }
        }
    }
    var F37 = 0;
    if ((F24 / (2 * F28)) > 0 && (F24 / (2 * F28)) <= 1) {
        F37 = (F24 / (2 * F28));
        F37 = F37.toFixed(1);
    } else {
        if ((F24 / (2 * F28)) > 1 && (F24 / (2 * F28)) <= 1.2) {
            F37 = 1.2;
        } else {
            if ((F24 / (2 * F28)) > 1.2 && (F24 / (2 * F28)) <= 1.5) {
                F37 = 1.5;
            } else {
                if ((F24 / (2 * F28)) > 1.5 && (F24 / (2 * F28)) <= 2) {
                    F37 = 2;
                } else {
                    if ((F24 / (2 * F28)) > 2 && (F24 / (2 * F28)) <= 5) {
                        F37 = 5;
                    }
                }
            }
        }
    }

    //------------------
    var m = [
        [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.2, 1.5, 2, 5],
        [0.1, 0.019, 0.037, 0.053, 0.067, 0.079, 0.089, 0.097, 0.103, 0.108, 0.112, 0.117, 0.121, 0.124, 0.128],
        [0.2, 0.037, 0.072, 0.103, 0.131, 0.155, 0.174, 0.189, 0.202, 0.211, 0.219, 0.229, 0.238, 0.244, 0.248],
        [0.3, 0.053, 0.103, 0.149, 0.19, 0.224, 0.252, 0.274, 0.292, 0.306, 0.318, 0.333, 0.345, 0.355, 0.36],
        [0.4, 0.067, 0.131, 0.19, 0.241, 0.284, 0.32, 0.349, 0.373, 0.391, 0.405, 0.425, 0.44, 0.454, 0.46],
        [0.5, 0.079, 0.155, 0.224, 0.284, 0.366, 0.379, 0.414, 0.441, 0.463, 0.481, 0.505, 0.525, 0.54, 0.548],
        [0.6, 0.089, 0.174, 0.252, 0.32, 0.379, 0.428, 0.467, 0.499, 0.524, 0.544, 0.572, 0.596, 0.613, 0.624],
        [0.7, 0.097, 0.189, 0.274, 0.349, 0.414, 0.467, 0.511, 0.546, 0.574, 0.597, 0.628, 0.65, 0.674, 0.688],
        [0.8, 0.103, 0.202, 0.292, 0.373, 0.441, 0.499, 0.546, 0.584, 0.615, 0.639, 0.674, 0.703, 0.725, 0.74],
        [0.9, 0.108, 0.211, 0.306, 0.391, 0.463, 0.524, 0.574, 0.615, 0.647, 0.673, 0.711, 0.742, 0.766, 0.784],
        [1, 0.112, 0.219, 0.318, 0.405, 0.481, 0.544, 0.597, 0.639, 0.673, 0.701, 0.74, 0.774, 0.8, 0.816],
        [1.2, 0.117, 0.229, 0.333, 0.425, 0.505, 0.572, 0.628, 0.674, 0.711, 0.74, 0.783, 0.82, 0.849, 0.868],
        [1.5, 0.121, 0.238, 0.345, 0.44, 0.525, 0.596, 0.65, 0.703, 0.742, 0.774, 0.82, 0.861, 0.894, 0.916],
        [2, 0.124, 0.244, 0.355, 0.454, 0.54, 0.613, 0.674, 0.725, 0.766, 0.8, 0.849, 0.894, 0.93, 0.956]
    ];


    //------------------
    var switch1 = true;
    var switch2 = true;
    var Columna = 1;
    var fila = 1;
    while (switch1 == true) {
        // alert(F36+" "+ m[0][Columna]);
        if (F36 == m[0][Columna]) {
            switch1 = false;
        } else {
            Columna = Columna + 1;
            if (Columna > 14) {
                switch1 = false;
            }
        }
    }

    while (switch2 == true) {
        if (F37 == m[fila][0]) {
            switch2 = false;
        } else {
            fila = fila + 1;
            if (Columna > 14) {
                switch2 = false;
            }
        }
    }

    var F38 = m[fila][Columna];
    if (F38 === undefined) {
        F38 = 0;
    }
// alert(F34+" "+F35+" "+F36+" "+F37+" "+F38);

    var F39 = 0.5 * F22 / (F23 * F24 / 12) * F38;

    var F40 = (F21 * F39 / 12) * (F14 / 12);

    var F41 = F35 + F40;

    var F42 = 29000000 * F14 * F31 / (48 * Math.pow(F30, 2));

    var F43 = (F35 + F40) * (3 * F25 * 29000000 * F14 * F15) / (29000000 * Math.pow(F15, 3) + 3 * F26 * F27 * Math.pow(F14, 3));

    var F44 = F27 * F14 / (2 * F15);

    var F45 = F43 + F44;

    var F46 = Math.sqrt(Math.pow(F45, 2) - F45 * F42 + Math.pow(F42, 2));

    var F55 = F46 * 100 / F16;
    var dec = "";
    if (F55 > F18) {
        dec = "NO ES SEGURO CRUZAR LA TUBERÍA";
    } else {
        dec = "ES SEGURO CRUZAR LA TUBERÍA";
    }
    /*
     * 
     * SALIDA
     * F34 = Load Coefficient
     * F35 = Load due to Overburden
     * F36 = m - Influence Factor
     * F37 = n - Influence Factor
     * F38 = Influence Coefficient
     * F39 = Max Static Pressure
     * F40 = Total Track Load
     * F41 = Total Load
     * F42 = Logitudinal Bending Stress
     * F43 = Circumferential Stress
     * F44 = Hoop Stress
     * F45 = Total Circumferential Stress
     * F46 = Total Combined Stress
     * F55 = Percent of SMYS
     * dec = Desicion
     * 
     * 
     */

    return [F34, F35, F36, F37, F38, F39, F40, F41, F42, F43, F44, F45, F46, F55, dec];



}
//4.5
function wheelLoadAnalysis(vari) {
    /*
     * ENTRADA
     *  F14 = Pipe Outside Diameter
     *  F15 = Pipe Wall Thickness
     *  F16 = Specified Minimum Yield Strength
     *  F17 = Maximum Allowable Internal Stress
     *  F18 = Maximum Allowable Combined Stress
     *  F19 = Friction Force Coefficient
     *  F20 = Weight per Unit of Backfill
     *  F21 = Impact Factor
     *  F22 = Modulus of Elasticity of the Top Layer
     *  F23 = Modulus of Elasticity of the Soil Cover:
     *  F24 = Poisson's Ratio of the Top Layer
     *  F25 = Poisson's Ratio of the Soil Cover
     *  F26 = Bending Coefficient
     *  F27 = Deflection Coefficient
     *  F28 = Pipe Internal Pressure
     *  F29 = Concentrated Surface Load
     *  F30 = Vertical Depth of the Soil Cover
     *  F31 = Thickness of the Pavement Layer
     *  F32 = Trench Width 
     *  
     */
    var F14 = parseFloat(vari.TextBox14);
    var F15 = parseFloat(vari.TextBox15);
    var F16 = parseFloat(vari.TextBox16);
    var F17 = parseFloat(vari.TextBox17);
    var F18 = parseFloat(vari.TextBox18);
    var F19 = parseFloat(vari.TextBox19);
    var F20 = parseFloat(vari.TextBox20);
    var F21 = parseFloat(vari.TextBox21);
    var F22 = parseFloat(vari.TextBox22);
    var F23 = parseFloat(vari.TextBox23);
    var F24 = parseFloat(vari.TextBox24);
    var F25 = parseFloat(vari.TextBox25);
    var F26 = parseFloat(vari.TextBox26);
    var F27 = parseFloat(vari.TextBox27);
    var F28 = parseFloat(vari.TextBox28);
    var F29 = parseFloat(vari.TextBox29);
    var F30 = parseFloat(vari.TextBox30);
    var F31 = parseFloat(vari.TextBox31);
    var F32 = parseFloat(vari.TextBox32);

    var F35 = (1 - Math.exp(-2 * F19 * (F30 / F32))) / (2 * F19);
    F35 = F35.toFixed(3);
    F35 = parseFloat(F35) + 0.001;
    var F36 = F35 * F20 * (Math.pow(F32, 2) * (0.0833));
    F36 = parseFloat(F36.toFixed(2));
    var op4 = -0.5 * (F31) / (F30 * 12);
    if (op4 < 0) {
        op4 = op4 * -1;
        op4 = Math.pow(op4, 0.7);
        op4 = op4 * -1;
    } else {
        op4 = Math.pow(op4, 0.7);
    }

    var F37 = ((0.0104 * F29 * F14 * F21) / (Math.PI * Math.pow((F31 / 12 + F30), 2))) * Math.pow(((F22 * F24) / (F23 * F25)), op4);
    F37 = parseFloat(F37.toFixed(2));
    var F38 = F36 + F37;
    // PREGUNTAR POR ESTA FORMULA
    var F39 = 29000000 * F14 * 0 / 48 * Math.pow(1, 2);

    var F40 = F38 * (3 * F26 * 29000000 * F14 * F15) / (29000000 * Math.pow(F15, 3) + 3 * F27 * F28 * Math.pow(F14, 3));
    F40 = Math.floor(F40);
    var F41 = F28 * F14 / (2 * F15);
    F41 = Math.floor(F41);
    var F42 = F40 + F41;
    F42 = Math.floor(F42);
    var F43 = Math.pow((Math.pow(F42, 2) - F42 * F39 + Math.pow(F39, 2)), 0.5);

    var F44 = F43 * 100 / F16;
    F44 = F44.toFixed(3);
    var dec = "";

    if (F44 > F18) {
        dec = "NO ES SEGURO CRUZAR LA TUBERÍA";
    } else {
        dec = "ES SEGURO CRUZAR LA TUBERÍA";
    }
    /*
     * SALIDA
     *  F35 = Load Coefficient
     *  F36 = Load due to Overburden
     *  F37 = Average Vehicular Load
     *  F38 = Total Load
     *  F39 = Logitudinal Bending Stress
     *  F40 = Circumferential Stress
     *  F41 = Hoop Stress
     *  F42 = Total Circumferential Stress
     *  F43 = Total Combined Stress
     *  F44 = Percent of SMYS
     *  dec = Mensaje si es seguro curzar la tuberia 
     * 
     * 
     */
    return [F35, F36, F37, F38, F39, F40, F41, F42, F43, F44, dec];
}

function  valorX0(xo, h, val) {
    var xo = xo;
    var x;
    var y;

    //VALORES A TOMAR PARA CALCULAR 
    if (val == 'Khe') {
        x = [0.0075, 0.0095, 0.0115, 0.0135, 0.0155, 0.0175, 0.0195, 0.0215, 0.0235, 0.0255, 0.0275, 0.0295, 0.0315, 0.0335, 0.0355, 0.0375, 0.0395, 0.0415, 0.0435, 0.0455, 0.0475, 0.0495, 0.0515, 0.0535, 0.0555, 0.0575, 0.0595, 0.0615, 0.0635, 0.0655, 0.0675, 0.0695, 0.0715, 0.0735, 0.0755, 0.0775, 0.0795, 0.0815, 0.0835, 0.0855];
        if (h == 0.2) {
            y = [11754.2, 9631.99, 7734.05, 6182.34, 4975.81, 4052.84, 3345.77, 2798.92, 2370.56, 2030.46, 1756.82, 1533.89, 1350.15, 1197.11, 1068.39, 959.169, 865.739, 785.227, 715.376, 654.396, 600.856, 553.6, 511.687, 474.343, 440.931, 410.919, 383.863, 359.387, 337.176, 316.957, 298.501, 281.609, 266.11, 251.854, 238.712, 226.571, 215.333, 204.91, 195.224, 186.21];
        }
        if (h == 0.5) {
            y = [7702.170, 6682.500, 5810.950, 4984.920, 4236.260, 3590.650, 3050.760, 2605.940, 2241.130, 1941.540, 1694.360, 1489.090, 1317.420, 1172.780, 1050.030, 945.107, 854.833, 776.667, 708.584, 648.954, 596.456, 550.012, 508.737, 471.901, 438.895, 409.212, 382.422, 358.165, 336.133, 316.064, 297.732, 280.944, 265.532, 251.350, 238.271, 226.185, 214.992, 204.609, 194.958, 185.973];
        }
        if (h == 1.0) {
            y = [5695.01, 4836.42, 4316.75, 3872.92, 3447.67, 3043.84, 2673.71, 2344.72, 2058.26, 1811.77, 1600.9, 1420.78, 1266.75, 1134.67, 1020.98, 922.696, 837.34, 762.868, 697.589, 640.112, 589.284, 544.148, 503.907, 467.894, 435.55, 406.402, 380.048, 356.149, 334.412, 314.588, 296.46, 279.844, 264.576, 250.517, 237.542, 225.544, 214.428, 204.11, 194.516, 185.58];
        }
        if (h == 2.0) {
            y = [4496.67, 3572.13, 3122.36, 2837.51, 2604.99, 2386.84, 2174.9, 1971.32, 1780.21, 1604.58, 1445.79, 1303.83, 1177.83, 1066.43, 968.116, 881.359, 804.719, 736.896, 676.737, 623.235, 575.52, 532.841, 494.556, 460.111, 429.033, 400.913, 375.401, 352.193, 331.03, 311.682, 293.954, 277.672, 262.688, 248.868, 236.098, 224.275, 213.309, 203.121, 193.638, 184.8];
        }
    }
    if (val == 'Be') {
        x = [0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5, 14.5, 15.5, 16.5, 17.5, 18.5, 19.5, 20.5, 21.5, 22.5, 23.5, 24.5, 25.5, 26.5, 27.5, 28.5, 29.5, 30.5, 31.5];
        if (h == 'A') {
            y = [0.20755, 0.532744, 0.766533, 0.93461, 1.05544, 1.14231, 1.20477, 1.24967, 1.28195, 1.30515, 1.32184, 1.33383, 1.34245, 1.34865, 1.35311, 1.35631, 1.35862, 1.36027, 1.36146, 1.36232, 1.36293, 1.36338, 1.36369, 1.36392, 1.36409, 1.36421, 1.36429, 1.36435, 1.3644, 1.36443, 1.36445, 1.36447];
        }
        if (h == 'B') {
            y = [0.204849, 0.513442, 0.723635, 0.866803, 0.96432, 1.03074, 1.07598, 1.1068, 1.12779, 1.14209, 1.15182, 1.15846, 1.16297, 1.16605, 1.16815, 1.16957, 1.17055, 1.17121, 1.17166, 1.17197, 1.17218, 1.17232, 1.17242, 1.17248, 1.17253, 1.17256, 1.17258, 1.17259, 1.1726, 1.17261, 1.17261, 1.17262];
        }
    }
    if (val == 'Ee') {
        x = [1.0000, 1.0045, 1.0090, 1.0135, 1.0180, 1.0225, 1.0270, 1.0315, 1.0360, 1.0405, 1.0450, 1.0495, 1.0540, 1.0585, 1.0630, 1.0675, 1.0720, 1.0765, 1.0810, 1.0855, 1.0900, 1.0945, 1.0990, 1.1035, 1.1080, 1.1125, 1.1170, 1.1215, 1.1260, 1.1305, 1.1350, 1.1395, 1.1440, 1.1485, 1.1530, 1.1575, 1.1620, 1.1665, 1.1710, 1.1755, 1.1800, 1.1845, 1.1890, 1.1935, 1.1980, 1.2025, 1.2070, 1.2115, 1.2160, 1.2205, 1.2250, 1.2295, 1.2340, 1.2385, 1.2430, 1.2475, 1.2520, 1.2565, 1.2610, 1.2655, 1.2700, 1.2745, 1.2790, 1.2835, 1.2880, 1.2925, 1.2970, 1.3015];
        y = [0.82645, 0.83390, 0.84139, 0.84891, 0.85647, 0.86406, 0.87168, 0.87933, 0.88702, 0.89474, 0.90250, 0.91029, 0.91811, 0.92597, 0.93386, 0.94178, 0.94974, 0.95773, 0.96575, 0.97381, 0.98190, 0.99003, 0.99818, 1.00637, 1.01460, 1.02286, 1.03115, 1.03947, 1.04783, 1.05622, 1.06465, 1.07311, 1.08160, 1.09013, 1.09869, 1.10728, 1.11590, 1.12456, 1.13326, 1.14198, 1.15074, 1.15954, 1.16836, 1.17722, 1.18612, 1.19505, 1.20401, 1.21300, 1.22203, 1.23109, 1.24019, 1.24931, 1.25848, 1.26767, 1.27690, 1.28616, 1.29546, 1.30479, 1.31415, 1.32355, 1.33298, 1.34244, 1.35193, 1.36146, 1.37103, 1.38063, 1.39026, 1.39992];
    }
    if (val == 'KLr') {
        x = [0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08];
        if (h == 5) {
            y = [550.429, 496.267, 456.622, 426.767, 403.063, 382.836, 364.244, 346.157, 328.028, 309.766, 291.611, 274.01, 257.484, 242.511, 229.391];
        }
        if (h == 10) {
            y = [373.514, 341.162, 314.788, 293.178, 275.265, 260.13, 246.998, 235.241, 224.377, 214.07, 204.132, 194.519, 185.336, 176.83, 169.399];
        }
        if (h == 20) {
            y = [255.664, 231.372, 213.004, 199.108, 188.441, 179.964, 172.845, 166.457, 160.378, 154.393, 148.493, 142.872, 137.932, 134.282, 132.732];
        }
    }
    if (val == 'GLr') {
        x = [2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5, 27, 27.5, 28, 28.5, 29, 29.5, 30, 30.5, 31, 31.5, 32, 32.5, 33, 33.5, 34, 34.5, 35, 35.5, 36, 36.5, 37, 37.5, 38, 38.5, 39, 39.5, 40, 40.5, 41, 41.5, 42];
        if (h >= 3 && h <= 4) {
            y = [2.60022, 2.38986, 2.20672, 2.04778, 1.91026, 1.79166, 1.68971, 1.60237, 1.52779, 1.46431, 1.41046, 1.36492, 1.32652, 1.29421, 1.26709, 1.24436, 1.22531, 1.20933, 1.19591, 1.18459, 1.17498, 1.16676, 1.15965, 1.15343, 1.14791, 1.14292, 1.13835, 1.1341, 1.13008, 1.12622, 1.12249, 1.11885, 1.11526, 1.1117, 1.10815, 1.1046, 1.10104, 1.09745, 1.09382, 1.09014, 1.08639, 1.08255, 1.07861, 1.07455, 1.07036, 1.066, 1.06147, 1.05674, 1.05179, 1.04661, 1.04118, 1.03549, 1.02952, 1.02328, 1.01676, 1.00996, 1.0029, 0.99557, 0.988003, 0.980215, 0.972231, 0.96408, 0.955794, 0.947405, 0.938946, 0.930452, 0.92195, 0.913465, 0.905014, 0.896603, 0.888224, 0.879852, 0.87144, 0.862917, 0.85418, 0.845088, 0.835461, 0.82507, 0.81363, 0.800793, 0.786141];
        }
        if (h == 6) {
            y = [2.26089, 1.96607, 1.74260, 1.57503, 1.45068, 1.35923, 1.29238, 1.24351, 1.20747, 1.18025, 1.15885, 1.14105, 1.12528, 1.11046, 1.09591, 1.08124, 1.06628, 1.051, 1.03547, 1.01983, 1.00421, 0.988781, 0.973672, 0.958994, 0.944824, 0.931203, 0.91814, 0.905609, 0.893563, 0.88193, 0.870625, 0.859555, 0.848625, 0.837746, 0.826834, 0.815822, 0.804657, 0.793305, 0.781751, 0.769999, 0.758074, 0.746014, 0.733875, 0.721721, 0.709625, 0.697662, .685906, 0.674428, 0.663289, 0.652536, 0.642204, 0.632308, 0.622845, .613794, 0.605113, 0.596745, 0.588618, 0.580649, 0.572749, 0.56483, 0.556809, 0.548615, 0.540197, 0.531531, 0.522623, 0.513515, 0.50429, 0.495068, 0.486007, 0.477295, 0.469135, 0.461729, 0.455253, 0.44982, 0.44544, 0.441956, 0.438983, 0.43582, 0.431348, 0.42391, 0.41117];
        }
        if (h == 8) {
            y = [2.59898, 2.29373, 2.05243, 1.86143, 1.7096, 1.58798, 1.48945, 1.40841, 1.34052, 1.28249, 1.23186, 1.18685, 1.1462, 1.10908, 1.07493, 1.04342, 1.01438, 0.987712, 0.963397, 0.94142, 0.921763, 0.90439, 0.889235, 0.876196, 0.865139, 0.855893, 0.848263, 0.842031, 0.836965, 0.832827, 0.829382, 0.826402, 0.823677, 0.821018, 0.818263, 0.815279, 0.811965, 0.808255, 0.804113, 0.799535, 0.794545, 0.789192, 0.783544, 0.777686, 0.771711, 0.765715, 0.759794, 0.754035, 0.748516, 0.743293, 0.738406, 0.733869, 0.729673, 0.725783, 0.722141, 0.718665, 0.715257, 0.711804, 0.708186, 0.704283, 0.699981, 0.695183, 0.689815, 0.683834, 0.677237, 0.670067, 0.662411, 0.654407, 0.646236, 0.638116, 0.630287, 0.622986, 0.616422, 0.610728, 0.605916, 0.601804, 0.597938, 0.593494, 0.587153, 0.576966, 0.560186];
        }
        if (h == 10) {
            y = [1.71843, 1.48536, 1.30647, 1.17048, 1.06805, 0.991541, 0.934776, 0.892798, 0.861683, 0.838368, 0.820503, 0.806316, 0.794508, 0.784151, 0.774612, 0.765479, 0.756508, 0.747574, 0.738636, 0.729704, 0.720816, 0.712025, 0.70338, 0.694921, 0.686677, 0.678655, 0.67085, 0.66324, 0.65579, 0.648454, 0.641183, 0.633924, 0.626625, 0.619242, 0.611735, 0.604076, 0.596249, 0.588249, 0.580085, 0.571779, 0.563363, 0.554878, 0.546376, 0.53791, 0.529538, 0.521317, 0.5133, 0.505534, 0.498057, 0.490897, 0.484068, 0.47757, 0.471388, 0.465493, 0.459842, 0.45438, 0.449042, 0.443757, 0.438452, 0.433054, 0.427499, 0.421731, 0.415715, 0.409434, 0.402899, 0.39615, 0.389254, 0.382313, 0.375452, 0.368819, 0.362574, 0.356869, 0.351835, 0.347551, 0.344007, 0.341066, 0.338406, 0.335455, 0.331318, 0.324678, 0.313695];
        }
        if (h == 14) {
            y = [1.24833, 1.09344, 0.967579, 0.866114, 0.785019, 0.720797, 0.670433, 0.631338, 0.601304, 0.578462, 0.561243, 0.548338, 0.538668, 0.531355, 0.525692, 0.521119, 0.517202, 0.513613, 0.510111, 0.506528, 0.502753, 0.498724, 0.494414, 0.489822, 0.484968, 0.479885, 0.474613, 0.469197, 0.463681, 0.458108, 0.452515, 0.446936, 0.441397, 0.435918, 0.430514, 0.425192, 0.419954, 0.4148, 0.409724, 0.404718, 0.399772, 0.394876, 0.390019, 0.385194, 0.380394, 0.375612, 0.370849, 0.366105, 0.361384, 0.356694, 0.352046, 0.347451, 0.342925, 0.338482, 0.334138, 0.329908, 0.325804, 0.321838, 0.318015, 0.314337, 0.3108, 0.307394, 0.304104, 0.300906, 0.297771, 0.294665, 0.291548, 0.28838, 0.285119, 0.281729, 0.27818, 0.274456, 0.270562, 0.266529, 0.262425, 0.258364, 0.254522, 0.251146, 0.248572, 0.247241, 0.247725];
        }
    }
    if (val == 'GHr') {
        x = [2, 4.8571, 7.7142, 10.5713, 13.4284, 16.2855, 19.1426, 21.9997, 24.8568, 27.7139, 30.571, 33.4281, 36.2852, 39.1423, 41.9994];
        if (h == 6) {
            y = [1.00232, 1.07802, 1.07173, 1.0258, 0.966078, 0.906428, 0.852587, 0.805381, 0.763284, 0.724323, 0.687335, 0.652564, 0.62161, 0.596724, 0.579453];
        }
        if (h == 10) {
            y = [0.682392, 0.724973, 0.721385, 0.695564, 0.662114, 0.628902, 0.599249, 0.573731, 0.551584, 0.531721, 0.513342, 0.496163, 0.480242, 0.465415, 0.450335];
        }
        if (h == 14) {
            y = [0.476148, 0.501807, 0.500855, 0.486615, 0.467585, 0.448597, 0.431835, 0.417725, 0.405677, 0.394696, 0.383854, 0.372623, 0.361076, 0.34994, 0.340525];
        }
    }
    if (val == 'KHr') {
        x = [0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08];
        if (h == 5) {
            y = [449.362, 482.496, 450.183, 385.788, 314.03, 249.998, 200.052, 164.009, 137.997, 117.366, 99.039, 82.702, 70.2177, 62.6448, 54.2606];
        }
        if (h == 10) {
            y = [313.642, 340.266, 330.47, 300.101, 260.713, 220.167, 183.237, 152.207, 127.477, 108.163, 92.7008, 79.4441, 67.2705, 56.1817, 47.9058];
        }
        if (h == 20) {
            y = [196.14, 230.733, 238.024, 227.915, 207.969, 183.697, 158.857, 135.738, 115.46, 98.2634, 83.798, 71.4199, 60.4816, 50.6243, 42.0704];
        }
    }
    if (val == 'Ghh') {
        x = [2, 4.8571, 7.7142, 10.5713, 13.4284, 16.2855, 19.1426, 21.9997, 24.8568, 27.7139, 30.571, 33.4281, 36.2852, 39.1423, 41.9994];
        if (h == 3 || h == 4) {
            y = [1.42094, 1.49553, 1.43717, 1.30637, 1.20534, 1.15815, 1.1372, 1.11494, 1.08766, 1.06612, 1.05378, 1.03972, 1.01779, 1.00791, 0.998545];
        }
        if (h == 6) {
            y = [1.08243, 1.1375, 1.11651, 1.04162, 0.973383, 0.931983, 0.906182, 0.880995, 0.852692, 0.825879, 0.802659, 0.777945, 0.748065, 0.721705, 0.693126];
        }
        if (h == 8) {
            y = [0.843088, 0.888621, 0.88312, 0.843053, 0.797324, 0.762494, 0.739748, 0.721955, 0.702358, 0.679635, 0.65728, 0.638429, 0.620475, 0.596993, 0.577715];
        }
        if (h == 10) {
            y = [0.66855, 0.717437, 0.710884, 0.681457, 0.648451, 0.620782, 0.600141, 0.584134, 0.569091, 0.552275, 0.533161, 0.513523, 0.496014, 0.48094, 0.460952];
        }
    }
    if (val == 'Glh') {
        x = [2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5, 27, 27.5, 28, 28.5, 29, 29.5, 30, 30.5, 31, 31.5, 32, 32.5, 33, 33.5, 34, 34.5, 35, 35.5, 36, 36.5, 37, 37.5, 38, 38.5, 39, 39.5, 40, 40.5, 41, 41.5, 42];
        if (h == 3) {
            y = [2.60022, 2.38986, 2.20672, 2.04778, 1.91026, 1.79166, 1.68971, 1.60237, 1.52779, 1.46431, 1.41046, 1.36492, 1.32652, 1.29421, 1.26709, 1.24436, 1.22531, 1.20933, 1.19591, 1.18459, 1.17498, 1.16676, 1.15965, 1.15343, 1.14791, 1.14292, 1.13835, 1.1341, 1.13008, 1.12622, 1.12249, 1.11885, 1.11526, 1.1117, 1.10815, 1.1046, 1.10104, 1.09745, 1.09382, 1.09014, 1.08639, 1.08255, 1.07861, 1.07455, 1.07036, 1.066, 1.06147, 1.05674, 1.05179, 1.04661, 1.04118, 1.03549, 1.02952, 1.02328, 1.01676, 1.00996, 1.0029, 0.99557, 0.988003, 0.980215, 0.972231, 0.96408, 0.955794, 0.947405, 0.938946, 0.930452, 0.92195, 0.913465, 0.905014, 0.896603, 0.888224, 0.879852, 0.87144, 0.862917, 0.85418, 0.845088, 0.835461, 0.82507, 0.81363, 0.800793, 0.786141];
        }
        if (h == 6) {
            y = [2.58652, 2.35029, 2.14695, 1.97241, 1.82299, 1.69541, 1.58672, 1.49431, 1.41587, 1.34934, 1.29294, 1.24511, 1.20447, 1.16985, 1.14025, 1.1148, 1.09278, 1.07358, 1.05669, 1.04169, 1.02826, 1.01611, 1.00503, 0.994867, 0.985488, 0.9768, 0.968737, 0.961249, 0.954304, 0.947875, 0.941945, 0.936499, 0.931519, 0.926988, 0.922883, 0.919177, 0.915838, 0.912826, 0.910095, 0.907596, 0.905271, 0.903059, 0.900898, 0.89872, 0.896459, 0.894049, 0.891428, 0.888534, 0.885313, 0.881719, 0.877711, 0.873261, 0.86835, 0.862969, 0.857125, 0.850836, 0.84413, 0.837053, 0.829658, 0.822012, 0.814191, 0.806277, 0.798358, 0.790524, 0.782863, 0.775457, 0.768376, 0.761673, 0.75538, 0.749495, 0.74398, 0.738748, 0.733654, 0.728488, 0.722955, 0.716672, 0.709146, 0.699764, 0.687775, 0.672274, 0.652183];
        }
        if (h == 8) {
            y = [2.59898, 2.29373, 2.05243, 1.86143, 1.7096, 1.58798, 1.48945, 1.40841, 1.34052, 1.28249, 1.23186, 1.18685, 1.1462, 1.10908, 1.07493, 1.04342, 1.01438, 0.987712, 0.963397, 0.94142, 0.921763, 0.90439, 0.889235, 0.876196, 0.865139, 0.855893, 0.848263, 0.842031, 0.836965, 0.832827, 0.829382, 0.826402, 0.823677, 0.821018, 0.818263, 0.815279, 0.811965, 0.808255, 0.804113, 0.799535, 0.794545, 0.789192, 0.783544, 0.777686, 0.771711, 0.765715, 0.759794, 0.754035, 0.748516, 0.743293, 0.738406, 0.733869, 0.729673, 0.725783, 0.722141, 0.718665, 0.715257, 0.711804, 0.708186, 0.704283, 0.699981, 0.695183, 0.689815, 0.683834, 0.677237, 0.670067, 0.662411, 0.654407, 0.646236, 0.638116, 0.630287, 0.622986, 0.616422, 0.610728, 0.605916, 0.601804, 0.597938, 0.593494, 0.587153, 0.576966, 0.560186];
        }
        if (h == 10) {
            y = [2.59772, 2.23739, 1.96136, 1.75054, 1.58946, 1.46574, 1.36961, 1.29347, 1.23154, 1.17947, 1.13414, 1.09336, 1.05568, 1.0202, 0.986444, 0.954239, 0.923595, 0.894641, 0.867564, 0.842557, 0.819791, 0.799389, 0.781414, 0.765861, 0.75266, 0.741677, 0.732724, 0.725569, 0.719946, 0.715569, 0.712144, 0.709379, 0.706997, 0.704745, 0.702399, 0.699774, 0.696727, 0.693155, 0.689004, 0.684258, 0.678942, 0.673117, 0.666872, 0.660319, 0.653585, 0.646806, 0.640117, 0.633645, 0.627503, 0.621782, 0.616548, 0.611836, 0.607648, 0.603953, 0.600687, 0.597757, 0.595044, 0.592409, 0.589705, 0.586781, 0.583496, 0.579728, 0.575387, 0.570425, 0.564846, 0.558712, 0.55215, 0.545352, 0.538566, 0.53209, 0.526247, 0.521358, 0.517695, 0.515428, 0.514549, 0.514783, 0.51547, 0.515428, 0.512788, 0.504798, 0.487587];
        }
    }
    if (val == 'Klh') {
        x = [0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08];
        if (h == 5) {
            y = [14.4518, 14.981, 14.311, 13.1071, 11.7946, 10.6131, 9.66538, 8.96102, 8.45401, 8.07528, 7.75964, 7.46721, 7.19934, 7.00917, 7.00652];
        }
        if (h == 10) {
            y = [9.69573, 10.1009, 9.82502, 9.17903, 8.38693, 7.5984, 6.90122, 6.33374, 5.89735, 5.56893, 5.31335, 5.09592, 4.89482, 4.71364, 4.59377];
        }
        if (h == 20) {
            y = [5.99465, 6.51714, 6.49606, 6.17045, 5.71035, 5.22739, 4.78539, 4.411, 4.10428, 3.84931, 3.62484, 3.41482, 3.21909, 3.06395, 3.01275];
        }
    }
    if (val == 'KHh') {
        x = [0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08];
        if (h == 5) {
            y = [18.9393, 20.6162, 19.1077, 16.2715, 13.2193, 10.5219, 8.3843, 6.79039, 5.61778, 4.72208, 3.9911, 3.36883, 2.84924, 2.43984, 2.09501];
        }
        if (h == 10) {
            y = [12.3704, 14.8235, 14.2143, 12.4365, 10.4982, 8.81739, 7.46468, 6.35108, 5.3628, 4.44192, 3.61338, 2.95824, 2.53304, 2.23547, 1.61628];
        }
        if (h == 20) {
            y = [6.82618, 9.21612, 9.69183, 9.22279, 8.37056, 7.41976, 6.48525, 5.59552, 4.75234, 3.96662, 3.27045, 2.7055, 2.28744, 1.94681, 1.4459];
        }
    }
    var tam = x.length;
    var X = [];
    var Y = [];

    var min = Math.abs(x[0] - xo);
    var indice = 0;
    var i = 0;
    var j = 0;
    for (i = 1; i < tam; i++) {
        if (Math.abs(x[i] - xo) < min) {//  Se explora cual es el valor X(i) más cercano a xo y se retiene su indice
            min = Math.abs(x[i] - xo);
            indice = i;
        }
    }


    if (indice > 2 && indice < tam - 3) {
        j = 0;
        for (i = indice - 2; i <= indice + 3; i++) {//% Se toman los 6 puntos que rodean a xo
            X[j] = x[i]; //% El vector de 6 puntos lo nominaremos con [X(i),Y(i)]en el proceso de varerpolación
            Y[j] = y[i];
            j = j + 1;
        }
    } else {
        if (indice <= 2) {
            j = 0; //% OJO en la plantilla anterior no la inicialicé generaba error
            for (i = 0; i < 6; i++) {  //% Se toman los 6 puntos (x(1)),y(1)),..(x(6),y(6)) que contienen o rodean a xo
                X[j] = x[i];
                Y[j] = y[i];
                j = j + 1;
            }
        } else {
            if (indice >= tam - 3) {
                j = 0;
                for (i = tam - 6; i < tam; i++) { // %Se toman los 6 puntos (x(tam-5)),y(tam-5),. ..(x(tam),y(tam)) que contienen o rodean a xo
                    X[j] = x[i];
                    Y[j] = y[i];
                    j = j + 1;

                }
            }
        }
    }


    //% Los 6 puntos que utilizo para varerpolar los renombre con X e Y mayúscula  
    var c = [];
    c[0] = Y[0];
    var sumatoria = c[0];
    var d, u, productoria;
    var k = 0;
    for (i = 1; i < 6; i++) {

        d = X[i] - X[i - 1];
        u = c[i - 1];
        for (k = i - 2; k >= 0; k--) {
            u = u * (X[i] - X[k]) + c[k];
            d = d * (X[i] - X[k]);
        }
        c[i] = (Y[i] - u) / d;

        productoria = 1;
        for (j = 0; j <= i - 1; j++) {
            productoria = productoria * (xo - X[j]);
        }
        sumatoria = sumatoria + c[i] * productoria;//% esta sumatoria es el valor a entregar

    }
    return sumatoria;
}

function fi(xo, opcion) {
    var X;
    var Y;
    var impacto = 0;
    if (opcion == 0) {
        X = [0, 5.2778, 21.6667];
        Y = [1.5, 1.5, 1];
        if (xo >= 0 && xo <= 5.2778) {
            impacto = 1.5;
        } else {
            if (xo > 5.2778 && xo <= 21.6667) {
                impacto = 1.5 - 0.0305 * (xo - 5.2778);
            }
        }
    } else {
        X = [0, 5.2778, 30];
        Y = [1.75, 1.75, 1];
        if (xo >= 0 && xo <= 5.2778) {
            impacto = 1.75;
        } else {
            if (xo > 5.2778 && xo <= 30) {
                impacto = 1.75 - 0.0305 * (xo - 5.2778);
            }
        }

    }
    return impacto;

}



