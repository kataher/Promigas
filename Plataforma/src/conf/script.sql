USE [Plataforma]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[id_espe] [int] NOT NULL,
 CONSTRAINT [PK_Actividades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActividadModulo]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActividadModulo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_modulo] [int] NOT NULL,
	[id_actividadpro] [bigint] NOT NULL,
 CONSTRAINT [PK_ActividadModulo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActividadPesos]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActividadPesos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[id_proyecto] [bigint] NOT NULL,
	[id_actividad] [int] NOT NULL,
	[peso] [float] NOT NULL,
 CONSTRAINT [PK_ActividadPesos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actuadores](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_act] [varchar](100) NOT NULL,
	[ma_sel_act] [varchar](50) NOT NULL,
	[tam_sel_act] [varchar](50) NOT NULL,
	[cla_sel_act] [varchar](50) NOT NULL,
	[torquees_act] [varchar](50) NOT NULL,
	[toes_sel_act] [varchar](50) NOT NULL,
	[maact_sel_act] [varchar](50) NOT NULL,
	[refe_sel_act] [varchar](50) NOT NULL,
	[tiac_sel_act] [varchar](50) NOT NULL,
	[moac_sel_act] [varchar](50) NOT NULL,
	[pre_sel_act] [varchar](50) NOT NULL,
	[modelore_act] [varchar](50) NOT NULL,
	[trabajo_act] [varchar](50) NOT NULL,
	[maxpar_act] [varchar](50) NOT NULL,
	[maxparval_act] [varchar](50) NOT NULL,
	[pmin_act] [varchar](50) NOT NULL,
	[tpmin_act] [varchar](50) NOT NULL,
	[ppmin_act] [varchar](50) NOT NULL,
	[pmax_act] [varchar](50) NOT NULL,
	[tpmax_act] [varchar](50) NOT NULL,
	[ppmax_act] [varchar](50) NOT NULL,
	[vecmax_act] [varchar](200) NOT NULL,
	[torquema_act] [varchar](50) NOT NULL,
	[toma_sel_act] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Actuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdiabaticHead]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdiabaticHead](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ah] [varchar](100) NOT NULL,
	[opz_ah] [varchar](50) NOT NULL,
	[z1s_ah] [varchar](50) NOT NULL,
	[basepressure_ah] [varchar](50) NOT NULL,
	[bp_sel_ah] [varchar](50) NOT NULL,
	[basetemperature_ah] [varchar](50) NOT NULL,
	[bt_sel_ah] [varchar](50) NOT NULL,
	[suctionp_ah] [varchar](50) NOT NULL,
	[sp_sel_ah] [varchar](50) NOT NULL,
	[suctiont_ah] [varchar](50) NOT NULL,
	[st_sel_ah] [varchar](50) NOT NULL,
	[dischargep_ah] [varchar](50) NOT NULL,
	[dp_sel_ah] [varchar](50) NOT NULL,
	[gass_ah] [varchar](50) NOT NULL,
	[gs_sel_ah] [varchar](50) NOT NULL,
	[gst_ah] [varchar](50) NOT NULL,
	[adiabatice_ah] [varchar](50) NOT NULL,
	[discharget_ah] [varchar](50) NOT NULL,
	[z1_ah] [varchar](50) NOT NULL,
	[z2_ah] [varchar](50) NOT NULL,
	[adiabatich_ah] [varchar](50) NOT NULL,
	[adiabaticghp_ah] [varchar](50) NOT NULL,
	[ee_sel_ah] [varchar](50) NOT NULL,
	[na_ah] [varchar](50) NOT NULL,
	[enteree_ah] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdiabaticHead] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdiabaticHorsePower]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdiabaticHorsePower](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ahp] [varchar](100) NOT NULL,
	[opz_ahp] [varchar](50) NOT NULL,
	[z1s_ahp] [varchar](50) NOT NULL,
	[z2d_ahp] [varchar](50) NOT NULL,
	[basepressure_ahp] [varchar](50) NOT NULL,
	[bp_sel_ahp] [varchar](50) NOT NULL,
	[basetemperature_ahp] [varchar](50) NOT NULL,
	[bt_sel_ahp] [varchar](50) NOT NULL,
	[suctionp_ahp] [varchar](50) NOT NULL,
	[sp_sel_ahp] [varchar](50) NOT NULL,
	[suctiont_ahp] [varchar](50) NOT NULL,
	[st_sel_ahp] [varchar](50) NOT NULL,
	[dischargep_ahp] [varchar](50) NOT NULL,
	[dp_sel_ahp] [varchar](50) NOT NULL,
	[capacityr_ahp] [varchar](50) NOT NULL,
	[cr_sel_ahp] [varchar](50) NOT NULL,
	[gass_ahp] [varchar](50) NOT NULL,
	[gs_sel_ahp] [varchar](50) NOT NULL,
	[gst_ahp] [varchar](50) NOT NULL,
	[adiabatice_ahp] [varchar](50) NOT NULL,
	[mechanicale_ahp] [varchar](50) NOT NULL,
	[discharget_ahp] [varchar](50) NOT NULL,
	[z1_ahp] [varchar](50) NOT NULL,
	[adiabatich_ahp] [varchar](50) NOT NULL,
	[adiabaticghp_ahp] [varchar](50) NOT NULL,
	[ghp_ahp] [varchar](50) NOT NULL,
	[bhp_ahp] [varchar](50) NOT NULL,
	[acfm_ahp] [varchar](50) NOT NULL,
	[enteree_ahp] [varchar](50) NOT NULL,
	[ee_sel_ahp] [varchar](50) NOT NULL,
	[zavg_ahp] [varchar](50) NOT NULL,
	[z2_ahp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdiabaticHorsePower] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allowable]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allowable](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_all] [varchar](100) NOT NULL,
	[do_sel_all] [varchar](100) NOT NULL,
	[do_all] [varchar](50) NOT NULL,
	[pdr_all] [varchar](50) NOT NULL,
	[tyd_all] [varchar](50) NOT NULL,
	[tut_all] [varchar](50) NOT NULL,
	[tys_all] [varchar](50) NOT NULL,
	[atl_all] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Allowable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlternativeAcceptance]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlternativeAcceptance](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_alc] [varchar](100) NOT NULL,
	[pipe_rad_alc] [varchar](50) NOT NULL,
	[nomps_sel_alc] [varchar](50) NOT NULL,
	[wallt_sel_alc] [varchar](50) NOT NULL,
	[grade_sel_alc] [varchar](50) NOT NULL,
	[poissonr_alc] [varchar](50) NOT NULL,
	[young_alc] [varchar](50) NOT NULL,
	[nps_alc] [varchar](50) NOT NULL,
	[nominalo_alc] [varchar](50) NOT NULL,
	[nominalt_alc] [varchar](50) NOT NULL,
	[grade_alc] [varchar](50) NOT NULL,
	[specificmy_alc] [varchar](50) NOT NULL,
	[minctod_alc] [varchar](50) NOT NULL,
	[applieds_alc] [varchar](50) NOT NULL,
	[young_sel_alc] [varchar](50) NOT NULL,
	[no_sel_alc] [varchar](50) NOT NULL,
	[nt_sel_alc] [varchar](50) NOT NULL,
	[my_sel_alc] [varchar](50) NOT NULL,
	[mctod_sel_alc] [varchar](50) NOT NULL,
	[as_sel_alc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AlternativeAcceptance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](70) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreasUsuario]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreasUsuario](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_area] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_AreasUsuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BendingStressD]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BendingStressD](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_bds] [varchar](100) NOT NULL,
	[nps_sel_bds] [varchar](50) NOT NULL,
	[wt_sel_bds] [varchar](50) NOT NULL,
	[pipe_dia_bds] [varchar](50) NOT NULL,
	[pipe_wt_bds] [varchar](50) NOT NULL,
	[pipe_lenght_bds] [varchar](50) NOT NULL,
	[mod_elas_bds] [varchar](50) NOT NULL,
	[max_stress_bds] [varchar](50) NOT NULL,
	[max_defl_bds] [varchar](50) NOT NULL,
	[max_stress2_bds] [varchar](50) NOT NULL,
	[max_defl2_bds] [varchar](50) NOT NULL,
	[max_stress3_bds] [varchar](50) NOT NULL,
	[max_defl3_bds] [varchar](50) NOT NULL,
	[pipe_lenght_sel_bds] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BendingStressD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BendingStressF]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BendingStressF](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_bdsf] [varchar](100) NOT NULL,
	[nps_sel_bdsf] [varchar](50) NOT NULL,
	[wt_sel_bdsf] [varchar](50) NOT NULL,
	[unit_weight_bdsf] [varchar](50) NOT NULL,
	[pipe_dia_bdsf] [varchar](50) NOT NULL,
	[pipe_in_dia_bdsf] [varchar](50) NOT NULL,
	[vel_fluid_bdsf] [varchar](50) NOT NULL,
	[lenght_pipe_bdsf] [varchar](50) NOT NULL,
	[lenght_pipe_sel_bdsf] [varchar](50) NOT NULL,
	[bend_stress_bdsf] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BendingStressF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BendingStressW]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BendingStressW](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_baw] [varchar](100) NOT NULL,
	[nomps_sel_baw] [varchar](50) NOT NULL,
	[wthi_sel_baw] [varchar](50) NOT NULL,
	[nomout_baw] [varchar](50) NOT NULL,
	[nom_wall_baw] [varchar](50) NOT NULL,
	[corr_coa_baw] [varchar](50) NOT NULL,
	[esp_capa_baw] [varchar](50) NOT NULL,
	[vol_agua_baw] [varchar](50) NOT NULL,
	[dens_recu_baw] [varchar](50) NOT NULL,
	[dens_prod_baw] [varchar](50) NOT NULL,
	[safe_fact_baw] [varchar](50) NOT NULL,
	[weight_pipe_baw] [varchar](50) NOT NULL,
	[weight_coat_baw] [varchar](50) NOT NULL,
	[weight_prod_pipe_baw] [varchar](50) NOT NULL,
	[down_force_baw] [varchar](50) NOT NULL,
	[net_force_baw] [varchar](50) NOT NULL,
	[down_force_conc_baw] [varchar](50) NOT NULL,
	[conc_weight_spac_baw] [varchar](50) NOT NULL,
	[corr_coa_sel_baw] [varchar](100) NOT NULL,
	[vol_agua_sel_baw] [varchar](100) NOT NULL,
 CONSTRAINT [PK_BendingStressW] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapacityHorsePower]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapacityHorsePower](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_chp] [varchar](100) NOT NULL,
	[opz_chp] [varchar](50) NOT NULL,
	[z1s_chp] [varchar](50) NOT NULL,
	[z2d_chp] [varchar](50) NOT NULL,
	[enteree_chp] [varchar](50) NOT NULL,
	[basepressure_chp] [varchar](50) NOT NULL,
	[bp_sel_chp] [varchar](50) NOT NULL,
	[basetemperature_chp] [varchar](50) NOT NULL,
	[bt_sel_chp] [varchar](50) NOT NULL,
	[pact_sel_chp] [varchar](50) NOT NULL,
	[borec_chp] [varchar](50) NOT NULL,
	[bc_sel_chp] [varchar](50) NOT NULL,
	[stroket_chp] [varchar](50) NOT NULL,
	[str_sel_chp] [varchar](50) NOT NULL,
	[rotationals_chp] [varchar](50) NOT NULL,
	[rs_sel_chp] [varchar](50) NOT NULL,
	[cylindercl_chp] [varchar](50) NOT NULL,
	[pistonrd_chp] [varchar](50) NOT NULL,
	[prd_sel_chp] [varchar](50) NOT NULL,
	[suctionp_chp] [varchar](50) NOT NULL,
	[sp_sel_chp] [varchar](50) NOT NULL,
	[suctiont_chp] [varchar](50) NOT NULL,
	[st_sel_chp] [varchar](50) NOT NULL,
	[dischargep_chp] [varchar](50) NOT NULL,
	[dp_sel_chp] [varchar](50) NOT NULL,
	[gass_chp] [varchar](50) NOT NULL,
	[gs_sel_chp] [varchar](50) NOT NULL,
	[gst_chp] [varchar](50) NOT NULL,
	[mechanicale_chp] [varchar](50) NOT NULL,
	[pistond_chp] [varchar](50) NOT NULL,
	[discharget_chp] [varchar](50) NOT NULL,
	[z1_chp] [varchar](50) NOT NULL,
	[z2_chp] [varchar](50) NOT NULL,
	[volumetrice_chp] [varchar](50) NOT NULL,
	[cylinderc_chp] [varchar](50) NOT NULL,
	[equivalentc_chp] [varchar](50) NOT NULL,
	[cylinderb_chp] [varchar](50) NOT NULL,
	[ee_sel_chp] [varchar](50) NOT NULL,
	[effect_chp] [varchar](50) NOT NULL,
	[effect2_chp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CapacityHorsePower] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CathodicProtection]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CathodicProtection](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_cc] [varchar](100) NOT NULL,
	[pipeod_cc] [varchar](50) NOT NULL,
	[pipew_cc] [varchar](50) NOT NULL,
	[halfd_cc] [varchar](50) NOT NULL,
	[specificr_cc] [varchar](50) NOT NULL,
	[pipeel_cc] [varchar](50) NOT NULL,
	[pipeep_cc] [varchar](50) NOT NULL,
	[xdistance_cc] [varchar](50) NOT NULL,
	[pi_sel_cc] [varchar](50) NOT NULL,
	[pip_sel_cc] [varchar](50) NOT NULL,
	[ha_sel_cc] [varchar](50) NOT NULL,
	[sp_sel_cc] [varchar](50) NOT NULL,
	[pil_sel_cc] [varchar](50) NOT NULL,
	[pie_sel_cc] [varchar](50) NOT NULL,
	[xd_sel_cc] [varchar](50) NOT NULL,
	[linear_cc] [varchar](50) NOT NULL,
	[leakage_cc] [varchar](50) NOT NULL,
	[characteristicsr_cc] [varchar](50) NOT NULL,
	[attenuationc_cc] [varchar](50) NOT NULL,
	[pipee_cc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CathodicProtection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBox]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBox](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[value] [varchar](50) NOT NULL,
	[id_combo] [varchar](50) NOT NULL,
	[codigo] [int] NULL,
 CONSTRAINT [PK_ComboBox] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxAccionActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxAccionActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ComboBoxAccionActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxAnsiActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxAnsiActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ansi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ComboBoxAnsiActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxInchesActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxInchesActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[inches] [varchar](50) NOT NULL,
	[value] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ComboBoxInchesActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxMarcaActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxMarcaActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ComboBoxMarcaActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxMedidores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxMedidores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](20) NOT NULL,
	[modelo] [varchar](20) NOT NULL,
	[diametro_pulg] [varchar](20) NOT NULL,
	[capref] [varchar](20) NOT NULL,
	[serie] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ComboMedidores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxMedMod]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxMedMod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](20) NOT NULL,
	[diametro_pulg] [decimal](10, 3) NOT NULL,
	[capref] [decimal](10, 3) NOT NULL,
	[serie] [varchar](20) NOT NULL,
 CONSTRAINT [PK_MedidoresModelos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxModeloActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxModeloActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[id_referencia] [int] NOT NULL,
	[id_accion] [int] NOT NULL,
 CONSTRAINT [PK_ComboBoxModeloActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxNPS]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxNPS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NPS] [varchar](10) NOT NULL,
	[diameter] [varchar](10) NOT NULL,
	[wall_thickness] [varchar](10) NOT NULL,
	[typec] [nchar](5) NULL,
 CONSTRAINT [PK_ComboBoxNPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxPresionActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxPresionActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [PK_ComboBoxPresionActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxRefeActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxRefeActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[referencia] [varchar](50) NOT NULL,
	[id_marca] [int] NOT NULL,
 CONSTRAINT [PK_ComboBoxRefeActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBoxTorqueActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBoxTorqueActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NOT NULL,
	[id_inches] [int] NOT NULL,
	[id_ansi] [int] NOT NULL,
 CONSTRAINT [PK_ComboBoxTorqueActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComputadoresF]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputadoresF](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_com] [varchar](200) NOT NULL,
	[modelo_sel_com] [varchar](200) NOT NULL,
	[fabricante_sel_com] [varchar](200) NOT NULL,
	[sie_sel_com] [varchar](20) NULL,
	[us_sel_com] [varchar](20) NULL,
	[gpt_sel_com] [varchar](20) NULL,
	[mh_sel_com] [varchar](20) NULL,
	[pet_com] [varchar](200) NULL,
	[prog_sel_com] [varchar](20) NULL,
	[sag_sel_com] [varchar](20) NULL,
	[capg_sel_com] [varchar](20) NULL,
	[rtdg_sel_com] [varchar](20) NULL,
	[tpg_sel_com] [varchar](20) NULL,
	[cio_sel_com] [varchar](20) NULL,
	[oppr_sel_com] [varchar](20) NULL,
	[oprm_sel_com] [varchar](20) NULL,
	[trans_sel_com] [varchar](20) NULL,
	[ubtrans_sel_com] [varchar](20) NULL,
	[gbp_sel_com] [varchar](20) NULL,
	[cha_sel_com] [varchar](20) NULL,
	[programa_com] [varchar](200) NULL,
	[sa_sel_com] [varchar](20) NULL,
	[cap_sel_com] [varchar](20) NULL,
	[rtd_sel_com] [varchar](20) NULL,
	[tp_sel_com] [varchar](20) NULL,
	[sav_sel_com] [varchar](20) NULL,
	[s3_sel_com] [varchar](20) NULL,
	[s4_sel_com] [varchar](20) NULL,
	[s5_sel_com] [varchar](20) NULL,
	[s6_sel_com] [varchar](20) NULL,
	[s7_sel_com] [varchar](20) NULL,
	[s8_sel_com] [varchar](20) NULL,
	[tde_sel_com] [varchar](20) NULL,
	[tr_sel_com] [varchar](20) NULL,
	[mr_sel_com] [varchar](20) NULL,
	[pr_sel_com] [varchar](20) NULL,
	[opr_sel_com] [varchar](20) NULL,
	[siegc_sel_com] [varchar](20) NULL,
	[gbt_sel_com] [varchar](20) NULL,
	[mhgc_sel_com] [varchar](20) NULL,
	[progc_com] [varchar](200) NULL,
	[proga_com] [varchar](200) NULL,
	[sagc_sel_com] [varchar](20) NULL,
	[capgc_sel_com] [varchar](20) NULL,
	[rtdgc_sel_com] [varchar](20) NULL,
	[tpgc_sel_com] [varchar](20) NULL,
	[ciogc_sel_com] [varchar](20) NULL,
	[cr_sel_com] [varchar](20) NULL,
	[sp_sel_com] [varchar](20) NULL,
	[oprmgc_sel_com] [varchar](20) NULL,
	[kit_sel_com] [varchar](20) NULL,
	[db_sel_com] [varchar](20) NULL,
	[ir_sel_com] [varchar](20) NULL,
	[ec_sel_com] [varchar](20) NULL,
	[energia_com] [varchar](1000) NULL,
	[openergia_com] [varchar](1000) NULL,
	[bat_com] [varchar](1000) NULL,
	[procesador_com] [varchar](1000) NULL,
	[reloj_com] [varchar](1000) NULL,
	[entra_com] [varchar](1000) NULL,
	[entrapul_com] [varchar](1000) NULL,
	[ensaldig_com] [varchar](1000) NULL,
	[entraana_com] [varchar](1000) NULL,
	[entratemp_com] [varchar](1000) NULL,
	[comuni_com] [varchar](1000) NULL,
	[led_com] [varchar](1000) NULL,
	[capaexp_com] [varchar](1000) NULL,
	[garantia_com] [varchar](1000) NULL,
	[trans_com] [varchar](1000) NULL,
	[sentem_com] [varchar](1000) NULL,
	[entener_com] [varchar](1000) NULL,
	[fuente_com] [varchar](1000) NULL,
	[sumiana_com] [varchar](1000) NULL,
	[moniener_com] [varchar](1000) NULL,
	[batreser_com] [varchar](1000) NULL,
	[proce_com] [varchar](1000) NULL,
	[memoria_com] [varchar](1000) NULL,
	[relojtr_com] [varchar](1000) NULL,
	[entrapuls_com] [varchar](1000) NULL,
	[entrasaldig_com] [varchar](1000) NULL,
	[entraanal_com] [varchar](1000) NULL,
	[comunica_com] [varchar](1000) NULL,
	[ledestado_com] [varchar](1000) NULL,
	[capaexpa_com] [varchar](1000) NULL,
	[analogdig_com] [varchar](1000) NULL,
	[ieee_com] [varchar](1000) NULL,
 CONSTRAINT [PK_ComputadoresF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesingPressure]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesingPressure](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_dp] [varchar](100) NOT NULL,
	[opc_dp] [varchar](50) NOT NULL,
	[wt_sel_dp] [varchar](50) NOT NULL,
	[nominalps_sel_dp] [varchar](50) NOT NULL,
	[grade_sel_dp] [varchar](50) NOT NULL,
	[design_factor_sel_dp] [varchar](50) NOT NULL,
	[longitudinal_jf_dp] [varchar](50) NOT NULL,
	[td_sel_dp] [varchar](50) NOT NULL,
	[nom_pipeop_dp] [varchar](50) NOT NULL,
	[nomout_pipeop_dp] [varchar](50) NOT NULL,
	[nomwall_pipeop_dp] [varchar](50) NOT NULL,
	[gra_pipeop_dp] [varchar](50) NOT NULL,
	[yield_pipeop_dp] [varchar](50) NOT NULL,
	[fact_pipeop_dp] [varchar](50) NOT NULL,
	[long_pipeop_dp] [varchar](50) NOT NULL,
	[temp_pipeop_dp] [varchar](50) NOT NULL,
	[despress_pipeop_dp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DesingPressure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesingPressureP]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesingPressureP](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_dpp] [varchar](100) NOT NULL,
	[nomps_sel_dpp] [varchar](50) NOT NULL,
	[wthi_sel_dpp] [varchar](50) NOT NULL,
	[piping_sel_dpp] [varchar](50) NOT NULL,
	[nom_pipeop_dpp] [varchar](50) NOT NULL,
	[out_pipeop_dpp] [varchar](50) NOT NULL,
	[wall_pipeop_dpp] [varchar](50) NOT NULL,
	[hyd_pipeop_dpp] [varchar](50) NOT NULL,
	[fact_pipeop_dpp] [varchar](50) NOT NULL,
	[despress_pipeop_dpp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DesingPressureP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiameterGVel]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiameterGVel](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_dgv] [varchar](100) NOT NULL,
	[enteree_dgv] [varchar](50) NOT NULL,
	[al_sel_dgv] [varchar](50) NOT NULL,
	[tipo_sel_dgv] [varchar](50) NOT NULL,
	[basetemperature_dgv] [varchar](50) NOT NULL,
	[bt_sel_dgv] [varchar](50) NOT NULL,
	[basepressure_dgv] [varchar](50) NOT NULL,
	[bp_sel_dgv] [varchar](50) NOT NULL,
	[flowingp_dgv] [varchar](50) NOT NULL,
	[fp_sel_dgv] [varchar](50) NOT NULL,
	[flowingt_dgv] [varchar](50) NOT NULL,
	[ft_sel_dgv] [varchar](50) NOT NULL,
	[pipeinternald_dgv] [varchar](50) NOT NULL,
	[pid_sel_dgv] [varchar](50) NULL,
	[flowr_dgv] [varchar](50) NOT NULL,
	[fr_sel_dgv] [varchar](50) NOT NULL,
	[gs_sel_dgv] [varchar](50) NOT NULL,
	[gst_dgv] [varchar](50) NOT NULL,
	[gasv_dgv] [varchar](50) NOT NULL,
	[z_dgv] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DiameterGVel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElectricalResistance]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalResistance](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_elr] [varchar](100) NOT NULL,
	[cross_elr] [varchar](100) NOT NULL,
	[length_elr] [varchar](100) NOT NULL,
	[conductorr_elr] [varchar](100) NOT NULL,
	[le_sel_elr] [varchar](100) NOT NULL,
	[cs_sel_elr] [varchar](100) NOT NULL,
	[cr_sel_elr] [varchar](100) NOT NULL,
	[elecr_elr] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ElectricalResistance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElectrolyteResistance]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectrolyteResistance](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ere] [varchar](100) NOT NULL,
	[electrolyter_ere] [varchar](50) NOT NULL,
	[distancec_ere] [varchar](50) NOT NULL,
	[geof_ere] [varchar](50) NOT NULL,
	[er_sel_ere] [varchar](50) NOT NULL,
	[dc_sel_ere] [varchar](50) NOT NULL,
	[resise_ere] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ElectrolyteResistance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Erf]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Erf](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_erf] [varchar](100) NOT NULL,
	[cllocalidad_erf] [varchar](50) NOT NULL,
	[fos_erf] [varchar](50) NOT NULL,
	[pmpmac_erf] [varchar](50) NOT NULL,
	[smys_erf] [varchar](50) NOT NULL,
	[prefalperme_erf] [varchar](50) NOT NULL,
	[en_sel_erf] [varchar](50) NOT NULL,
	[lc_sel_erf] [varchar](50) NOT NULL,
	[preseopM_erf] [varchar](50) NOT NULL,
	[preseop_erf] [varchar](50) NOT NULL,
	[longacor_erf] [varchar](50) NOT NULL,
	[maop_erf] [varchar](50) NOT NULL,
	[de_sel_erf] [varchar](50) NOT NULL,
	[dianoex_erf] [varchar](50) NOT NULL,
	[dn_sel_erf] [varchar](50) NOT NULL,
	[erf_erf] [varchar](50) NOT NULL,
	[esnotu_erf] [varchar](50) NOT NULL,
	[prefalpermeM_erf] [varchar](50) NOT NULL,
	[erfM_erf] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Erf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadFase]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadFase](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[id_especialidad] [int] NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[lider] [bigint] NULL,
	[peso] [varchar](20) NULL,
 CONSTRAINT [PK_EspecialidadFase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadFaseActPro]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadFaseActPro](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[id_actividad] [int] NOT NULL,
	[id_especialidad] [int] NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[peso] [varchar](20) NOT NULL,
	[aprobado] [int] NULL,
	[fileUpload] [varchar](500) NULL,
	[id_user] [int] NULL,
	[fecha_inicio] [datetime] NULL,
	[tiempo] [int] NULL,
	[fecha_final] [datetime] NULL,
	[tiempoTotal] [int] NULL,
 CONSTRAINT [PK_EspecialidadFaseActPro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadProyects]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadProyects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_especialidad] [int] NOT NULL,
	[lider] [bigint] NULL,
	[fileupload] [varchar](99) NULL,
 CONSTRAINT [PK_EspecialidadProyects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstimatedWeight]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstimatedWeight](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ew] [varchar](100) NOT NULL,
	[assumedl_ew] [varchar](50) NOT NULL,
	[electricalc_ew] [varchar](50) NOT NULL,
	[polarizedp_ew] [varchar](50) NOT NULL,
	[polarizedae_ew] [varchar](50) NOT NULL,
	[averages_ew] [varchar](50) NOT NULL,
	[al_sel_ew] [varchar](50) NOT NULL,
	[ele_sel_ew] [varchar](50) NOT NULL,
	[polp_sel_ew] [varchar](50) NOT NULL,
	[pole_sel_ew] [varchar](50) NOT NULL,
	[ave_sel_ew] [varchar](50) NOT NULL,
	[estimatedw_ew] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstimatedWeight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FanLaws]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FanLaws](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_fl] [varchar](100) NOT NULL,
	[initialflowrate_fl] [varchar](50) NOT NULL,
	[initialcompressorhead_fl] [varchar](50) NOT NULL,
	[initialshafthorsepower_fl] [varchar](50) NOT NULL,
	[initialimpellerrotational_fl] [varchar](50) NOT NULL,
	[finalimpellerrotational_fl] [varchar](50) NOT NULL,
	[if_sel_fl] [varchar](50) NOT NULL,
	[finalflowrate_fl] [varchar](50) NOT NULL,
	[finalcompressorhead_fl] [varchar](50) NOT NULL,
	[finalshafthorsepower_fl] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FanLaws] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fases]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Fases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaseTiempo]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaseTiempo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[id_proyecto] [bigint] NOT NULL,
	[id_especialidad] [int] NOT NULL,
	[tiempo] [float] NOT NULL,
 CONSTRAINT [PK_FaseTiempo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunSlamShut]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunSlamShut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tam] [varchar](100) NOT NULL,
	[x0] [real] NOT NULL,
	[x1] [real] NOT NULL,
	[x2] [real] NOT NULL,
	[x3] [real] NOT NULL,
	[x4] [real] NOT NULL,
	[x5] [real] NOT NULL,
	[x6] [real] NOT NULL,
 CONSTRAINT [PK_FunSlamShut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GasPipeline]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GasPipeline](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_gp] [varchar](100) NOT NULL,
	[initialt_gp] [varchar](50) NOT NULL,
	[shut_gp] [varchar](50) NOT NULL,
	[internalpd_gp] [varchar](50) NOT NULL,
	[it_sel_gp] [varchar](50) NOT NULL,
	[shut_sel_gp] [varchar](50) NOT NULL,
	[ipd_sel_gp] [varchar](50) NOT NULL,
	[acceptablep_gp] [varchar](50) NOT NULL,
	[enteree_gp] [varchar](50) NOT NULL,
	[h_sel_gp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GasPipeline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GasPipelineR]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GasPipelineR](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_soil] [varchar](100) NOT NULL,
	[pipe_out] [varchar](50) NOT NULL,
	[pipe_int] [varchar](50) NOT NULL,
	[depth_cover] [varchar](50) NOT NULL,
	[ave_unit] [varchar](50) NOT NULL,
	[nat_gas] [varchar](50) NOT NULL,
	[bt_sel_soil] [varchar](50) NOT NULL,
	[w_soil] [varchar](50) NOT NULL,
	[alpha1] [varchar](50) NOT NULL,
	[alpha2] [varchar](50) NOT NULL,
	[r_soil] [varchar](50) NOT NULL,
	[depth_cra] [varchar](50) NOT NULL,
	[width_cra] [varchar](50) NOT NULL,
	[rad_cra] [varchar](50) NOT NULL,
	[vel_exp] [varchar](50) NOT NULL,
	[depth_cra_PRCI] [varchar](50) NOT NULL,
	[width_cra_PRCI] [varchar](50) NOT NULL,
	[pipe_out_sel] [varchar](50) NOT NULL,
	[pipe_int_sel] [varchar](50) NOT NULL,
	[depth_cover_sel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GasPipelineR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotTapSizing]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotTapSizing](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_htz] [varchar](100) NOT NULL,
	[calculatedoa_htz] [varchar](100) NOT NULL,
	[molecularws_htz] [varchar](100) NOT NULL,
	[criticalf_htz] [varchar](100) NOT NULL,
	[ee_sel_htz] [varchar](100) NOT NULL,
	[compressibilityf_htz] [varchar](100) NOT NULL,
	[bt_sel_htz] [varchar](100) NOT NULL,
	[nominalb_sel_htz] [varchar](100) NOT NULL,
	[selectgv_sel_htz] [varchar](100) NOT NULL,
	[condflujo_htz] [varchar](100) NOT NULL,
	[pressureb_htz] [varchar](100) NOT NULL,
	[pressure_htz] [varchar](100) NOT NULL,
	[enteree_htz] [varchar](100) NOT NULL,
	[preb_sel_htz] [varchar](100) NOT NULL,
	[holec_htz] [varchar](100) NOT NULL,
	[pre_sel_htz] [varchar](100) NOT NULL,
	[z1s_htz] [varchar](100) NOT NULL,
	[gsg_htz] [varchar](100) NOT NULL,
	[oc_sel_htz] [varchar](100) NOT NULL,
	[branchgv_htz] [varchar](100) NOT NULL,
	[specifich_htz] [varchar](100) NOT NULL,
	[flowrate_htz] [varchar](100) NOT NULL,
	[fr_sel_htz] [varchar](100) NOT NULL,
	[flowingt_htz] [varchar](100) NOT NULL,
	[baset_htz] [varchar](100) NOT NULL,
	[calculatedtd_htz] [varchar](100) NOT NULL,
	[orificec_htz] [varchar](100) NOT NULL,
	[pressurel_htz] [varchar](100) NOT NULL,
	[flowt_sel_htz] [varchar](100) NOT NULL,
	[opz_htz] [varchar](100) NOT NULL,
 CONSTRAINT [PK_HotTapSizing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoSlamShut]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoSlamShut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mini] [real] NOT NULL,
	[max] [real] NOT NULL,
	[color] [varchar](20) NOT NULL,
	[partenum] [varchar](20) NOT NULL,
	[maxpre] [real] NOT NULL,
	[mecanismo] [real] NOT NULL,
	[tolerancia] [real] NOT NULL,
	[maxdif] [varchar](50) NOT NULL,
 CONSTRAINT [PK_InfoSlamShut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installation]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ins] [varchar](100) NOT NULL,
	[pod_ins] [varchar](50) NOT NULL,
	[bd_ins] [varchar](50) NOT NULL,
	[eg_ins] [varchar](50) NOT NULL,
	[sgmd_ins] [varchar](50) NOT NULL,
	[paex_ins] [varchar](50) NOT NULL,
	[h_ins] [varchar](50) NOT NULL,
	[paecro_ins] [varchar](50) NOT NULL,
	[apaecro_ins] [varchar](50) NOT NULL,
	[l1_ins] [varchar](50) NOT NULL,
	[bac_ins] [varchar](50) NOT NULL,
	[hy_ins] [varchar](50) NOT NULL,
	[cf_ins] [varchar](50) NOT NULL,
	[cfb_ins] [varchar](50) NOT NULL,
	[cro_ins] [varchar](50) NOT NULL,
	[ampaecro_ins] [varchar](50) NOT NULL,
	[asps_ins] [varchar](50) NOT NULL,
	[uw_ins] [varchar](50) NOT NULL,
	[mpwt_ins] [varchar](50) NOT NULL,
	[perp_ins] [varchar](50) NOT NULL,
	[meluw_ins] [varchar](50) NOT NULL,
	[pr_sel_ins] [varchar](50) NOT NULL,
	[pr_ins] [varchar](50) NOT NULL,
	[ae_sel_ins] [varchar](50) NOT NULL,
	[ts_sel_ins] [varchar](50) NOT NULL,
	[ts_ins] [varchar](50) NOT NULL,
	[pod_sel_ins] [varchar](50) NOT NULL,
	[h_sel_ins] [varchar](50) NOT NULL,
	[l1_sel_ins] [varchar](50) NOT NULL,
	[bac_sel_ins] [varchar](50) NOT NULL,
	[cro_sel_ins] [varchar](50) NOT NULL,
	[mpwt_sel_ins] [varchar](50) NOT NULL,
	[we_ins] [varchar](50) NOT NULL,
	[wb_ins] [varchar](50) NOT NULL,
	[averex_ins] [varchar](50) NOT NULL,
	[averen_ins] [varchar](50) NOT NULL,
	[bs_ins] [varchar](50) NOT NULL,
	[bst_ins] [varchar](50) NOT NULL,
	[fa_ins] [varchar](50) NOT NULL,
	[fb_ins] [varchar](50) NOT NULL,
	[fc_ins] [varchar](50) NOT NULL,
	[fd_ins] [varchar](50) NOT NULL,
	[aa1_ins] [varchar](50) NOT NULL,
	[ab1_ins] [varchar](50) NOT NULL,
	[ac1_ins] [varchar](50) NOT NULL,
	[ad1_ins] [varchar](50) NOT NULL,
	[l2_ins] [varchar](50) NOT NULL,
	[l3_ins] [varchar](50) NOT NULL,
	[l4_ins] [varchar](50) NOT NULL,
	[ast_ins] [varchar](50) NOT NULL,
	[sh_ins] [varchar](50) NOT NULL,
	[mp_ins] [varchar](50) NOT NULL,
	[bl_ins] [varchar](50) NOT NULL,
	[oc_ins] [varchar](50) NOT NULL,
	[aa2_ins] [varchar](50) NOT NULL,
	[ab2_ins] [varchar](50) NOT NULL,
	[ac2_ins] [varchar](50) NOT NULL,
	[ad2_ins] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Installation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogAction]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogAction](
	[idLog] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [text] NULL,
	[idpro] [int] NULL,
	[id_liderE] [int] NULL,
	[id_liderF] [int] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_LogsAction] PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maop]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maop](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ma] [varchar](100) NOT NULL,
	[linepipe_ma] [varchar](50) NOT NULL,
	[nomps_sel_ma] [varchar](50) NOT NULL,
	[nomps_ma] [varchar](50) NOT NULL,
	[wallt_sel_ma] [varchar](50) NOT NULL,
	[wallt_ma] [varchar](50) NOT NULL,
	[td_sel_ma] [varchar](50) NOT NULL,
	[tempu_ma] [varchar](50) NOT NULL,
	[grade_sel_ma] [varchar](50) NOT NULL,
	[grade_ma] [varchar](50) NOT NULL,
	[df_sel_ma] [varchar](50) NOT NULL,
	[df_ma] [varchar](50) NOT NULL,
	[jf_sel_ma] [varchar](50) NOT NULL,
	[jf_ma] [varchar](50) NOT NULL,
	[maximund_ma] [varchar](50) NOT NULL,
	[longitudinale_ma] [varchar](50) NOT NULL,
	[mop_ma] [varchar](50) NOT NULL,
	[pipeo_sel_ma] [varchar](50) NOT NULL,
	[np_sel_ma] [varchar](50) NOT NULL,
	[md_sel_ma] [varchar](50) NOT NULL,
	[le_sel_ma] [varchar](50) NOT NULL,
	[maximuns_ma] [varchar](50) NOT NULL,
	[designp_ma] [varchar](50) NOT NULL,
	[intermediatef_ma] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Maop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaximunAllowable]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaximunAllowable](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_mal] [varchar](100) NOT NULL,
	[maximund_mal] [varchar](50) NOT NULL,
	[pipeo_mal] [varchar](50) NOT NULL,
	[nomip_mal] [varchar](50) NOT NULL,
	[md_sel_mal] [varchar](50) NOT NULL,
	[po_sel_mal] [varchar](50) NOT NULL,
	[np_sel_mal] [varchar](50) NOT NULL,
	[maximuna_mal] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MaximunAllowable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medidores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medidores](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[type] [varchar](15) NOT NULL,
	[description_med] [varchar](100) NOT NULL,
	[ma_sel_med] [varchar](50) NOT NULL,
	[se_sel_med] [varchar](50) NOT NULL,
	[mo_sel_med] [varchar](50) NOT NULL,
	[preisonba_med] [varchar](50) NOT NULL,
	[presionop_med] [varchar](50) NOT NULL,
	[flujomin_med] [varchar](50) NOT NULL,
	[flujomax_med] [varchar](50) NOT NULL,
	[po_sel_med] [varchar](50) NOT NULL,
	[pb_sel_med] [varchar](50) NOT NULL,
	[fmin_sel_med] [varchar](50) NOT NULL,
	[fmax_sel_med] [varchar](50) NOT NULL,
	[modeloop_med] [varchar](50) NOT NULL,
	[trabajoop_med] [varchar](50) NOT NULL,
	[maxcapaop_med] [varchar](50) NOT NULL,
	[modeloev_med] [varchar](50) NOT NULL,
	[trabajoev_med] [varchar](50) NOT NULL,
	[maxcapaev_med] [varchar](50) NOT NULL,
	[trabajocam_med] [varchar](50) NOT NULL,
	[capaopt_med] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MedRotatorios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloOpcion]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloOpcion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_modulo] [int] NOT NULL,
	[id_opcion] [int] NOT NULL,
 CONSTRAINT [PK_ModuloOpcion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Modulos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotorizedV]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotorizedV](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_mov] [varchar](100) NOT NULL,
	[ruta_mov] [varchar](500) NOT NULL,
	[nombre_mov] [varchar](200) NOT NULL,
 CONSTRAINT [PK_MotorizedV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ohm]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ohm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ohm] [varchar](100) NOT NULL,
	[potentiald_ohm] [varchar](50) NOT NULL,
	[potentiale_ohm] [varchar](50) NOT NULL,
	[geometryc_ohm] [varchar](50) NOT NULL,
	[geometrya_ohm] [varchar](50) NOT NULL,
	[averages_ohm] [varchar](50) NOT NULL,
	[pd_sel_ohm] [varchar](50) NOT NULL,
	[pe_sel_ohm] [varchar](50) NOT NULL,
	[as_sel_ohm] [varchar](50) NOT NULL,
	[corrosionc_ohm] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ohm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opciones]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Opciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackPipeline]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackPipeline](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_pap] [varchar](100) NOT NULL,
	[gasavetemp_pap] [varchar](50) NOT NULL,
	[basep_pap] [varchar](50) NOT NULL,
	[upstreamp_pap] [varchar](50) NOT NULL,
	[downstreamp_pap] [varchar](50) NOT NULL,
	[internalp_pap] [varchar](50) NOT NULL,
	[lenghtp_pap] [varchar](50) NOT NULL,
	[gst_pap] [varchar](50) NOT NULL,
	[pipe_rad_pap] [varchar](50) NOT NULL,
	[nomps_sel_pap] [varchar](50) NOT NULL,
	[wallt_sel_pap] [varchar](50) NOT NULL,
	[gat_sel_pap] [varchar](50) NOT NULL,
	[bp_sel_pap] [varchar](50) NOT NULL,
	[up_sel_pap] [varchar](50) NOT NULL,
	[dp_sel_pap] [varchar](50) NOT NULL,
	[ip_sel_pap] [varchar](50) NOT NULL,
	[lp_sel_pap] [varchar](50) NOT NULL,
	[averagep_pap] [varchar](50) NOT NULL,
	[averagec_pap] [varchar](50) NOT NULL,
	[packg_pap] [varchar](50) NOT NULL,
	[h_pap] [varchar](50) NOT NULL,
	[h_sel_pap] [varchar](50) NOT NULL,
	[gs_sel_pap] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PackPipeline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PanhandleA]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PanhandleA](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NOT NULL,
	[proyects_sel_adp] [bigint] NOT NULL,
	[basetemperature_adp] [varchar](50) NOT NULL,
	[basepressure_adp] [varchar](50) NOT NULL,
	[gasflowingtemp_adp] [varchar](50) NOT NULL,
	[gasspecificgra_adp] [varchar](50) NOT NULL,
	[pipelineefficiency_adp] [varchar](50) NOT NULL,
	[upstreampressure_adp] [varchar](50) NOT NULL,
	[flowrate_adp] [varchar](50) NOT NULL,
	[internalpipe_adp] [varchar](50) NOT NULL,
	[lengthof_adp] [varchar](50) NOT NULL,
	[upstreamelevation_adp] [varchar](50) NOT NULL,
	[downstreamelevation_adp] [varchar](50) NOT NULL,
	[downstreampressure_adp] [varchar](50) NOT NULL,
	[transmissionfactor_adp] [varchar](50) NULL,
	[velocity_adp] [varchar](50) NULL,
	[description_adp] [varchar](100) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[le_sel_apd] [varchar](50) NOT NULL,
	[ue_sel_apd] [varchar](50) NOT NULL,
	[bt_sel_adp] [varchar](50) NOT NULL,
	[gasft_sel_adp] [varchar](50) NOT NULL,
	[ipd_sel_apd] [varchar](50) NOT NULL,
	[up_sel_adp] [varchar](50) NOT NULL,
	[bp_sel_adp] [varchar](50) NOT NULL,
	[de_sel_apd] [varchar](50) NOT NULL,
	[bte_sel_adp] [varchar](50) NOT NULL,
	[resultado] [varchar](50) NOT NULL,
	[if_sel_adp] [varchar](50) NOT NULL,
	[unknown_adp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PanhandleA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[valor] [varchar](200) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineHydrostatic]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineHydrostatic](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_phy] [varchar](100) NOT NULL,
	[pipe_rad_phy] [varchar](50) NOT NULL,
	[nomps_sel_phy] [varchar](50) NOT NULL,
	[wallt_sel_phy] [varchar](50) NOT NULL,
	[pipeo_phy] [varchar](50) NOT NULL,
	[pipew_phy] [varchar](50) NOT NULL,
	[pipei_phy] [varchar](50) NOT NULL,
	[testp_phy] [varchar](50) NOT NULL,
	[testt_phy] [varchar](50) NOT NULL,
	[pipelinel_phy] [varchar](50) NOT NULL,
	[po_sel_phy] [varchar](50) NOT NULL,
	[pi_sel_phy] [varchar](50) NOT NULL,
	[tp_sel_phy] [varchar](50) NOT NULL,
	[tt_sel_phy] [varchar](50) NOT NULL,
	[pl_sel_phy] [varchar](50) NOT NULL,
	[waterc_phy] [varchar](50) NOT NULL,
	[volumec_phy] [varchar](50) NOT NULL,
	[volumect_phy] [varchar](50) NOT NULL,
	[thermalc_phy] [varchar](50) NOT NULL,
	[volumecr_phy] [varchar](50) NOT NULL,
	[pipelinef_phy] [varchar](50) NOT NULL,
	[volumer_phy] [varchar](50) NOT NULL,
	[incrementalv_phy] [varchar](50) NOT NULL,
	[compf_phy] [varchar](50) NOT NULL,
	[pressurec_phy] [varchar](50) NOT NULL,
	[enteree_phy] [varchar](50) NOT NULL,
	[h_sel_phy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PipelineHydrostatic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineTime ]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineTime ](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_pt] [varchar](100) NOT NULL,
	[averagei_pt] [varchar](50) NOT NULL,
	[gst_pt] [varchar](50) NOT NULL,
	[pipei_pt] [varchar](50) NOT NULL,
	[insided_pt] [varchar](50) NOT NULL,
	[lenghtp_pt] [varchar](50) NOT NULL,
	[numbersb_pt] [varchar](50) NOT NULL,
	[chokef_pt] [varchar](50) NOT NULL,
	[ai_sel_pt] [varchar](50) NOT NULL,
	[pi_sel_pt] [varchar](50) NOT NULL,
	[id_sel_pt] [varchar](50) NOT NULL,
	[lp_sel_pt] [varchar](50) NOT NULL,
	[cf_sel_pt] [varchar](50) NOT NULL,
	[blowndownt_pt] [varchar](50) NOT NULL,
	[volumel_pt] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PipelineTime ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipingPipe]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipingPipe](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_ppw] [varchar](100) NOT NULL,
	[opcpipe_ppw] [varchar](50) NOT NULL,
	[nominalps_sel_ppw] [varchar](50) NOT NULL,
	[grade_sel_ppw] [varchar](50) NOT NULL,
	[design_factor_sel_ppw] [varchar](50) NOT NULL,
	[longitudinal_jf_ppw] [varchar](50) NOT NULL,
	[td_sel_ppw] [varchar](50) NOT NULL,
	[nominalps_ppw] [varchar](50) NOT NULL,
	[nominalos_ppw] [varchar](50) NOT NULL,
	[nod_sel_ppw] [varchar](50) NOT NULL,
	[designp_ppw] [varchar](50) NOT NULL,
	[grade_ppw] [varchar](50) NOT NULL,
	[specifiedmys_ppw] [varchar](50) NOT NULL,
	[designf_ppw] [varchar](50) NOT NULL,
	[ljf_ppw] [varchar](50) NOT NULL,
	[temperaturedf_ppw] [varchar](50) NOT NULL,
	[especp_ppw] [varchar](50) NOT NULL,
	[ac_sel_ppw] [varchar](50) NOT NULL,
	[minimum_ppw] [varchar](50) NOT NULL,
	[enteree_ppw] [varchar](50) NOT NULL,
	[al_sel_ppw] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PipingPipe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platina]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platina](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_pla] [varchar](100) NOT NULL,
	[type_sel_pla] [varchar](100) NOT NULL,
	[nps_sel_pla] [varchar](100) NOT NULL,
	[flujo1_pla] [varchar](100) NOT NULL,
	[flujo2_pla] [varchar](100) NOT NULL,
	[flujo3_pla] [varchar](100) NOT NULL,
	[espesor_pla] [varchar](50) NOT NULL,
	[orifice_pla] [varchar](50) NOT NULL,
	[orifice8_pla] [varchar](50) NOT NULL,
	[dbc_pla] [varchar](50) NOT NULL,
	[db_pla] [varchar](50) NOT NULL,
	[dext_pla] [varchar](50) NOT NULL,
	[d_pla] [varchar](50) NOT NULL,
	[l_pla] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Platina] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlatinaInfo]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatinaInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](100) NOT NULL,
	[nps] [varchar](10) NOT NULL,
	[nps_d] [varchar](10) NOT NULL,
	[diam_out] [varchar](10) NOT NULL,
	[diam_out_d] [varchar](10) NOT NULL,
	[diam_bolt] [varchar](10) NOT NULL,
	[diam_bolt_d] [varchar](10) NOT NULL,
	[diam_bolt_c] [varchar](10) NOT NULL,
	[diam_bolt_c_d] [varchar](10) NOT NULL,
 CONSTRAINT [PK_InfoPlatina] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PolytropicHorsePower]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolytropicHorsePower](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_php] [varchar](100) NOT NULL,
	[opz_php] [varchar](50) NOT NULL,
	[z1s_php] [varchar](50) NOT NULL,
	[z2d_php] [varchar](50) NOT NULL,
	[enteree_php] [varchar](50) NOT NULL,
	[basepressure_php] [varchar](50) NOT NULL,
	[bp_sel_php] [varchar](50) NOT NULL,
	[basetemperature_php] [varchar](50) NOT NULL,
	[bt_sel_php] [varchar](50) NOT NULL,
	[suctionp_php] [varchar](50) NOT NULL,
	[sp_sel_php] [varchar](50) NOT NULL,
	[suctiont_php] [varchar](50) NOT NULL,
	[st_sel_php] [varchar](50) NOT NULL,
	[dischargep_php] [varchar](50) NOT NULL,
	[dp_sel_php] [varchar](50) NOT NULL,
	[capacityr_php] [varchar](50) NOT NULL,
	[cr_sel_php] [varchar](50) NOT NULL,
	[gass_php] [varchar](50) NOT NULL,
	[gs_sel_php] [varchar](50) NOT NULL,
	[gst_php] [varchar](50) NOT NULL,
	[adiabatice_php] [varchar](50) NOT NULL,
	[mechanicale_php] [varchar](50) NOT NULL,
	[polytropice_php] [varchar](50) NOT NULL,
	[polytropicex_php] [varchar](50) NOT NULL,
	[discharget_php] [varchar](50) NOT NULL,
	[z1_php] [varchar](50) NOT NULL,
	[adiabatich_php] [varchar](50) NOT NULL,
	[adiabaticghp_php] [varchar](50) NOT NULL,
	[ghp_php] [varchar](50) NOT NULL,
	[bhp_php] [varchar](50) NOT NULL,
	[acfm_php] [varchar](50) NOT NULL,
	[zavg_php] [varchar](50) NOT NULL,
	[ee_sel_php] [varchar](50) NOT NULL,
	[z2_php] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PolytropicHorsePower] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostInstallation]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostInstallation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_poi] [varchar](100) NOT NULL,
	[intb_poi] [varchar](50) NOT NULL,
	[dbo_poi] [varchar](50) NOT NULL,
	[uwf_poi] [varchar](50) NOT NULL,
	[uws_poi] [varchar](50) NOT NULL,
	[ifa_poi] [varchar](50) NOT NULL,
	[pod_poi] [varchar](50) NOT NULL,
	[sdr_poi] [varchar](50) NOT NULL,
	[po_poi] [varchar](50) NOT NULL,
	[ame_poi] [varchar](50) NOT NULL,
	[pr_poi] [varchar](50) NOT NULL,
	[rac_poi] [varchar](50) NOT NULL,
	[ll_poi] [varchar](50) NOT NULL,
	[ep_poi] [varchar](50) NOT NULL,
	[af_poi] [varchar](50) NOT NULL,
	[ef_poi] [varchar](50) NOT NULL,
	[bd_poi] [varchar](50) NOT NULL,
	[ocf_poi] [varchar](50) NOT NULL,
	[intb_sel_poi] [varchar](50) NOT NULL,
	[dbo_sel_poi] [varchar](50) NOT NULL,
	[pod_sel_poi] [varchar](50) NOT NULL,
	[rac_sel_poi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PostInstallation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PowerConsumption]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerConsumption](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_pc] [varchar](100) NOT NULL,
	[rectifiero_pc] [varchar](50) NOT NULL,
	[rectifierc_pc] [varchar](50) NOT NULL,
	[utilityr_pc] [varchar](50) NOT NULL,
	[ro_sel_pc] [varchar](50) NOT NULL,
	[rc_sel_pc] [varchar](50) NOT NULL,
	[ut_sel_pc] [varchar](50) NOT NULL,
	[powerc_pc] [varchar](50) NOT NULL,
	[montlyb_pc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PowerConsumption] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyects]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[id_user] [bigint] NULL,
	[id_proyecttemp] [bigint] NOT NULL,
 CONSTRAINT [PK_Proyects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProyectsTemp]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyectsTemp](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[id_user] [bigint] NOT NULL,
	[flag] [int] NOT NULL,
	[lider] [bigint] NULL,
	[area] [bigint] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_ProyectsTemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurgingCalculations ]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurgingCalculations ](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_pca] [varchar](100) NOT NULL,
	[blowoffs_sel_pca] [varchar](50) NOT NULL,
	[internald_pca] [varchar](50) NOT NULL,
	[lenghtp_pca] [varchar](50) NOT NULL,
	[blowoffc_pca] [varchar](50) NOT NULL,
	[blowoffp_pca] [varchar](50) NOT NULL,
	[purgeg_pca] [varchar](50) NOT NULL,
	[bop_sel_pca] [varchar](50) NOT NULL,
	[sb_sel_pca] [varchar](50) NOT NULL,
	[lp_sel_pca] [varchar](50) NOT NULL,
	[idp_sel_pca] [varchar](50) NOT NULL,
	[flowr_pca] [varchar](50) NOT NULL,
	[actualv_pca] [varchar](50) NOT NULL,
	[minpurgea_pca] [varchar](50) NOT NULL,
	[recopurgea_pca] [varchar](50) NOT NULL,
	[volumegasma_pca] [varchar](50) NOT NULL,
	[volumegasra_pca] [varchar](50) NOT NULL,
	[minpurgeb_pca] [varchar](50) NOT NULL,
	[recopurgeb_pca] [varchar](50) NOT NULL,
	[volumegasmb_pca] [varchar](50) NOT NULL,
	[volumegasrb_pca] [varchar](50) NOT NULL,
	[h_pca] [varchar](50) NOT NULL,
	[h_sel_pca] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PurgingCalculations ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RateElectrical]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateElectrical](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_re] [varchar](100) NOT NULL,
	[potentialc_re] [varchar](50) NOT NULL,
	[potentiala_re] [varchar](50) NOT NULL,
	[totalr_re] [varchar](50) NOT NULL,
	[pc_sel_re] [varchar](50) NOT NULL,
	[pa_sel_re] [varchar](50) NOT NULL,
	[tr_sel_re] [varchar](50) NOT NULL,
	[ratee_re] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RateElectrical] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reguladores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reguladores](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_reg] [varchar](100) NOT NULL,
	[ma_sel_reg] [varchar](100) NOT NULL,
	[mod_sel_reg] [varchar](100) NOT NULL,
	[tam_sel_reg] [varchar](100) NOT NULL,
	[rangomin_sel_reg] [varchar](100) NOT NULL,
	[rangomin_reg] [varchar](100) NOT NULL,
	[rangomax_sel_reg] [varchar](100) NOT NULL,
	[rangomax_reg] [varchar](100) NOT NULL,
	[presionr_reg] [varchar](100) NOT NULL,
	[presionr_sel_reg] [varchar](100) NOT NULL,
	[presionb_reg] [varchar](100) NOT NULL,
	[pb_sel_reg] [varchar](100) NOT NULL,
	[flujomax_reg] [varchar](100) NOT NULL,
	[flujomax_sel_reg] [varchar](100) NOT NULL,
	[tempope_reg] [varchar](100) NOT NULL,
	[tempope_sel_reg] [varchar](100) NOT NULL,
	[grav_reg] [varchar](100) NOT NULL,
	[modeloesp_reg] [varchar](100) NOT NULL,
	[portrabajo_reg] [varchar](100) NOT NULL,
	[capaest_reg] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Reguladores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReguladoresCV]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReguladoresCV](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_modelo] [int] NOT NULL,
	[id_tamano] [int] NOT NULL,
	[cv] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReguladoresTM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReguladoresModelo]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReguladoresModelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ReguladoresModelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReguladoresTamano]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReguladoresTamano](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](100) NOT NULL,
	[opcion] [varchar](1) NOT NULL,
 CONSTRAINT [PK_ReguladoresTamano] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegulatorStation]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegulatorStation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rs] [varchar](100) NOT NULL,
	[df_rs] [varchar](50) NOT NULL,
	[gs_rs] [varchar](50) NOT NULL,
	[p1_rs] [varchar](50) NOT NULL,
	[p2_rs] [varchar](50) NOT NULL,
	[flowrate_rs] [varchar](50) NOT NULL,
	[flowingg_rs] [varchar](50) NOT NULL,
	[c1_rs] [varchar](50) NOT NULL,
	[capacityr_rs] [varchar](50) NOT NULL,
	[df_sel_rs] [varchar](50) NOT NULL,
	[temp_sel_rs] [varchar](50) NOT NULL,
	[gs_sel_rs] [varchar](50) NOT NULL,
	[p1_sel_rs] [varchar](50) NOT NULL,
	[p2_sel_rs] [varchar](50) NOT NULL,
	[fr_sel_rs] [varchar](50) NOT NULL,
	[fg_sel_rs] [varchar](50) NOT NULL,
	[linepipe_rs] [varchar](50) NOT NULL,
	[grade_sel_rs] [varchar](50) NOT NULL,
	[jf_sel_rs] [varchar](50) NOT NULL,
	[p1opu_rs] [varchar](50) NOT NULL,
	[flowrateu_rs] [varchar](50) NOT NULL,
	[ag_rs] [varchar](50) NOT NULL,
	[tempu_rs] [varchar](50) NOT NULL,
	[smys_rs] [varchar](50) NOT NULL,
	[jfu_rs] [varchar](50) NOT NULL,
	[p1opu_sel_rs] [varchar](50) NOT NULL,
	[fru_sel_rs] [varchar](50) NOT NULL,
	[agu_sel_rs] [varchar](50) NOT NULL,
	[linepiped_rs] [varchar](50) NOT NULL,
	[graded_sel_rs] [varchar](50) NOT NULL,
	[jfd_sel_rs] [varchar](50) NOT NULL,
	[p2op_rs] [varchar](50) NOT NULL,
	[flowrated_rs] [varchar](50) NOT NULL,
	[agd_rs] [varchar](50) NOT NULL,
	[smysd_rs] [varchar](50) NOT NULL,
	[jfdp_rs] [varchar](50) NOT NULL,
	[p2op_sel_rs] [varchar](50) NOT NULL,
	[frd_sel_rs] [varchar](50) NOT NULL,
	[agud_sel_rs] [varchar](50) NOT NULL,
	[gassizingc_rs] [varchar](50) NOT NULL,
	[gassizingr_rs] [varchar](50) NOT NULL,
	[flowc_rs] [varchar](50) NOT NULL,
	[calculatedi_rs] [varchar](50) NOT NULL,
	[minimunr_rs] [varchar](50) NOT NULL,
	[calculatedo_rs] [varchar](50) NOT NULL,
	[calculatedid_rs] [varchar](50) NOT NULL,
	[minimunrd_rs] [varchar](50) NOT NULL,
	[calculatedod_rs] [varchar](50) NOT NULL,
	[ee_sel_rs] [varchar](50) NOT NULL,
	[k_rs] [varchar](50) NOT NULL,
	[enteree_rs] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegulatorStation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReinforcementWeld]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReinforcementWeld](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rwb] [varchar](100) NOT NULL,
	[p1_rwb] [varchar](50) NOT NULL,
	[temp_rwb] [varchar](50) NOT NULL,
	[df_rwb] [varchar](50) NOT NULL,
	[h_rwb] [varchar](50) NOT NULL,
	[tar_rwb] [varchar](50) NOT NULL,
	[odh_rwb] [varchar](50) NOT NULL,
	[nwtb_rwb] [varchar](50) NOT NULL,
	[smys_rwb] [varchar](50) NOT NULL,
	[ljf_rwb] [varchar](50) NOT NULL,
	[bodh_rwb] [varchar](50) NOT NULL,
	[bnwtb_rwb] [varchar](50) NOT NULL,
	[smys2_rwb] [varchar](50) NOT NULL,
	[ljf1_rwb] [varchar](50) NOT NULL,
	[mrod_rwb] [varchar](50) NOT NULL,
	[rsmys_rwb] [varchar](50) NOT NULL,
	[eerr_rwb] [varchar](50) NOT NULL,
	[lmrr_rwb] [varchar](50) NOT NULL,
	[dmrr_rwb] [varchar](50) NOT NULL,
	[rwtoth_rwb] [varchar](50) NOT NULL,
	[etithw_rwb] [varchar](50) NOT NULL,
	[rwtotb_rwb] [varchar](50) NOT NULL,
	[etitb_rwb] [varchar](50) NOT NULL,
	[arrr_rwb] [varchar](50) NOT NULL,
	[a1rr_rwb] [varchar](50) NOT NULL,
	[lheight_rwb] [varchar](50) NOT NULL,
	[a2eaibo_rwb] [varchar](50) NOT NULL,
	[a2cea_rwb] [varchar](50) NOT NULL,
	[a3ra_rwb] [varchar](50) NOT NULL,
	[appa_rwb] [varchar](50) NOT NULL,
	[temp_sel_rwb] [varchar](50) NOT NULL,
	[df_sel_rwb] [varchar](50) NOT NULL,
	[p1_sel_rwb] [varchar](50) NOT NULL,
	[nominalps_sel_rwb] [varchar](50) NOT NULL,
	[grade_sel_rwb] [varchar](50) NOT NULL,
	[wthi_sel_rwb] [varchar](50) NOT NULL,
	[longitudinal_jf_rwb] [varchar](50) NOT NULL,
	[nominalps_sel_rwb1] [varchar](50) NOT NULL,
	[wthi_sel1_rwb] [varchar](50) NOT NULL,
	[grade_sel_rwb1] [varchar](50) NOT NULL,
	[longitudinal_jf1_rwb] [varchar](50) NOT NULL,
	[mrod_sel_rwb] [varchar](50) NOT NULL,
	[h_sel_rwb] [varchar](50) NOT NULL,
	[pipe1_rad_rwb] [varchar](50) NOT NULL,
	[pipe_rad_rwb] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReinforcementWeld] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelationshipRand]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelationshipRand](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rel] [varchar](100) NOT NULL,
	[electrolyter_rel] [varchar](50) NOT NULL,
	[distancee_rel] [varchar](50) NOT NULL,
	[crosss_rel] [varchar](50) NOT NULL,
	[er_sel_rel] [varchar](50) NOT NULL,
	[de_sel_rel] [varchar](50) NOT NULL,
	[cs_sel_rel] [varchar](50) NOT NULL,
	[electr_rel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RelationshipRand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReliefValveReaction]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReliefValveReaction](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rvr] [varchar](100) NOT NULL,
	[opsk_rvr] [varchar](50) NOT NULL,
	[molecularw_rvr] [varchar](50) NOT NULL,
	[specifich_rvr] [varchar](50) NOT NULL,
	[criticalf_rvr] [varchar](50) NOT NULL,
	[requiredf_rvr] [varchar](50) NOT NULL,
	[temperatureo_rvr] [varchar](50) NOT NULL,
	[staticp_rvr] [varchar](50) NOT NULL,
	[areao_rvr] [varchar](50) NOT NULL,
	[specifichs_rvr] [varchar](50) NOT NULL,
	[criticalfw_rvr] [varchar](50) NOT NULL,
	[specificg_rvr] [varchar](50) NOT NULL,
	[enteree_rvr] [varchar](50) NOT NULL,
	[pesomolecular_rvr] [varchar](50) NOT NULL,
	[specificgra_rvr] [varchar](50) NOT NULL,
	[ee_sel_rvr] [varchar](50) NOT NULL,
	[selectgv_sel_rvr] [varchar](50) NOT NULL,
	[tempo_sel_rvr] [varchar](50) NOT NULL,
	[sp_sel_rvr] [varchar](50) NOT NULL,
	[ao_sel_rvr] [varchar](50) NOT NULL,
	[rf_sel_rvr] [varchar](50) NOT NULL,
	[reactionf_rvr] [varchar](50) NOT NULL,
	[cfw_sel_rvr] [varchar](50) NOT NULL,
	[z_rvr] [varchar](50) NOT NULL,
	[selectk_rvr] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReliefValveReaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReliefValveSizing]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReliefValveSizing](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rvs] [varchar](100) NOT NULL,
	[specifich_rvs] [varchar](50) NOT NULL,
	[criticalf_rvs] [varchar](50) NOT NULL,
	[relief_rvs] [varchar](50) NOT NULL,
	[gasvaporf_rvs] [varchar](50) NOT NULL,
	[gasp_rvs] [varchar](50) NOT NULL,
	[requiredf_rvs] [varchar](50) NOT NULL,
	[requiredeff_rvs] [varchar](50) NOT NULL,
	[effectivec_rvs] [varchar](50) NOT NULL,
	[capacityc_rvs] [varchar](50) NOT NULL,
	[compressibilityf_rvs] [varchar](50) NOT NULL,
	[molecularws_rvs] [varchar](50) NOT NULL,
	[specificg_rvs] [varchar](50) NOT NULL,
	[selectgv_sel_rvs] [varchar](50) NOT NULL,
	[rv_sel_rvs] [varchar](50) NOT NULL,
	[gfv_sel_rvs] [varchar](50) NOT NULL,
	[bp_sel_rvs] [varchar](50) NOT NULL,
	[rf_sel_rvs] [varchar](50) NOT NULL,
	[cc_sel_rvs] [varchar](50) NOT NULL,
	[criticafr_rvs] [varchar](50) NOT NULL,
	[flowingc_rvs] [varchar](50) NOT NULL,
	[requirede_rvs] [varchar](50) NOT NULL,
	[requiredfo_rvs] [varchar](50) NOT NULL,
	[ccoefficient_rvs] [varchar](50) NOT NULL,
	[ee_sel_rvs] [varchar](50) NOT NULL,
	[z_rvs] [varchar](50) NOT NULL,
	[selectk_rvs] [varchar](50) NOT NULL,
	[sizingo_rvs] [varchar](50) NOT NULL,
	[enteree_rvs] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReliefValveSizing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequiredAnodes]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequiredAnodes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rn] [varchar](100) NOT NULL,
	[drivingv_rn] [varchar](50) NOT NULL,
	[anoder_rn] [varchar](50) NOT NULL,
	[totalc_rn] [varchar](50) NOT NULL,
	[dr_sel_rn] [varchar](50) NOT NULL,
	[an_sel_rn] [varchar](50) NOT NULL,
	[to_sel_rn] [varchar](50) NOT NULL,
	[requiredn_rn] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RequiredAnodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResistanceIAGB]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResistanceIAGB](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_riagb] [varchar](100) NOT NULL,
	[resistancee_riagb] [varchar](50) NOT NULL,
	[actuals_riagb] [varchar](50) NOT NULL,
	[correctionf_riagb] [varchar](50) NOT NULL,
	[numbera_riagb] [varchar](50) NOT NULL,
	[totalg_riagb] [varchar](50) NOT NULL,
	[res_sel_riagb] [varchar](50) NOT NULL,
	[act_sel_riagb] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ResistanceIAGB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResistanceRMVA]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResistanceRMVA](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rmva] [varchar](100) NOT NULL,
	[soilr_rmva] [varchar](50) NOT NULL,
	[anodel_rmva] [varchar](50) NOT NULL,
	[anoded_rmva] [varchar](50) NOT NULL,
	[numbera_rmva] [varchar](50) NOT NULL,
	[anodes_rmva] [varchar](50) NOT NULL,
	[so_sel_rmva] [varchar](50) NOT NULL,
	[al_sel_rmva] [varchar](50) NOT NULL,
	[ad_sel_rmva] [varchar](50) NOT NULL,
	[as_sel_rmva] [varchar](50) NOT NULL,
	[anoder_rmva] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ResistanceRMVA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResistanceRSHA]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResistanceRSHA](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rsha] [varchar](100) NOT NULL,
	[soilr_rsha] [varchar](50) NOT NULL,
	[anodel_rsha] [varchar](50) NOT NULL,
	[anoded_rsha] [varchar](50) NOT NULL,
	[distancee_rsha] [varchar](50) NOT NULL,
	[so_sel_rsha] [varchar](50) NOT NULL,
	[al_sel_rsha] [varchar](50) NOT NULL,
	[ad_sel_rsha] [varchar](50) NOT NULL,
	[di_sel_rsha] [varchar](50) NOT NULL,
	[resistancee_rsha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ResistanceRSHA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResistanceRSVA]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResistanceRSVA](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rsva] [varchar](100) NOT NULL,
	[soilr_rsva] [varchar](50) NOT NULL,
	[anodel_rsva] [varchar](50) NOT NULL,
	[anoded_rsva] [varchar](50) NOT NULL,
	[so_sel_rsva] [varchar](50) NOT NULL,
	[al_sel_rsva] [varchar](50) NOT NULL,
	[ad_sel_rsva] [varchar](50) NOT NULL,
	[verticala_rsva] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ResistanceRSVA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles2]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Roles2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUsuario]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUsuario](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_RolesUsuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUsuPro]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUsuPro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NOT NULL,
	[id_proyecto] [bigint] NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_RolesUsuPro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rudenbergs]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rudenbergs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_rf] [varchar](100) NOT NULL,
	[grounda_rf] [varchar](50) NOT NULL,
	[actuals_rf] [varchar](50) NOT NULL,
	[lengtha_rf] [varchar](50) NOT NULL,
	[xdistance_rf] [varchar](50) NOT NULL,
	[gr_sel_rf] [varchar](50) NOT NULL,
	[act_sel_rf] [varchar](50) NOT NULL,
	[al_sel_rf] [varchar](50) NOT NULL,
	[xdi_sel_rf] [varchar](50) NOT NULL,
	[potentialx_rf] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rudenbergs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suggested]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suggested](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idproyect] [bigint] NOT NULL,
	[basetemperature] [varchar](50) NULL,
	[basepressure] [varchar](50) NULL,
 CONSTRAINT [PK_Suggested] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temperature]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temperature](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[temp] [varchar](10) NOT NULL,
	[fwt] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Temperature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TorquePorActuadores]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TorquePorActuadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minimo] [float] NULL,
	[maximo] [float] NULL,
	[id_presion] [int] NOT NULL,
	[id_actuador] [int] NOT NULL,
 CONSTRAINT [PK_TorquePorActuadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transmitters]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transmitters](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_tra] [varchar](100) NOT NULL,
	[ruta_tra] [varchar](500) NOT NULL,
	[nombre_tra] [varchar](200) NOT NULL,
	[tipo_sel_tra] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Transmitters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[isadmsitio] [int] NOT NULL,
	[isadmpro] [int] NOT NULL,
	[id_rol] [int] NULL,
	[fullname] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSession]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSession](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[ip] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UsersSession] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valvulas]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valvulas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orificio] [varchar](2) NOT NULL,
	[valor] [varchar](100) NOT NULL,
	[api] [varchar](10) NULL,
	[asme] [varchar](10) NULL,
	[typev] [varchar](1) NULL,
 CONSTRAINT [PK_Valvulas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValvulasReg]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValvulasReg](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_val] [varchar](100) NOT NULL,
	[ma_sel_val] [varchar](50) NOT NULL,
	[mod_sel_val] [varchar](50) NOT NULL,
	[dim_sel_val] [varchar](50) NOT NULL,
	[presiondis_val] [varchar](50) NOT NULL,
	[spd_sel_val] [varchar](50) NOT NULL,
	[nivelsobmin_val] [varchar](50) NOT NULL,
	[nsmin_sel_val] [varchar](50) NOT NULL,
	[nivelsobmax_val] [varchar](50) NOT NULL,
	[nsmax_sel_val] [varchar](50) NOT NULL,
	[presionb_val] [varchar](50) NOT NULL,
	[pb_sel_val] [varchar](50) NOT NULL,
	[flujomax_val] [varchar](50) NOT NULL,
	[flujomax_sel_val] [varchar](50) NOT NULL,
	[tempope_val] [varchar](50) NOT NULL,
	[tempope_sel_val] [varchar](50) NOT NULL,
	[pesom_val] [varchar](50) NOT NULL,
	[pesom_sel_val] [varchar](50) NOT NULL,
	[relak_val] [varchar](50) NOT NULL,
	[coefdes_val] [varchar](50) NOT NULL,
	[factcor_val] [varchar](50) NOT NULL,
	[factcomp_val] [varchar](50) NOT NULL,
	[modeloop_val] [varchar](50) NOT NULL,
	[trabajoop_val] [varchar](50) NOT NULL,
	[maxcapaop_val] [varchar](50) NOT NULL,
	[modeloev_val] [varchar](50) NOT NULL,
	[cval_val] [varchar](50) NOT NULL,
	[orificiorecom_val] [varchar](50) NOT NULL,
	[arearecom_val] [varchar](50) NOT NULL,
	[flujorecom_val] [varchar](50) NOT NULL,
	[op1g_val] [varchar](20) NOT NULL,
	[op2g_val] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ValvulasReg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValvulasSReg]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValvulasSReg](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_proyect] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
	[date] [datetime] NOT NULL,
	[description_sh] [varchar](100) NOT NULL,
	[ma_sel_sh] [varchar](50) NOT NULL,
	[tam_sel_sh] [varchar](100) NULL,
	[conex_sel_sh] [varchar](50) NOT NULL,
	[material_sh] [varchar](50) NOT NULL,
	[mecanismo_sel_sh] [varchar](50) NOT NULL,
	[pmin_sh] [varchar](50) NOT NULL,
	[pmax_sh] [varchar](50) NOT NULL,
	[pmin_sel_sh] [varchar](50) NOT NULL,
	[pmax_sel_sh] [varchar](50) NOT NULL,
	[prest_sel_sh] [varchar](50) NOT NULL,
	[prest_sh] [varchar](50) NOT NULL,
	[capamax_sh] [varchar](50) NOT NULL,
	[partenum1_sh] [varchar](50) NOT NULL,
	[color1_sh] [varchar](50) NOT NULL,
	[maxpres1_sh] [varchar](50) NOT NULL,
	[partenum2_sh] [varchar](50) NOT NULL,
	[color2_sh] [varchar](50) NOT NULL,
	[maxpres2_sh] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ValvulasSReg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValvulasSS]    Script Date: 20/11/2019 7:58:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValvulasSS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minimo] [decimal](10, 2) NULL,
	[maximo] [decimal](10, 2) NULL,
	[color] [varchar](20) NOT NULL,
	[partnum] [varchar](20) NOT NULL,
	[maxpre] [int] NOT NULL,
	[nanometrico] [int] NOT NULL,
	[tolerancia] [decimal](10, 2) NULL,
	[maxdif] [decimal](10, 2) NULL,
 CONSTRAINT [PK_ValvulasSS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1, N'Análisis de costos', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (2, N'Análisis de mercado', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (3, N'Definir el alcance del proyecto', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (4, N'Definir el lider del proyecto', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (5, N'Registrar los participantes del proyecto', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (6, N'Registro del proyecto en SAS', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (7, N'Definir cronograma de montaje', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (8, N'Definir cronograma de proyecto', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (9, N'Desarrollar estandares de diseño', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (10, N'Desarrollar listado de documentos', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (12, N'Definir las bases y criterios de diseño', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (26, N'Desarrollar el vendor list', 6)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (59, N'Actividad Ejemplo 1 Mec y Tub', 1)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (60, N'Actividad Ejemplo 2 Mec y Tub', 1)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (61, N'Actividad Ejemplo 1 Procesos', 2)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1062, N'Actividad Ejemplo 2 Procesos', 2)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1063, N'Actividad Ejemplo 1 Instrumentación y control', 3)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1064, N'Actividad Ejemplo 2 Instrumentación y control', 3)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1065, N'Actividad Ejemplo 1 Civil', 4)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1066, N'Actividad Ejemplo 2 Civil', 4)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1067, N'Actividad Ejemplo 1 Eléctrica', 5)
INSERT [dbo].[Actividades] ([id], [nombre], [id_espe]) VALUES (1068, N'Actividad Ejemplo 2 Eléctrica', 5)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([id], [name], [descripcion]) VALUES (1, N'GI', N'Gerencia de Ingeniería')
INSERT [dbo].[Areas] ([id], [name], [descripcion]) VALUES (4, N'CIPM', N'Coordinación de Ingeniería de Proyectos de Mejora')
INSERT [dbo].[Areas] ([id], [name], [descripcion]) VALUES (6, N'CIPE', N'Coordinación de Ingeniería de Proyectos de Expansión')
INSERT [dbo].[Areas] ([id], [name], [descripcion]) VALUES (7, N'SCM', N'Coordinación de Sistemas de Control y Metrología')
SET IDENTITY_INSERT [dbo].[Areas] OFF
SET IDENTITY_INSERT [dbo].[AreasUsuario] ON 

INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (2, 1, 30053)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (3, 4, 30053)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (4, 6, 30053)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (5, 7, 30053)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (6, 1, 30054)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (7, 4, 30054)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (8, 6, 30054)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (9, 7, 30054)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (10, 1, 30056)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (11, 4, 30056)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (13, 1, 12)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (14, 1, 30058)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (15, 4, 30058)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (16, 6, 30058)
INSERT [dbo].[AreasUsuario] ([id], [id_area], [id_user]) VALUES (17, 7, 30058)
SET IDENTITY_INSERT [dbo].[AreasUsuario] OFF
SET IDENTITY_INSERT [dbo].[CapacityHorsePower] ON 

INSERT [dbo].[CapacityHorsePower] ([id], [id_proyect], [id_user], [date], [description_chp], [opz_chp], [z1s_chp], [z2d_chp], [enteree_chp], [basepressure_chp], [bp_sel_chp], [basetemperature_chp], [bt_sel_chp], [pact_sel_chp], [borec_chp], [bc_sel_chp], [stroket_chp], [str_sel_chp], [rotationals_chp], [rs_sel_chp], [cylindercl_chp], [pistonrd_chp], [prd_sel_chp], [suctionp_chp], [sp_sel_chp], [suctiont_chp], [st_sel_chp], [dischargep_chp], [dp_sel_chp], [gass_chp], [gs_sel_chp], [gst_chp], [mechanicale_chp], [pistond_chp], [discharget_chp], [z1_chp], [z2_chp], [volumetrice_chp], [cylinderc_chp], [equivalentc_chp], [cylinderb_chp], [ee_sel_chp], [effect_chp], [effect2_chp]) VALUES (1, 10462, 15, CAST(N'2019-04-16T03:08:29.000' AS DateTime), N'erferwer', N'compfactors1_chp', N'0', N'0', N'0', N'14.65', N'5,psia', N'60', N'3,F', N'6,1', N'3', N'2583,in', N'10', N'2583,in', N'3600', N'2585,rpm', N'2', N'1', N'2583,in', N'336', N'65,psig', N'90', N'3,F', N'936', N'65,psig', N'1.25', N'9,0.60', N'0.60', N'0.7', N'147.2622', N'263.4246', N'0.9552', N'0.9573', N'90.8580', N'133.7995', N'4.5545', N'305.3', N'2572,mt', N'2', N'2')
SET IDENTITY_INSERT [dbo].[CapacityHorsePower] OFF
SET IDENTITY_INSERT [dbo].[ComboBox] ON 

INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1, N'°C', N'C', N'temp', 1)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3, N'°F', N'F', N'temp', 3)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (5, N'psia', N'psia', N'pres', 5)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (6, N'Single - Acting Piston Compressing on the Outer End Only', N'1', N'pact', 6)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (9, N'Gas Specific Gravity (Relative to Air)', N'0.60', N'gs_sel', 9)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (12, N'Location Class 1', N'0.5', N'desingf', 12)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (14, N'Location Class 2', N'0.5', N'desingf', 14)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (15, N'Location Class 3', N'0.5', N'desingf', 15)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (16, N'Location Class 4', N'0.4', N'desingf', 16)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (17, N'ASTM A53 - Seamless', N'1', N'jointf', 17)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (19, N'ASTM A53 - Electric-Resistance-Welded', N'1', N'jointf', 19)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (20, N'ASTM A53 - Fumace-Butt Welded, Continous Weld', N'0.6', N'jointf', 20)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (21, N'ASTM A106 - Seamless', N'1', N'jointf', 21)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (22, N'ASTM A134 - Electric - Fusion ARc-Welded', N'0.8', N'jointf', 22)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (25, N'ASTM A135 - Electric Resistance-Welded', N'1', N'jointf', 25)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (26, N'ASTM A139 - Electric - Fusion Arc-Welded', N'0.8', N'jointf', 26)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (29, N'ASTM A333 - Seamless', N'1', N'jointf', 29)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (30, N'ASTM A333 - Electric - Resistance Welded', N'1', N'jointf', 30)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (31, N'ASTM A381 - Submerged - Arc - Welded', N'1', N'jointf', 31)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (33, N'ASTM A671 - Electric - Fusion - Welded  - Classes 13, 23, 33, 43, 53', N'0.8', N'jointf', 33)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (34, N'ASTM A671 - Electric - Fusion - Welded  - Classes 12, 22, 32, 42, 52', N'1', N'jointf', 34)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (35, N'ASTM A672 - Electric - Fusion - Welded  - Classes 13, 23, 33, 43, 53', N'0.8', N'jointf', 35)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (36, N'ASTM A672 - Electric - Fusion - Welded  - Classes 12, 22, 32, 42, 52', N'1', N'jointf', 36)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (37, N'ASTM A691 - Electric - Fusion - Welded  - Classes 13, 23, 33, 43, 53', N'0.8', N'jointf', 37)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (38, N'ASTM A691 - Electric - Fusion - Welded  - Classes 12, 22, 32, 42, 52', N'1', N'jointf', 38)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (39, N'ASTM A984 - Electric - Resistance Welded', N'1', N'jointf', 39)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (40, N'ASTM A1005 - Double Submerged - Arc - Welded', N'1', N'jointf', 40)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (41, N'ASTM A1006 - Laser Beam Welded', N'1', N'jointf', 41)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (46, N'250 (121) or Lower', N'1', N'deratingf', 46)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (47, N'300 (149)', N'0.967', N'deratingf', 47)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (48, N'350 (177)', N'0.933', N'deratingf', 48)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (49, N'400 (204)', N'0.9', N'deratingf', 49)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (50, N'450 (232)', N'0.867', N'deratingf', 50)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (51, N'L175 or A25', N'175 (25 400)', N'smys', 51)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (52, N'L175P or A25P', N'175 (25 400)', N'smys', 52)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (53, N'L210 or A', N'210 (30 500)', N'smys', 53)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (54, N'L245 or BR - L245 or B', N'245 (35 500)', N'smys', 54)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (55, N'L290R or X42R - L290 or X42', N'290 (42 100)', N'smys', 55)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (56, N'L320 or X46', N'320 (46 400)', N'smys', 56)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (57, N'L360 or X52', N'360 (52 200)', N'smys', 57)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (58, N'L390 or X56', N'390 (56 600)', N'smys', 58)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (59, N'L415 o X60', N'415 (60 200)', N'smys', 59)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (60, N'L450 or X65', N'450 (65 300)', N'smys', 60)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (61, N'L485 o X70', N'485 (70 300)', N'smys', 61)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (62, N'Natural Gas', N'0.6', N'gsg', 62)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (63, N'Gas Molecular Weight', N'17.4', N'gs_sel', 63)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (65, N'psig', N'psig', N'pres', 65)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (66, N'SCFH', N'SCFH', N'fluE', 66)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (67, N'MSCFH', N'MSCFH', N'fluE', 67)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (68, N'MMSCFH', N'MMSCFH', N'fluE', 68)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (69, N'SCFD', N'SCFD', N'fluE', 69)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (70, N'MSCFD', N'MSCFD', N'fluE', 70)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (71, N'MMSCFD', N'MMSCFD', N'fluE', 71)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (75, N'Single-Acting Piston Compressing on the Crank/Frame End Only', N'2', N'pact', 75)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (76, N'Double-Acting Piston Wothout Tail Rod', N'3', N'pact', 76)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (78, N'Double-Acting Piston With a Tail Rod', N'4', N'pact', 78)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (80, N'1/8', N'0.405', N'nps', 80)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (81, N'1/4', N'0.540', N'nps', 81)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (82, N'3/8', N'0.675', N'nps', 82)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (83, N'1/2', N'0', N'nps', 83)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (84, N'3/4', N'0', N'nps', 84)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (85, N'1', N'0', N'nps', 85)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (86, N'1 1/4', N'0', N'nps', 86)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (87, N'1 1/2', N'0', N'nps', 87)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (88, N'2', N'0', N'nps', 88)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (89, N'2 1/2', N'0', N'nps', 89)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (90, N'3', N'0', N'nps', 90)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (91, N'3 1/2', N'0', N'nps', 91)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (92, N'4', N'0', N'nps', 92)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (93, N'5', N'0', N'nps', 93)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (94, N'6', N'0', N'nps', 94)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (95, N'8', N'0', N'nps', 95)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (98, N'10', N'0', N'nps', 98)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (99, N'12', N'0', N'nps', 99)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (101, N'14', N'0', N'nps', 101)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (102, N'16', N'0', N'nps', 102)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (103, N'18', N'0', N'nps', 103)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (104, N'20', N'0', N'nps', 104)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (105, N'22', N'0', N'nps', 105)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (106, N'24', N'0', N'nps', 106)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (107, N'26', N'0', N'nps', 107)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (108, N'28', N'0', N'nps', 108)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (109, N'30', N'0', N'nps', 109)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (110, N'34', N'0', N'nps', 110)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (111, N'36', N'0', N'nps', 111)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (112, N'42', N'0', N'nps', 112)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (113, N'48', N'0', N'nps', 113)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (116, N'0.068', N'0.068,0.269', N'wt,80', 116)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (117, N'0.095', N'0.095,0.215', N'wt,80', 117)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (118, N'0.088', N'0.088,0.364', N'wt,81', 118)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (119, N'0.119', N'0.119,0.302', N'wt,81', 119)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (120, N'mi', N'mil', N'len', 120)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (121, N'in', N'in', N'in', 121)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (123, N'ft', N'ft', N'ft', 123)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (125, N'Acetylene', N'0.9', N'gsg', 125)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (126, N'Air', N'1', N'gsg', 126)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (127, N'Butane', N'2', N'gsg', 127)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (128, N'Ethane', N'1.03', N'gsg', 128)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (129, N'Helium', N'0.14', N'gsg', 129)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (130, N'Hydrogen', N'0.07', N'gsg', 130)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (131, N'Methane', N'0.55', N'gsg', 131)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (132, N'Nytrogen', N'0.97', N'gsg', 132)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (133, N'Oxygen', N'1.1', N'gsg', 133)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (134, N'Propane', N'1.52', N'gsg', 134)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (137, N'Propylene', N'1.45', N'gsg', 137)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (141, N'ASTM A53 Type F', N'25000', N'graastm', 141)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (142, N'ASTM A53 Grade A', N'30000', N'graastm', 142)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (143, N'ASTM A53 Grade B', N'35000', N'graastm', 143)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (145, N'API 5L - Seamless', N'1', N'jointf5l', 145)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (146, N'API 5L - Electric Resisstance Welded', N'1', N'jointf5l', 146)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (147, N'API 5L - Electric Flash Welded', N'1', N'jointf5l', 147)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (148, N'API 5L - Submerged Arc Welded', N'1', N'jointf5l', 148)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (149, N'API 5L - Fumace Butt Welded', N'0.6', N'jointf5l', 149)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (151, N'100', N'100', N'gasv', 151)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (152, N'110', N'110', N'gasv', 152)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (153, N'120', N'120', N'gasv', 153)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (154, N'130', N'130', N'gasv', 154)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (155, N'140', N'140', N'gasv', 155)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (156, N'150', N'150', N'gasv', 156)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (157, N'160', N'160', N'gasv', 157)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (158, N'170', N'170', N'gasv', 158)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (159, N'180', N'180', N'gasv', 159)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (160, N'190', N'190', N'gasv', 160)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (161, N'200', N'200', N'gasv', 161)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (162, N'ft/sec', N'ft/sec', N'gasvu', 162)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (163, N'Air', N'29,1.4,0.528,1', N'gasvap', 163)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (165, N'Natural Gas', N'17.4,1.27,0.551,0.6', N'gasvap', 165)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (166, N'Acetylene', N'26,1.28,0.549,0.897', N'gasvap', 166)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (167, N'1', N'1', N'capfac', 167)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (168, N'0.95', N'0.95', N'capfac', 168)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (169, N'0.9', N'0.9', N'capfac', 169)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (170, N'0.85', N'0.85', N'capfac', 170)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (172, N'2', N'1.438', N'nbs', 172)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (173, N'3', N'2.438', N'nbs', 173)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (174, N'4', N'3.438', N'nbs', 174)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (175, N'6', N'5.469', N'nbs', 175)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (212, N'hr', N'hr', N'time', 212)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (213, N'min', N'min', N'time', 213)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (214, N'seg', N'seg', N'time', 214)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (215, N'Ideal Nozzle', N'1', N'chokef', 215)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (216, N'Througth port gate valve', N'1.6', N'chokef', 216)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (217, N'Regular gate valve', N'1.8', N'chokef', 217)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (218, N'Regular lubricated plug valve', N'2', N'chokef', 218)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (219, N'Venturi lubricated plug valve', N'3.2', N'chokef', 219)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (220, N'ft', N'ft', N'len', 220)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (221, N'1', N'0.75', N'blowo', 221)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (222, N'2', N'3.0', N'blowo', 222)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (223, N'3', N'6.0', N'blowo', 223)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (224, N'4', N'13.50', N'blowo', 224)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (225, N'6', N'24.0', N'blowo', 225)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (226, N'8', N'47.0', N'blowo', 226)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (227, N'10', N'72.0', N'blowo', 227)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (228, N'ft lbf/lbm', N'ft lbf/lbm', N'comhe', 228)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (229, N'HP', N'HP', N'hp', 229)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (230, N'rmp', N'rmp', N'rmp', 230)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (231, N'v', N'v', N'pote', 231)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (233, N'ohm-cm', N'cm', N'ohm2', 233)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (234, N'ohm', N'ohm', N'ohm', 234)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (235, N'cm', N'cm', N'in', 235)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (236, N'sq.cm', N'sq.cm', N'sq.cm', 236)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (270, N'A25', N'25000', N'gra5l', 270)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (271, N'A', N'30000', N'gra5l', 271)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (272, N'B', N'35000', N'gra5l', 272)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (273, N'X42', N'42000', N'gra5l', 273)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (274, N'X46', N'46000', N'gra5l', 274)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (275, N'X52', N'52000', N'gra5l', 275)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (276, N'X56', N'56000', N'gra5l', 276)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (277, N'X60', N'60000', N'gra5l', 277)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (278, N'X65', N'65000', N'gra5l', 278)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (279, N'X70', N'70000', N'gra5l', 279)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (280, N'X80', N'80000', N'gra5l', 280)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (281, N'Imperial', N'imperial', N'serie', 281)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (282, N'Metrico', N'metrico', N'serie', 282)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1281, N'psig', N'psig', N'presel', 1281)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1283, N'bar', N'bar', N'presel', 1283)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1284, N'SCFH', N'SCFH', N'flusel', 1284)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1285, N'SCMH', N'SCMH', N'flusel', 1285)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1288, N'Location Class 1', N'0.72', N'desingf2', 1288)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1289, N'Location Class 2', N'0.6', N'desingf2', 1289)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1290, N'Location Class 3', N'0.5', N'desingf2', 1290)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1291, N'Location Class 4', N'0.4', N'desingf2', 1291)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1292, N'Bristol Babcock', N'bristol', N'compf', 1292)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1293, N'Eagle', N'eagle', N'compf', 1293)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1294, N'XARTU-1', N'xartu-1', N'eagle', 1294)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1295, N'XARTU-5', N'xartu-5', N'eagle', 1295)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1297, N'EFM', N'efm', N'bristol', 1297)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1298, N'GFC Corrector', N'gfcc', N'bristol', 1298)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1299, N'Sin Transductor Multivariable', N'000', N'tranefm', 1299)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1300, N'150 inH2O / 1000 Psig', N'121', N'tranefm', 1300)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1301, N'150 inH2O / 2000 Psig', N'122', N'tranefm', 1301)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1302, N'150 inH2O / 500 Psig', N'123', N'tranefm', 1302)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1303, N'100 inH2O / 2000 Psig', N'132', N'tranefm', 1303)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1304, N'300 inH2O / 1000 Psig', N'141', N'tranefm', 1304)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1305, N'300 inH2O / 2000 Psig', N'142', N'tranefm', 1305)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1306, N'25 Psid / 2000 Psig', N'202', N'tranefm', 1306)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1308, N'25 Psid / 4000 Psig', N'204', N'tranefm', 1308)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1309, N'Ninguna', N'0', N'ubtrans', 1309)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1310, N'A la derecha', N'2', N'ubtrans', 1310)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1311, N'A la izquierda (Standard)', N'1', N'ubtrans', 1311)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1312, N'12in x 14in Fibra de Vidrio para 4-slot Chassis w/ Teclado de 2 Botones ', N'1', N'gabcom', 1312)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1313, N'12in x 14in Fibra de Vidrio para 4-slot Chassis w/ Teclado de 25 Botones', N'2', N'gabcom', 1313)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1314, N'12in x 14in Fibra de Vidrio para 8-slot Chassis w/ Teclado de 2 Botones ', N'3', N'gabcom', 1314)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1315, N'12in x 14in Fibra de Vidrio para 8-slot Chassis w/ Teclado de 25 Botones', N'4', N'gabcom', 1315)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1316, N'4-Slot 33 MHz', N'1', N'chascom', 1316)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1317, N'8-Slot 33 MHz', N'3', N'chascom', 1317)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1318, N'4-Slot 150 MHz', N'5', N'chascom', 1318)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1319, N'8-Slot 150 MHz', N'7', N'chascom', 1319)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1320, N'Ninguna (se requiere alimentación externa)', N'0', N'sialcom', 1320)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1321, N'12 V, 33 AH Lead Acid Cell Battery, 30 W Solar Panel Not UL Approved, K must = 0', N'1', N'sialcom', 1321)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1322, N'12 V, 33 AH Lead Acid Cell Battery, 40 W Solar Panel Not UL Approved, K must = 0', N'2', N'sialcom', 1322)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1323, N'12 V, 33 AH Lead Acid Cell Battery only. ', N'3', N'sialcom', 1323)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1324, N'Ninguna - UL Class I, Division 2 at Component Level Only', N'0', N'capcom', 1324)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1325, N'Class I, Division 2 (Sin Peligro de Incendio) ', N'1', N'capcom', 1325)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1326, N'Class I, Division 2 (Industria Canadiense) ', N'2', N'capcom', 1326)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1327, N'Ninguna', N'0', N'srtdcom', 1327)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1328, N'Con RTD y Cable de 6 Ft de longitud', N'1', N'srtdcom', 1328)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1329, N'Con RTD y Cable de  15 Ft de longitud', N'2', N'srtdcom', 1329)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1330, N'Con RTD y Cable de  25 Ft de longitud', N'3', N'srtdcom', 1330)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1331, N'Ninguna', N'0', N'trtdcom', 1331)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1332, N'Con Termopozo e inserción de 2 1/2" de longitud', N'1', N'trtdcom', 1332)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1333, N'Con Termopozo e inserción de 4 1/2" de longitud', N'2', N'trtdcom', 1333)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1334, N'Con Termopozo e inserción de 7 1/2" de longitud', N'3', N'trtdcom', 1334)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1339, N'Ninguno', N'0', N'sacom', 1339)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1340, N'Con fuente de alimentación  21 V dc/dc', N'1', N'sacom', 1340)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1341, N'Sin Tarjeta  (XCWMI03)', N'00', N's3com', 1341)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1342, N'Mixta 6 DIO, 4 AI, 2 HSC', N'01', N's3com', 1342)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1343, N'Mixta 6 DIO, 4 AI, 2 HSC, 1 AO', N'02', N's3com', 1343)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1344, N'Mixta 12 DI, 4 DO without LEDs', N'03', N's3com', 1344)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1345, N'Mixta 6 AI, 2 AO', N'04', N's3com', 1345)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1346, N'Sólo Entradas análogas 6AI', N'05', N's3com', 1346)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1347, N'4 Contador de Entradas de alta velocidad con Leds', N'06', N's3com', 1347)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1348, N'Módulo de Expansión Común', N'07', N's3com', 1348)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1349, N'Aislado 4 AO', N'08', N's3com', 1349)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1350, N'Sin Tarjeta   (XCWMI04)', N'1', N's4com', 1350)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1351, N'Mixta 6 DIO, 4 AI, 2 HSC', N'2', N's4com', 1351)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1352, N'Mixta 6 DIO, 4 AI, 2 HSC, 1 AO', N'3', N's4com', 1352)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1353, N'Mixta 12 DI, 4 DO without LEDs', N'4', N's4com', 1353)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1354, N'Mixta 6 AI, 2 AO', N'5', N's4com', 1354)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1355, N'Sólo Entradas análogas 6AI', N'6', N's4com', 1355)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1356, N'4 Contador de Entradas de alta velocidad con Leds', N'7', N's4com', 1356)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1357, N'Módulo de Expansión Común', N'8', N's4com', 1357)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1358, N'Aislado 4 AO', N'9', N's4com', 1358)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1359, N'Sin Tarjeta   (XCWMI05)', N'1', N's5com', 1359)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1360, N'Mixta 6 DIO, 4 AI, 2 HSC', N'2', N's5com', 1360)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1361, N'Mixta 6 DIO, 4 AI, 2 HSC, 1 AO', N'3', N's5com', 1361)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1362, N'Mixta 12 DI, 4 DO without LEDs', N'4', N's5com', 1362)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1363, N'Mixta 6 AI, 2 AO', N'5', N's5com', 1363)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1364, N'Sólo Entradas análogas 6AI', N'6', N's5com', 1364)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1365, N'4 Contador de Entradas de alta velocidad con Leds', N'7', N's5com', 1365)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1366, N'Sin Tarjeta   (XCWMI06)', N'1', N's6com', 1366)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1367, N'Mixta 6 DIO, 4 AI, 2 HSC', N'2', N's6com', 1367)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1368, N'Mixta 6 DIO, 4 AI, 2 HSC, 1 AO', N'3', N's6com', 1368)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1369, N'Mixta 12 DI, 4 DO without LEDs', N'4', N's6com', 1369)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1370, N'Mixta 6 AI, 2 AO', N'5', N's6com', 1370)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1371, N'Sólo Entradas análogas 6AI', N'6', N's6com', 1371)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1372, N'4 Contador de Entradas de alta velocidad con Leds', N'7', N's6com', 1372)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1373, N'Sin Tarjeta   (XCWMI07)', N'1', N's7com', 1373)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1374, N'Mixta 6 DIO - 4 AI, 2 HSC', N'2', N's7com', 1374)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1375, N'Mixta 6 DIO - 4 AI -2 HSC-1 AO', N'3', N's7com', 1375)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1376, N'Mixta 12 DI-4 DO without LEDs', N'4', N's7com', 1376)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1377, N'Mixta 6 AI, 2 AO', N'5', N's7com', 1377)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1378, N'Sólo Entradas análogas 6AI', N'6', N's7com', 1378)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1379, N'4 Contador de Entradas de alta velocidad con Leds', N'7', N's7com', 1379)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1380, N'Sin Tarjeta   (XCWMI08)', N'1', N's8com', 1380)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1381, N'Mixta 6 DIO - 4 AI - 2 HSC', N'2', N's8com', 1381)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1382, N'Mixta 6 DIO - 4 AI - 2 HSC - 1 AO', N'3', N's8com', 1382)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1383, N'Mixta 12 DI - 4 DO without LEDs', N'4', N's8com', 1383)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1384, N'Mixta 6 AI - 2 AO', N'5', N's8com', 1384)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1385, N'Sólo Entradas análogas 6AI', N'6', N's8com', 1385)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1386, N'4 Contador de Entradas de alta velocidad con Leds', N'7', N's8com', 1386)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1387, N'Ninguno', N'1', N'tdecom', 1387)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1388, N'Con tablero de distribución de energía', N'2', N'tdecom', 1388)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1389, N'Ninguno', N'1', N'tdrcom', 1389)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1390, N'Con tablero de Relays', N'2', N'tdrcom', 1390)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1391, N'Sin Dial interno, ni modem de línea', N'1', N'mrcom', 1391)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1392, N'Con 1 Dial interno y Modem de línea', N'2', N'mrcom', 1392)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1393, N'Con 2 Dials internos y Modem de línea', N'3', N'mrcom', 1393)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1394, N'Sin Radio', N'1', N'opcom', 1394)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1395, N'Sin Polyphaser', N'2', N'opcom', 1395)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1396, N'Con Polyphaser', N'3', N'opcom', 1396)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1397, N'Ninguno', N'1', N'orcom', 1397)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1398, N'EM MDS Transnet Radio', N'2', N'orcom', 1398)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1399, N'OEM Freewave Radio', N'3', N'orcom', 1399)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1400, N'Standard Freewave Radio', N'4', N'orcom', 1400)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1401, N'Standard Freewave Radio Ready104', N'5', N'orcom', 1401)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1402, N'Standard MDS Transnet Radio', N'6', N'orcom', 1402)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1403, N'Standard Transnet Radio Ready', N'7', N'orcom', 1403)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1404, N'Standard MDS 9810 Radio with Diag', N'8', N'orcom', 1404)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1405, N'Standard MDS 4710A Radio with Diag', N'9', N'orcom', 1405)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1406, N'Standard MDS 4710B Radio with Diag', N'10', N'orcom', 1406)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1407, N'Standard MDS 9710A Radio with Diag', N'11', N'orcom', 1407)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1408, N'Standard MDS 9710B Radio with Diag', N'12', N'orcom', 1408)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1409, N'Standard MDS 4710 A/B, 9710 A/B, 9810 Radio Ready', N'13', N'orcom', 1409)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1410, N'Standard MDS EntraNet 900 Radio (Serial Remote)', N'14', N'orcom', 1410)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1411, N'Standard MDS EntraNet 900 Radio (Ethernet Remote)', N'15', N'orcom', 1411)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1412, N'Standard MDS EntraNet 900 Radio (Access Point)', N'16', N'orcom', 1412)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1413, N'Standard MDS EntraNet Radio Ready', N'17', N'orcom', 1413)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1414, N'Standard MDS iNet 900 Radio (Remote Serial Gateway)', N'18', N'orcom', 1414)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1415, N'Standard MDS iNet 900 Radio (Remote Ethernet Bridge)', N'19', N'orcom', 1415)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1416, N'Standard MDS iNet 900 Radio (Access Point/Remote Dual Gateway)', N'20', N'orcom', 1416)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1417, N'Standard MDS EntraNet Radio Ready', N'21', N'orcom', 1417)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1418, N'300 inH2O', N'2', N'siecom', 1418)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1419, N'Sin Sensor integrado al ensamble', N'1', N'siecom', 1419)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1420, N'25 Psig', N'3', N'siecom', 1420)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1422, N'100 Psig', N'5', N'siecom', 1422)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1423, N'300 Psig', N'6', N'siecom', 1423)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1424, N'1000 Psig', N'7', N'siecom', 1424)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1425, N'2000 Psig', N'8', N'siecom', 1425)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1426, N'150 inH2O / 1000 Psig', N'9', N'siecom', 1426)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1427, N'150 inH2O/ 2000 Psig', N'10', N'siecom', 1427)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1428, N'150 inH2O/ 500 Psig', N'11', N'siecom', 1428)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1429, N'100 inH2O / 2000 Psig', N'12', N'siecom', 1429)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1430, N'300 inH2O / 1000 Psig', N'13', N'siecom', 1430)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1431, N'25 PSID / 2000 Psig', N'14', N'siecom', 1431)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1432, N'25 PSID / 4000 Psig', N'15', N'siecom', 1432)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1436, N'Ninguna', N'1', N'uscom', 1436)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1437, N'A la Izquierda (Standard)', N'2', N'uscom', 1437)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1438, N'A la Derecha', N'3', N'uscom', 1438)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1439, N'7½in x 11¾in Lexan - LCD, Sin Botones', N'1', N'gptcom', 1439)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1440, N'7½in x 11¾in Lexan - LCD - y 2 Botones', N'2', N'gptcom', 1440)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1441, N'7½in x 11¾in Lexan - LCD y  25 botones', N'3', N'gptcom', 1441)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1442, N'Standard MDS iNet 900 Radio Ready', N'20', N'oprmcom', 1442)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1443, N'Standard MDS iNet 900 Radio (Access Point/Remote Dual Gateway)', N'19', N'oprmcom', 1443)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1444, N'Standard MDS iNet 900 Radio (Remote Ethernet Bridge)', N'18', N'oprmcom', 1444)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1445, N'Standard MDS iNet 900 Radio (Remote Serial Gateway)', N'17', N'oprmcom', 1445)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1446, N'Standard MDS EntraNet Radio Ready', N'16', N'oprmcom', 1446)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1447, N'Standard MDS EntraNet 900 Radio (Access Point)', N'15', N'oprmcom', 1447)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1448, N'Standard MDS EntraNet 900 Radio (Ethernet Remote)', N'14', N'oprmcom', 1448)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1449, N'Standard MDS EntraNet 900 Radio (Serial Remote)', N'13', N'oprmcom', 1449)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1450, N'Standard MDS 4710 A/B - 9710 A/B -9810 Radio Ready', N'12', N'oprmcom', 1450)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1451, N'Standard MDS 9710B Radio with Diag', N'11', N'oprmcom', 1451)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1452, N'Standard MDS 9710A Radio with Diag', N'10', N'oprmcom', 1452)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1453, N'Standard MDS 4710B Radio with Diag', N'9', N'oprmcom', 1453)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1454, N'Standard MDS 4710A Radio with Diag', N'8', N'oprmcom', 1454)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1455, N'Standard MDS 9810 Radio with Diag', N'7', N'oprmcom', 1455)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1456, N'Standard Transnet Radio Ready', N'6', N'oprmcom', 1456)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1457, N'Standard MDS Transnet Radio', N'5', N'oprmcom', 1457)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1458, N'Standard Freewave Radio Ready', N'4', N'oprmcom', 1458)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1459, N'Standard Freewave Radio', N'3', N'oprmcom', 1459)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1460, N'Dial-line Modem', N'2', N'oprmcom', 1460)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1461, N'Ninguno', N'1', N'oprmcom', 1461)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1462, N'Con Polyphaser', N'3', N'opprcom', 1462)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1463, N'Sin Polyphaser', N'2', N'opprcom', 1463)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1464, N'Sin Radio', N'1', N'opprcom', 1464)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1465, N'Full I/O: Base + 2DI/DO -4DI- 2DO- 2HSC + 3 AI + 1 AO', N'4', N'ciocom', 1465)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1466, N'Base + 2DI/DO - 4DI - 2DO - 2HSC + 3 AI', N'3', N'ciocom', 1466)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1467, N'Base + 2DI/DO - 4DI - 2DO -2HSC', N'2', N'ciocom', 1467)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1468, N'Base 2 DI / PI (Pulse Input) Only - No I/O Card is Included', N'1', N'ciocom', 1468)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1469, N'Con Termopozo e inserción de 7 1/2" de longitud.', N'1', N'tpgcom', 1469)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1470, N'Con Termopozo e inserción de 4 1/2" de longitud.', N'3', N'tpgcom', 1470)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1471, N'Con Termopozo e inserción de 2 1/2" de longitud.', N'2', N'tpgcom', 1471)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1472, N'Ninguna', N'1', N'tpgcom', 1472)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1473, N'Con RTD y Cable de 25 Ft de longitud.', N'4', N'rtdgcom', 1473)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1474, N'Con RTD y Cable de  15 Ft de longitud.', N'3', N'rtdgcom', 1474)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1475, N'Con RTD y Cable de 6 Ft de longitud.', N'2', N'rtdgcom', 1475)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1476, N'Ninguna', N'1', N'rtdgcom', 1476)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1477, N'Clase I - División 2 (Sin Peligro de Incendio) ', N'2', N'capgcom', 1477)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1478, N'Ninguna', N'1', N'capgcom', 1478)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1479, N'12 V -7 AH Lead Acid Cell Battery and 12 V - 4.5 W Solar Panel System', N'6', N'sagcom', 1479)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1480, N'6 V - 7 AH Lead Acid Cell Battery and 6 V - 6.5 W Solar Panel System', N'5', N'sagcom', 1480)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1481, N'6 V - 7 AH Lead Acid Cell Battery and 6 V - 1 W Solar Panel System', N'4', N'sagcom', 1481)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1482, N'7.2 V Lithium Battery - Dual', N'3', N'sagcom', 1482)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1483, N'7.2 V Lithium Battery - Single', N'2', N'sagcom', 1483)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1484, N'Ninguna -Se requiere una Fuente Externa', N'1', N'sagcom', 1484)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1487, N'Pole Mount - Includes wall-mount and 2in pole-mount Hardware', N'2', N'mhcom', 1487)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1488, N'Montaje de Proceso- Para Sensores DP/P Únicamente', N'1', N'mhcom', 1488)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1489, N'Standard (Uno a Dos Runs)', N'2', N'progcom', 1489)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1490, N'Ninguno', N'1', N'progcom', 1490)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1491, N'300 in H2O', N'1', N'siegccom', 1491)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1492, N'25 psig', N'2', N'siegccom', 1492)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1493, N'100 psig', N'3', N'siegccom', 1493)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1494, N'300 psig', N'4', N'siegccom', 1494)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1495, N'1000 psig', N'5', N'siegccom', 1495)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1496, N'2000 psig', N'6', N'siegccom', 1496)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1497, N'7½in x 11¾in Lexan sólo con LCD y sin Botones.', N'1', N'gbtcom', 1497)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1498, N'7½in x 11¾in Lexan,con  LCD y  2 Botones.', N'2', N'gbtcom', 1498)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1499, N'7½in x 11¾in Lexan,con  LCD y 25 Botones.', N'3', N'gbtcom', 1499)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1500, N'Process Mount - No Extra Hardware is Included - for models with TeleCounter only', N'1', N'mhgccom', 1500)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1501, N'Pole Mount - Includes wall-mount and 2in pole-mount Hardware', N'2', N'mhgccom', 1501)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1502, N'None.', N'1', N'progacom', 1502)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1503, N'Standard One-to-Two Run', N'2', N'progacom', 1503)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1504, N'Ninguno (Se requiere alimentación externa)', N'1', N'sagccom', 1504)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1505, N'Batería  de litio de 7.2 V  tipo  Sencilla', N'2', N'sagccom', 1505)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1506, N'Batería  de litio de 7.2 V  tipo  Dual', N'3', N'sagccom', 1506)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1507, N'Celda de Bateria de carga acida 7 AH y 6V + Sistema de panel solar de 1 W', N'4', N'sagccom', 1507)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1508, N'Celda de Bateria de carga acida 7 AH y 6V + Sistema de panel solar de 6.5 W', N'5', N'sagccom', 1508)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1509, N'Celda de Bateria de carga acida 7 AH y 12V + Sistema de panel solar de 4.5 W', N'6', N'sagccom', 1509)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1510, N'Ninguna - UL Class I - Division 2 at Component Level Only', N'1', N'capgccom', 1510)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1511, N'Class I - Division 2 (Sin Peligro de Incendio) ', N'2', N'capgccom', 1511)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1512, N'Ninguna', N'1', N'rtdgccom', 1512)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1513, N'Con RTD y Cable de 6 Ft de longitud.', N'2', N'rtdgccom', 1513)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1514, N'Con RTD y Cable de  15 Ft de longitud.', N'3', N'rtdgccom', 1514)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1515, N'Con RTD y Cable de 25 Ft de longitud.', N'4', N'rtdgccom', 1515)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1516, N'Ninguna', N'1', N'tpgccom', 1516)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1517, N'Con Termopozo e inserción de 2 1/2" de longitud.', N'2', N'tpgccom', 1517)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1518, N'Con Termopozo e inserción de 4 1/2" de longitud.', N'3', N'tpgccom', 1518)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1519, N'Con Termopozo e inserción de 7 1/2" de longitud.', N'4', N'tpgccom', 1519)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1520, N'Básica 2DI + PI (Pulse input).  Sin tarjetas', N'1', N'ciogccom', 1520)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1521, N'2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC', N'2', N'ciogccom', 1521)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1522, N'2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC + 3AI', N'3', N'ciogccom', 1522)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1523, N'2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC + 3AI + 1 AO', N'4', N'ciogccom', 1523)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1524, N'Sin Radio ', N'1', N'crcom', 1524)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1525, N'Sin Polifasor', N'2', N'crcom', 1525)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1526, N'Con polifasor', N'3', N'crcom', 1526)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1527, N'Ninguno', N'1', N'spcom', 1527)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1528, N'Con sensor de Proximidad e interface en el tablero', N'2', N'spcom', 1528)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1529, N'Ninguno', N'1', N'oprmgccom', 1529)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1530, N'Dial-line Modem', N'2', N'oprmgccom', 1530)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1531, N'Standard Freewave Radio All radios are located on the Radio Bracket in the flow computer enclosure.', N'3', N'oprmgccom', 1531)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1532, N'Standard Freewave Radio Ready', N'4', N'oprmgccom', 1532)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1533, N'Standard MDS Transnet Radio Standard Application Note: Works with either the modem or any radio.', N'5', N'oprmgccom', 1533)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1534, N'Standard Transnet Radio Ready ', N'6', N'oprmgccom', 1534)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1535, N'Standard MDS 9810 Radio with Diag', N'7', N'oprmgccom', 1535)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1536, N'Standard MDS 4710A Radio with Diag', N'8', N'oprmgccom', 1536)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1537, N'Standard MDS 4710B Radio with Diag', N'9', N'oprmgccom', 1537)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1538, N'Standard MDS 9710A Radio with Diag', N'10', N'oprmgccom', 1538)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1539, N'Standard MDS 9710B Radio with Diag', N'11', N'oprmgccom', 1539)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1540, N'Standard MDS 4710 A/B, 9710 A/B, 9810 Radio Ready', N'12', N'oprmgccom', 1540)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1541, N'Standard MDS EntraNet 900 Radio (Serial Remote)', N'13', N'oprmgccom', 1541)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1542, N'Standard MDS EntraNet 900 Radio (Ethernet Remote)', N'14', N'oprmgccom', 1542)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1543, N'Standard MDS EntraNet 900 Radio (Access Point)', N'15', N'oprmgccom', 1543)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1544, N'Standard MDS EntraNet Radio Ready', N'16', N'oprmgccom', 1544)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1545, N'Standard MDS iNet 900 Radio (Remote Serial Gateway)', N'17', N'oprmgccom', 1545)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1546, N'Standard MDS iNet 900 Radio (Remote Ethernet Bridge)', N'18', N'oprmgccom', 1546)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1547, N'Standard MDS iNet 900 Radio (Access Point/Remote Dual Gateway) ', N'19', N'oprmgccom', 1547)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1548, N'Standard MDS iNet 900 Radio Ready', N'20', N'oprmgccom', 1548)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1549, N'Ninguno', N'1', N'kitcom', 1549)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1550, N'Standard (Equimeter roots type)', N'2', N'kitcom', 1550)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1551, N'Tipo American Meter', N'3', N'kitcom', 1551)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1552, N'Ninguno', N'1', N'dbcom', 1552)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1553, N'Primer Digito (Centenas)', N'2', N'dbcom', 1553)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1554, N'Seguno Digito (Unidades)', N'3', N'dbcom', 1554)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1555, N'Tercer Digito (Decenas)', N'4', N'dbcom', 1555)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1556, N'Ninguno', N'1', N'ircom', 1556)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1557, N'1 CF / REV', N'2', N'ircom', 1557)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1558, N'5 CF / REV', N'3', N'ircom', 1558)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1559, N'10 CF / REV', N'4', N'ircom', 1559)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1560, N'100 CF / REV', N'5', N'ircom', 1560)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1561, N'1000 CF / REV', N'6', N'ircom', 1561)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1562, N'0.1 M3 / REV', N'7', N'ircom', 1562)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1563, N'1 M3 / REV', N'8', N'ircom', 1563)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1564, N'10 M3 / REV', N'9', N'ircom', 1564)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1565, N'100 M3 / REV', N'10', N'ircom', 1565)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1566, N'Ninguno', N'1', N'eccom', 1566)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1567, N'Con índice horário (CW) ', N'2', N'eccom', 1567)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1568, N'Con índice antihorario (CCW)', N'3', N'eccom', 1568)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1569, N'Resortada', N'R', N'valseg', 1569)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1570, N'Pilotada', N'P', N'valseg', 1570)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1572, N'API', N'1', N'modval', 1572)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (1573, N'ASME', N'2', N'modval', 1573)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2418, N'Cameron', N'1.3', N'maval', 2418)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2419, N'WKM', N'1.32', N'maval', 2419)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2420, N'PBV', N'1.25', N'maval', 2420)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2421, N'Grove', N'1.28', N'maval', 2421)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2422, N'Velan', N'1.31', N'maval', 2422)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2423, N'Nordstrom', N'1.29', N'maval', 2423)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2442, N'Lb-in', N'1', N'torque', 2442)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2443, N'N-m', N'8.85075', N'torque', 2443)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2444, N'P-Model', N'1', N'refeact', 2444)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2445, N'GP-Model', N'2', N'refeact', 2445)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2446, N'CP-Model', N'3', N'refeact', 2446)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2447, N'LP-(Linear)', N'4', N'refeact', 2447)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2463, N'm', N'mt', N'len', 2463)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2464, N'km', N'kl', N'len', 2464)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2465, N'Cast Iron Body', N'1', N'matval', 2465)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2466, N'WCB Steel Body', N'2', N'matval', 2466)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2467, N'Protección por Alta Presión', N'1', N'meval', 2467)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2468, N'Protección por Baja Presión
', N'2', N'meval', 2468)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2469, N'Protección por Alta y Baja Presión
', N'3', N'meval', 2469)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2470, N'Sandy Soil', N'0.0367', N'ecop', 2470)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2471, N'Soil With Vegetation', N'0.0482', N'ecop', 2471)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2472, N'Flanged RF', N'1', N'conval', 2472)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2473, N'NPT ( 1in & 2in Only)', N'2', N'conval', 2473)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2476, N'Steel', N'0.00180', N'cole', 2476)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2478, N'Plastic', N'0.00006', N'cole', 2478)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2480, N'Cast Iron', N'0.01020', N'cole', 2480)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2481, N'PE 1404
', N'800', N'HDB', 2481)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2482, N'PE 2406
', N'1250', N'HDB', 2482)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2483, N'PE 2708
', N'1250', N'HDB', 2483)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2484, N'PE 3408
', N'1600', N'HDB', 2484)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2485, N'PE 3608
', N'1600', N'HDB', 2485)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2486, N'PE 3708
', N'1600', N'HDB', 2486)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2487, N'PE 3710
', N'1600', N'HDB', 2487)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2488, N'PE 4608
', N'1600', N'HDB', 2488)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2489, N'PE 4708
', N'1600', N'HDB', 2489)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2490, N'PE 4710
', N'1600', N'HDB', 2490)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2491, N'Acero', N'0.0000065', N'ltpe', 2491)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2492, N'Hierro Fundido', N'0.0000066', N'ltpe', 2492)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2493, N'Cobre', N'0.000009', N'ltpe', 2493)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2494, N'Plástico', N'0.00009', N'ltpe', 2494)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2495, N'Agua', N'0.000115', N'ltpe', 2495)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2496, N'Suelo Arenoso', N'0.0367', N'mcip', 2496)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2497, N'Suelo con Vegetación', N'0.0732', N'mcip', 2497)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2498, N'Saturated clay', N'0.110', N'soildst', 2498)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2502, N'Odinary clay', N'0.130', N'soildst', 2502)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2504, N'Saturated top soil', N'0.150', N'soildst', 2504)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2505, N'Sand and gravel', N'0.165', N'soildst', 2505)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2506, N'Clean granular soil', N'0.192', N'soildst', 2506)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2507, N'Sort-Term', N'110000', N'hdpeamedst', 2507)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2508, N'10 h', N'57500', N'hdpeamedst', 2508)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2509, N'Sort-Term2', N'11', N'mdpedst', 2509)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2511, N'Tes2', N'13', N'mdpedst', 2511)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2512, N'PE 2406', N'800', N'codeea', 2512)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2513, N'PE 2708', N'800', N'codeea', 2513)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2514, N'32.5', N'7.5', N'drdst', 2514)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2515, N'26', N'7.5', N'drdst', 2515)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2516, N'ft', N'ft', N'in', 2516)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2517, N'100 h', N'51000', N'hdpeamedst', 2517)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2518, N'50 años', N'28200', N'hdpeamedst', 2518)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2519, N'PE 3408', N'1000', N'codeea', 2519)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2520, N'PE 3608', N'1000', N'codeea', 2520)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2521, N'PE 3708', N'1000', N'codeea', 2521)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2522, N'PE 3710', N'1000', N'codeea', 2522)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2523, N'PE 4708', N'1000', N'codeea', 2523)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2524, N'PE 4710', N'1150', N'codeea', 2524)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2525, N'21', N'7.5', N'drdst', 2525)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2526, N'17', N'6', N'drdst', 2526)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2527, N'13.5', N'6', N'drdst', 2527)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2528, N'11', N'5', N'drdst', 2528)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2529, N'9', N'4', N'drdst', 2529)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2530, N'7.3', N'3', N'drdst', 2530)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2531, N'30 min', N'1300', N'hdpespsdst', 2531)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2532, N'60 min', N'1200', N'hdpespsdst', 2532)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2533, N'12 h', N'1150', N'hdpespsdst', 2533)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2534, N'24 h ', N'1100', N'hdpespsdst', 2534)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2535, N'Long - Term', N'0.45', N'psins', 2535)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2536, N'Short - Term', N'0.35', N'psins', 2536)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2537, N'°R', N'R', N'temp', 2537)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2538, N'Sort-Term', N'87000', N'mdpeamedst', 2538)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2539, N'10 h', N'43500', N'mdpeamedst', 2539)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2540, N'100 h', N'36200', N'mdpeamedst', 2540)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2541, N'50 años', N'21700', N'mdpeamedst', 2541)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2542, N'30 min', N'1000', N'mdpespsdst', 2542)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2543, N'60 min', N'900', N'mdpespsdst', 2543)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2544, N'12 h', N'850', N'mdpespsdst', 2544)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2545, N'24 h ', N'800', N'mdpespsdst', 2545)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2562, N'ohm-cm', N'cm', N'ohm-cm', 2562)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2563, N'Soft to medium clays and sits with high plasticities', N'0.2,5', N'EErsoil', 2563)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2564, N'Soft to medium clays and sits with low/medium plasticities', N'0.5,5', N'EErsoil', 2564)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2565, N'Loose sands and gravels', N'0.5,10', N'EErsoil', 2565)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2566, N'Stiff to very stiff clays and silts', N'1.0,10', N'EErsoil', 2566)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2567, N'Medium dense sands and gravels', N'1.0,10', N'EErsoil', 2567)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2568, N'Dense to very dense sands and gravels', N'2.0,20', N'EErsoil', 2568)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2571, N'User Defined', N',', N'EErsoil', 2571)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2572, N'm', N'mt', N'he', 2572)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2573, N'ft', N'ft', N'he', 2573)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2574, N'in', N'in', N'in2', 2474)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2575, N'mm', N'mm', N'in2', 2475)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2576, N'm', N'mt', N'in3', 2576)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2577, N'cm', N'cm', N'in3', 2577)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2578, N'in', N'in', N'in3', 2578)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2579, N'ft', N'ft', N'in3', 2579)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2582, N'ohm-in', N'in', N'ohm2', 2582)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2583, N'in', N'in', N'in4', 2583)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2584, N'cm', N'cm', N'in4', 2584)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2585, N'rpm', N'rpm', N'rpm', 2585)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2588, N'ASTM A106 Grade A', N'30000', N'graastm', 2588)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2589, N'ASTM A106 Grade B', N'35000', N'graastm', 2589)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2590, N'ASTM A106 Grade C', N'40000', N'graastm', 2590)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2591, N'ASTM A135 Grade A', N'30000', N'graastm', 2591)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2592, N'ASTM A135 Grade B', N'35000', N'graastm', 2592)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2593, N'ASTM A139 Grade A', N'30000', N'graastm', 2593)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2594, N'ASTM A139 Grade B', N'35000', N'graastm', 2594)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2595, N'ASTM A139 Grade C', N'42000', N'graastm', 2595)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2596, N'ASTM A139 Grade D', N'46000', N'graastm', 2596)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2597, N'ASTM A139 Grade E', N'52000', N'graastm', 2597)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2598, N'ASTM A333 Grade 1', N'30000', N'graastm', 2598)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2599, N'ASTM A333 Grade 2', N'35000', N'graastm', 2599)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2600, N'ASTM A333 Grade 3', N'35000', N'graastm', 2600)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2601, N'ASTM A333 Grade 4', N'35000', N'graastm', 2601)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2603, N'ASTM A333 Grade 6', N'35000', N'graastm', 2603)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2606, N'ASTM A333 Grade 7', N'35000', N'graastm', 2606)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2607, N'ASTM A333 Grade 8', N'75000', N'graastm', 2607)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2608, N'ASTM A333 Grade 9', N'46000', N'graastm', 2608)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2609, N'ASTM A381 Class Y-35', N'35000', N'graastm', 2609)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2610, N'ASTM A381 Class Y-42', N'42000', N'graastm', 2610)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2611, N'ASTM A381 Class Y-46', N'46000', N'graastm', 2611)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2612, N'ASTM A381 Class Y-48', N'48000', N'graastm', 2612)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2613, N'ASTM A381 Class Y-50', N'50000', N'graastm', 2613)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2614, N'ASTM A381 Class Y-52', N'52000', N'graastm', 2614)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2615, N'ASTM A381 Class Y-56', N'56000', N'graastm', 2615)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2616, N'ASTM A381 Class Y-60', N'60000', N'graastm', 2616)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (2617, N'ASTM A381 Class Y-65', N'65000', N'graastm', 2617)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3587, N'ft', N'ft', N'in5', 3587)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3588, N'm', N'mt', N'in5', 3588)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3589, N'IRM 1 METRICO', N'metrico1', N'seriemr', 3589)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3590, N'IRM 1 IMPERIAL', N'imperial1', N'seriemr', 3590)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3591, N'IRM 3 METRICO', N'metrico2', N'seriemr', 3591)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3592, N'IRM 3 IMPERIAL', N'imperial2', N'seriemr', 3592)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3593, N'8', N'7.313', N'nbs', 3593)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3594, N'10', N'9.322', N'nbs', 3594)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3595, N'12', N'11.313', N'nbs', 3595)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3596, N'16', N'13.063', N'nbs', 3596)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3597, N'18', N'0', N'nbs', 3597)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3598, N'20', N'17', N'nbs', 3598)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3599, N'24', N'21', N'nbs', 3599)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3600, N'0.8', N'0.8', N'capfac', 3600)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3601, N'0.75', N'0.75', N'capfac', 3601)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3602, N'0.7', N'0.7', N'capfac', 3602)
GO
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3603, N'0.65', N'0.65', N'capfac', 3603)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (3604, N'0.6', N'0.6', N'capfac', 3604)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4593, N'psi', N'psi', N'presf', 3589)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4594, N'MPa', N'MPa', N'presf', 3590)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4595, N'ksi', N'ksi', N'presf2', 3591)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4596, N'MPa', N'MPa', N'presf2', 3592)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4597, N'1/360', N'360', N'dlt', 3594)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4598, N'1/240', N'240', N'dlt', 3595)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4599, N'1/120', N'120', N'dlt', 3596)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4600, N'lbs', N'lbs', N'peso', 3593)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4601, N'psi', N'psi', N'presf', 3589)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4602, N'MPa', N'MPa', N'presf', 3590)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4603, N'ksi', N'ksi', N'presf2', 3591)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4604, N'MPa', N'MPa', N'presf2', 3592)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4605, N'Very dry sand', N'0.75,60,29', N'soil_crater', 3597)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4606, N'Sand or dry mixed soil', N'1.1,65,35', N'soil_crater', 3598)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4607, N'Mixed soil or gravel', N'1.75,70,45', N'soil_crater', 3599)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4608, N'Humid mixed soil, clay or rock', N'2.7,75,57', N'soil_crater', 3600)
INSERT [dbo].[ComboBox] ([id], [name], [value], [id_combo], [codigo]) VALUES (4609, N'Heavy clay', N'5,80,73', N'soil_crater', 3601)
SET IDENTITY_INSERT [dbo].[ComboBox] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxAccionActuadores] ON 

INSERT [dbo].[ComboBoxAccionActuadores] ([id], [accion]) VALUES (1, N'Double Acting')
INSERT [dbo].[ComboBoxAccionActuadores] ([id], [accion]) VALUES (2, N'Spring Return')
SET IDENTITY_INSERT [dbo].[ComboBoxAccionActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxAnsiActuadores] ON 

INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (1, N'ANSI 150')
INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (2, N'ANSI 300')
INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (3, N'ANSI 600')
INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (4, N'ANSI 900')
INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (5, N'ANSI 1500')
INSERT [dbo].[ComboBoxAnsiActuadores] ([id], [ansi]) VALUES (6, N'ANSI 2500')
SET IDENTITY_INSERT [dbo].[ComboBoxAnsiActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxInchesActuadores] ON 

INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (1, N'2 in', N'2')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (2, N'3 in

', N'3')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (3, N'4 in
', N'4')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (12, N'6 in
', N'6')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (15, N'8 in
', N'8')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (16, N'10 in
', N'10')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (17, N'12 in
', N'12')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (18, N'14 in
', N'14')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (19, N'16 in', N'16')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (20, N'18 in', N'18')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (21, N'20 in', N'20')
INSERT [dbo].[ComboBoxInchesActuadores] ([id], [inches], [value]) VALUES (22, N'24 in', N'24')
SET IDENTITY_INSERT [dbo].[ComboBoxInchesActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxMarcaActuadores] ON 

INSERT [dbo].[ComboBoxMarcaActuadores] ([id], [marca]) VALUES (3, N'BETTIS')
INSERT [dbo].[ComboBoxMarcaActuadores] ([id], [marca]) VALUES (4, N'ROTORK')
SET IDENTITY_INSERT [dbo].[ComboBoxMarcaActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxMedidores] ON 

INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1, N'rotatorio', N'G10', N'2', N'16', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2, N'rotatorio', N'G16', N'2', N'25', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (3, N'rotatorio', N'G25', N'2', N'40', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (4, N'rotatorio', N'G40', N'2', N'65', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (5, N'rotatorio', N'G65', N'2', N'100', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (6, N'rotatorio', N'G100', N'3', N'160', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (7, N'rotatorio', N'G160', N'3', N'160', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (8, N'rotatorio', N'G250', N'4', N'400', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (9, N'rotatorio', N'0.5M', N'1.5', N'500', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (10, N'rotatorio', N'1M', N'1.5', N'1000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (11, N'rotatorio', N'1.5M', N'1.5', N'1500', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (12, N'rotatorio', N'2.5M', N'2', N'2500', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (13, N'rotatorio', N'3.5M', N'2', N'3500', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (14, N'rotatorio', N'6M', N'3', N'6000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (15, N'rotatorio', N'9M', N'3', N'9000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (16, N'rotatorio', N'14M', N'4', N'14000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1002, N'masico', N'CMF-025', N'0.5', N'690', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1003, N'masico', N'CMF-050', N'0.5', N'1700', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1004, N'masico', N'CCMF-100', N'1', N'7600', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1005, N'masico', N'CMF-200', N'2', N'20000', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1006, N'masico', N'CMF-300', N'3', N'75000', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1010, N'masico', N'CMF-025', N'0.5', N'450', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1011, N'masico', N'CMF-050', N'0.5', N'1000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1012, N'masico', N'CMF-100', N'1', N'4800', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1013, N'masico', N'CMF-200', N'2', N'15000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1014, N'masico', N'CMF-300', N'3', N'45000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1018, N'turbina', N'4in x 45°', N'4', N'500', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1019, N'turbina', N'6in x 45°', N'6', N'1000', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1020, N'turbina', N'8in x 45°', N'8', N'1600', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1021, N'turbina', N'12in x 45°', N'12', N'4000', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1022, N'turbina', N'4in x 30°', N'4', N'800', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1023, N'turbina', N'6in x 30°', N'6', N'1600', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1024, N'turbina', N'8in x 30°', N'8', N'2600', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1028, N'turbina', N'12in x 30°', N'12', N'7500', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1029, N'turbina', N'4in x 45°', N'4', N'18000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1030, N'turbina', N'6in x 45°', N'6', N'36000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1031, N'turbina', N'8in x 45°', N'8', N'60000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1032, N'turbina', N'12in x 45°', N'12', N'150000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1033, N'turbina', N'4in x 30°', N'4', N'30000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1034, N'turbina', N'6in x 30°', N'6', N'60000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1035, N'turbina', N'8in x 30°', N'8', N'100000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1036, N'turbina', N'12in x 30°', N'12', N'270000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1037, N'ultrasonico', N'USM 4in', N'4', N'850', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1038, N'ultrasonico', N'USM 6in', N'6', N'1700', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1039, N'ultrasonico', N'USM 8in', N'8', N'3400', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1040, N'ultrasonico', N'USM 10in', N'10', N'5000', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1041, N'ultrasonico', N'USM 12in', N'12', N'7800', N'metrico')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1042, N'ultrasonico', N'USM 4in', N'4', N'30000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1043, N'ultrasonico', N'USM 6in', N'6', N'60000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1044, N'ultrasonico', N'USM 8in', N'8', N'120000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1045, N'ultrasonico', N'USM 10in', N'10', N'180000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1046, N'ultrasonico', N'USM 12in', N'12', N'280000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1048, N'masico2', N'CMF010M', N'0.5', N'1800', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1049, N'masico2', N'CMF010H', N'0.5', N'1800', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1050, N'masico2', N'CMF010P', N'0.5', N'1200', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1051, N'masico2', N'CMF025', N'0.5', N'22800', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1052, N'masico2', N'CMF050', N'0.5', N'58200', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1053, N'masico2', N'CMF100', N'1', N'258000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1054, N'masico2', N'CMF200', N'2', N'780000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1055, N'masico2', N'CMF300', N'3', N'2580000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1056, N'masico2', N'CMF400', N'4', N'6540000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1057, N'masico2', N'CMFHC3', N'8', N'11670000', N'imperial')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2047, N'rotatorio2', N'G10', N'2', N'16', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2048, N'rotatorio2', N'G16', N'2', N'25', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2049, N'rotatorio2', N'G25', N'2', N'40', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2050, N'rotatorio2', N'G40', N'2', N'65', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2051, N'rotatorio2', N'G65', N'2', N'100', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2052, N'rotatorio2', N'G100', N'3', N'160', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2053, N'rotatorio2', N'G160', N'3', N'160', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2054, N'rotatorio2', N'G250', N'4', N'400', N'metrico1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2055, N'rotatorio2', N'0.5M', N'1.5', N'500', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2056, N'rotatorio2', N'1M', N'1.5', N'1000', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2057, N'rotatorio2', N'1.5M', N'1.5', N'1500', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2058, N'rotatorio2', N'2.5M', N'2', N'2500', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2059, N'rotatorio2', N'3.5M', N'2', N'3500', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2060, N'rotatorio2', N'6M', N'3', N'6000', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2061, N'rotatorio2', N'9M', N'3', N'9000', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2062, N'rotatorio2', N'14M', N'4', N'14000', N'imperial1')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2063, N'rotatorio2', N'G40', N'2', N'65', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2064, N'rotatorio2', N'G65', N'2', N'100', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2065, N'rotatorio2', N'G100', N'3', N'160', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2066, N'rotatorio2', N'G160', N'3', N'250', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2067, N'rotatorio2', N'G250', N'4', N'400', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2068, N'rotatorio2', N'G400', N'4', N'650', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2069, N'rotatorio2', N'G650', N'6', N'1000', N'metrico2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2070, N'rotatorio2', N'2.5M', N'2', N'2500', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2071, N'rotatorio2', N'3.5M', N'2', N'3500', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2072, N'rotatorio2', N'6M', N'3', N'6000', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2073, N'rotatorio2', N'9M', N'3', N'9000', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2074, N'rotatorio2', N'14M', N'4', N'14000', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2075, N'rotatorio2', N'23M', N'6', N'23000', N'imperial2')
INSERT [dbo].[ComboBoxMedidores] ([id], [tipo], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2076, N'rotatorio2', N'38M', N'6', N'38000', N'imperial2')
SET IDENTITY_INSERT [dbo].[ComboBoxMedidores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxMedMod] ON 

INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (1, N'---', CAST(0.001 AS Decimal(10, 3)), CAST(0.001 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (2, N'ECM RG16000', CAST(4.000 AS Decimal(10, 3)), CAST(16000.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (3, N'ECM RG11000', CAST(4.000 AS Decimal(10, 3)), CAST(11000.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (4, N'ECM RG7000', CAST(3.000 AS Decimal(10, 3)), CAST(8800.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (5, N'ECM RG5000', CAST(3.000 AS Decimal(10, 3)), CAST(5650.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (6, N'ECM RG3000', CAST(2.000 AS Decimal(10, 3)), CAST(3530.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (7, N'ECM RG2000', CAST(2.000 AS Decimal(10, 3)), CAST(2300.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (8, N'ECM RG1500', CAST(2.000 AS Decimal(10, 3)), CAST(1500.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (9, N'ECM RG1000', CAST(2.000 AS Decimal(10, 3)), CAST(1000.000 AS Decimal(10, 3)), N'RG IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (10, N'---', CAST(0.001 AS Decimal(10, 3)), CAST(0.001 AS Decimal(10, 3)), N'ECM G250')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (11, N'ECM G400', CAST(4.000 AS Decimal(10, 3)), CAST(650.000 AS Decimal(10, 3)), N'ECM G160')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (12, N'ECM G250', CAST(4.000 AS Decimal(10, 3)), CAST(450.000 AS Decimal(10, 3)), N'ECM G100')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (13, N'ECM G160', CAST(4.000 AS Decimal(10, 3)), CAST(300.000 AS Decimal(10, 3)), N'ECM G65')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (14, N'ECM G100', CAST(3.000 AS Decimal(10, 3)), CAST(160.000 AS Decimal(10, 3)), N'ECM G40')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (15, N'ECM G65', CAST(2.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), N'ECM G25')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (16, N'ECM G40', CAST(2.000 AS Decimal(10, 3)), CAST(65.000 AS Decimal(10, 3)), N'ECM G16')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (17, N'ECM G25', CAST(2.000 AS Decimal(10, 3)), CAST(40.000 AS Decimal(10, 3)), N'MODELO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (18, N'ECM G16', CAST(2.000 AS Decimal(10, 3)), CAST(25.000 AS Decimal(10, 3)), N'G METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (19, N'ECM 650', CAST(4.000 AS Decimal(10, 3)), CAST(650.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (20, N'ECM 450', CAST(4.000 AS Decimal(10, 3)), CAST(450.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (21, N'ECM 300', CAST(4.000 AS Decimal(10, 3)), CAST(300.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (22, N'ECM 200', CAST(3.000 AS Decimal(10, 3)), CAST(200.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (23, N'ECM 140', CAST(3.000 AS Decimal(10, 3)), CAST(140.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (24, N'ECM 85', CAST(2.000 AS Decimal(10, 3)), CAST(85.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (25, N'ECM 55', CAST(2.000 AS Decimal(10, 3)), CAST(55.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (26, N'ECM 40', CAST(2.000 AS Decimal(10, 3)), CAST(40.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (27, N'ECM 30', CAST(2.000 AS Decimal(10, 3)), CAST(30.000 AS Decimal(10, 3)), N'RM METRIC')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (28, N'ECM 23000', CAST(4.000 AS Decimal(10, 3)), CAST(23000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (29, N'ECM 16000', CAST(4.000 AS Decimal(10, 3)), CAST(16000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (30, N'ECM 11000', CAST(4.000 AS Decimal(10, 3)), CAST(11000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (31, N'ECM 7000', CAST(3.000 AS Decimal(10, 3)), CAST(7000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (32, N'ECM 5000', CAST(3.000 AS Decimal(10, 3)), CAST(5000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (33, N'ECM 3000', CAST(2.000 AS Decimal(10, 3)), CAST(3000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (34, N'ECM 2000', CAST(2.000 AS Decimal(10, 3)), CAST(2000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (35, N'ECM 1500', CAST(2.000 AS Decimal(10, 3)), CAST(1500.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (36, N'ECM 1000', CAST(2.000 AS Decimal(10, 3)), CAST(1000.000 AS Decimal(10, 3)), N'RM IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (37, N'G10', CAST(2.000 AS Decimal(10, 3)), CAST(16.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (38, N'G16', CAST(2.000 AS Decimal(10, 3)), CAST(25.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (39, N'G25', CAST(2.000 AS Decimal(10, 3)), CAST(40.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (40, N'G40', CAST(2.000 AS Decimal(10, 3)), CAST(65.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (41, N'G65', CAST(2.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (42, N'G100', CAST(3.000 AS Decimal(10, 3)), CAST(160.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (43, N'G160', CAST(3.000 AS Decimal(10, 3)), CAST(250.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (44, N'G250', CAST(4.000 AS Decimal(10, 3)), CAST(400.000 AS Decimal(10, 3)), N'metrico')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (45, N'0.5M', CAST(1.500 AS Decimal(10, 3)), CAST(500.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (46, N'1M', CAST(1.500 AS Decimal(10, 3)), CAST(1000.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (47, N'1.5M', CAST(1.500 AS Decimal(10, 3)), CAST(1500.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (48, N'2.5M', CAST(2.000 AS Decimal(10, 3)), CAST(2500.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (49, N'3.5M', CAST(2.000 AS Decimal(10, 3)), CAST(3500.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (50, N'6M', CAST(3.000 AS Decimal(10, 3)), CAST(6000.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (51, N'9M', CAST(3.000 AS Decimal(10, 3)), CAST(9000.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (52, N'14M', CAST(4.000 AS Decimal(10, 3)), CAST(14000.000 AS Decimal(10, 3)), N'imperial')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (53, N'G40', CAST(2.000 AS Decimal(10, 3)), CAST(65.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (54, N'G65', CAST(2.000 AS Decimal(10, 3)), CAST(100.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (55, N'G100', CAST(3.000 AS Decimal(10, 3)), CAST(160.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (56, N'G160', CAST(3.000 AS Decimal(10, 3)), CAST(250.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (57, N'G250', CAST(4.000 AS Decimal(10, 3)), CAST(400.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (58, N'G400', CAST(4.000 AS Decimal(10, 3)), CAST(650.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (59, N'G650', CAST(6.000 AS Decimal(10, 3)), CAST(1000.000 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (60, N'---', CAST(0.000 AS Decimal(10, 3)), CAST(0.001 AS Decimal(10, 3)), N'IRM 3  METRICO')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (61, N'2.5 M', CAST(2.000 AS Decimal(10, 3)), CAST(2500.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (62, N'3.5M', CAST(2.000 AS Decimal(10, 3)), CAST(3500.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (63, N'6M', CAST(3.000 AS Decimal(10, 3)), CAST(6000.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (64, N'9M', CAST(3.000 AS Decimal(10, 3)), CAST(9000.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (65, N'14M', CAST(4.000 AS Decimal(10, 3)), CAST(14000.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (66, N'23M', CAST(6.000 AS Decimal(10, 3)), CAST(23000.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (67, N'38M', CAST(6.000 AS Decimal(10, 3)), CAST(38000.000 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
INSERT [dbo].[ComboBoxMedMod] ([id], [modelo], [diametro_pulg], [capref], [serie]) VALUES (68, N'---', CAST(0.000 AS Decimal(10, 3)), CAST(0.001 AS Decimal(10, 3)), N'IRM 3  IMPERIAL')
SET IDENTITY_INSERT [dbo].[ComboBoxMedMod] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxModeloActuadores] ON 

INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (126, N'CBA-730', 4, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (127, N'CBA-830', 4, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (128, N'CBA-930', 4, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (129, N'CBA-1030', 4, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (130, N'CBA730-SR40', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (131, N'CBA730-SR60', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (132, N'CBA730-SR80', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (133, N'CBA730-SR100', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (134, N'CBA830-SR40', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (135, N'CBA830-SR60', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (136, N'CBA830-SR80', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (137, N'CBA830-SR100', 4, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (138, N'HD-521', 5, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (139, N'HD-721', 5, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (140, N'HD-722', 5, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (141, N'HD-731', 5, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (142, N'HD-732', 5, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (143, N'HD-521-SR40', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (144, N'HD-521-SR60', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (145, N'HD-521-SR80', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (146, N'HD-521-SR100', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (147, N'HD-721-SR40', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (148, N'HD-721-SR60', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (149, N'HD-721-SR80', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (150, N'HD-721-SR100', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (151, N'HD-722-SR40', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (152, N'HD-722-SR60', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (153, N'HD-722-SR80', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (154, N'HD-722-SR100', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (155, N'HD-732-SR40', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (156, N'HD-732-SR60', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (157, N'HD-732-SR80', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (158, N'HD-732-SR100', 5, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (159, N'G01010', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (160, N'G2010', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (161, N'G3010', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (162, N'G4020', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (163, N'G5020', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (164, N'G7020', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (165, N'G8040', 6, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (166, N'G01010-SR3', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (167, N'G2010-SR3', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (168, N'G3012-SR4', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (169, N'G4020-SR3', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (170, N'G5020-SR4', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (171, N'G7028-SR4', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (172, N'G8040-SR3', 6, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (173, N'35-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (174, N'50-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (175, N'70-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (176, N'103-S', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (177, N'143-S', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (178, N'146-S', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (179, N'146-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (180, N'167-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (181, N'187-D', 7, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (182, N'35D -SR40', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (183, N'50D-SR60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (184, N'70D-SR60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (185, N'123S-SR60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (186, N'143S-SR60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (187, N'163S-SR-60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (188, N'207S-SR60', 7, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (189, N'P25005', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (190, N'P25006', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (191, N'P25007', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (192, N'P25008', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (193, N'P25010', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (194, N'P25012', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (195, N'P32508', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (196, N'P32510', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (197, N'P32512', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (198, N'P32514', 8, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (199, N'P25005SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (200, N'P25006SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (201, N'P25007SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (202, N'P25008SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (203, N'P25010SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (204, N'P25012SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (205, N'P32510SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (206, N'P32512SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (207, N'P32514SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (208, N'P32517SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (209, N'P32519SR', 8, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (210, N'GP-065S-180*/D1', 9, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (211, N'GP-100S-335*/D1', 9, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (212, N'GP-130S-385*/D1', 9, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (213, N'GP-160S-385*/D1', 9, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (214, N'GP-200S-835*/D1', 9, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (215, N'GP-065S-385*/C1', 9, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (216, N'GP-085S-385*/C1', 9, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (217, N'GP-130S-535*/C1', 9, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (218, N'GP-160S-685*/C3', 9, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (219, N'CP/D35-80*A', 10, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (220, N'CP/D45-120*A', 10, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (221, N'CP/55-160*A', 10, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (222, N'CP/D65-250*A', 10, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (223, N'CP/S35-80*/AA', 10, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (224, N'CP/S45-120*/AA', 10, 2)
GO
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (225, N'CP/S55-160*/AA', 10, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (226, N'CP/S65-250*/AA', 10, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (227, N'Linear DA', 11, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (228, N'Linear SR', 11, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (229, N'CBA-315', 3, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (230, N'CBA-420', 3, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (231, N'CBA-520', 3, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (232, N'CBA-525', 3, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (233, N'CBA-725', 3, 1)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (234, N'CBA-314-SR60', 3, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (235, N'CBA-415-SR60', 3, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (236, N'CBA-420-SR-60', 3, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (237, N'CBA-520-SR60', 3, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (238, N'CBA-525-SR60', 3, 2)
INSERT [dbo].[ComboBoxModeloActuadores] ([id], [modelo], [id_referencia], [id_accion]) VALUES (239, N'CBA-725-SR60', 3, 2)
SET IDENTITY_INSERT [dbo].[ComboBoxModeloActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxNPS] ON 

INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (435, N'1/8', N'0.405', N'0.049', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (436, N'1/8', N'0.405', N'0.057', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (437, N'1/8', N'0.405', N'0.068', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (438, N'1/8', N'0.405', N'0.095', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (439, N'1/4', N'0.54', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (440, N'1/4', N'0.54', N'0.073', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (441, N'1/4', N'0.54', N'0.088', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (442, N'1/4', N'0.54', N'0.119', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (443, N'3/8', N'0.675', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (444, N'3/8', N'0.675', N'0.073', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (445, N'3/8', N'0.675', N'0.091', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (446, N'3/8', N'0.675', N'0.126', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (447, N'1/2', N'0.84', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (448, N'1/2', N'0.84', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (449, N'1/2', N'0.84', N'0.095', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (450, N'1/2', N'0.84', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (451, N'1/2', N'0.84', N'0.147', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (452, N'1/2', N'0.84', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (453, N'1/2', N'0.84', N'0.294', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (454, N'3/4', N'1.05', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (455, N'3/4', N'1.05', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (456, N'3/4', N'1.05', N'0.095', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (457, N'3/4', N'1.05', N'0.113', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (458, N'3/4', N'1.05', N'0.154', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (459, N'3/4', N'1.05', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (460, N'3/4', N'1.05', N'0.308', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (461, N'1', N'1.315', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (462, N'1', N'1.315', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (463, N'1', N'1.315', N'0.114', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (464, N'1', N'1.315', N'0.133', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (465, N'1', N'1.315', N'0.179', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (466, N'1', N'1.315', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (467, N'1', N'1.315', N'0.358', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (468, N'1 1/4', N'1.66', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (469, N'1 1/4', N'1.66', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (470, N'1 1/4', N'1.66', N'0.117', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (471, N'1 1/4', N'1.66', N'0.14', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (472, N'1 1/4', N'1.66', N'0.191', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (473, N'1 1/4', N'1.66', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (474, N'1 1/4', N'1.66', N'0.382', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (475, N'1 1/2', N'1.9', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (476, N'1 1/2', N'1.9', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (477, N'1 1/2', N'1.9', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (478, N'1 1/2', N'1.9', N'0.145', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (479, N'1 1/2', N'1.9', N'0.2', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (480, N'1 1/2', N'1.9', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (481, N'1 1/2', N'1.9', N'0.4', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (482, N'2', N'2.375', N'0.065', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (483, N'2', N'2.375', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (484, N'2', N'2.375', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (485, N'2', N'2.375', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (486, N'2', N'2.375', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (487, N'2', N'2.375', N'0.154', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (488, N'2', N'2.375', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (489, N'2', N'2.375', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (490, N'2', N'2.375', N'0.218', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (491, N'2', N'2.375', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (492, N'2', N'2.375', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (493, N'2', N'2.375', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (494, N'2', N'2.375', N'0.436', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (495, N'2 1/2', N'2.875', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (496, N'2 1/2', N'2.875', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (497, N'2 1/2', N'2.875', N'0.12', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (498, N'2 1/2', N'2.875', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (499, N'2 1/2', N'2.875', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (500, N'2 1/2', N'2.875', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (501, N'2 1/2', N'2.875', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (502, N'2 1/2', N'2.875', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (503, N'2 1/2', N'2.875', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (504, N'2 1/2', N'2.875', N'0.216', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (505, N'2 1/2', N'2.875', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (506, N'2 1/2', N'2.875', N'0.276', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (507, N'2 1/2', N'2.875', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (508, N'2 1/2', N'2.875', N'0.552', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (509, N'3', N'3.5', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (510, N'3', N'3.5', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (511, N'3', N'3.5', N'0.12', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (512, N'3', N'3.5', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (513, N'3', N'3.5', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (514, N'3', N'3.5', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (515, N'3', N'3.5', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (516, N'3', N'3.5', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (517, N'3', N'3.5', N'0.216', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (518, N'3', N'3.5', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (519, N'3', N'3.5', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (520, N'3', N'3.5', N'0.3', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (521, N'3', N'3.5', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (522, N'3', N'3.5', N'0.6', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (523, N'3 1/2', N'4', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (524, N'3 1/2', N'4', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (525, N'3 1/2', N'4', N'0.12', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (526, N'3 1/2', N'4', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (527, N'3 1/2', N'4', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (528, N'3 1/2', N'4', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (529, N'3 1/2', N'4', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (530, N'3 1/2', N'4', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (531, N'3 1/2', N'4', N'0.226', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (532, N'3 1/2', N'4', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (533, N'3 1/2', N'4', N'0.281', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (534, N'3 1/2', N'4', N'0.318', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (535, N'4', N'4.5', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (536, N'4', N'4.5', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (537, N'4', N'4.5', N'0.12', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (538, N'4', N'4.5', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (539, N'4', N'4.5', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (540, N'4', N'4.5', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (541, N'4', N'4.5', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (542, N'4', N'4.5', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (543, N'4', N'4.5', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (544, N'4', N'4.5', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (545, N'4', N'4.5', N'0.237', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (546, N'4', N'4.5', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (547, N'4', N'4.5', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (548, N'4', N'4.5', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (549, N'4', N'4.5', N'0.337', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (550, N'4', N'4.5', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (551, N'4', N'4.5', N'0.531', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (552, N'4', N'4.5', N'0.674', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (553, N'5', N'5.563', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (554, N'5', N'5.563', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (555, N'5', N'5.563', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (556, N'5', N'5.563', N'0.134', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (557, N'5', N'5.563', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (558, N'5', N'5.563', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (559, N'5', N'5.563', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (560, N'5', N'5.563', N'0.258', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (561, N'5', N'5.563', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (562, N'5', N'5.563', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (563, N'5', N'5.563', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (564, N'5', N'5.563', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (565, N'5', N'5.563', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (566, N'5', N'5.563', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (567, N'5', N'5.563', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (568, N'6', N'6.625', N'0.083', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (569, N'6', N'6.625', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (570, N'6', N'6.625', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (571, N'6', N'6.625', N'0.134', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (572, N'6', N'6.625', N'0.141', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (573, N'6', N'6.625', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (574, N'6', N'6.625', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (575, N'6', N'6.625', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (576, N'6', N'6.625', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (577, N'6', N'6.625', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (578, N'6', N'6.625', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (579, N'6', N'6.625', N'0.28', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (580, N'6', N'6.625', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (581, N'6', N'6.625', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (582, N'6', N'6.625', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (583, N'6', N'6.625', N'0.432', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (584, N'6', N'6.625', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (585, N'6', N'6.625', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (586, N'6', N'6.625', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (587, N'6', N'6.625', N'0.719', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (588, N'6', N'6.625', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (589, N'6', N'6.625', N'0.864', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (590, N'6', N'6.625', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (591, N'8', N'8.625', N'0.109', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (592, N'8', N'8.625', N'0.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (593, N'8', N'8.625', N'0.148', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (594, N'8', N'8.625', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (595, N'8', N'8.625', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (596, N'8', N'8.625', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (597, N'8', N'8.625', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (598, N'8', N'8.625', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (599, N'8', N'8.625', N'0.277', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (600, N'8', N'8.625', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (601, N'8', N'8.625', N'0.322', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (602, N'8', N'8.625', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (603, N'8', N'8.625', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (604, N'8', N'8.625', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (605, N'8', N'8.625', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (606, N'8', N'8.625', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (607, N'8', N'8.625', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (608, N'8', N'8.625', N'0.594', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (609, N'8', N'8.625', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (610, N'8', N'8.625', N'0.719', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (611, N'8', N'8.625', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (612, N'8', N'8.625', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (613, N'8', N'8.625', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (614, N'8', N'8.625', N'0.906', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (615, N'8', N'8.625', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (616, N'10', N'10.75', N'0.134', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (617, N'10', N'10.75', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (618, N'10', N'10.75', N'0.165', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (619, N'10', N'10.75', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (620, N'10', N'10.75', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (621, N'10', N'10.75', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (622, N'10', N'10.75', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (623, N'10', N'10.75', N'0.279', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (624, N'10', N'10.75', N'0.307', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (625, N'10', N'10.75', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (626, N'10', N'10.75', N'0.365', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (627, N'10', N'10.75', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (628, N'10', N'10.75', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (629, N'10', N'10.75', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (630, N'10', N'10.75', N'0.594', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (631, N'10', N'10.75', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (632, N'10', N'10.75', N'0.719', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (633, N'10', N'10.75', N'0.812', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (634, N'10', N'10.75', N'0.844', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (635, N'10', N'10.75', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (636, N'10', N'10.75', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (637, N'10', N'10.75', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (638, N'10', N'10.75', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (639, N'10', N'10.75', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (640, N'12', N'12.75', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (641, N'12', N'12.75', N'0.172', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (642, N'12', N'12.75', N'0.18', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (643, N'12', N'12.75', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (644, N'12', N'12.75', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (645, N'12', N'12.75', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (646, N'12', N'12.75', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (647, N'12', N'12.75', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (648, N'12', N'12.75', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (649, N'12', N'12.75', N'0.33', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (650, N'12', N'12.75', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (651, N'12', N'12.75', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (652, N'12', N'12.75', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (653, N'12', N'12.75', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (654, N'12', N'12.75', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (655, N'12', N'12.75', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (656, N'12', N'12.75', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (657, N'12', N'12.75', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (658, N'12', N'12.75', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (659, N'12', N'12.75', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (660, N'12', N'12.75', N'0.844', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (661, N'12', N'12.75', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (662, N'12', N'12.75', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (663, N'12', N'12.75', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (664, N'12', N'12.75', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (665, N'12', N'12.75', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (666, N'12', N'12.75', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (667, N'12', N'12.75', N'1.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (668, N'14', N'14', N'0.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (669, N'14', N'14', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (670, N'14', N'14', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (671, N'14', N'14', N'0.21', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (672, N'14', N'14', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (673, N'14', N'14', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (674, N'14', N'14', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (675, N'14', N'14', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (676, N'14', N'14', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (677, N'14', N'14', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (678, N'14', N'14', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (679, N'14', N'14', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (680, N'14', N'14', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (681, N'14', N'14', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (682, N'14', N'14', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (683, N'14', N'14', N'0.594', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (684, N'14', N'14', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (685, N'14', N'14', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (686, N'14', N'14', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (687, N'14', N'14', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (688, N'14', N'14', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (689, N'14', N'14', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (690, N'14', N'14', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (691, N'14', N'14', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (692, N'14', N'14', N'1.094', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (693, N'14', N'14', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (694, N'14', N'14', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (695, N'14', N'14', N'1.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (696, N'14', N'14', N'2', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (697, N'14', N'14', N'2.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (698, N'14', N'14', N'2.2', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (699, N'14', N'14', N'2.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (700, N'16', N'16', N'0.165', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (701, N'16', N'16', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (702, N'16', N'16', N'0.203', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (703, N'16', N'16', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (704, N'16', N'16', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (705, N'16', N'16', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (706, N'16', N'16', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (707, N'16', N'16', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (708, N'16', N'16', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (709, N'16', N'16', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (710, N'16', N'16', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (711, N'16', N'16', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (712, N'16', N'16', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (713, N'16', N'16', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (714, N'16', N'16', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (715, N'16', N'16', N'0.656', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (716, N'16', N'16', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (717, N'16', N'16', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (718, N'16', N'16', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (719, N'16', N'16', N'0.844', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (720, N'16', N'16', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (721, N'16', N'16', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (722, N'16', N'16', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (723, N'16', N'16', N'1.031', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (724, N'16', N'16', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (725, N'16', N'16', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (726, N'16', N'16', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (727, N'16', N'16', N'1.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (728, N'16', N'16', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (729, N'16', N'16', N'1.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (730, N'16', N'16', N'1.594', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (731, N'18', N'18', N'0.165', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (732, N'18', N'18', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (733, N'18', N'18', N'0.219', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (734, N'18', N'18', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (735, N'18', N'18', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (736, N'18', N'18', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (737, N'18', N'18', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (738, N'18', N'18', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (739, N'18', N'18', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (740, N'18', N'18', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (741, N'18', N'18', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (742, N'18', N'18', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (743, N'18', N'18', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (744, N'18', N'18', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (745, N'18', N'18', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (746, N'18', N'18', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (747, N'18', N'18', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (748, N'18', N'18', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (749, N'18', N'18', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (750, N'18', N'18', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (751, N'18', N'18', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (752, N'18', N'18', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (753, N'18', N'18', N'1.156', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (754, N'18', N'18', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (755, N'18', N'18', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (756, N'18', N'18', N'1.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (757, N'18', N'18', N'1.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (758, N'18', N'18', N'1.781', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (759, N'20', N'20', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (760, N'20', N'20', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (761, N'20', N'20', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (762, N'20', N'20', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (763, N'20', N'20', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (764, N'20', N'20', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (765, N'20', N'20', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (766, N'20', N'20', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (767, N'20', N'20', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (768, N'20', N'20', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (769, N'20', N'20', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (770, N'20', N'20', N'0.594', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (771, N'20', N'20', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (772, N'20', N'20', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (773, N'20', N'20', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (774, N'20', N'20', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (775, N'20', N'20', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (776, N'20', N'20', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (777, N'20', N'20', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (778, N'20', N'20', N'1.031', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (779, N'20', N'20', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (780, N'20', N'20', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (781, N'20', N'20', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (782, N'20', N'20', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (783, N'20', N'20', N'1.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (784, N'20', N'20', N'1.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (785, N'20', N'20', N'1.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (786, N'20', N'20', N'1.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (787, N'20', N'20', N'1.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (788, N'20', N'20', N'1.969', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (789, N'22', N'22', N'0.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (790, N'22', N'22', N'0.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (791, N'22', N'22', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (792, N'22', N'22', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (793, N'22', N'22', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (794, N'22', N'22', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (795, N'22', N'22', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (796, N'22', N'22', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (797, N'22', N'22', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (798, N'22', N'22', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (799, N'22', N'22', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (800, N'22', N'22', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (801, N'22', N'22', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (802, N'22', N'22', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (803, N'22', N'22', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (804, N'22', N'22', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (805, N'22', N'22', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (806, N'22', N'22', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (807, N'22', N'22', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (808, N'22', N'22', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (809, N'22', N'22', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (810, N'22', N'22', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (811, N'22', N'22', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (812, N'22', N'22', N'1.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (813, N'22', N'22', N'1.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (814, N'22', N'22', N'1.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (815, N'22', N'22', N'1.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (816, N'22', N'22', N'1.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (817, N'22', N'22', N'1.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (818, N'22', N'22', N'2.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (819, N'24', N'24', N'0.218', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (820, N'24', N'24', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (821, N'24', N'24', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (822, N'24', N'24', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (823, N'24', N'24', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (824, N'24', N'24', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (825, N'24', N'24', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (826, N'24', N'24', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (827, N'24', N'24', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (828, N'24', N'24', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (829, N'24', N'24', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (830, N'24', N'24', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (831, N'24', N'24', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (832, N'24', N'24', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (833, N'24', N'24', N'0.812', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (834, N'24', N'24', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (835, N'24', N'24', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (836, N'24', N'24', N'0.969', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (837, N'24', N'24', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (838, N'24', N'24', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (839, N'24', N'24', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (840, N'24', N'24', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (841, N'24', N'24', N'1.219', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (842, N'24', N'24', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (843, N'24', N'24', N'1.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (844, N'24', N'24', N'1.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (845, N'24', N'24', N'1.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (846, N'24', N'24', N'1.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (847, N'24', N'24', N'1.531', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (848, N'24', N'24', N'1.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (849, N'24', N'24', N'1.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (850, N'24', N'24', N'2.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (851, N'24', N'24', N'2.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (852, N'26', N'26', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (853, N'26', N'26', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (854, N'26', N'26', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (855, N'26', N'26', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (856, N'26', N'26', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (857, N'26', N'26', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (858, N'26', N'26', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (859, N'26', N'26', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (860, N'26', N'26', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (861, N'26', N'26', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (862, N'26', N'26', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (863, N'26', N'26', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (864, N'26', N'26', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (865, N'26', N'26', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (866, N'28', N'28', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (867, N'28', N'28', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (868, N'28', N'28', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (869, N'28', N'28', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (870, N'28', N'28', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (871, N'28', N'28', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (872, N'28', N'28', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (873, N'28', N'28', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (874, N'28', N'28', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (875, N'28', N'28', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (876, N'28', N'28', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (877, N'28', N'28', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (878, N'28', N'28', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (879, N'28', N'28', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (880, N'28', N'28', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (881, N'28', N'28', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (882, N'28', N'28', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (883, N'30', N'30', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (884, N'30', N'30', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (885, N'30', N'30', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (886, N'30', N'30', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (887, N'30', N'30', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (888, N'30', N'30', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (889, N'30', N'30', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (890, N'30', N'30', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (891, N'30', N'30', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (892, N'30', N'30', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (893, N'30', N'30', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (894, N'30', N'30', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (895, N'30', N'30', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (896, N'30', N'30', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (897, N'30', N'30', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (898, N'30', N'30', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (899, N'30', N'30', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (900, N'30', N'30', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (901, N'30', N'30', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (902, N'30', N'30', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (903, N'30', N'30', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (904, N'32', N'32', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (905, N'32', N'32', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (906, N'32', N'32', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (907, N'32', N'32', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (908, N'32', N'32', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (909, N'32', N'32', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (910, N'32', N'32', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (911, N'32', N'32', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (912, N'32', N'32', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (913, N'32', N'32', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (914, N'32', N'32', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (915, N'32', N'32', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (916, N'32', N'32', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (917, N'32', N'32', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (918, N'32', N'32', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (919, N'32', N'32', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (920, N'32', N'32', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (921, N'32', N'32', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (922, N'32', N'32', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (923, N'32', N'32', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (924, N'32', N'32', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (925, N'34', N'34', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (926, N'34', N'34', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (927, N'34', N'34', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (928, N'34', N'34', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (929, N'34', N'34', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (930, N'34', N'34', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (931, N'34', N'34', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (932, N'34', N'34', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (933, N'34', N'34', N'0.5', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (934, N'34', N'34', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (935, N'34', N'34', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (936, N'34', N'34', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (937, N'34', N'34', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (938, N'34', N'34', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (939, N'34', N'34', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (940, N'34', N'34', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (941, N'34', N'34', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (942, N'34', N'34', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (943, N'34', N'34', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (944, N'34', N'34', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (945, N'34', N'34', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (946, N'36', N'36', N'0.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (947, N'36', N'36', N'0.281', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (948, N'36', N'36', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (949, N'36', N'36', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (950, N'36', N'36', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (951, N'36', N'36', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (952, N'36', N'36', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (953, N'36', N'36', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (954, N'36', N'36', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (955, N'36', N'36', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (956, N'36', N'36', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (957, N'36', N'36', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (958, N'36', N'36', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (959, N'36', N'36', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (960, N'36', N'36', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (961, N'36', N'36', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (962, N'36', N'36', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (963, N'36', N'36', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (964, N'38', N'38', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (965, N'38', N'38', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (966, N'38', N'38', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (967, N'38', N'38', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (968, N'38', N'38', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (969, N'38', N'38', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (970, N'38', N'38', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (971, N'38', N'38', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (972, N'38', N'38', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (973, N'38', N'38', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (974, N'38', N'38', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (975, N'38', N'38', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (976, N'38', N'38', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (977, N'38', N'38', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (978, N'38', N'38', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (979, N'38', N'38', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (980, N'38', N'38', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (981, N'38', N'38', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (982, N'38', N'38', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (983, N'40', N'40', N'0.312', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (984, N'40', N'40', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (985, N'40', N'40', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (986, N'40', N'40', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (987, N'40', N'40', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (988, N'40', N'40', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (989, N'40', N'40', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (990, N'40', N'40', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (991, N'40', N'40', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (992, N'40', N'40', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (993, N'40', N'40', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (994, N'40', N'40', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (995, N'40', N'40', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (996, N'40', N'40', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (997, N'40', N'40', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (998, N'40', N'40', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (999, N'40', N'40', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1000, N'40', N'40', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1001, N'40', N'40', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1002, N'42', N'42', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1003, N'42', N'42', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1004, N'42', N'42', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1005, N'42', N'42', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1006, N'42', N'42', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1007, N'42', N'42', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1008, N'42', N'42', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1009, N'42', N'42', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1010, N'42', N'42', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1011, N'42', N'42', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1012, N'42', N'42', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1013, N'42', N'42', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1014, N'42', N'42', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1015, N'42', N'42', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1016, N'42', N'42', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1017, N'42', N'42', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1018, N'44', N'44', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1019, N'44', N'44', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1020, N'44', N'44', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1021, N'44', N'44', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1022, N'44', N'44', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1023, N'44', N'44', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1024, N'44', N'44', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1025, N'44', N'44', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1026, N'44', N'44', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1027, N'44', N'44', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1028, N'44', N'44', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1029, N'44', N'44', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1030, N'44', N'44', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1031, N'44', N'44', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1032, N'44', N'44', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1033, N'44', N'44', N'1.125', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1034, N'44', N'44', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1035, N'44', N'44', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1036, N'46', N'46', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1037, N'46', N'46', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1038, N'46', N'46', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1039, N'46', N'46', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1040, N'46', N'46', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1041, N'46', N'46', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1042, N'46', N'46', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1043, N'46', N'46', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1044, N'46', N'46', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1045, N'46', N'46', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1046, N'46', N'46', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1047, N'46', N'46', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1048, N'46', N'46', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1049, N'46', N'46', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1050, N'46', N'46', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1051, N'48', N'48', N'0.344', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1052, N'48', N'48', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1053, N'48', N'48', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1054, N'48', N'48', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1055, N'48', N'48', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1056, N'48', N'48', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1057, N'48', N'48', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1058, N'48', N'48', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1059, N'48', N'48', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1060, N'48', N'48', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1061, N'48', N'48', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1062, N'48', N'48', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1063, N'48', N'48', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1064, N'48', N'48', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1065, N'48', N'48', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1066, N'48', N'48', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1067, N'48', N'48', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1068, N'48', N'48', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1069, N'52', N'52', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1070, N'52', N'52', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1071, N'52', N'52', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1072, N'52', N'52', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1073, N'52', N'52', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1074, N'52', N'52', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1075, N'52', N'52', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1076, N'52', N'52', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1077, N'52', N'52', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1078, N'52', N'52', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1079, N'52', N'52', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1080, N'52', N'52', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1081, N'52', N'52', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1082, N'52', N'52', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1083, N'52', N'52', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1084, N'52', N'52', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1085, N'52', N'52', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1086, N'56', N'56', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1087, N'56', N'56', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1088, N'56', N'56', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1089, N'56', N'56', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1090, N'56', N'56', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1091, N'56', N'56', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1092, N'56', N'56', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1093, N'56', N'56', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1094, N'56', N'56', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1095, N'56', N'56', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1096, N'56', N'56', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1097, N'56', N'56', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1098, N'56', N'56', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1099, N'56', N'56', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1100, N'56', N'56', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1101, N'60', N'60', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1102, N'60', N'60', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1103, N'60', N'60', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1104, N'60', N'60', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1105, N'60', N'60', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1106, N'60', N'60', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1107, N'60', N'60', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1108, N'60', N'60', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1109, N'60', N'60', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1110, N'60', N'60', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1111, N'60', N'60', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1112, N'60', N'60', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1113, N'60', N'60', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1114, N'60', N'60', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1115, N'60', N'60', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1116, N'60', N'60', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1117, N'60', N'60', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1118, N'64', N'64', N'0.375', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1119, N'64', N'64', N'0.406', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1120, N'64', N'64', N'0.438', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1121, N'64', N'64', N'0.469', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1122, N'64', N'64', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1123, N'64', N'64', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1124, N'64', N'64', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1125, N'64', N'64', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1126, N'64', N'64', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1127, N'64', N'64', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1128, N'64', N'64', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1129, N'64', N'64', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1130, N'64', N'64', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1131, N'64', N'64', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1132, N'64', N'64', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1133, N'64', N'64', N'1.188', N'5l   ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1134, N'64', N'64', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1135, N'68', N'68', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1136, N'68', N'68', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1137, N'68', N'68', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1138, N'68', N'68', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1139, N'68', N'68', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1140, N'72', N'72', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1141, N'72', N'72', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1142, N'72', N'72', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1143, N'72', N'72', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1144, N'72', N'72', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1145, N'72', N'72', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1146, N'72', N'72', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1147, N'72', N'72', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1148, N'72', N'72', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1149, N'72', N'72', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1150, N'72', N'72', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1151, N'72', N'72', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1152, N'72', N'72', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1153, N'76', N'76', N'0.5', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1154, N'76', N'76', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1155, N'76', N'76', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1156, N'76', N'76', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1157, N'76', N'76', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1158, N'76', N'76', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1159, N'76', N'76', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1160, N'76', N'76', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1161, N'76', N'76', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1162, N'76', N'76', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1163, N'76', N'76', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1164, N'76', N'76', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1165, N'76', N'76', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1166, N'80', N'80', N'0.562', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1167, N'80', N'80', N'0.625', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1168, N'80', N'80', N'0.688', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1169, N'80', N'80', N'0.75', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1170, N'80', N'80', N'0.812', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1171, N'80', N'80', N'0.875', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1172, N'80', N'80', N'0.938', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1173, N'80', N'80', N'1', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1174, N'80', N'80', N'1.062', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1175, N'80', N'80', N'1.125', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1176, N'80', N'80', N'1.188', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1177, N'80', N'80', N'1.25', N'5l   ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1178, N'1/8', N'0.405', N'0.049', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1179, N'1/8', N'0.405', N'0.057', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1180, N'1/8', N'0.405', N'0.068', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1181, N'1/8', N'0.405', N'0.095', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1182, N'1/4', N'0.54', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1183, N'1/4', N'0.54', N'0.073', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1184, N'1/4', N'0.54', N'0.088', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1185, N'1/4', N'0.54', N'0.119', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1186, N'3/8', N'0.675', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1187, N'3/8', N'0.675', N'0.073', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1188, N'3/8', N'0.675', N'0.091', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1189, N'3/8', N'0.675', N'0.126', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1190, N'1/2', N'0.84', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1191, N'1/2', N'0.84', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1192, N'1/2', N'0.84', N'0.095', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1193, N'1/2', N'0.84', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1194, N'1/2', N'0.84', N'0.147', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1195, N'1/2', N'0.84', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1196, N'1/2', N'0.84', N'0.294', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1197, N'3/4', N'1.05', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1198, N'3/4', N'1.05', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1199, N'3/4', N'1.05', N'0.095', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1200, N'3/4', N'1.05', N'0.113', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1201, N'3/4', N'1.05', N'0.154', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1202, N'3/4', N'1.05', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1203, N'3/4', N'1.05', N'0.308', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1204, N'1', N'1.315', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1205, N'1', N'1.315', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1206, N'1', N'1.315', N'0.114', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1207, N'1', N'1.315', N'0.133', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1208, N'1', N'1.315', N'0.179', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1209, N'1', N'1.315', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1210, N'1', N'1.315', N'0.358', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1211, N'1 1/4', N'1.66', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1212, N'1 1/4', N'1.66', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1213, N'1 1/4', N'1.66', N'0.117', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1214, N'1 1/4', N'1.66', N'0.14', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1215, N'1 1/4', N'1.66', N'0.191', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1216, N'1 1/4', N'1.66', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1217, N'1 1/4', N'1.66', N'0.382', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1218, N'1 1/2', N'1.9', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1219, N'1 1/2', N'1.9', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1220, N'1 1/2', N'1.9', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1221, N'1 1/2', N'1.9', N'0.145', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1222, N'1 1/2', N'1.9', N'0.2', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1223, N'1 1/2', N'1.9', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1224, N'1 1/2', N'1.9', N'0.4', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1225, N'2', N'2.375', N'0.065', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1226, N'2', N'2.375', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1227, N'2', N'2.375', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1228, N'2', N'2.375', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1229, N'2', N'2.375', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1230, N'2', N'2.375', N'0.154', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1231, N'2', N'2.375', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1232, N'2', N'2.375', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1233, N'2', N'2.375', N'0.218', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1234, N'2', N'2.375', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1235, N'2', N'2.375', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1236, N'2', N'2.375', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1237, N'2', N'2.375', N'0.436', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1238, N'2 1/2', N'2.875', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1239, N'2 1/2', N'2.875', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1240, N'2 1/2', N'2.875', N'0.12', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1241, N'2 1/2', N'2.875', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1242, N'2 1/2', N'2.875', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1243, N'2 1/2', N'2.875', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1244, N'2 1/2', N'2.875', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1245, N'2 1/2', N'2.875', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1246, N'2 1/2', N'2.875', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1247, N'2 1/2', N'2.875', N'0.216', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1248, N'2 1/2', N'2.875', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1249, N'2 1/2', N'2.875', N'0.276', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1250, N'2 1/2', N'2.875', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1251, N'2 1/2', N'2.875', N'0.552', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1252, N'3', N'3.5', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1253, N'3', N'3.5', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1254, N'3', N'3.5', N'0.12', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1255, N'3', N'3.5', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1256, N'3', N'3.5', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1257, N'3', N'3.5', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1258, N'3', N'3.5', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1259, N'3', N'3.5', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1260, N'3', N'3.5', N'0.216', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1261, N'3', N'3.5', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1262, N'3', N'3.5', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1263, N'3', N'3.5', N'0.3', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1264, N'3', N'3.5', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1265, N'3', N'3.5', N'0.6', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1266, N'3 1/2', N'4', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1267, N'3 1/2', N'4', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1268, N'3 1/2', N'4', N'0.12', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1269, N'3 1/2', N'4', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1270, N'3 1/2', N'4', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1271, N'3 1/2', N'4', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1272, N'3 1/2', N'4', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1273, N'3 1/2', N'4', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1274, N'3 1/2', N'4', N'0.226', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1275, N'3 1/2', N'4', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1276, N'3 1/2', N'4', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1277, N'3 1/2', N'4', N'0.318', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1278, N'4', N'4.5', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1279, N'4', N'4.5', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1280, N'4', N'4.5', N'0.12', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1281, N'4', N'4.5', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1282, N'4', N'4.5', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1283, N'4', N'4.5', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1284, N'4', N'4.5', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1285, N'4', N'4.5', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1286, N'4', N'4.5', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1287, N'4', N'4.5', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1288, N'4', N'4.5', N'0.237', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1289, N'4', N'4.5', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1290, N'4', N'4.5', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1291, N'4', N'4.5', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1292, N'4', N'4.5', N'0.337', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1293, N'4', N'4.5', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1294, N'4', N'4.5', N'0.531', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1295, N'4', N'4.5', N'0.674', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1296, N'5', N'5.563', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1297, N'5', N'5.563', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1298, N'5', N'5.563', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1299, N'5', N'5.563', N'0.134', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1300, N'5', N'5.563', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1301, N'5', N'5.563', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1302, N'5', N'5.563', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1303, N'5', N'5.563', N'0.258', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1304, N'5', N'5.563', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1305, N'5', N'5.563', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1306, N'5', N'5.563', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1307, N'5', N'5.563', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1308, N'5', N'5.563', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1309, N'5', N'5.563', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1310, N'5', N'5.563', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1311, N'6', N'6.625', N'0.083', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1312, N'6', N'6.625', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1313, N'6', N'6.625', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1314, N'6', N'6.625', N'0.134', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1315, N'6', N'6.625', N'0.141', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1316, N'6', N'6.625', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1317, N'6', N'6.625', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1318, N'6', N'6.625', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1319, N'6', N'6.625', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1320, N'6', N'6.625', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1321, N'6', N'6.625', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1322, N'6', N'6.625', N'0.28', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1323, N'6', N'6.625', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1324, N'6', N'6.625', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1325, N'6', N'6.625', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1326, N'6', N'6.625', N'0.432', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1327, N'6', N'6.625', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1328, N'6', N'6.625', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1329, N'6', N'6.625', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1330, N'6', N'6.625', N'0.719', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1331, N'6', N'6.625', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1332, N'6', N'6.625', N'0.864', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1333, N'6', N'6.625', N'0.875', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1334, N'8', N'8.625', N'0.109', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1335, N'8', N'8.625', N'0.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1336, N'8', N'8.625', N'0.148', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1337, N'8', N'8.625', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1338, N'8', N'8.625', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1339, N'8', N'8.625', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1340, N'8', N'8.625', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1341, N'8', N'8.625', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1342, N'8', N'8.625', N'0.277', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1343, N'8', N'8.625', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1344, N'8', N'8.625', N'0.322', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1345, N'8', N'8.625', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1346, N'8', N'8.625', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1347, N'8', N'8.625', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1348, N'8', N'8.625', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1349, N'8', N'8.625', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1350, N'8', N'8.625', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1351, N'8', N'8.625', N'0.594', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1352, N'8', N'8.625', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1353, N'8', N'8.625', N'0.719', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1354, N'8', N'8.625', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1355, N'8', N'8.625', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1356, N'8', N'8.625', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1357, N'8', N'8.625', N'0.906', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1358, N'8', N'8.625', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1359, N'10', N'10.75', N'0.134', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1360, N'10', N'10.75', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1361, N'10', N'10.75', N'0.165', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1362, N'10', N'10.75', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1363, N'10', N'10.75', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1364, N'10', N'10.75', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1365, N'10', N'10.75', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1366, N'10', N'10.75', N'0.279', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1367, N'10', N'10.75', N'0.307', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1368, N'10', N'10.75', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1369, N'10', N'10.75', N'0.365', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1370, N'10', N'10.75', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1371, N'10', N'10.75', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1372, N'10', N'10.75', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1373, N'10', N'10.75', N'0.594', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1374, N'10', N'10.75', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1375, N'10', N'10.75', N'0.719', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1376, N'10', N'10.75', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1377, N'10', N'10.75', N'0.844', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1378, N'10', N'10.75', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1379, N'10', N'10.75', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1380, N'10', N'10.75', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1381, N'10', N'10.75', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1382, N'10', N'10.75', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1383, N'12', N'12.75', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1384, N'12', N'12.75', N'0.172', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1385, N'12', N'12.75', N'0.18', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1386, N'12', N'12.75', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1387, N'12', N'12.75', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1388, N'12', N'12.75', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1389, N'12', N'12.75', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1390, N'12', N'12.75', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1391, N'12', N'12.75', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1392, N'12', N'12.75', N'0.33', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1393, N'12', N'12.75', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1394, N'12', N'12.75', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1395, N'12', N'12.75', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1396, N'12', N'12.75', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1397, N'12', N'12.75', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1398, N'12', N'12.75', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1399, N'12', N'12.75', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1400, N'12', N'12.75', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1401, N'12', N'12.75', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1402, N'12', N'12.75', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1403, N'12', N'12.75', N'0.844', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1404, N'12', N'12.75', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1405, N'12', N'12.75', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1406, N'12', N'12.75', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1407, N'12', N'12.75', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1408, N'12', N'12.75', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1409, N'12', N'12.75', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1410, N'12', N'12.75', N'1.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1411, N'14', N'14', N'0.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1412, N'14', N'14', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1413, N'14', N'14', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1414, N'14', N'14', N'0.21', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1415, N'14', N'14', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1416, N'14', N'14', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1417, N'14', N'14', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1418, N'14', N'14', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1419, N'14', N'14', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1420, N'14', N'14', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1421, N'14', N'14', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1422, N'14', N'14', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1423, N'14', N'14', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1424, N'14', N'14', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1425, N'14', N'14', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1426, N'14', N'14', N'0.594', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1427, N'14', N'14', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1428, N'14', N'14', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1429, N'14', N'14', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1430, N'14', N'14', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1431, N'14', N'14', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1432, N'14', N'14', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1433, N'14', N'14', N'1', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1434, N'14', N'14', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1435, N'14', N'14', N'1.094', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1436, N'14', N'14', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1437, N'14', N'14', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1438, N'14', N'14', N'1.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1439, N'14', N'14', N'2', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1440, N'14', N'14', N'2.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1441, N'14', N'14', N'2.2', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1442, N'14', N'14', N'2.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1443, N'16', N'16', N'0.165', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1444, N'16', N'16', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1445, N'16', N'16', N'0.203', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1446, N'16', N'16', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1447, N'16', N'16', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1448, N'16', N'16', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1449, N'16', N'16', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1450, N'16', N'16', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1451, N'16', N'16', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1452, N'16', N'16', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1453, N'16', N'16', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1454, N'16', N'16', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1455, N'16', N'16', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1456, N'16', N'16', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1457, N'16', N'16', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1458, N'16', N'16', N'0.656', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1459, N'16', N'16', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1460, N'16', N'16', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1461, N'16', N'16', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1462, N'16', N'16', N'0.844', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1463, N'16', N'16', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1464, N'16', N'16', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1465, N'16', N'16', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1466, N'16', N'16', N'1.031', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1467, N'16', N'16', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1468, N'16', N'16', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1469, N'16', N'16', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1470, N'16', N'16', N'1.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1471, N'16', N'16', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1472, N'16', N'16', N'1.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1473, N'16', N'16', N'1.594', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1474, N'18', N'18', N'0.165', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1475, N'18', N'18', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1476, N'18', N'18', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1477, N'18', N'18', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1478, N'18', N'18', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1479, N'18', N'18', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1480, N'18', N'18', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1481, N'18', N'18', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1482, N'18', N'18', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1483, N'18', N'18', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1484, N'18', N'18', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1485, N'18', N'18', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1486, N'18', N'18', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1487, N'18', N'18', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1488, N'18', N'18', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1489, N'18', N'18', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1490, N'18', N'18', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1491, N'18', N'18', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1492, N'18', N'18', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1493, N'18', N'18', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1494, N'18', N'18', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1495, N'18', N'18', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1496, N'18', N'18', N'1.156', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1497, N'18', N'18', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1498, N'18', N'18', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1499, N'18', N'18', N'1.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1500, N'18', N'18', N'1.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1501, N'18', N'18', N'1.781', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1502, N'20', N'20', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1503, N'20', N'20', N'0.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1504, N'20', N'20', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1505, N'20', N'20', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1506, N'20', N'20', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1507, N'20', N'20', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1508, N'20', N'20', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1509, N'20', N'20', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1510, N'20', N'20', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1511, N'20', N'20', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1512, N'20', N'20', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1513, N'20', N'20', N'0.594', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1514, N'20', N'20', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1515, N'20', N'20', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1516, N'20', N'20', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1517, N'20', N'20', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1518, N'20', N'20', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1519, N'20', N'20', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1520, N'20', N'20', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1521, N'20', N'20', N'1.031', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1522, N'20', N'20', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1523, N'20', N'20', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1524, N'20', N'20', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1525, N'20', N'20', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1526, N'20', N'20', N'1.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1527, N'20', N'20', N'1.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1528, N'20', N'20', N'1.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1529, N'20', N'20', N'1.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1530, N'20', N'20', N'1.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1531, N'20', N'20', N'1.969', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1532, N'22', N'22', N'0.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1533, N'22', N'22', N'0.219', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1534, N'22', N'22', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1535, N'22', N'22', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1536, N'22', N'22', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1537, N'22', N'22', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1538, N'22', N'22', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1539, N'22', N'22', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1540, N'22', N'22', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1541, N'22', N'22', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1542, N'22', N'22', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1543, N'22', N'22', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1544, N'22', N'22', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1545, N'22', N'22', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1546, N'22', N'22', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1547, N'22', N'22', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1548, N'22', N'22', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1549, N'22', N'22', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1550, N'22', N'22', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1551, N'22', N'22', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1552, N'22', N'22', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1553, N'22', N'22', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1554, N'22', N'22', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1555, N'22', N'22', N'1.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1556, N'22', N'22', N'1.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1557, N'22', N'22', N'1.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1558, N'22', N'22', N'1.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1559, N'22', N'22', N'1.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1560, N'22', N'22', N'1.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1561, N'22', N'22', N'2.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1562, N'24', N'24', N'0.218', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1563, N'24', N'24', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1564, N'24', N'24', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1565, N'24', N'24', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1566, N'24', N'24', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1567, N'24', N'24', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1568, N'24', N'24', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1569, N'24', N'24', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1570, N'24', N'24', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1571, N'24', N'24', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1572, N'24', N'24', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1573, N'24', N'24', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1574, N'24', N'24', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1575, N'24', N'24', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1576, N'24', N'24', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1577, N'24', N'24', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1578, N'24', N'24', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1579, N'24', N'24', N'0.969', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1580, N'24', N'24', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1581, N'24', N'24', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1582, N'24', N'24', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1583, N'24', N'24', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1584, N'24', N'24', N'1.219', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1585, N'24', N'24', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1586, N'24', N'24', N'1.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1587, N'24', N'24', N'1.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1588, N'24', N'24', N'1.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1589, N'24', N'24', N'1.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1590, N'24', N'24', N'1.531', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1591, N'24', N'24', N'1.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1592, N'24', N'24', N'1.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1593, N'24', N'24', N'2.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1594, N'24', N'24', N'2.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1595, N'26', N'26', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1596, N'26', N'26', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1597, N'26', N'26', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1598, N'26', N'26', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1599, N'26', N'26', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1600, N'26', N'26', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1601, N'26', N'26', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1602, N'26', N'26', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1603, N'26', N'26', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1604, N'26', N'26', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1605, N'26', N'26', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1606, N'26', N'26', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1607, N'26', N'26', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1608, N'26', N'26', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1609, N'28', N'28', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1610, N'28', N'28', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1611, N'28', N'28', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1612, N'28', N'28', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1613, N'28', N'28', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1614, N'28', N'28', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1615, N'28', N'28', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1616, N'28', N'28', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1617, N'28', N'28', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1618, N'28', N'28', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1619, N'28', N'28', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1620, N'28', N'28', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1621, N'28', N'28', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1622, N'28', N'28', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1623, N'28', N'28', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1624, N'28', N'28', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1625, N'28', N'28', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1626, N'30', N'30', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1627, N'30', N'30', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1628, N'30', N'30', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1629, N'30', N'30', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1630, N'30', N'30', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1631, N'30', N'30', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1632, N'30', N'30', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1633, N'30', N'30', N'0.469', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1634, N'30', N'30', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1635, N'30', N'30', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1636, N'30', N'30', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1637, N'30', N'30', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1638, N'30', N'30', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1639, N'30', N'30', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1640, N'30', N'30', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1641, N'30', N'30', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1642, N'30', N'30', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1643, N'30', N'30', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1644, N'30', N'30', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1645, N'30', N'30', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1646, N'30', N'30', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1647, N'32', N'32', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1648, N'32', N'32', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1649, N'32', N'32', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1650, N'32', N'32', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1651, N'32', N'32', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1652, N'32', N'32', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1653, N'32', N'32', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1654, N'32', N'32', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1655, N'32', N'32', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1656, N'32', N'32', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1657, N'32', N'32', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1658, N'32', N'32', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1659, N'32', N'32', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1660, N'32', N'32', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1661, N'32', N'32', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1662, N'32', N'32', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1663, N'32', N'32', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1664, N'32', N'32', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1665, N'32', N'32', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1666, N'32', N'32', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1667, N'32', N'32', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1668, N'34', N'34', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1669, N'34', N'34', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1670, N'34', N'34', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1671, N'34', N'34', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1672, N'34', N'34', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1673, N'34', N'34', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1674, N'34', N'34', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1675, N'34', N'34', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1676, N'34', N'34', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1677, N'34', N'34', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1678, N'34', N'34', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1679, N'34', N'34', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1680, N'34', N'34', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1681, N'34', N'34', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1682, N'34', N'34', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1683, N'34', N'34', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1684, N'34', N'34', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1685, N'34', N'34', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1686, N'34', N'34', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1687, N'34', N'34', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1688, N'34', N'34', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1689, N'36', N'36', N'0.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1690, N'36', N'36', N'0.281', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1691, N'36', N'36', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1692, N'36', N'36', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1693, N'36', N'36', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1694, N'36', N'36', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1695, N'36', N'36', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1696, N'36', N'36', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1697, N'36', N'36', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1698, N'36', N'36', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1699, N'36', N'36', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1700, N'36', N'36', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1701, N'36', N'36', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1702, N'36', N'36', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1703, N'36', N'36', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1704, N'36', N'36', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1705, N'36', N'36', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1706, N'36', N'36', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1707, N'38', N'38', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1708, N'38', N'38', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1709, N'38', N'38', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1710, N'38', N'38', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1711, N'38', N'38', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1712, N'38', N'38', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1713, N'38', N'38', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1714, N'38', N'38', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1715, N'38', N'38', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1716, N'38', N'38', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1717, N'38', N'38', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1718, N'38', N'38', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1719, N'38', N'38', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1720, N'38', N'38', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1721, N'38', N'38', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1722, N'38', N'38', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1723, N'38', N'38', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1724, N'38', N'38', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1725, N'38', N'38', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1726, N'40', N'40', N'0.312', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1727, N'40', N'40', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1728, N'40', N'40', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1729, N'40', N'40', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1730, N'40', N'40', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1731, N'40', N'40', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1732, N'40', N'40', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1733, N'40', N'40', N'0.562', N'astm ')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1734, N'40', N'40', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1735, N'40', N'40', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1736, N'40', N'40', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1737, N'40', N'40', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1738, N'40', N'40', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1739, N'40', N'40', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1740, N'40', N'40', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1741, N'40', N'40', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1742, N'40', N'40', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1743, N'40', N'40', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1744, N'40', N'40', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1745, N'42', N'42', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1746, N'42', N'42', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1747, N'42', N'42', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1748, N'42', N'42', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1749, N'42', N'42', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1750, N'42', N'42', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1751, N'42', N'42', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1752, N'42', N'42', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1753, N'42', N'42', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1754, N'42', N'42', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1755, N'42', N'42', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1756, N'42', N'42', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1757, N'42', N'42', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1758, N'42', N'42', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1759, N'42', N'42', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1760, N'42', N'42', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1761, N'44', N'44', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1762, N'44', N'44', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1763, N'44', N'44', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1764, N'44', N'44', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1765, N'44', N'44', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1766, N'44', N'44', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1767, N'44', N'44', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1768, N'44', N'44', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1769, N'44', N'44', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1770, N'44', N'44', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1771, N'44', N'44', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1772, N'44', N'44', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1773, N'44', N'44', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1774, N'44', N'44', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1775, N'44', N'44', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1776, N'44', N'44', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1777, N'44', N'44', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1778, N'44', N'44', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1779, N'46', N'46', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1780, N'46', N'46', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1781, N'46', N'46', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1782, N'46', N'46', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1783, N'46', N'46', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1784, N'46', N'46', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1785, N'46', N'46', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1786, N'46', N'46', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1787, N'46', N'46', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1788, N'46', N'46', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1789, N'46', N'46', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1790, N'46', N'46', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1791, N'46', N'46', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1792, N'46', N'46', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1793, N'46', N'46', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1794, N'48', N'48', N'0.344', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1795, N'48', N'48', N'0.375', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1796, N'48', N'48', N'0.406', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1797, N'48', N'48', N'0.438', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1798, N'48', N'48', N'0.469', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1799, N'48', N'48', N'0.5', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1800, N'48', N'48', N'0.562', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1801, N'48', N'48', N'0.625', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1802, N'48', N'48', N'0.688', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1803, N'48', N'48', N'0.75', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1804, N'48', N'48', N'0.812', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1805, N'48', N'48', N'0.875', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1806, N'48', N'48', N'0.938', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1807, N'48', N'48', N'1', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1808, N'48', N'48', N'1.062', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1809, N'48', N'48', N'1.125', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1810, N'48', N'48', N'1.188', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1811, N'48', N'48', N'1.25', N'astm ')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1812, N'1/2', N'0.840', N'0.062', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1813, N'1/2', N'0.840', N'0.076', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1814, N'1/2', N'0.840', N'0.090', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1815, N'3/4', N'1.050', N'0.090', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1816, N'3/4', N'1.050', N'0.095', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1817, N'3/4', N'1.050', N'0.113', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1818, N'1', N'1.315', N'0.090', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1819, N'1', N'1.315', N'0.097', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1820, N'1', N'1.315', N'0.120', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1821, N'1', N'1.315', N'0.133', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1822, N'1', N'1.315', N'0.140', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1823, N'1 1/4', N'1.660', N'0.090', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1824, N'1 1/4', N'1.660', N'0.098', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1825, N'1 1/4', N'1.660', N'0.123', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1826, N'1 1/4', N'1.660', N'0.140', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1827, N'1 1/4', N'1.660', N'0.151', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1828, N'1 1/4', N'1.660', N'0.166', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1829, N'1 1/4', N'1.660', N'0.178', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1830, N'1 1/4', N'1.660', N'0.277', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1831, N'1 1/2', N'1.900', N'0.090', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1832, N'1 1/2', N'1.900', N'0.112', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1833, N'1 1/2', N'1.900', N'0.141', N'polye')
GO
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1834, N'1 1/2', N'1.900', N'0.145', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1835, N'1 1/2', N'1.900', N'0.173', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1836, N'2', N'2.375', N'0.113', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1837, N'2', N'2.375', N'0.140', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1838, N'2', N'2.375', N'0.154', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1839, N'2', N'2.375', N'0.176', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1840, N'2', N'2.375', N'0.216', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1841, N'2', N'2.375', N'0.255', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1842, N'2 1/2', N'2.875', N'0.137', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1843, N'2 1/2', N'2.875', N'0.169', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1844, N'2 1/2', N'2.875', N'0.213', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1845, N'2 1/2', N'2.875', N'0.261', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1846, N'3', N'3.500', N'0.167', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1847, N'3', N'3.500', N'0.206', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1848, N'3', N'3.500', N'0.216', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1849, N'3', N'3.500', N'0.259', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1850, N'3', N'3.500', N'0.304', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1851, N'3', N'3.500', N'0.318', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1852, N'3', N'3.500', N'0.375', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1853, N'3 1/2', N'4.000', N'0.190', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1854, N'3 1/2', N'4.000', N'0.236', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1855, N'3 1/2', N'4.000', N'0.296', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1856, N'3 1/2', N'4.000', N'0.363', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1857, N'4', N'4.500', N'0.214', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1858, N'4', N'4.500', N'0.237', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1859, N'4', N'4.500', N'0.265', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1860, N'4', N'4.500', N'0.333', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1861, N'4', N'4.500', N'0.391', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1862, N'4', N'4.500', N'0.409', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1863, N'4', N'4.500', N'0.482', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1864, N'5', N'5.563', N'0.258', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1865, N'5', N'5.563', N'0.265', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1866, N'5', N'5.563', N'0.327', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1867, N'5', N'5.563', N'0.412', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1868, N'5', N'5.563', N'0.506', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1869, N'6', N'6.625', N'0.204', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1870, N'6', N'6.625', N'0.255', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1871, N'6', N'6.625', N'0.280', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1872, N'6', N'6.625', N'0.315', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1873, N'6', N'6.625', N'0.390', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1874, N'6', N'6.625', N'0.491', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1875, N'6', N'6.625', N'0.576', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1876, N'6', N'6.625', N'0.602', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1877, N'8', N'8.625', N'0.265', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1878, N'8', N'8.625', N'0.332', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1879, N'8', N'8.625', N'0.411', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1880, N'8', N'8.625', N'0.507', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1881, N'8', N'8.625', N'0.639', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1882, N'8', N'8.625', N'0.750', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1883, N'8', N'8.625', N'0.784', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1884, N'10', N'10.750', N'0.331', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1885, N'10', N'10.750', N'0.413', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1886, N'10', N'10.750', N'0.512', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1887, N'10', N'10.750', N'0.632', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1888, N'10', N'10.750', N'0.796', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1889, N'10', N'10.750', N'0.935', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1890, N'10', N'10.750', N'0.977', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1891, N'12', N'12.750', N'0.392', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1892, N'12', N'12.750', N'0.490', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1893, N'12', N'12.750', N'0.607', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1894, N'12', N'12.750', N'0.750', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1895, N'12', N'12.750', N'0.944', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1896, N'12', N'12.750', N'1.109', N'polye')
INSERT [dbo].[ComboBoxNPS] ([id], [NPS], [diameter], [wall_thickness], [typec]) VALUES (1897, N'12', N'12.750', N'1.159', N'polye')
SET IDENTITY_INSERT [dbo].[ComboBoxNPS] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxPresionActuadores] ON 

INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (1, N'40 Psig', 40)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (2, N'50 Psig', 50)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (3, N'60 Psig', 60)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (4, N'70 Psig', 70)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (5, N'80 Psig', 80)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (6, N'90 Psig', 90)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (7, N'100 Psig', 100)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (8, N'110 Psig', 110)
INSERT [dbo].[ComboBoxPresionActuadores] ([id], [name], [value]) VALUES (9, N'120 Psig', 120)
SET IDENTITY_INSERT [dbo].[ComboBoxPresionActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxRefeActuadores] ON 

INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (3, N'CBA', 3)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (4, N'CBA-300', 3)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (5, N'HD Series', 3)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (6, N'G Series', 3)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (7, N'E- Series', 3)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (8, N'P-Model', 4)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (9, N'GP-Model', 4)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (10, N'CP-Model', 4)
INSERT [dbo].[ComboBoxRefeActuadores] ([id], [referencia], [id_marca]) VALUES (11, N'LP-(Linear)', 4)
SET IDENTITY_INSERT [dbo].[ComboBoxRefeActuadores] OFF
SET IDENTITY_INSERT [dbo].[ComboBoxTorqueActuadores] ON 

INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (13, 650, 1, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (14, 1430, 2, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (15, 2110, 3, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (16, 2740, 12, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (17, 5880, 15, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (18, 7990, 16, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (19, 10980, 17, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (20, 14010, 18, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (21, 18350, 19, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (22, 29140, 20, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (23, 40800, 21, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (24, 56970, 22, 1)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (25, 880, 1, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (26, 1940, 2, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (27, 3010, 3, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (28, 4520, 12, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (29, 9520, 15, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (30, 13900, 16, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (31, 20080, 17, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (32, 25840, 18, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (33, 33820, 19, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (34, 54620, 20, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (35, 79020, 21, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (36, 112020, 22, 2)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (37, 1560, 1, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (38, 3510, 2, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (39, 5490, 3, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (40, 8580, 12, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (41, 17940, 15, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (42, 26170, 16, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (43, 40000, 17, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (44, 57460, 18, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (45, 73230, 19, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (46, 118690, 20, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (47, 166660, 21, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (48, 273050, 22, 3)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (49, 2050, 1, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (50, 4420, 2, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (51, 7000, 3, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (52, 11860, 12, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (53, 21480, 15, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (54, 37170, 16, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (55, 60080, 17, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (56, 94580, 18, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (57, 138800, 19, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (58, 0, 20, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (59, 0, 21, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (60, 0, 22, 4)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (61, 3110, 1, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (62, 5930, 2, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (63, 10130, 3, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (64, 23510, 12, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (65, 37710, 15, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (66, 65470, 16, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (67, 94770, 17, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (68, 144950, 18, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (69, 0, 19, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (70, 0, 20, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (71, 0, 21, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (72, 0, 22, 5)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (73, 3200, 1, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (74, 6690, 2, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (75, 10670, 3, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (76, 31360, 12, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (77, 61530, 15, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (78, 108720, 16, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (79, 166970, 17, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (80, 0, 18, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (81, 0, 19, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (82, 0, 20, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (83, 0, 21, 6)
INSERT [dbo].[ComboBoxTorqueActuadores] ([id], [value], [id_inches], [id_ansi]) VALUES (84, 0, 22, 6)
SET IDENTITY_INSERT [dbo].[ComboBoxTorqueActuadores] OFF
SET IDENTITY_INSERT [dbo].[DiameterGVel] ON 

INSERT [dbo].[DiameterGVel] ([id], [id_proyect], [id_user], [date], [description_dgv], [enteree_dgv], [al_sel_dgv], [tipo_sel_dgv], [basetemperature_dgv], [bt_sel_dgv], [basepressure_dgv], [bp_sel_dgv], [flowingp_dgv], [fp_sel_dgv], [flowingt_dgv], [ft_sel_dgv], [pipeinternald_dgv], [pid_sel_dgv], [flowr_dgv], [fr_sel_dgv], [gs_sel_dgv], [gst_dgv], [gasv_dgv], [z_dgv]) VALUES (2, 10462, 15, CAST(N'2019-04-16T04:21:11.000' AS DateTime), N'werwer', N'10', N'2572,mt', N'1', N'60', N'3,F', N'14.65', N'5,psia', N'800', N'65,psig', N'90', N'3,F', N'13', N'121,in', N'50', N'71,MMSCFD', N'9,0.60', N'0.60', N'647.5278', N'0.9040')
SET IDENTITY_INSERT [dbo].[DiameterGVel] OFF
SET IDENTITY_INSERT [dbo].[ElectrolyteResistance] ON 

INSERT [dbo].[ElectrolyteResistance] ([id], [id_proyect], [id_user], [date], [description_ere], [electrolyter_ere], [distancec_ere], [geof_ere], [er_sel_ere], [dc_sel_ere], [resise_ere]) VALUES (2, 10462, 15, CAST(N'2019-11-17T10:43:58.000' AS DateTime), N'awdqw', N'12', N'12', N'1', N'233,cm', N'2576,mt', N'8.80')
SET IDENTITY_INSERT [dbo].[ElectrolyteResistance] OFF
SET IDENTITY_INSERT [dbo].[Especialidades] ON 

INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (1, N'Mecánica y tuberías')
INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (2, N'Procesos')
INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (3, N'Instrumentación y control')
INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (4, N'Civil')
INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (5, N'Eléctrica')
INSERT [dbo].[Especialidades] ([id], [nombre]) VALUES (6, N'Gestión de proyecto')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
SET IDENTITY_INSERT [dbo].[EspecialidadFase] ON 

INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (86, 1, 1, 10462, 15, N'70')
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (87, 2, 1, 10462, 15, N'30')
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (88, 4, 2, 10462, 15, N'100')
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (89, 1, 1, 10463, NULL, NULL)
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (90, 1, 1, 10466, 15, N'50')
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (91, 3, 1, 10466, 15, N'50')
INSERT [dbo].[EspecialidadFase] ([id], [id_fase], [id_especialidad], [id_proyect], [lider], [peso]) VALUES (92, 3, 2, 10466, 15, N'100')
SET IDENTITY_INSERT [dbo].[EspecialidadFase] OFF
SET IDENTITY_INSERT [dbo].[EspecialidadFaseActPro] ON 

INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10296, 1, 59, 1, 10462, N'50', 0, NULL, 15, CAST(N'2018-10-08T14:54:03.343' AS DateTime), 10, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10297, 1, 60, 1, 10462, N'50', 0, NULL, 15, CAST(N'2018-10-08T14:54:03.343' AS DateTime), 20, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10298, 2, 59, 1, 10462, N'100', 0, NULL, 15, CAST(N'2018-10-08T14:54:03.343' AS DateTime), 12, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10299, 4, 61, 2, 10462, N'70', 0, NULL, 15, CAST(N'2018-10-08T14:54:03.343' AS DateTime), 5, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10300, 4, 1062, 2, 10462, N'30', 0, NULL, 15, CAST(N'2018-10-08T14:54:03.343' AS DateTime), 15, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10301, 1, 59, 1, 10466, N'50', 0, NULL, 15, NULL, 10, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10302, 1, 60, 1, 10466, N'50', 0, NULL, 15, NULL, 10, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10303, 3, 59, 1, 10466, N'100', 0, NULL, 15, NULL, 10, NULL, NULL)
INSERT [dbo].[EspecialidadFaseActPro] ([id], [id_fase], [id_actividad], [id_especialidad], [id_proyect], [peso], [aprobado], [fileUpload], [id_user], [fecha_inicio], [tiempo], [fecha_final], [tiempoTotal]) VALUES (10304, 3, 61, 2, 10466, N'100', 0, NULL, 15, NULL, 15, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EspecialidadFaseActPro] OFF
SET IDENTITY_INSERT [dbo].[EspecialidadProyects] ON 

INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10448, 10462, 1, 14, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10449, 10462, 2, 14, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10450, 10463, 1, NULL, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10451, 10464, 1, NULL, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10452, 10465, 1, NULL, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10453, 10466, 1, 14, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (10454, 10466, 2, 14, NULL)
INSERT [dbo].[EspecialidadProyects] ([id], [id_proyect], [id_especialidad], [lider], [fileupload]) VALUES (20453, 20466, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EspecialidadProyects] OFF
SET IDENTITY_INSERT [dbo].[FanLaws] ON 

INSERT [dbo].[FanLaws] ([id], [id_proyect], [id_user], [date], [description_fl], [initialflowrate_fl], [initialcompressorhead_fl], [initialshafthorsepower_fl], [initialimpellerrotational_fl], [finalimpellerrotational_fl], [if_sel_fl], [finalflowrate_fl], [finalcompressorhead_fl], [finalshafthorsepower_fl]) VALUES (4, 10462, 15, CAST(N'2019-02-24T07:17:15.000' AS DateTime), N'qweqwe', N'12', N'12', N'12', N'12', N'12', N'71,MMSCFD', N'12.00', N'12.00', N'12.00')
INSERT [dbo].[FanLaws] ([id], [id_proyect], [id_user], [date], [description_fl], [initialflowrate_fl], [initialcompressorhead_fl], [initialshafthorsepower_fl], [initialimpellerrotational_fl], [finalimpellerrotational_fl], [if_sel_fl], [finalflowrate_fl], [finalcompressorhead_fl], [finalshafthorsepower_fl]) VALUES (5, 10462, 15, CAST(N'2019-11-16T04:30:34.000' AS DateTime), N'assad', N'12', N'1,212', N'2', N'222', N'2', N'71,MMSCFD', N'0.11', N'0.10', N'0.00')
INSERT [dbo].[FanLaws] ([id], [id_proyect], [id_user], [date], [description_fl], [initialflowrate_fl], [initialcompressorhead_fl], [initialshafthorsepower_fl], [initialimpellerrotational_fl], [finalimpellerrotational_fl], [if_sel_fl], [finalflowrate_fl], [finalcompressorhead_fl], [finalshafthorsepower_fl]) VALUES (6, 10462, 15, CAST(N'2019-11-16T04:47:02.000' AS DateTime), N'sdf', N'1', N'1', N'1', N'1', N'1', N'71,MMSCFD', N'1.00', N'1.00', N'1.00')
SET IDENTITY_INSERT [dbo].[FanLaws] OFF
SET IDENTITY_INSERT [dbo].[Fases] ON 

INSERT [dbo].[Fases] ([id], [nombre]) VALUES (1, N'Factibilidad')
INSERT [dbo].[Fases] ([id], [nombre]) VALUES (2, N'Diseño conceptual')
INSERT [dbo].[Fases] ([id], [nombre]) VALUES (3, N'Diseño básico')
INSERT [dbo].[Fases] ([id], [nombre]) VALUES (4, N'Diseño de detalle')
SET IDENTITY_INSERT [dbo].[Fases] OFF
SET IDENTITY_INSERT [dbo].[FunSlamShut] ON 

INSERT [dbo].[FunSlamShut] ([id], [tam], [x0], [x1], [x2], [x3], [x4], [x5], [x6]) VALUES (4, N'1', 14.7396336, 0.454247534, -0.00147414941, 3.88264E-06, -5.95250027E-09, 4.7082E-12, -1.5E-15)
INSERT [dbo].[FunSlamShut] ([id], [tam], [x0], [x1], [x2], [x3], [x4], [x5], [x6]) VALUES (5, N'2', 61.81686, 1.898117, -0.00620947266, 1.651672E-05, -2.54700367E-08, 2.01718E-11, -6.3E-15)
INSERT [dbo].[FunSlamShut] ([id], [tam], [x0], [x1], [x2], [x3], [x4], [x5], [x6]) VALUES (6, N'3', 139.8679, 4.38167572, -0.0134550594, 3.347057E-05, -4.86965E-08, 3.67935E-11, -1.11E-14)
INSERT [dbo].[FunSlamShut] ([id], [tam], [x0], [x1], [x2], [x3], [x4], [x5], [x6]) VALUES (7, N'4', 230.247864, 7.80151033, -0.0249785632, 6.436575E-05, -9.635182E-08, 7.44551E-11, -2.29E-14)
INSERT [dbo].[FunSlamShut] ([id], [tam], [x0], [x1], [x2], [x3], [x4], [x5], [x6]) VALUES (8, N'6', 438.231781, 14.1673231, -0.0449719653, 0.0001151849, -1.71641815E-07, 1.32207E-10, -4.05E-14)
SET IDENTITY_INSERT [dbo].[FunSlamShut] OFF
SET IDENTITY_INSERT [dbo].[HotTapSizing] ON 

INSERT [dbo].[HotTapSizing] ([id], [id_proyect], [id_user], [date], [description_htz], [calculatedoa_htz], [molecularws_htz], [criticalf_htz], [ee_sel_htz], [compressibilityf_htz], [bt_sel_htz], [nominalb_sel_htz], [selectgv_sel_htz], [condflujo_htz], [pressureb_htz], [pressure_htz], [enteree_htz], [preb_sel_htz], [holec_htz], [pre_sel_htz], [z1s_htz], [gsg_htz], [oc_sel_htz], [branchgv_htz], [specifich_htz], [flowrate_htz], [fr_sel_htz], [flowingt_htz], [baset_htz], [calculatedtd_htz], [orificec_htz], [pressurel_htz], [flowt_sel_htz], [opz_htz]) VALUES (1, 10462, 15, CAST(N'2019-11-15T09:55:03.000' AS DateTime), N'ad', N'0.00009396069669084352', N'29', N'0.528', N'2572,mt', N'0.5462888581363504', N'3,F', N'172,1.438', N'163,29,1.4,0.528,1', N'Subsonic Flow', N'14.65', N'1200', N'0', N'5,psia', N'1.438', N'5,psia', N'0', N'1', N'167,1', N'30.024108130160694', N'1.4', N'10', N'66,SCFH', N'90', N'60', N'0.01093775455373032', N'1', N'1', N'3,F', N'compfactors1_htz')
INSERT [dbo].[HotTapSizing] ([id], [id_proyect], [id_user], [date], [description_htz], [calculatedoa_htz], [molecularws_htz], [criticalf_htz], [ee_sel_htz], [compressibilityf_htz], [bt_sel_htz], [nominalb_sel_htz], [selectgv_sel_htz], [condflujo_htz], [pressureb_htz], [pressure_htz], [enteree_htz], [preb_sel_htz], [holec_htz], [pre_sel_htz], [z1s_htz], [gsg_htz], [oc_sel_htz], [branchgv_htz], [specifich_htz], [flowrate_htz], [fr_sel_htz], [flowingt_htz], [baset_htz], [calculatedtd_htz], [orificec_htz], [pressurel_htz], [flowt_sel_htz], [opz_htz]) VALUES (2, 10462, 15, CAST(N'2019-11-16T04:27:30.000' AS DateTime), N'dsfsdf', N'0.00009396069669084352', N'29', N'0.528', N'2572,mt', N'0.5462888581363504', N'3,F', N'172,1.438', N'163,29,1.4,0.528,1', N'Subsonic Flow', N'14.65', N'1200', N'0', N'5,psia', N'1.438', N'5,psia', N'0', N'1', N'167,1', N'30.024108130160694', N'1.4', N'10', N'66,SCFH', N'90', N'60', N'0.01093775455373032', N'1', N'1', N'3,F', N'compfactors1_htz')
SET IDENTITY_INSERT [dbo].[HotTapSizing] OFF
SET IDENTITY_INSERT [dbo].[InfoSlamShut] ON 

INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (1, 0.134358287, 0.471256673, N'Violeta', N'T14232T0012', 75, 162, 0.058, N'0.145')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (2, 0.6016043, 2, N'Rojo', N'T14234T0012', 75, 162, 0.145, N'0.725')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (3, 1, 3.5, N'Amarillo', N'T14235T0012', 75, 162, 0.203, N'0.87')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (4, 1.7, 5.6, N'Verde', N'T14236T0012', 75, 162, 0.261, N'2.18')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (5, 2, 11, N'Gris', N'T14238T0012', 75, 162, 0.725, N'5.08')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (6, 4, 19, N'Vinotinto', N'T14239T0012', 75, 162, 1.16, N'8.7')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (7, 7, 33, N'Negro', N'T14240T0012', 75, 162, 2.47, N'16')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (8, 15, 75, N'Azul', N'T14237T0012', 235, 71, 5.08, N'36.3')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (9, 31, 161, N'Vinotinto', N'T14239T0012', 235, 71, 10.2, N'79.8')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (10, 59, 235, N'Negro', N'T14240T0012', 235, 71, 23.2, N'145')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (11, 235, 323, N'Vinotinto', N'T14239T0012', 1470, 27, 43.5, N'Requiere 2 Mecanismos ')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (12, 323, 588, N'Negro', N'T14240T0012', 1470, 27, 94.3, N'Requiere 2 Mecanismos ')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (13, 588, 808, N'Vinotinto', N'T14239T0012', 1470, 17, 102, N'Requiere 2 Mecanismos ')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (14, 808, 1470, N'Negro', N'T14240T0012', 1470, 17, 174, N'Requiere 2 Mecanismos ')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (15, 81, 232, N'Vinotinto', N'T14239T0012', 514, 236, 14.5, N'145')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (16, 122, 514, N'Negro', N'T14240T0012', 514, 236, 36.3, N'290')
INSERT [dbo].[InfoSlamShut] ([id], [mini], [max], [color], [partenum], [maxpre], [mecanismo], [tolerancia], [maxdif]) VALUES (17, 257, 1058, N'Gris', N'T14238T0012', 1058, 315, 72.5, N'479')
SET IDENTITY_INSERT [dbo].[InfoSlamShut] OFF
SET IDENTITY_INSERT [dbo].[LogAction] ON 

INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1, N'Se ha actualizado la Actividad <b>Análisis de costos</b> en el proyecto <b>Test3</b>', 386, 15, 6, CAST(N'2017-03-23T10:58:14.090' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (2, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Test3</b>', 386, 15, 1, CAST(N'2017-03-23T11:03:50.563' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (3, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Test3</b>', 386, 15, 1, CAST(N'2017-03-23T11:04:51.907' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (4, N'Se ha actualizado la Actividad <b>Análisis de costos</b> en el proyecto <b>Test3</b>', 386, 15, 6, CAST(N'2017-03-23T11:05:12.810' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (5, N'Se cambio el estado de la actividad <b> Actividad Ejemplo 1 Mec y Tub </b> en el proyecto: <b> Test3 </b>', 386, 15, 1, CAST(N'2017-03-23T11:08:33.087' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (6, N'Se cambio el estado de la actividad <b> Análisis de costos </b> en el proyecto: <b> Test3 </b>', 386, 15, 6, CAST(N'2017-03-23T11:11:31.343' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (7, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Test1</b>', 384, 15, 1, CAST(N'2017-03-28T16:14:14.020' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (8, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Proyecto Prueba</b>', 383, 13, 1, CAST(N'2017-03-31T15:11:39.040' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (9, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Test</b>', 404, 13, 1, CAST(N'2017-04-03T09:18:59.830' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (10, N'Se cambio el estado de la actividad <b> Actividad Ejemplo 1 Mec y Tub </b> en el proyecto: <b> Test </b>', 404, 13, 1, CAST(N'2017-04-03T09:28:27.550' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (11, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 2 Mec y Tub</b> en el proyecto <b>Proyecto Prueba</b>', 383, 13, 1, CAST(N'2017-04-03T16:14:01.630' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1008, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 1 Mec y Tub</b> en el proyecto <b>Proyecto Prueba 01</b>', 10389, 13, 1, CAST(N'2017-04-03T18:49:55.497' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1009, N'Se cambio el estado de la actividad <b> Actividad Ejemplo 1 Mec y Tub </b> en el proyecto: <b> Proyecto Prueba 01 </b>', 10389, 13, 1, CAST(N'2017-04-04T15:45:09.753' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1010, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 2 Mec y Tub</b> en el proyecto <b>Proyecto Prueba 01</b>', 10389, 13, 1, CAST(N'2017-04-04T15:46:49.853' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1011, N'Se cambio el estado de la actividad <b> Actividad Ejemplo 2 Mec y Tub </b> en el proyecto: <b> Proyecto Prueba 01 </b>', 10389, 13, 1, CAST(N'2017-04-04T15:47:14.480' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1012, N'Se ha actualizado la Actividad <b>Actividad Ejemplo 2 Mec y Tub</b> en el proyecto <b>Proyecto Prueba 01</b>', 10389, 13, 1, CAST(N'2017-04-04T15:48:19.003' AS DateTime))
INSERT [dbo].[LogAction] ([idLog], [mensaje], [idpro], [id_liderE], [id_liderF], [fecha]) VALUES (1013, N'Se cambio el estado de la actividad <b> Actividad Ejemplo 2 Mec y Tub </b> en el proyecto: <b> Proyecto Prueba 01 </b>', 10389, 13, 1, CAST(N'2017-04-04T15:48:48.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[LogAction] OFF
SET IDENTITY_INSERT [dbo].[Maop] ON 

INSERT [dbo].[Maop] ([id], [id_proyect], [id_user], [date], [description_ma], [linepipe_ma], [nomps_sel_ma], [nomps_ma], [wallt_sel_ma], [wallt_ma], [td_sel_ma], [tempu_ma], [grade_sel_ma], [grade_ma], [df_sel_ma], [df_ma], [jf_sel_ma], [jf_ma], [maximund_ma], [longitudinale_ma], [mop_ma], [pipeo_sel_ma], [np_sel_ma], [md_sel_ma], [le_sel_ma], [maximuns_ma], [designp_ma], [intermediatef_ma]) VALUES (2, 10462, 15, CAST(N'2019-11-17T09:37:14.000' AS DateTime), N'adsas', N'api5l_ma', N'0.405', N'0.405', N'1/8,0.049', N'0.049', N'46,1', N'1', N'270,25000', N'25000', N'1288,0.72', N'0.72', N'145,1', N'1', N'0.015', N'1', N'1', N'2474,in', N'2474,in', N'121,in', N'121,in', N'3,324.4', N'4,355.56', N'6.34')
SET IDENTITY_INSERT [dbo].[Maop] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (1, N'Pipeline Facilities')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (2, N'Hydraulics')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (3, N'Stell Pipe Design & Stress Analysis')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (4, N'Steel Pipeline Crossings')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (5, N'External Corrosion direct assessment toolset')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (6, N'Pipeline Testing')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (7, N'Pipeline Corrosion')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (8, N'Cathodic Protection')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (9, N'Polyethylene Pipe Designg & Stress Analysis')
INSERT [dbo].[Modulos] ([id], [nombre]) VALUES (10, N'Selector')
SET IDENTITY_INSERT [dbo].[Modulos] OFF
SET IDENTITY_INSERT [dbo].[Ohm] ON 

INSERT [dbo].[Ohm] ([id], [id_proyect], [id_user], [date], [description_ohm], [potentiald_ohm], [potentiale_ohm], [geometryc_ohm], [geometrya_ohm], [averages_ohm], [pd_sel_ohm], [pe_sel_ohm], [as_sel_ohm], [corrosionc_ohm]) VALUES (2, 10462, 15, CAST(N'2019-11-17T10:54:52.000' AS DateTime), N'edqwe', N'23', N'4', N'6', N'3', N'3', N'231,v', N'231,v', N'233,cm', N'-19.00')
SET IDENTITY_INSERT [dbo].[Ohm] OFF
SET IDENTITY_INSERT [dbo].[Parametros] ON 

INSERT [dbo].[Parametros] ([id], [valor], [nombre]) VALUES (1, N'C:\Users\alberdejesus\Documents\NetBeansProjects\Promigas\Plataforma\FilesProjects', N'ruta')
INSERT [dbo].[Parametros] ([id], [valor], [nombre]) VALUES (2, N'C:\Users\alberdejesus\Documents\NetBeansProjects\Promigas\Plataforma\Datasheets', N'rutads')
SET IDENTITY_INSERT [dbo].[Parametros] OFF
SET IDENTITY_INSERT [dbo].[PipelineHydrostatic] ON 

INSERT [dbo].[PipelineHydrostatic] ([id], [id_proyect], [id_user], [date], [description_phy], [pipe_rad_phy], [nomps_sel_phy], [wallt_sel_phy], [pipeo_phy], [pipew_phy], [pipei_phy], [testp_phy], [testt_phy], [pipelinel_phy], [po_sel_phy], [pi_sel_phy], [tp_sel_phy], [tt_sel_phy], [pl_sel_phy], [waterc_phy], [volumec_phy], [volumect_phy], [thermalc_phy], [volumecr_phy], [pipelinef_phy], [volumer_phy], [incrementalv_phy], [compf_phy], [pressurec_phy], [enteree_phy], [h_sel_phy]) VALUES (2, 10462, 15, CAST(N'2019-11-16T08:29:30.000' AS DateTime), N'a', N'pipe1_phy', N'0.405', N'1/8,0.049', N'0.405', N'0.049', N'24', N'693', N'65', N'1000', N'2474,in', N'2474,in', N'65,psig', N'3,F', N'120,mil', N'1.00212160', N'1.000192', N'1.000091', N'-1.000000', N'-1.000091', N'124,084,224.0', N'-124,382,641.8', N'-248,466,865.8', N'3.03', N'28.3', N'0', N'2572,mt')
SET IDENTITY_INSERT [dbo].[PipelineHydrostatic] OFF
SET IDENTITY_INSERT [dbo].[PlatinaInfo] ON 

INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (1, N'150', N'1/2', N'0.5', N'3 1/2', N'3.5', N'1/2', N'0.5', N'2 3/8', N'2.375')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (2, N'150', N'3/4', N'0.75', N'3 7/8', N'3.875', N'1/2', N'0.5', N'2 3/4', N'2.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (3, N'150', N'1', N'1', N'4 1/4', N'4.25', N'1/2', N'0.5', N'3 1/8', N'3.125')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (4, N'150', N'1 1/4', N'1.25', N'4 5/8', N'4.6250', N'1/2', N'0.5', N'3 1/2', N'3.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (5, N'150', N'1 1/2', N'1.5', N'5', N'5', N'1/2', N'0.5', N'3 7/8', N'3.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (6, N'150', N'2', N'2', N'6', N'6', N'5/8', N'0.625', N'4 3/4', N'4.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (7, N'150', N'2 1/2', N'2.5', N'7', N'7', N'5/8', N'0.625', N'5 1/2', N'5.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (8, N'150', N'3', N'3', N'7 1/2', N'7.5', N'5/8', N'0.625', N'6', N'6')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (9, N'150', N'3 1/2', N'3.5', N'8 1/2', N'8.5', N'5/8', N'0.625', N'7', N'7')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (10, N'150', N'4', N'4', N'9', N'9', N'5/8', N'0.625', N'7 1/2', N'7.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (11, N'150', N'5', N'5', N'10', N'10', N'3/4', N'0.75', N'8 1/2', N'8.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (12, N'150', N'6', N'6', N'11', N'11', N'3/4', N'0.75', N'9 1/2', N'9.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (13, N'150', N'8', N'8', N'13 1/2', N'13.5', N'3/4', N'0.75', N'11 3/4', N'11.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (14, N'150', N'10', N'10', N'16', N'16', N'7/8', N'0.875', N'14 1/4', N'14.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (15, N'150', N'12', N'12', N'19', N'19', N'7/8', N'0.875', N'17', N'17')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (16, N'150', N'14', N'14', N'21', N'21', N'1', N'1', N'18 3/4', N'2.375')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (17, N'150', N'16', N'16', N'23 1/2', N'23.5', N'1', N'1', N'21 1/4', N'21.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (18, N'150', N'18', N'18', N'25', N'25', N'1 1/8', N'1.125', N'22 3/4', N'22.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (19, N'150', N'20', N'20', N'27 1/2', N'27.5', N'1 1/8', N'1.125', N'25', N'25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (20, N'150', N'24', N'24', N'32', N'32', N'1 1/8', N'1.125', N'29 1/2', N'29.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (21, N'300', N'1/2', N'0.5', N'3 3/4', N'3.75', N'1/2', N'0.5', N'2 5/8', N'2.625')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (22, N'300', N'3/4', N'0.75', N'4 5/8', N'4.625', N'5/8', N'0.625', N'3 1/4', N'3.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (23, N'300', N'1', N'1', N'4 7/8', N'4.875', N'5/8', N'0.625', N'3 1/2', N'3.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (24, N'300', N'1 1/4', N'1.25', N'5 1/4', N'5.25', N'5/8', N'0.625', N'3 7/8', N'3.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (25, N'300', N'1 1/2', N'1.5', N'6 1/8', N'6.125', N'3/4', N'0.75', N'4 1/2', N'4.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (26, N'300', N'2', N'2', N'6 1/2', N'6.5', N'5/8', N'0.625', N'5', N'5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (27, N'300', N'2 1/2', N'2.5', N'7 1/2', N'7.5', N'3/4', N'0.75', N'5 7/8', N'5.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (28, N'300', N'3', N'3', N'8 1/4', N'8.25', N'3/4', N'0.75', N'6 5/8', N'6.625')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (29, N'300', N'3 1/2', N'3.5', N'9', N'9', N'3/4', N'0.75', N'7 1/4', N'7.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (30, N'300', N'4', N'4', N'10', N'10', N'3/4', N'0.75', N'7 7/8', N'7.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (31, N'300', N'5', N'5', N'11', N'11', N'3/4', N'0.75', N'9 1/4', N'9.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (32, N'300', N'6', N'6', N'12 1/2', N'12.5', N'3/4', N'0.75', N'10 5/8', N'10.625')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (33, N'300', N'8', N'8', N'15', N'15', N'7/8', N'0.875', N'13', N'13')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (34, N'300', N'10', N'10', N'17 1/2', N'17.5', N'1', N'1', N'15 1/4', N'15.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (35, N'300', N'12', N'12', N'20 1/2', N'20.5', N'1 1/8', N'1.125', N'17 3/4', N'17.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (36, N'300', N'14', N'14', N'23', N'23', N'1 1/8', N'1.125', N'20 1/4', N'20.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (37, N'300', N'16', N'16', N'25 1/2', N'25.5', N'1 1/4', N'1.25', N'22 1/2', N'20.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (38, N'300', N'18', N'18', N'28', N'28', N'1 1/4', N'1.25', N'24 3/4', N'24.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (39, N'300', N'20', N'20', N'20 1/2', N'20.5', N'1 1/4', N'1.25', N'27', N'27')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (40, N'300', N'24', N'24', N'36', N'36', N'1 1/2', N'1.5', N'32', N'32')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (44, N'600', N'1/2', N'0.5', N'3 3/4', N'3.75', N'1/2', N'0.5', N'2 5/8', N'2.625')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (45, N'600', N'3/4', N'0.75', N'4 5/8', N'4.625', N'5/8', N'0.625', N'3 1/4', N'3.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (46, N'600', N'1', N'1', N'4 7/8', N'4.875', N'5/8', N'0.625', N'3 1/2', N'3.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (47, N'600', N'1 1/4', N'1.25', N'5 1/4', N'5.25', N'5/8', N'0.625', N'3 7/8', N'3.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (48, N'600', N'1 1/2', N'1.5', N'6 1/8', N'6.125', N'3/4', N'0.75', N'4 1/2', N'4.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (49, N'600', N'2', N'2', N'6 1/2', N'6.5', N'5/8', N'0.625', N'5', N'5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (50, N'600', N'2 1/2', N'2.5', N'7 1/2', N'7.5', N'3/4', N'0.75', N'5 7/8', N'5.875')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (51, N'600', N'3', N'3', N'8 1/4', N'8.25', N'3/4', N'0.75', N'6 5/8', N'6.625')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (52, N'600', N'3 1/2', N'3.5', N'9', N'9', N'7/8', N'0.875', N'7 1/4', N'7.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (53, N'600', N'4', N'4', N'10 3/4', N'10.75', N'7/8', N'0.875', N'8 1/2', N'8.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (54, N'600', N'5', N'5', N'13', N'13', N'1', N'1', N'10 1/2', N'10.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (55, N'600', N'6', N'6', N'14', N'14', N'1', N'1', N'11 1/2', N'11.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (56, N'600', N'8', N'8', N'16 1/2', N'16.5', N'1 1/8', N'1.125', N'13 3/4', N'13.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (57, N'600', N'10', N'10', N'20', N'20', N'1 1/4', N'1.25', N'17', N'17')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (58, N'600', N'12', N'12', N'22', N'22', N'1 1/4', N'1.25', N'19 1/4', N'19.25')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (59, N'600', N'14', N'14', N'23 3/4', N'23.75', N'1 3/8', N'1.375', N'20 3/4', N'20.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (60, N'600', N'16', N'16', N'27', N'27', N'1 1/2', N'1.5', N'23 3/4', N'23.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (61, N'600', N'18', N'18', N'29 1/4', N'29.25', N'1 5/8', N'1.625', N'25 3/4', N'25.75')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (62, N'600', N'20', N'20', N'32', N'32', N'1 5/8', N'1.625', N'28 1/2', N'28.5')
INSERT [dbo].[PlatinaInfo] ([id], [type], [nps], [nps_d], [diam_out], [diam_out_d], [diam_bolt], [diam_bolt_d], [diam_bolt_c], [diam_bolt_c_d]) VALUES (63, N'600', N'24', N'24', N'37', N'37', N'1 7/8', N'1.875', N'33', N'33')
SET IDENTITY_INSERT [dbo].[PlatinaInfo] OFF
SET IDENTITY_INSERT [dbo].[Proyects] ON 

INSERT [dbo].[Proyects] ([id], [name], [id_user], [id_proyecttemp]) VALUES (10057, N'Prueba 01', 1, 10462)
SET IDENTITY_INSERT [dbo].[Proyects] OFF
SET IDENTITY_INSERT [dbo].[ProyectsTemp] ON 

INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (10462, N'Prueba 01', 1, 1, 13, 6, NULL)
INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (10463, N'Prueba 02', 1, 0, NULL, 7, NULL)
INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (10464, N'Test', 1, 0, NULL, 1, NULL)
INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (10465, N'Karen TEst', 13, 0, NULL, 1, NULL)
INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (10466, N'xddxf', 1, 0, NULL, 6, NULL)
INSERT [dbo].[ProyectsTemp] ([id], [name], [id_user], [flag], [lider], [area], [date]) VALUES (20466, N'Test0101', 13, 0, NULL, 1, CAST(N'2019-08-29T22:48:25.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProyectsTemp] OFF
SET IDENTITY_INSERT [dbo].[RateElectrical] ON 

INSERT [dbo].[RateElectrical] ([id], [id_proyect], [id_user], [date], [description_re], [potentialc_re], [potentiala_re], [totalr_re], [pc_sel_re], [pa_sel_re], [tr_sel_re], [ratee_re]) VALUES (2, 10462, 15, CAST(N'2019-11-17T10:13:29.000' AS DateTime), N'asd', N'15', N'33', N'23', N'231,v', N'231,v', N'234,ohm', N'0.78')
SET IDENTITY_INSERT [dbo].[RateElectrical] OFF
SET IDENTITY_INSERT [dbo].[ReguladoresCV] ON 

INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (1, 1, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (2, 1, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (3, 1, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (4, 1, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (5, 1, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (6, 1, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (7, 1, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (8, 1, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (9, 1, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (10, 1, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (11, 1, 12, N'51.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (12, 1, 13, N'72.95')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (13, 1, 14, N'94.1')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (14, 1, 15, N'149')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (15, 1, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (16, 1, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (17, 1, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (18, 1, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (19, 1, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (20, 1, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (21, 2, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (22, 2, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (23, 2, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (24, 2, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (25, 2, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (26, 2, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (27, 2, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (28, 2, 9, N'17.2')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (29, 2, 10, N'20.1')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (30, 2, 11, N'34.9')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (31, 2, 12, N'65.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (32, 2, 13, N'96.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (33, 2, 14, N'135')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (34, 2, 15, N'212')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (35, 2, 16, N'394')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (36, 2, 17, N'567')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (37, 2, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (38, 2, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (39, 2, 20, N'20.1')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (40, 2, 21, N'34.9')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (41, 3, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (42, 3, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (43, 3, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (44, 3, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (45, 3, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (46, 3, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (47, 3, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (48, 3, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (49, 3, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (50, 3, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (51, 3, 12, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (52, 3, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (53, 3, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (54, 3, 15, N'107')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (55, 3, 16, N'320')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (56, 3, 17, N'617')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (57, 3, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (58, 3, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (59, 3, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (60, 3, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (61, 4, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (62, 4, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (63, 4, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (64, 4, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (65, 4, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (66, 4, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (67, 4, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (68, 4, 9, N'13.6')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (69, 4, 10, N'13.65')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (70, 4, 11, N'31.9')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (71, 4, 12, N'52.4')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (72, 4, 13, N'80.4')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (73, 4, 14, N'110.4')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (74, 4, 15, N'209')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (75, 4, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (76, 4, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (77, 4, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (78, 4, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (79, 4, 20, N'13.65')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (80, 4, 21, N'31.9')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (81, 5, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (82, 5, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (83, 5, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (84, 5, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (85, 5, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (86, 5, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (87, 5, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (88, 5, 9, N'15.7')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (89, 5, 10, N'22.75')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (90, 5, 11, N'29.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (91, 5, 12, N'47.4')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (92, 5, 13, N'77.2')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (93, 5, 14, N'107')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (94, 5, 15, N'188')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (95, 5, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (96, 5, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (97, 5, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (98, 5, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (99, 5, 20, N'22.75')
GO
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (100, 5, 21, N'29.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (101, 6, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (102, 6, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (103, 6, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (104, 6, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (105, 6, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (106, 6, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (107, 6, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (108, 6, 9, N'34.6')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (109, 6, 10, N'55.3')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (110, 6, 11, N'76')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (111, 6, 12, N'123')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (112, 6, 13, N'135.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (113, 6, 14, N'148')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (114, 6, 15, N'596')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (115, 6, 16, N'1100')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (116, 6, 17, N'1820')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (117, 6, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (118, 6, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (119, 6, 20, N'55.3')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (120, 6, 21, N'76')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (121, 7, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (122, 7, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (123, 7, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (124, 7, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (125, 7, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (126, 7, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (127, 7, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (128, 7, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (129, 7, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (130, 7, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (131, 7, 12, N'51.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (132, 7, 13, N'72.95')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (133, 7, 14, N'94.1')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (134, 7, 15, N'149')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (135, 7, 16, N'258')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (136, 7, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (137, 7, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (138, 7, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (139, 7, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (140, 7, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (141, 8, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (142, 8, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (143, 8, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (144, 8, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (145, 8, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (146, 8, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (147, 8, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (148, 8, 9, N'6.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (149, 8, 10, N'15')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (150, 8, 11, N'30.7')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (151, 8, 12, N'66.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (152, 8, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (153, 8, 14, N'135')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (154, 8, 15, N'231')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (155, 8, 16, N'325')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (156, 8, 17, N'560')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (157, 8, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (158, 8, 19, N'1135')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (159, 8, 20, N'15')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (160, 8, 21, N'30.7')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (161, 9, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (162, 9, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (163, 9, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (164, 9, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (165, 9, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (166, 9, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (167, 9, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (168, 9, 9, N'6')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (169, 9, 10, N'14.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (170, 9, 11, N'34.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (171, 9, 12, N'67.6')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (172, 9, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (173, 9, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (174, 9, 15, N'248')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (175, 9, 16, N'500')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (176, 9, 17, N'710')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (177, 9, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (178, 9, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (179, 9, 20, N'14.5')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (180, 9, 21, N'34.8')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (181, 10, 2, N'0.204894107')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (182, 10, 3, N'0.367034384')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (183, 10, 4, N'0.861988912')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (184, 10, 5, N'1.391078236')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (185, 10, 6, N'2.551661268')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (186, 10, 7, N'4.155996636')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (187, 10, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (188, 10, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (189, 10, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (190, 10, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (191, 10, 12, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (192, 10, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (193, 10, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (194, 10, 15, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (195, 10, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (196, 10, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (197, 10, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (198, 10, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (199, 10, 20, N'0')
GO
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (200, 10, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (201, 11, 2, N'0.204979444')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (202, 11, 3, N'0.367119721')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (203, 11, 4, N'0.793804659')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (204, 11, 5, N'1.459433163')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (205, 11, 6, N'2.918695652')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (206, 11, 7, N'4.514497322')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (207, 11, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (208, 11, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (209, 11, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (210, 11, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (211, 11, 12, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (212, 11, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (213, 11, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (214, 11, 15, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (215, 11, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (216, 11, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (217, 11, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (218, 11, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (219, 11, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (220, 11, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (221, 12, 2, N'0.196360409')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (222, 12, 3, N'0.358500685')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (223, 12, 4, N'0.870522611')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (224, 12, 5, N'1.416679332')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (225, 12, 6, N'2.893009219')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (226, 12, 7, N'4.275468419')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (227, 12, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (228, 12, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (229, 12, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (230, 12, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (231, 12, 12, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (232, 12, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (233, 12, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (234, 12, 15, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (235, 12, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (236, 12, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (237, 12, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (238, 12, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (239, 12, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (240, 12, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (241, 13, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (242, 13, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (243, 13, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (244, 13, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (245, 13, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (246, 13, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (247, 13, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (248, 13, 9, N'6')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (249, 13, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (250, 13, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (251, 13, 12, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (252, 13, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (253, 13, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (254, 13, 15, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (255, 13, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (256, 13, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (257, 13, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (258, 13, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (259, 13, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (260, 13, 21, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (261, 14, 2, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (262, 14, 3, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (263, 14, 4, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (264, 14, 5, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (265, 14, 6, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (266, 14, 7, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (267, 14, 8, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (268, 14, 9, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (269, 14, 10, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (270, 14, 11, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (271, 14, 12, N'11.935683')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (272, 14, 13, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (273, 14, 14, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (274, 14, 15, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (275, 14, 16, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (276, 14, 17, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (277, 14, 18, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (278, 14, 19, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (279, 14, 20, N'0')
INSERT [dbo].[ReguladoresCV] ([id], [id_modelo], [id_tamano], [cv]) VALUES (280, 14, 21, N'0')
SET IDENTITY_INSERT [dbo].[ReguladoresCV] OFF
SET IDENTITY_INSERT [dbo].[ReguladoresModelo] ON 

INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (1, N'EZR')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (2, N'ET')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (3, N'EWT')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (4, N'EZ')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (5, N'GX')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (6, N'VEE-BALL')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (7, N'EZROSX')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (8, N'Axial Flow (300)')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (9, N'Axial Flow (600)')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (10, N'627 (3/4" Body)')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (11, N'627 (1" Body)')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (12, N'627 (2" Body)')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (13, N'Fisher 99 (7/8")')
INSERT [dbo].[ReguladoresModelo] ([id], [modelo]) VALUES (14, N'Fisher 99 (1-1/8")')
SET IDENTITY_INSERT [dbo].[ReguladoresModelo] OFF
SET IDENTITY_INSERT [dbo].[ReguladoresTamano] ON 

INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (2, N'3/32', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (3, N'1/8', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (4, N'3/16', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (5, N'1/4', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (6, N'3/8', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (7, N'1/2', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (8, N'3/4', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (9, N'1', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (10, N'1 1/4', N'3')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (11, N'1 1/2', N'3')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (12, N'2', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (13, N'2 1/2', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (14, N'3', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (15, N'4', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (16, N'6', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (17, N'8', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (18, N'10', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (19, N'12', N'1')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (20, N'2R25', N'2')
INSERT [dbo].[ReguladoresTamano] ([id], [modelo], [opcion]) VALUES (21, N'2R50', N'2')
SET IDENTITY_INSERT [dbo].[ReguladoresTamano] OFF
SET IDENTITY_INSERT [dbo].[RegulatorStation] ON 

INSERT [dbo].[RegulatorStation] ([id], [id_proyect], [id_user], [date], [description_rs], [df_rs], [gs_rs], [p1_rs], [p2_rs], [flowrate_rs], [flowingg_rs], [c1_rs], [capacityr_rs], [df_sel_rs], [temp_sel_rs], [gs_sel_rs], [p1_sel_rs], [p2_sel_rs], [fr_sel_rs], [fg_sel_rs], [linepipe_rs], [grade_sel_rs], [jf_sel_rs], [p1opu_rs], [flowrateu_rs], [ag_rs], [tempu_rs], [smys_rs], [jfu_rs], [p1opu_sel_rs], [fru_sel_rs], [agu_sel_rs], [linepiped_rs], [graded_sel_rs], [jfd_sel_rs], [p2op_rs], [flowrated_rs], [agd_rs], [smysd_rs], [jfdp_rs], [p2op_sel_rs], [frd_sel_rs], [agud_sel_rs], [gassizingc_rs], [gassizingr_rs], [flowc_rs], [calculatedi_rs], [minimunr_rs], [calculatedo_rs], [calculatedid_rs], [minimunrd_rs], [calculatedod_rs], [ee_sel_rs], [k_rs], [enteree_rs]) VALUES (1, 10462, 15, CAST(N'2019-11-15T10:32:19.000' AS DateTime), N'asd', N'0.72', N'0.6', N'700', N'300', N'500', N'60', N'35', N'80', N'1288,0.72', N'46,1', N'62,0.6', N'65,psig', N'65,psig', N'67,MSCFH', N'3,F', N'api5l_rs', N'270,25000', N'145,1', N'700', N'500', N'50', N'1', N'25000', N'1', N'65,psig', N'67,MSCFH', N'162,ft/sec', N'api5ld_rs', N'270,25000', N'145,1', N'700', N'500', N'50', N'25000', N'1', N'65,psig', N'67,MSCFH', N'162,ft/sec', N'541.88', N'677.35', N'Sonic Flow', N'3.236', N'0.063', N'3.30', N'3.236', N'0.063', N'3.30', N'2572,mt', N'1.25', N'0')
INSERT [dbo].[RegulatorStation] ([id], [id_proyect], [id_user], [date], [description_rs], [df_rs], [gs_rs], [p1_rs], [p2_rs], [flowrate_rs], [flowingg_rs], [c1_rs], [capacityr_rs], [df_sel_rs], [temp_sel_rs], [gs_sel_rs], [p1_sel_rs], [p2_sel_rs], [fr_sel_rs], [fg_sel_rs], [linepipe_rs], [grade_sel_rs], [jf_sel_rs], [p1opu_rs], [flowrateu_rs], [ag_rs], [tempu_rs], [smys_rs], [jfu_rs], [p1opu_sel_rs], [fru_sel_rs], [agu_sel_rs], [linepiped_rs], [graded_sel_rs], [jfd_sel_rs], [p2op_rs], [flowrated_rs], [agd_rs], [smysd_rs], [jfdp_rs], [p2op_sel_rs], [frd_sel_rs], [agud_sel_rs], [gassizingc_rs], [gassizingr_rs], [flowc_rs], [calculatedi_rs], [minimunr_rs], [calculatedo_rs], [calculatedid_rs], [minimunrd_rs], [calculatedod_rs], [ee_sel_rs], [k_rs], [enteree_rs]) VALUES (3, 10462, 15, CAST(N'2019-11-16T04:10:27.000' AS DateTime), N'sdfadf', N'0.72', N'0.6', N'700', N'300', N'500', N'60', N'35', N'80', N'1288,0.72', N'46,1', N'62,0.6', N'65,psig', N'65,psig', N'67,MSCFH', N'3,F', N'api5l_rs', N'270,25000', N'145,1', N'700', N'500', N'50', N'1', N'25000', N'1', N'65,psig', N'67,MSCFH', N'162,ft/sec', N'api5ld_rs', N'270,25000', N'145,1', N'700', N'500', N'50', N'25000', N'1', N'65,psig', N'67,MSCFH', N'162,ft/sec', N'541.88', N'677.35', N'Sonic Flow', N'3.236', N'0.063', N'3.30', N'3.236', N'0.063', N'3.30', N'2572,mt', N'1.25', N'0')
SET IDENTITY_INSERT [dbo].[RegulatorStation] OFF
SET IDENTITY_INSERT [dbo].[ReinforcementWeld] ON 

INSERT [dbo].[ReinforcementWeld] ([id], [id_proyect], [id_user], [date], [description_rwb], [p1_rwb], [temp_rwb], [df_rwb], [h_rwb], [tar_rwb], [odh_rwb], [nwtb_rwb], [smys_rwb], [ljf_rwb], [bodh_rwb], [bnwtb_rwb], [smys2_rwb], [ljf1_rwb], [mrod_rwb], [rsmys_rwb], [eerr_rwb], [lmrr_rwb], [dmrr_rwb], [rwtoth_rwb], [etithw_rwb], [rwtotb_rwb], [etitb_rwb], [arrr_rwb], [a1rr_rwb], [lheight_rwb], [a2eaibo_rwb], [a2cea_rwb], [a3ra_rwb], [appa_rwb], [temp_sel_rwb], [df_sel_rwb], [p1_sel_rwb], [nominalps_sel_rwb], [grade_sel_rwb], [wthi_sel_rwb], [longitudinal_jf_rwb], [nominalps_sel_rwb1], [wthi_sel1_rwb], [grade_sel_rwb1], [longitudinal_jf1_rwb], [mrod_sel_rwb], [h_sel_rwb], [pipe1_rad_rwb], [pipe_rad_rwb]) VALUES (1, 10462, 15, CAST(N'2019-11-15T10:33:46.000' AS DateTime), N'asdasd', N'200', N'1', N'0.72', N'0', N'0.25', N'0.405', N'0.049', N'25000', N'1', N'0.405', N'0.049', N'25000', N'1', N'0.30396961185000004', N'25000', N'-0.031', N'-0.101', N'0.304', N'0.002', N'0.047', N'0.002', N'0.047', N'0.001', N'0.014', N'0.123', N'0.011', N'0.011', N'0.000', N'0.000', N'46,1', N'1288,0.72', N'5,psia', N'0.405', N'270,25000', N'1/8,0.049', N'145,1', N'0.405', N'1/8,0.049', N'270,25000', N'145,1', N'121,in', N'2572,mt', N'api5l_rwb', N'api5l_rwb')
SET IDENTITY_INSERT [dbo].[ReinforcementWeld] OFF
SET IDENTITY_INSERT [dbo].[ReliefValveReaction] ON 

INSERT [dbo].[ReliefValveReaction] ([id], [id_proyect], [id_user], [date], [description_rvr], [opsk_rvr], [molecularw_rvr], [specifich_rvr], [criticalf_rvr], [requiredf_rvr], [temperatureo_rvr], [staticp_rvr], [areao_rvr], [specifichs_rvr], [criticalfw_rvr], [specificg_rvr], [enteree_rvr], [pesomolecular_rvr], [specificgra_rvr], [ee_sel_rvr], [selectgv_sel_rvr], [tempo_sel_rvr], [sp_sel_rvr], [ao_sel_rvr], [rf_sel_rvr], [reactionf_rvr], [cfw_sel_rvr], [z_rvr], [selectk_rvr]) VALUES (5, 10462, 15, CAST(N'2019-11-15T10:15:22.000' AS DateTime), N'sd', N'selectk1_rvr', N'29', N'1.4', N'0.528', N'1000', N'90', N'250', N'0.196', N'1.4', N'0.528', N'0', N'0', N'29', N'0', N'2572,mt', N'163,29,1.4,0.528,1', N'3,F', N'65,psig', N'121,in', N'66,SCFH', N'71.26', N'66,SCFH', N'0.844', N'selectk1_rvr')
SET IDENTITY_INSERT [dbo].[ReliefValveReaction] OFF
SET IDENTITY_INSERT [dbo].[ReliefValveSizing] ON 

INSERT [dbo].[ReliefValveSizing] ([id], [id_proyect], [id_user], [date], [description_rvs], [specifich_rvs], [criticalf_rvs], [relief_rvs], [gasvaporf_rvs], [gasp_rvs], [requiredf_rvs], [requiredeff_rvs], [effectivec_rvs], [capacityc_rvs], [compressibilityf_rvs], [molecularws_rvs], [specificg_rvs], [selectgv_sel_rvs], [rv_sel_rvs], [gfv_sel_rvs], [bp_sel_rvs], [rf_sel_rvs], [cc_sel_rvs], [criticafr_rvs], [flowingc_rvs], [requirede_rvs], [requiredfo_rvs], [ccoefficient_rvs], [ee_sel_rvs], [z_rvs], [selectk_rvs], [sizingo_rvs], [enteree_rvs]) VALUES (1, 10462, 15, CAST(N'2019-11-15T10:27:34.000' AS DateTime), N'sdfsdf', N'1.4', N'0.528', N'500', N'60', N'0', N'0', N'2', N'0.975', N'1', N'0.97', N'29', N'0', N'163,29,1.4,0.528,1', N'65,psig', N'3,F', N'65,psig', N'67,MSCFH', N'167,1', N'0.528', N'Sonic Flow', N'0', N'1,120.520', N'356.06', N'2572,mt', N'0.970', N'selectk1_rvs', N'sizingo2_rvs', N'0')
INSERT [dbo].[ReliefValveSizing] ([id], [id_proyect], [id_user], [date], [description_rvs], [specifich_rvs], [criticalf_rvs], [relief_rvs], [gasvaporf_rvs], [gasp_rvs], [requiredf_rvs], [requiredeff_rvs], [effectivec_rvs], [capacityc_rvs], [compressibilityf_rvs], [molecularws_rvs], [specificg_rvs], [selectgv_sel_rvs], [rv_sel_rvs], [gfv_sel_rvs], [bp_sel_rvs], [rf_sel_rvs], [cc_sel_rvs], [criticafr_rvs], [flowingc_rvs], [requirede_rvs], [requiredfo_rvs], [ccoefficient_rvs], [ee_sel_rvs], [z_rvs], [selectk_rvs], [sizingo_rvs], [enteree_rvs]) VALUES (2, 10462, 15, CAST(N'2019-11-16T04:10:56.000' AS DateTime), N'sdfsd', N'1.4', N'0.528', N'500', N'60', N'0', N'1000', N'0', N'0.975', N'1', N'0.97', N'29', N'0', N'163,29,1.4,0.528,1', N'65,psig', N'3,F', N'65,psig', N'67,MSCFH', N'167,1', N'0.528', N'Sonic Flow', N'1.785', N'0', N'356.06', N'2572,mt', N'0.970', N'selectk1_rvs', N'sizingo1_rvs', N'0')
SET IDENTITY_INSERT [dbo].[ReliefValveSizing] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [nombre]) VALUES (1, N'adminsitio')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (2, N'lider especialidad')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (3, N'lider fase')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (4, N'adminpro (lider area)')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (5, N'lider proyecto')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (6, N'invitado')
INSERT [dbo].[Roles] ([id], [nombre]) VALUES (7, N'diseñador')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Roles2] ON 

INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (1, N'Administrador', N'Sin restriccion')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (2, N'Lider Area', N'Ve estadísticas de los proyectos que corresponden a su área')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (3, N'Lider Proyecto', N'Ve estadísticas de sus proyecto, crea proyectos, ver documentos, ve actividades, seguimiento')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (4, N'Lider Especialidad', N'No crea proyectos, Ve estadísticas de su especialidad, ve revisa documentos de su especiadidad')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (5, N'Ejecutor', N'Recibe la asignación de la tarea y Sube los documentos')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (6, N'Diseñador', N'Acceso solo a toolbox')
INSERT [dbo].[Roles2] ([id], [nombre], [descripcion]) VALUES (7, N'Invitado', N'Ver Documentos en la estructura definida de los proyectos que se le asignen')
SET IDENTITY_INSERT [dbo].[Roles2] OFF
SET IDENTITY_INSERT [dbo].[RolesUsuario] ON 

INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (127, 1, 1)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20067, 1, 30052)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20068, 2, 30053)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20069, 2, 30054)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20070, 2, 30056)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20083, 5, 15)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20084, 3, 13)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20085, 2, 12)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20086, 4, 14)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20087, 5, 30057)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20089, 3, 30059)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20090, 2, 30058)
INSERT [dbo].[RolesUsuario] ([id], [id_rol], [id_user]) VALUES (20091, 4, 30060)
SET IDENTITY_INSERT [dbo].[RolesUsuario] OFF
SET IDENTITY_INSERT [dbo].[RolesUsuPro] ON 

INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1176, 2, 10462, 14)
INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1177, 3, 10462, 15)
INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1178, 5, 10462, 13)
INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1179, 2, 10466, 14)
INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1180, 3, 10466, 15)
INSERT [dbo].[RolesUsuPro] ([id], [id_rol], [id_proyecto], [id_user]) VALUES (1181, 5, 10466, 13)
SET IDENTITY_INSERT [dbo].[RolesUsuPro] OFF
SET IDENTITY_INSERT [dbo].[Temperature] ON 

INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (1, N'35', N'0.9990777')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (2, N'36', N'0.9990590')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (3, N'37', N'0.9990458')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (4, N'38', N'0.9990375')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (5, N'39', N'0.9990340')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (6, N'40', N'0.9990357')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (7, N'41', N'0.9990421')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (8, N'42', N'0.9990536')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (9, N'43', N'0.9990694')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (10, N'44', N'0.9990903')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (11, N'45', N'0.9991150')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (12, N'46', N'0.9991451')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (13, N'47', N'0.9991791')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (14, N'48', N'0.9992168')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (15, N'49', N'0.9992599')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (16, N'50', N'0.9993061')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (17, N'51', N'0.9993615')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (18, N'52', N'0.9994112')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (19, N'53', N'0.9994715')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (20, N'54', N'0.9995322')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (21, N'55', N'0.9996046')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (22, N'56', N'0.9996683')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (23, N'57', N'0.9997488')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (24, N'58', N'0.9998191')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (25, N'59', N'0.9999074')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (26, N'60', N'1.0000000')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (27, N'61', N'1.0000803')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (28, N'62', N'1.0001805')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (29, N'63', N'1.0002671')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (30, N'64', N'1.0003746')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (31, N'65', N'1.0004674')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (32, N'66', N'1.0005823')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (33, N'67', N'1.0006811')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (34, N'68', N'1.0008301')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (35, N'69', N'1.0009290')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (36, N'70', N'1.0010364')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (37, N'71', N'1.0011696')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (38, N'72', N'1.0012832')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (39, N'73', N'1.0014229')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (40, N'74', N'1.0015420')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (41, N'75', N'1.0016883')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (42, N'76', N'1.0018130')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (43, N'77', N'1.0019657')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (44, N'78', N'1.0021222')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (45, N'79', N'1.0022552')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (46, N'80', N'1.0024178')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (47, N'81', N'1.0025561')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (48, N'82', N'1.0027251')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (49, N'83', N'1.0028684')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (50, N'84', N'1.0030435')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (51, N'85', N'1.0031919')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (52, N'86', N'1.0033730')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (53, N'87', N'1.0035573')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (54, N'88', N'1.0037133')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (55, N'89', N'1.0039034')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (56, N'90', N'1.0040642')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (57, N'91', N'1.0042601')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (58, N'92', N'1.0044357')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (59, N'93', N'1.0046271')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (60, N'94', N'1.0047972')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (61, N'95', N'1.0050043')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (62, N'96', N'1.0052142')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (63, N'97', N'1.0053915')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (64, N'98', N'1.0056067')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (65, N'99', N'1.0057884')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (66, N'100', N'1.0060090')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (67, N'101', N'1.0061949')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (68, N'102', N'1.0064207')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (69, N'103', N'1.0066108')
INSERT [dbo].[Temperature] ([id], [temp], [fwt]) VALUES (70, N'104', N'1.0068417')
SET IDENTITY_INSERT [dbo].[Temperature] OFF
SET IDENTITY_INSERT [dbo].[TorquePorActuadores] ON 

INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1, 4248, 7388, 1, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (39, 5310, 9235, 2, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (40, 6372, 11082, 3, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (41, 7434, 12929, 4, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (42, 8496, 14776, 5, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (43, 9558, 16623, 6, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (44, 10620, 18470, 7, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (45, 0, 0, 8, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (46, 0, 0, 9, 126)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (47, 5575, 9697, 1, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (48, 6969, 12121, 2, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (49, 8363, 14545, 3, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (50, 9757, 16969, 4, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (51, 11151, 19393, 5, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (52, 0, 0, 6, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (53, 0, 0, 7, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (54, 0, 0, 8, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (55, 0, 0, 9, 127)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (56, 7080, 12313, 1, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (57, 8850, 15391, 2, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (58, 10620, 18470, 3, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (59, 0, 0, 4, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (60, 0, 0, 5, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (61, 0, 0, 6, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (62, 0, 0, 7, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (63, 0, 0, 8, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (64, 0, 0, 9, 128)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (65, 9355, 16270, 1, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (66, 11694, 20337, 2, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (67, 0, 0, 3, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (68, 0, 0, 4, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (69, 0, 0, 5, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (70, 0, 0, 6, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (71, 0, 0, 7, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (72, 0, 0, 8, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (73, 0, 0, 9, 129)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (74, 1808, 4589, 1, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (75, 2782, 6436, 2, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (76, 3747, 8283, 3, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (77, 4712, 10130, 4, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (78, 5677, 11977, 5, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (79, 6641, 13824, 6, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (80, 7599, 15671, 7, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (81, 8557, 17518, 8, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (82, 9515, 19365, 9, 130)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (83, 0, 0, 1, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (84, 1704, 5225, 2, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (85, 2709, 7095, 3, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (86, 3692, 8965, 4, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (87, 4657, 10835, 5, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (88, 5622, 12705, 6, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (89, 6587, 14575, 7, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (90, 7552, 16445, 8, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (91, 8517, 18315, 9, 131)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (92, 0, 0, 1, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (93, 0, 0, 2, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (94, 0, 0, 3, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (95, 2565, 8033, 4, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (96, 3591, 9903, 5, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (97, 4578, 11773, 6, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (98, 5564, 13643, 7, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (99, 6529, 15513, 8, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (100, 7494, 17383, 9, 132)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (101, 0, 0, 1, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (102, 0, 0, 2, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (103, 0, 0, 3, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (104, 0, 0, 4, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (105, 0, 0, 5, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (106, 3499, 10637, 6, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (107, 4513, 12530, 7, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (108, 5500, 14423, 8, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (109, 6488, 16316, 9, 133)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (110, 2406, 6029, 1, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (111, 3700, 8453, 2, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (112, 4982, 10877, 3, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (113, 6263, 13301, 4, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (114, 7545, 15725, 5, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (115, 8826, 18149, 6, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (116, 10099, 20573, 7, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (117, 0, 0, 8, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (118, 0, 0, 9, 134)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (119, 0, 0, 1, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (120, 2216, 7299, 2, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (121, 3587, 9783, 3, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (122, 4898, 12268, 4, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (123, 6189, 14753, 5, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (124, 7471, 17237, 6, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (125, 8753, 19722, 7, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (126, 10035, 22207, 8, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (127, 0, 0, 9, 135)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (128, 0, 0, 1, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (129, 0, 0, 2, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (130, 0, 0, 3, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (131, 3400, 10786, 4, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (132, 4772, 13271, 5, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (133, 6083, 15756, 6, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (134, 7394, 18241, 7, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (135, 8679, 20725, 8, 136)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (136, 0, 0, 9, 136)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (137, 0, 0, 1, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (138, 0, 0, 2, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (139, 0, 0, 3, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (140, 0, 0, 4, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (141, 0, 0, 5, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (142, 4560, 14385, 6, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (143, 5935, 16870, 7, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (144, 7258, 19354, 8, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (145, 8569, 21839, 9, 137)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (146, 1600, 2727, 1, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (147, 2000, 3409, 2, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (148, 2400, 4091, 3, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (149, 2800, 4773, 4, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (150, 3200, 5455, 5, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (151, 3600, 6137, 6, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (152, 4000, 6819, 7, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (153, 4400, 7500.5, 8, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (154, 4800, 8182, 9, 138)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (155, 3255, 5771, 1, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (156, 4069, 7214, 2, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (157, 4883, 8656, 3, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (158, 5697, 10099, 4, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (159, 6511, 11542, 5, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (160, 7325, 12985, 6, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (161, 8138, 14427, 7, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (162, 8952, 15870, 8, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (163, 9766, 17313, 9, 139)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (164, 6666, 11817, 1, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (165, 8333, 14722, 2, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (166, 9999, 17726, 3, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (167, 11666, 20681, 4, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (168, 0, 0, 5, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (169, 0, 0, 6, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (170, 0, 0, 7, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (171, 0, 0, 8, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (172, 0, 0, 9, 140)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (173, 4373, 8176, 1, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (174, 5467, 10221, 2, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (175, 6560, 12265, 3, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (176, 7654, 14309, 4, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (177, 8747, 16353, 5, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (178, 9840, 18397, 6, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (179, 10934, 20441, 7, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (180, 12027, 22485, 8, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (181, 13120, 24529, 9, 141)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (182, 9187, 16777, 1, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (183, 11484, 20971, 2, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (184, 13781, 25166, 3, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (185, 16078, 29360, 4, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (186, 18375, 33554, 5, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (187, 20672, 37748, 6, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (188, 22969, 41943, 7, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (189, 25265.5, 46137, 8, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (190, 27562, 50331, 9, 142)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (191, 770, 1677, 1, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (192, 1176, 2359, 2, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (193, 1579, 3041, 3, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (194, 1981, 3723, 4, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (195, 2382, 4405, 5, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (196, 2783, 5087, 6, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (197, 3183, 5769, 7, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (198, 3583.5, 6450.5, 8, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (199, 3984, 7132, 9, 143)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (200, 0, 0, 1, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (201, 735, 1827, 2, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (202, 1152, 2509, 3, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (203, 1558, 3191, 4, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (204, 1962, 3872, 5, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (205, 2365, 4554, 6, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (206, 2767, 5236, 7, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (207, 3168, 5918, 8, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (208, 3569, 6600, 9, 144)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (209, 0, 0, 1, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (210, 0, 0, 2, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (211, 0, 0, 3, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (212, 1174, 2722, 4, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (213, 1585, 3404, 5, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (214, 1992, 4086, 6, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (215, 2396, 4767, 7, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (216, 2798.5, 5449, 8, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (217, 3201, 6131, 9, 145)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (218, 0, 0, 1, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (219, 0, 0, 2, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (220, 0, 0, 3, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (221, 0, 0, 4, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (222, 0, 0, 5, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (223, 1575, 3587, 6, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (224, 1986, 4269, 7, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (225, 2392, 4950.5, 8, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (226, 2798, 5632, 9, 146)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (227, 1685, 3751, 1, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (228, 2527, 5231, 2, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (229, 3364, 6710, 3, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (230, 4200, 8190, 4, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (231, 5034, 9670, 5, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (232, 5868, 11149, 6, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (233, 6701, 12629, 7, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (234, 7534, 14109, 8, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (235, 8367, 15589, 9, 147)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (236, 0, 0, 1, 148)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (237, 3922, 3922, 2, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (238, 5439, 5439, 3, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (239, 6956, 6956, 4, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (240, 8472, 8472, 5, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (241, 9989, 9989, 6, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (242, 11506, 11506, 7, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (243, 13022.5, 13022.5, 8, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (244, 14539, 14539, 9, 148)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (245, 0, 0, 1, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (246, 0, 0, 2, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (247, 0, 0, 3, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (248, 2211, 5697, 4, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (249, 3096, 7214, 5, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (250, 3964, 8730, 6, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (251, 4826, 10247, 7, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (252, 5683, 11764, 8, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (253, 6540, 13281, 9, 149)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (254, 0, 0, 1, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (255, 0, 0, 2, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (256, 0, 0, 3, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (257, 0, 0, 4, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (258, 0, 0, 5, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (259, 2974, 7480, 6, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (260, 3856, 8997, 7, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (261, 4697.5, 10513.5, 8, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (262, 5539, 12030, 9, 150)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (263, 3010, 7934, 1, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (264, 4823, 11040, 2, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (265, 6594, 14146, 3, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (266, 8352, 17252, 4, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (267, 10105, 20357, 5, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (268, 0, 0, 6, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (269, 0, 0, 7, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (270, 0, 0, 8, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (271, 0, 0, 9, 151)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (272, 0, 0, 1, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (273, 0, 0, 2, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (274, 4297, 11669, 3, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (275, 6137, 14775, 4, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (276, 7926, 17881, 5, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (277, 9697, 20987, 6, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (278, 0, 0, 7, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (279, 0, 0, 8, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (280, 0, 0, 9, 152)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (281, 0, 0, 1, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (282, 0, 0, 2, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (283, 0, 0, 3, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (284, 0, 0, 4, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (285, 6024, 15864, 5, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (286, 7855, 18970, 6, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (287, 0, 0, 7, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (288, 0, 0, 8, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (289, 0, 0, 9, 153)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (290, 0, 0, 1, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (291, 0, 0, 2, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (292, 0, 0, 3, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (293, 0, 0, 4, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (294, 0, 0, 5, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (295, 4952, 16477, 6, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (296, 7281, 19583, 7, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (297, 0, 0, 8, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (298, 0, 0, 9, 154)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (299, 4035, 10527, 1, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (300, 6419, 14622, 2, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (301, 8752, 18716, 3, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (302, 11069, 22810, 4, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (303, 13379, 2605, 5, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (304, 15685, 30999, 6, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (305, 17989, 35094, 7, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (306, 20291, 39188, 8, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (307, 22593, 43282, 9, 155)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (308, 0, 0, 1, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (309, 0, 0, 2, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (310, 6033, 15771, 3, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (311, 8433, 19866, 4, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (312, 10782, 23960, 5, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (313, 13111, 28055, 6, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (314, 15431, 32149, 7, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (315, 17742, 36243.5, 8, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (316, 20053, 40338, 9, 156)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (317, 0, 0, 1, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (318, 0, 0, 2, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (319, 0, 0, 3, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (320, 5279, 17322, 4, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (321, 8069, 21517, 5, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (322, 10470, 25711, 6, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (323, 12827, 29905, 7, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (324, 15159, 34099.5, 8, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (325, 17491, 38294, 9, 157)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (326, 0, 0, 1, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (327, 0, 0, 2, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (328, 0, 0, 3, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (329, 0, 0, 4, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (330, 0, 0, 5, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (331, 7426, 22138, 6, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (332, 10039, 26232, 7, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (333, 12432, 30326.5, 8, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (334, 14825, 34421, 9, 158)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (335, 7413, 14046, 1, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (336, 9266, 17557, 2, 159)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (337, 11120, 21069, 3, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (338, 12973, 24580, 4, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (339, 14826, 28092, 5, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (340, 16679.5, 31603.5, 6, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (341, 18533, 35115, 7, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (342, 0, 0, 8, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (343, 0, 0, 9, 159)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (344, 0, 0, 1, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (345, 11217, 21254, 2, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (346, 13461, 25504, 3, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (347, 15704, 29755, 4, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (348, 17948, 34006, 5, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (349, 20191, 38256.5, 6, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (350, 22434, 42507, 7, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (351, 24677.5, 46758, 8, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (352, 26921, 51009, 9, 160)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (353, 0, 0, 1, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (354, 0, 0, 2, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (355, 0, 0, 3, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (356, 18941, 35888, 4, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (357, 21647, 41015, 5, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (358, 24353, 46142, 6, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (359, 27059, 51269, 7, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (360, 29764.5, 56396, 8, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (361, 32470, 61523, 9, 161)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (362, 48089, 91116, 1, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (363, 60111, 113895, 2, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (364, 721134, 136674, 3, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (365, 84156, 159453, 4, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (366, 96178, 182232, 5, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (367, 0, 0, 6, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (368, 0, 0, 7, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (369, 0, 0, 8, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (370, 0, 0, 9, 162)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (371, 0, 0, 1, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (372, 0, 0, 2, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (373, 92641, 175531, 3, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (374, 108082, 204786, 4, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (375, 123522, 234042, 5, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (376, 138962, 263297, 6, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (377, 154402, 292552, 7, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (378, 169842.5, 321807.5, 8, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (379, 185283, 351063, 9, 163)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (380, 0, 0, 1, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (381, 0, 0, 2, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (382, 0, 0, 3, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (383, 0, 0, 4, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (384, 0, 0, 5, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (385, 0, 0, 6, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (386, 188266, 356715, 7, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (387, 207093, 392386.5, 8, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (388, 225920, 428058, 9, 164)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (389, 378750, 717631, 1, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (390, 473437, 897039, 2, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (391, 568124, 1076446, 3, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (392, 662812, 1255854, 4, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (393, 757499, 1435262, 5, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (394, 0, 0, 6, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (395, 0, 0, 7, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (396, 0, 0, 8, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (397, 0, 0, 9, 165)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (398, 0, 0, 1, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (399, 104, 4908, 2, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (400, 3787, 8420, 3, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (401, 5653, 11931, 4, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (402, 7520, 15443, 5, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (403, 9374.5, 18954.5, 6, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (404, 11229, 22466, 7, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (405, 13082, 25977.5, 8, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (406, 14935, 29489, 9, 166)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (407, 0, 0, 1, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (408, 0, 0, 2, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (409, 0, 0, 3, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (410, 0, 0, 4, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (411, 5150, 12575, 5, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (412, 7417.5, 16826, 6, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (413, 9685, 21077, 7, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (414, 11944, 25327.5, 8, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (415, 14203, 29578, 9, 167)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (416, 0, 0, 1, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (417, 0, 0, 2, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (418, 0, 0, 3, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (419, 8038, 20012, 4, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (420, 11996, 27381, 5, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (421, 15913, 34750.5, 6, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (422, 19830, 42120, 7, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (423, 23746.5, 49489, 8, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (424, 27663, 56858, 9, 168)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (425, 0, 0, 1, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (426, 17958, 48952, 2, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (427, 30364, 91731, 3, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (428, 42472, 94510, 4, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (429, 54578, 117290, 5, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (430, 0, 0, 6, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (431, 0, 0, 7, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (432, 0, 0, 8, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (433, 0, 0, 9, 169)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (434, 0, 0, 1, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (435, 0, 0, 2, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (436, 0, 0, 3, 170)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (437, 0, 0, 4, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (438, 48728, 126422, 5, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (439, 64504.5, 155677.5, 6, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (440, 80281, 184933, 7, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (441, 95829, 214188, 8, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (442, 111377, 243443, 9, 170)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (443, 0, 0, 1, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (444, 0, 0, 2, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (445, 90574, 234045, 3, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (446, 130661, 307946, 4, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (447, 169938, 381848, 5, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (448, 209214.5, 455749, 6, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (449, 248491, 529650, 7, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (450, 287767.5, 603551.5, 8, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (451, 327044, 677453, 9, 171)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (452, 121302, 317601, 1, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (453, 217904, 4970009, 2, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (454, 313254, 676416, 3, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (455, 408605, 855824, 4, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (456, 503955, 1035232, 5, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (457, 0, 0, 6, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (458, 0, 0, 7, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (459, 0, 0, 8, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (460, 0, 0, 9, 172)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (461, 0, 0, 1, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (462, 0, 0, 2, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (463, 1230, 2460, 3, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (464, 1435, 2870, 4, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (465, 1640, 3280, 5, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (466, 1845, 3690, 6, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (467, 2050, 4100, 7, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (468, 2255, 4510, 8, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (469, 2460, 4920, 9, 173)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (470, 0, 0, 1, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (471, 0, 0, 2, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (472, 4140, 8280, 3, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (473, 4820, 9640, 4, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (474, 5500, 11000, 5, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (475, 6200, 12400, 6, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (476, 6900, 13800, 7, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (477, 7600, 15200, 8, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (478, 8300, 16600, 9, 174)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (479, 0, 0, 1, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (480, 0, 0, 2, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (481, 12200, 24400, 3, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (482, 14225, 28450, 4, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (483, 16250, 32500, 5, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (484, 18275, 36550, 6, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (485, 20300, 40600, 7, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (486, 22325, 44650, 8, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (487, 24350, 48700, 9, 175)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (488, 0, 0, 1, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (489, 0, 0, 2, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (490, 13200, 26400, 3, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (491, 15400, 30800, 4, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (492, 17600, 35200, 5, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (493, 19800, 39600, 6, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (494, 22000, 44000, 7, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (495, 24200, 48400, 8, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (496, 26400, 52800, 9, 176)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (497, 0, 0, 1, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (498, 0, 0, 2, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (499, 25850, 51700, 3, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (500, 30175, 60350, 4, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (501, 34500, 69000, 5, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (502, 38800, 77600, 6, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (503, 43100, 86200, 7, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (504, 47410, 94820, 8, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (505, 51720, 103440, 9, 177)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (506, 0, 0, 1, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (507, 0, 0, 2, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (508, 40650, 81300, 3, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (509, 47325, 94650, 4, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (510, 54000, 108000, 5, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (511, 60750, 121500, 6, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (512, 67500, 135000, 7, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (513, 74500, 149000, 8, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (514, 81500, 163000, 9, 178)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (515, 0, 0, 1, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (516, 0, 0, 2, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (517, 79500, 159000, 3, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (518, 92750, 185500, 4, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (519, 106000, 212000, 5, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (520, 119250, 238500, 6, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (521, 132500, 265000, 7, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (522, 145750, 291500, 8, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (523, 159000, 318000, 9, 179)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (524, 0, 0, 1, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (525, 0, 0, 2, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (526, 131000, 262000, 3, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (527, 152750, 305500, 4, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (528, 174500, 349000, 5, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (529, 196250, 392500, 6, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (530, 218000, 436000, 7, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (531, 239750, 479500, 8, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (532, 261500, 523000, 9, 180)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (533, 0, 0, 1, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (534, 0, 0, 2, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (535, 167000, 334000, 3, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (536, 194750, 389500, 4, 181)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (537, 222500, 445000, 5, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (538, 250250, 500500, 6, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (539, 278000, 556000, 7, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (540, 305750, 611500, 8, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (541, 333500, 667000, 9, 181)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (542, 520, 1040, 1, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (543, 710, 1420, 2, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (544, 900, 1800, 3, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (545, 1030, 2060, 4, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (546, 1160, 2320, 5, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (547, 0, 0, 6, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (548, 0, 0, 7, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (549, 0, 0, 8, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (550, 0, 0, 9, 182)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (551, 0, 0, 1, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (552, 0, 0, 2, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (553, 1525, 3050, 3, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (554, 1785, 3570, 4, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (555, 2045, 4090, 5, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (556, 2345, 4690, 6, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (557, 2645, 5290, 7, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (558, 0, 0, 8, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (559, 0, 0, 9, 183)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (560, 0, 0, 1, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (561, 0, 0, 2, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (562, 8300, 16600, 3, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (563, 9950, 19900, 4, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (564, 11600, 23200, 5, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (565, 12725, 25450, 6, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (566, 13850, 27700, 7, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (567, 15275, 30550, 8, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (568, 16700, 33400, 9, 184)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (569, 0, 0, 1, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (570, 0, 0, 2, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (571, 10450, 20900, 3, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (572, 12375, 24750, 4, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (573, 14300, 28600, 5, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (574, 16050, 32100, 6, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (575, 17800, 35600, 7, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (576, 19580, 39160, 8, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (577, 21360, 42720, 9, 185)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (578, 0, 0, 1, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (579, 0, 0, 2, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (580, 17450, 34900, 3, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (581, 19675, 39350, 4, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (582, 21900, 43800, 5, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (583, 24750, 49500, 6, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (584, 27600, 55200, 7, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (585, 30360, 60720, 8, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (586, 33120, 66240, 9, 186)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (587, 0, 0, 1, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (588, 0, 0, 2, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (589, 21700, 43400, 3, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (590, 25075, 50150, 4, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (591, 28450, 56900, 5, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (592, 33900, 67800, 6, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (593, 39350, 78700, 7, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (594, 43285, 86570, 8, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (595, 47220, 94440, 9, 187)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (596, 0, 0, 1, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (597, 0, 0, 2, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (598, 61500, 123000, 3, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (599, 75500, 151000, 4, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (600, 89500, 179000, 5, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (601, 98250, 196500, 6, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (602, 107000, 214000, 7, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (603, 117700, 235400, 8, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (604, 128400, 256800, 9, 188)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (605, 0, 0, 1, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (606, 0, 0, 2, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (607, 0, 0, 3, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (608, 2620, 4710, 4, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (609, 2990, 5380, 5, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (610, 3373, 6070, 6, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (611, 3748, 6740, 7, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (612, 4214, 7570, 8, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (613, 4680, 8400, 9, 189)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (614, 0, 0, 1, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (615, 0, 0, 2, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (616, 0, 0, 3, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (617, 3794, 6820, 4, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (618, 4330, 7794, 5, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (619, 4870, 8760, 6, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (620, 5420, 9750, 7, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (621, 6095, 10965, 8, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (622, 6770, 12180, 9, 190)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (623, 0, 0, 1, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (624, 0, 0, 2, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (625, 0, 0, 3, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (626, 5120, 9210, 4, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (627, 5860, 10540, 5, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (628, 6950, 11860, 6, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (629, 7327, 13180, 7, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (630, 8163.5, 14790, 8, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (631, 9000, 16400, 9, 191)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (632, 0, 0, 1, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (633, 0, 0, 2, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (634, 0, 0, 3, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (635, 6685, 12030, 4, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (636, 7640, 13750, 5, 192)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (637, 8590, 15460, 6, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (638, 9550, 17190, 7, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (639, 11725, 19330, 8, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (640, 13900, 21470, 9, 192)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (641, 0, 0, 1, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (642, 0, 0, 2, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (643, 0, 0, 3, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (644, 10500, 18800, 4, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (645, 11900, 21500, 5, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (646, 13400, 24200, 6, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (647, 14900, 26900, 7, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (648, 0, 0, 8, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (649, 0, 0, 9, 193)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (650, 0, 0, 1, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (651, 0, 0, 2, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (652, 0, 0, 3, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (653, 15042, 27076, 4, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (654, 0, 0, 5, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (655, 0, 0, 6, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (656, 0, 0, 7, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (657, 0, 0, 8, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (658, 0, 0, 9, 194)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (659, 0, 0, 1, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (660, 0, 0, 2, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (661, 0, 0, 3, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (662, 9540, 17170, 4, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (663, 10910, 19630, 5, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (664, 12270, 22080, 6, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (665, 13640, 24550, 7, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (666, 15345, 27575, 8, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (667, 17050, 30600, 9, 195)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (668, 0, 0, 1, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (669, 0, 0, 2, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (670, 0, 0, 3, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (671, 14860, 26740, 4, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (672, 16980, 30560, 5, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (673, 19100, 34380, 6, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (674, 21230, 38210, 7, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (675, 23880, 42980, 8, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (676, 26530, 47750, 9, 196)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (677, 0, 0, 1, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (678, 0, 0, 2, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (679, 0, 0, 3, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (680, 21400, 38520, 4, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (681, 24460, 44020, 5, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (682, 27520, 49536, 6, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (683, 30580, 55040, 7, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (684, 34400, 61915, 8, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (685, 38220, 68790, 9, 197)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (686, 0, 0, 1, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (687, 0, 0, 2, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (688, 0, 0, 3, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (689, 29095, 52370, 4, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (690, 33251, 59852, 5, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (691, 37407, 67333, 6, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (692, 41564, 74815, 7, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (693, 0, 0, 8, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (694, 0, 0, 9, 198)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (695, 340.909090909091, 750, 1, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (696, 340.909090909091, 750, 2, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (697, 731.818181818182, 1610, 3, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (698, 731.818181818182, 1610, 4, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (699, 900, 1980, 5, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (700, 900, 1980, 6, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (701, 1000, 2200, 7, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (702, 1113.63636363636, 2450, 8, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (703, 1227.27272727273, 2700, 9, 199)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (704, 686.363636363636, 1510, 1, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (705, 686.363636363636, 1510, 2, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (706, 1027.27272727273, 2260, 3, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (707, 1027.27272727273, 2260, 4, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (708, 1295.45454545455, 2850, 5, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (709, 1295.45454545455, 2850, 6, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (710, 1640.90909090909, 3610, 7, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (711, 1865.90909090909, 4105, 8, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (712, 2090.90909090909, 4600, 9, 200)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (713, 872.727272727273, 1920, 1, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (714, 872.727272727273, 1920, 2, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (715, 1345.45454545455, 2960, 3, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (716, 1345.45454545455, 2960, 4, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (717, 1668.18181818182, 3670, 5, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (718, 1668.18181818182, 3670, 6, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (719, 1995.45454545455, 4390, 7, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (720, 2361.36363636364, 5195, 8, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (721, 2727.27272727273, 6000, 9, 201)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (722, 1045.45454545455, 2300, 1, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (723, 1045.45454545455, 2300, 2, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (724, 1609.09090909091, 3540, 3, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (725, 1609.09090909091, 3540, 4, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (726, 2168.18181818182, 4770, 5, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (727, 2168.18181818182, 4770, 6, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (728, 2950, 6490, 7, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (729, 3134.09090909091, 6895, 8, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (730, 3318.18181818182, 7300, 9, 202)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (731, 1731.81818181818, 3810, 1, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (732, 1731.81818181818, 3810, 2, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (733, 2636.36363636364, 5800, 3, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (734, 2636.36363636364, 5800, 4, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (735, 3318.18181818182, 7300, 5, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (736, 3318.18181818182, 7300, 6, 203)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (737, 4300, 9460, 7, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (738, 4852.27272727273, 10675, 8, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (739, 5404.54545454545, 11890, 9, 203)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (740, 2545.45454545455, 5600, 1, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (741, 2545.45454545455, 5600, 2, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (742, 3318.18181818182, 7300, 3, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (743, 3318.18181818182, 7300, 4, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (744, 5000, 11000, 5, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (745, 5000, 11000, 6, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (746, 6363.63636363636, 14000, 7, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (747, 0, 0, 8, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (748, 0, 0, 9, 204)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (749, 2518.18181818182, 5540, 1, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (750, 2518.18181818182, 5540, 2, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (751, 3854.54545454545, 8480, 3, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (752, 3854.54545454545, 8480, 4, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (753, 5190.90909090909, 11420, 5, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (754, 5190.90909090909, 11420, 6, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (755, 6377.27272727273, 14030, 7, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (756, 7165.90909090909, 15765, 8, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (757, 7954.54545454545, 17500, 9, 205)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (758, 3586.36363636364, 7890, 1, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (759, 3586.36363636364, 7890, 2, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (760, 5454.54545454545, 12000, 3, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (761, 5454.54545454545, 12000, 4, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (762, 6877.27272727273, 15130, 5, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (763, 6877.27272727273, 15130, 6, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (764, 8895.45454545454, 19570, 7, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (765, 10081.8181818182, 22180, 8, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (766, 11268.1818181818, 24790, 9, 206)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (767, 4954.54545454545, 10900, 1, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (768, 4954.54545454545, 10900, 2, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (769, 7454.54545454545, 16400, 3, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (770, 7454.54545454545, 16400, 4, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (771, 9659.09090909091, 21250, 5, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (772, 9659.09090909091, 21250, 6, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (773, 12140.4545454545, 26709, 7, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (774, 13558.8636363636, 29829.5, 8, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (775, 14977.2727272727, 32950, 9, 207)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (776, 6922.72727272727, 15230, 1, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (777, 6922.72727272727, 15230, 2, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (778, 10531.8181818182, 23170, 3, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (779, 10531.8181818182, 23170, 4, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (780, 14140.9090909091, 31110, 5, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (781, 14140.9090909091, 31110, 6, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (782, 17695.4545454545, 38930, 7, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (783, 19870.4545454545, 43715, 8, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (784, 22045.4545454545, 48500, 9, 208)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (785, 9227.27272727273, 20300, 1, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (786, 9227.27272727273, 20300, 2, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (787, 14136.3636363636, 31100, 3, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (788, 14136.3636363636, 31100, 4, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (789, 17695.4545454545, 38930, 5, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (790, 17695.4545454545, 38930, 6, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (791, 22081.8181818182, 48580, 7, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (792, 24320.4545454545, 53505, 8, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (793, 26559.0909090909, 58430, 9, 209)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (794, 3310, 5337, 1, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (795, 4160, 6709, 2, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (796, 5010, 8072, 3, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (797, 5859, 9444, 4, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (798, 6709, 10816, 5, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (799, 7559, 12187, 6, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (800, 8408, 13550, 7, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (801, 9204, 14775, 8, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (802, 10000, 16000, 9, 210)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (803, 18064, 29110, 1, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (804, 22702, 36580, 2, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (805, 27340, 44050, 3, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (806, 31978, 51511, 4, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (807, 36616, 58981, 5, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (808, 41244, 66451, 6, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (809, 45882, 73921, 7, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (810, 51441, 82960.5, 8, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (811, 57000, 92000, 9, 211)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (812, 31500, 50741, 1, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (813, 39545, 63708, 2, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (814, 47599, 76683, 3, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (815, 55645, 89649, 4, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (816, 63699, 102616, 5, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (817, 71753, 115591, 6, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (818, 79798, 128557, 7, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (819, 89399, 144278.5, 8, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (820, 99000, 160000, 9, 212)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (821, 39200, 63159, 1, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (822, 49219, 79294, 2, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (823, 59238, 95438, 3, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (824, 69257, 111581, 4, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (825, 79276, 127716, 5, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (826, 89304, 143860, 6, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (827, 99323, 160004, 7, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (828, 111661.5, 180179, 8, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (829, 124000, 200354, 9, 213)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (830, 236536, 336789, 1, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (831, 296102, 477011, 2, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (832, 355676, 572971, 3, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (833, 415242, 668940, 4, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (834, 474807, 764900, 5, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (835, 0, 0, 6, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (836, 0, 0, 7, 214)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (837, 0, 0, 8, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (838, 0, 0, 9, 214)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (839, 10046, 17825, 1, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (840, 13949, 24092, 2, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (841, 14719, 26535, 3, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (842, 18622, 32801, 4, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (843, 0, 0, 5, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (844, 0, 0, 6, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (845, 0, 0, 7, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (846, 0, 0, 8, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (847, 0, 0, 9, 215)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (848, 12860, 23578, 1, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (849, 18029, 31872, 2, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (850, 23198, 40156, 3, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (851, 28358, 48449, 4, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (852, 33509, 56773, 5, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (853, 38669, 65026, 6, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (854, 43811, 73311, 7, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (855, 0, 0, 8, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (856, 0, 0, 9, 216)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (857, 5434, 39758, 1, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (858, 28057, 64805, 2, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (859, 44174, 89844, 3, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (860, 59973, 114892, 4, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (861, 75674, 139930, 5, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (862, 91331, 164978, 6, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (863, 137567, 239165, 7, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (864, 0, 0, 8, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (865, 0, 0, 9, 217)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (866, 16790, 64088, 1, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (867, 55184, 115184, 2, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (868, 87454, 166279, 3, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (869, 119441, 217383, 4, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (870, 151321, 268479, 5, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (871, 183157, 319574, 6, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (872, 0, 0, 7, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (873, 0, 0, 8, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (874, 0, 0, 9, 218)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (875, 584, 637, 1, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (876, 726, 797, 2, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (877, 876, 956, 3, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (878, 1018, 1115, 4, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (879, 1168, 1275, 5, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (880, 1310, 1434, 6, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (881, 1452, 1593, 7, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (882, 1602, 1752, 8, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (883, 1800, 1990, 9, 219)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (884, 1708, 1868, 1, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (885, 2133, 2328, 2, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (886, 2558, 2797, 3, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (887, 2983, 3266, 4, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (888, 3416, 3726, 5, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (889, 3841, 4195, 6, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (890, 4257, 4656, 7, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (891, 4682, 5125, 8, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (892, 5300, 5800, 9, 220)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (893, 3753, 4098, 1, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (894, 4691, 5125, 2, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (895, 5629, 6151, 3, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (896, 6559, 7169, 4, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (897, 7497, 8196, 5, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (898, 8435, 9223, 6, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (899, 9364, 10232, 7, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (900, 10303, 11258, 8, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (901, 11700, 12700, 9, 221)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (902, 10940, 11958, 1, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (903, 13684, 14949, 2, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (904, 16419, 17941, 3, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (905, 19118, 20933, 4, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (906, 21889, 23924, 5, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (907, 24623, 26916, 6, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (908, 27323, 29863, 7, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (909, 30058, 32855, 8, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (910, 34183, 37300, 9, 222)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (911, 321, 155, 1, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (912, 471, 314, 2, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (913, 621, 473, 3, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (914, 772, 633, 4, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (915, 922, 792, 5, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (916, 1070, 949, 6, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (917, 1220, 1108, 7, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (918, 1370, 1267, 8, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (919, 1597, 1500, 9, 223)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (920, 0, 0, 1, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (921, 1162, 386, 2, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (922, 1602, 852, 3, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (923, 2041, 1318, 4, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (924, 2481, 1784, 5, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (925, 2914, 2244, 6, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (926, 3354, 2710, 7, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (927, 3794, 3176, 8, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (928, 4456, 3800, 9, 224)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (929, 0, 0, 1, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (930, 0, 0, 2, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (931, 3196, 1726, 3, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (932, 4162, 2750, 4, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (933, 5128, 3775, 5, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (934, 6081, 4784, 6, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (935, 7047, 5809, 7, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (936, 8013, 6833, 8, 225)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (937, 9400, 8300, 9, 225)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (938, 0, 0, 1, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (939, 8228, 4147, 2, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (940, 11048, 7137, 3, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (941, 13867, 10126, 4, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (942, 16687, 13116, 5, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (943, 19446, 16062, 6, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (944, 22285, 19062, 7, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (945, 25105, 22041, 8, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (946, 29300, 26500, 9, 226)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (947, 34684.8, 69369.6, 1, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (948, 43356, 86712, 2, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (949, 52027.2, 104054.4, 3, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (950, 60698.4, 121396.8, 4, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (951, 69369.6, 138739.2, 5, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (952, 78040.8, 156081.6, 6, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (953, 86712, 173424, 7, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (954, 95383.2, 190766.4, 8, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (955, 104054.4, 208108.8, 9, 227)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (956, 7707.85714285714, 15415.7142857143, 1, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (957, 9634.82142857143, 19269.6428571429, 2, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (958, 11561.7857142857, 23123.5714285714, 3, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (959, 13488.75, 26977.5, 4, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (960, 15415.7142857143, 30831.4285714286, 5, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (961, 17342.6785714286, 34685.3571428571, 6, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (962, 19269.6428571429, 38539.2857142857, 7, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (963, 21196.6071428571, 42393.2142857143, 8, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (964, 23123.5714285714, 46247.1428571429, 9, 228)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (965, 404, 678, 1, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (966, 505, 848, 2, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (967, 606, 1017, 3, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (968, 707, 1187, 4, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (969, 808, 1356, 5, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (970, 910, 1526, 6, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (971, 1011, 1695, 7, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (972, 1112, 1864.5, 8, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (973, 1213, 2034, 9, 229)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (974, 871, 1536, 1, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (975, 1089, 1921, 2, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (976, 1307, 2305, 3, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (977, 1525, 2689, 4, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (978, 1743, 3073, 5, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (979, 1961, 3457, 6, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (980, 2179, 3841, 7, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (981, 2396.5, 4225, 8, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (982, 2614, 4609, 9, 230)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (983, 1302, 2133, 1, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (984, 1628, 2666, 2, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (985, 1954, 3200, 3, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (986, 2279, 3733, 4, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (987, 0, 0, 5, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (988, 0, 0, 6, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (989, 0, 0, 7, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (990, 0, 0, 8, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (991, 0, 0, 9, 231)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (992, 1720, 2944, 1, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (993, 2150, 3680, 2, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (994, 2580, 4416, 3, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (995, 3009, 5152, 4, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (996, 3439, 5888, 5, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (997, 3869, 6624, 6, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (998, 4299, 7361, 7, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (999, 4729, 8097, 8, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1000, 5159, 8833, 9, 232)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1001, 3434, 5757, 1, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1002, 4292, 7197, 2, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1003, 5151, 8636, 3, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1004, 6009, 10075, 4, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1005, 6868, 11515, 5, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1006, 0, 0, 6, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1007, 0, 0, 7, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1008, 0, 0, 8, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1009, 0, 0, 9, 233)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1010, 0, 0, 1, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1011, 153, 438, 2, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1012, 249, 608, 3, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1013, 343, 778, 4, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1014, 436, 948, 5, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1015, 530, 1117, 6, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1016, 623, 1287, 7, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1017, 715.5, 1457, 8, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1018, 808, 1627, 9, 234)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1019, 0, 0, 1, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1020, 264, 715, 2, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1021, 435, 979, 3, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1022, 603, 1256, 4, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1023, 770, 1533, 5, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1024, 934, 1811, 6, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1025, 1099, 2288, 7, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1026, 0, 0, 8, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1027, 0, 0, 9, 235)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1028, 0, 0, 1, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1029, 0, 0, 2, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1030, 480, 1333, 3, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1031, 670, 1685, 4, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1032, 860, 2037, 5, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1033, 1048, 2390, 6, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1034, 1235, 2742, 7, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1035, 1421, 3094, 8, 236)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1036, 1607, 3446, 9, 236)
GO
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1037, 0, 0, 1, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1038, 484, 1385, 2, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1039, 794, 1895, 3, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1040, 1095, 2405, 4, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1041, 1390, 2914, 5, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1042, 1685, 3424, 6, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1043, 1980, 3934, 7, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1044, 0, 0, 8, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1045, 0, 0, 9, 237)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1046, 0, 0, 1, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1047, 632, 1849, 2, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1048, 1035, 2549, 3, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1049, 1425, 3250, 4, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1050, 1814, 3950, 5, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1051, 2198, 4651, 6, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1052, 2582, 5351, 7, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1053, 2965, 6051.5, 8, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1054, 3348, 6752, 9, 238)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1055, 0, 0, 1, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1056, 1234, 3467, 2, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1057, 2080, 4817, 3, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1058, 2897, 6167, 4, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1059, 3709, 7517, 5, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1060, 4511, 8867, 6, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1061, 5313, 10217, 7, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1062, 0, 0, 8, 239)
INSERT [dbo].[TorquePorActuadores] ([id], [minimo], [maximo], [id_presion], [id_actuador]) VALUES (1063, 0, 0, 9, 239)
SET IDENTITY_INSERT [dbo].[TorquePorActuadores] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (1, N'admin', N'admin', 1, 1, 1, N'Administrador')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (12, N'liderarea', N'liderarea', 0, 1, 4, N'liderarea')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (13, N'liderproyecto', N'liderproyecto', 0, 0, NULL, N'liderproyecto')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (14, N'liderespecialidad', N'liderespecialidad', 0, 0, NULL, N'liderespecialidad')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (15, N'liderfase', N'liderfase', 0, 0, NULL, N'Lider de la Fase 2')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (16, N'invitado', N'invitado', 0, 0, 6, N'invitado')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30052, N'jmedina', N'jmedina', 0, 0, NULL, N'Julio')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30053, N'mangulo', N'mangulo', 0, 0, NULL, N'Manuel')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30054, N'kavila', N'kavila', 0, 0, NULL, N'Karen')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30056, N'jume', N'jume', 0, 0, NULL, N'Julio Medina')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30057, N'dalaejecutor', N'dalaejecutor', 0, 0, NULL, N'Daladier Jabba')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30058, N'dalalidera', N'dalalidera', 0, 0, NULL, N'Daladier Jabba')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30059, N'dalaliderp', N'dalaliderp', 0, 0, NULL, N'Daladier Jabba')
INSERT [dbo].[Users] ([id], [name], [password], [isadmsitio], [isadmpro], [id_rol], [fullname]) VALUES (30060, N'dalalidere', N'dalalidere', 0, 0, NULL, N'Daladier Jabba')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UsersSession] ON 

INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (5, 15, CAST(N'2019-08-29T22:00:11.020' AS DateTime), N'liderfase')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (6, 15, CAST(N'2019-08-29T22:01:48.143' AS DateTime), N'192.168.1.13')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (7, 13, CAST(N'2019-08-29T22:47:39.847' AS DateTime), N'192.168.1.13')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (8, 15, CAST(N'2019-09-13T04:29:42.157' AS DateTime), N'192.168.1.12')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10008, 1, CAST(N'2019-10-02T09:42:04.213' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10009, 1, CAST(N'2019-10-02T09:42:57.637' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10010, 1, CAST(N'2019-10-02T09:44:19.973' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10011, 1, CAST(N'2019-10-02T09:45:19.020' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10012, 1, CAST(N'2019-10-02T10:20:09.380' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10013, 1, CAST(N'2019-10-02T11:32:33.190' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10014, 1, CAST(N'2019-10-02T15:06:02.417' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10015, 1, CAST(N'2019-10-02T15:12:15.267' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10016, 1, CAST(N'2019-10-02T15:13:36.280' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10017, 1, CAST(N'2019-10-02T15:14:38.357' AS DateTime), N'10.10.214.148')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10018, 1, CAST(N'2019-10-03T20:22:51.387' AS DateTime), N'192.168.1.13')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10019, 1, CAST(N'2019-10-03T20:38:24.773' AS DateTime), N'192.168.1.13')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10020, 1, CAST(N'2019-10-03T20:53:16.500' AS DateTime), N'192.168.1.13')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10021, 1, CAST(N'2019-10-03T20:54:50.050' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10022, 1, CAST(N'2019-10-03T20:55:37.473' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10023, 1, CAST(N'2019-10-03T20:56:49.763' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10024, 1, CAST(N'2019-10-03T21:00:57.633' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10025, 15, CAST(N'2019-10-04T14:01:28.330' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10026, 15, CAST(N'2019-11-15T21:52:31.787' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10027, 15, CAST(N'2019-11-15T22:28:46.743' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10028, 15, CAST(N'2019-11-16T15:55:52.927' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10029, 15, CAST(N'2019-11-16T19:50:31.653' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10030, 15, CAST(N'2019-11-16T19:54:33.050' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10031, 15, CAST(N'2019-11-16T19:55:12.337' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10032, 15, CAST(N'2019-11-17T09:22:10.807' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10033, 15, CAST(N'2019-11-17T10:23:41.810' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10034, 15, CAST(N'2019-11-17T13:52:10.833' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10035, 15, CAST(N'2019-11-17T14:47:25.233' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10036, 15, CAST(N'2019-11-17T15:56:32.257' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10037, 15, CAST(N'2019-11-17T18:01:14.527' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10038, 15, CAST(N'2019-11-17T19:14:13.073' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10039, 15, CAST(N'2019-11-20T19:16:54.833' AS DateTime), N'0:0:0:0:0:0:0:1')
INSERT [dbo].[UsersSession] ([id], [id_user], [date], [ip]) VALUES (10040, 15, CAST(N'2019-11-20T19:35:15.133' AS DateTime), N'0:0:0:0:0:0:0:1')
SET IDENTITY_INSERT [dbo].[UsersSession] OFF
SET IDENTITY_INSERT [dbo].[Valvulas] ON 

INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (1, N'D', N'3905 (1"-150 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (2, N'D', N'3910 (1"- 300 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (3, N'D', N'3912 (1"- 600 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (4, N'D', N'3914 (1"- 900 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (5, N'D', N'3916 (1"- 1500 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (6, N'D', N'3918 (1"- 2500 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (7, N'D', N'3905 (1-1/2"-150 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (8, N'D', N'3910 (1-1/2"- 300 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (9, N'D', N'3912 (1-1/2"- 600 x 2" -150)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (10, N'D', N'3914 (1-1/2"- 900 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (11, N'D', N'3916 (1-1/2"-1500 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (12, N'D', N'3918 (1-1/2"-2500 x 2" -300)', N'0.11', N'0.0129', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (13, N'E', N'3905 (1"-150 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (14, N'E', N'3910 (1"-300 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (15, N'E', N'3912 (1"-600 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (16, N'E', N'3914 (1"-900 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (17, N'E', N'3916 (1"-1500 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (18, N'E', N'3918 (1"-2500 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (19, N'E', N'3905 (1-1/2"-150 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (20, N'E', N'3910 (1-1/2"-300 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (21, N'E', N'3912 (1-1/2"-600 x 2" -150)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (22, N'E', N'3914 (1-1/2"-900 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (23, N'E', N'3916 (1-1/2"-1500 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (24, N'E', N'3918 (1-1/2"-2500 x 2" -300)', N'0.196', N'0.2279', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (25, N'F', N'3905 (1"-150 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (26, N'F', N'3910 (1"-300 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (27, N'F', N'3912 (1"-600 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (28, N'F', N'3914 (1"-900 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (29, N'F', N'3916 (1"-1500 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (30, N'F', N'3918 (1"-2500 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (31, N'F', N'3905 (1-1/2"-150 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (32, N'F', N'3910 (1-1/2"-300 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (33, N'F', N'3912 (1-1/2"-600 x 2" -150)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (34, N'F', N'3914 (1-1/2"-900 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (35, N'F', N'3916 (1-1/2"-1500 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (36, N'F', N'3918 (1-1/2"-2500 x 2" -300)', N'0.307', N'0.3568', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (37, N'G', N'3905 (1-1/2"-150 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (38, N'G', N'3910 (1-1/2"-300 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (39, N'G', N'3912 (1-1/2"-600 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (40, N'G', N'3914 (1-1/2"-900 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (41, N'G', N'3916 (1-1/2"-1500 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (42, N'G', N'3918 (1-1/2"-2500 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (43, N'G', N'3905 (2"-150 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (44, N'G', N'3910 (2"-300 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (45, N'G', N'3912 (2"-600 x 3" -150)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (46, N'G', N'3914 (2"-900 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (47, N'G', N'3916 (2"-1500 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (48, N'G', N'3918 (2"-2500 x 3" -300)', N'0.503', N'0.5849', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (49, N'H', N'3905 (1-1/2"-150 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (50, N'H', N'3910 (1-1/2"-300 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (51, N'H', N'3912 (1-1/2"-600 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (52, N'H', N'3914 (1-1/2"-900 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (53, N'H', N'3916 (1-1/2"-1500 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (54, N'H', N'3918 (1-1/2"-2500 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (55, N'H', N'3905 (2"-150 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (56, N'H', N'3910 (2"-300 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (57, N'H', N'3912 (2"-600 x 3" -150)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (58, N'H', N'3914 (2"-900 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (59, N'H', N'3916 (2"-1500 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (60, N'H', N'3918 (2"-2500 x 3" -300)', N'0.785', N'0.9127', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (61, N'J', N'3905 (2"-150 x 3" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (62, N'J', N'3910 (2"-300 x 3" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (63, N'J', N'3912 (2"-600 x 3" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (64, N'J', N'3914 (2"-900 x 3" -300)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (65, N'J', N'3916 (2"-1500 x 3" -300)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (66, N'J', N'3918 (2"-2500 x 3" -300)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (67, N'J', N'3905 (3"-150 x 4" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (68, N'J', N'3910 (3"-300 x 4" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (69, N'J', N'3912 (3"-600 x 4" -150)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (70, N'J', N'3914 (3"-900 x 4" -300)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (71, N'J', N'3916 (3"-1500 x 4" -300)', N'1.287', N'1.496', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (72, N'K', N'3905 (3"-150 x 4" -150)', N'1.838
', N'2.138
', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (73, N'K', N'3910 (3"-300 x 4" -150)', N'1.838
', N'2.138
', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (74, N'K', N'3912 (3"-600 x 4" -150)', N'1.838
', N'2.138
', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (75, N'K', N'3914 (3"-900 x 4" -300)', N'1.838
', N'2.138
', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (76, N'K', N'3916 (3"-1500 x 4" -300)', N'1.838
', N'2.138
', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (77, N'L', N'3905 (3"-150 x 4" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (78, N'L', N'3910 (3"-300 x 4" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (79, N'L', N'3912 (3"-600 x 4" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (80, N'L', N'3914 (3"-900 x 4" -300)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (81, N'L', N'3916 (3"-1500 x 4" -300)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (82, N'L', N'3905 (4"-150 x 6" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (83, N'L', N'3910 (4"-300 x 6" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (84, N'L', N'3912 (4"-600 x 6" -150)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (85, N'L', N'3914 (4"-900 x 6" -300)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (86, N'L', N'3916 (4"-1500 x 6" -300)', N'2.853', N'3.317', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (87, N'M', N'3905 (4"-150 x 6" -150)', N'3.6', N'4.186', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (88, N'M', N'3910 (4"-300 x 6" -150)', N'3.6', N'4.186', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (89, N'M', N'3912 (4"-600 x 6" -150)', N'3.6', N'4.186', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (90, N'M', N'3914 (4"-900 x 6" -300)', N'3.6', N'4.186', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (91, N'M', N'3916 (4"-1500 x 6" -300)', N'3.6', N'4.186', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (92, N'N', N'3905 (4"-150 x 6" -150)', N'4.34', N'5.047', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (93, N'N', N'3910 (4"-300 x 6" -150)', N'4.34', N'5.047', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (94, N'N', N'3912 (4"-600 x 6" -150)', N'4.34', N'5.047', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (95, N'N', N'3914 (4"-900 x 6" -300)', N'4.34', N'5.047', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (96, N'N', N'3916 (4"-1500 x 6" -300)', N'4.34', N'5.047', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (97, N'P', N'3905 (4"-150 x 6" -150)', N'6.38', N'7.417', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (98, N'P', N'3910 (4"-300 x 6" -150)', N'6.38', N'7.417', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (99, N'P', N'3912 (4"-600 x 6" -150)', N'6.38', N'7.417', N'P')
GO
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (100, N'P', N'3914 (4"-900 x 6" -300)', N'6.38', N'7.417', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (101, N'P', N'3916 (4"-1500 x 6" -300)', N'6.38', N'7.417', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (102, N'Q', N'3905 (6"-150 x 8" -150)', N'11.05', N'12.85', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (103, N'Q', N'3910 (6"-300 x 8" -150)', N'11.05', N'12.85', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (104, N'Q', N'3912 (6"-600 x 8" -150)', N'11.05', N'12.85', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (105, N'R', N'3905 (6"-150 x 8" -150)', N'16', N'18.6', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (106, N'R', N'3910 (6"-300 x 8" -150)', N'16', N'18.6', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (107, N'R', N'3912 (6"-600 x 8" -150)', N'16', N'18.6', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (108, N'T', N'3905 (8"-150 x 10" -150)', N'26', N'30.21', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (109, N'T', N'3910 (8"-300 x 10" -150)', N'26', N'30.21', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (110, N'T', N'3912 (8"-600 x 10" -150)', N'26', N'30.21', N'P')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (111, N'D', N'1541 (3/4"  MNPT x 3/4" FNPT)', N'0.11', N'0.0129', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (112, N'D', N'1543 (1/2"  MNPT x 3/4" FNPT)', N'0.11', N'0.0129', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (113, N'E', N'1543 (3/4"  MNPT x 3/4" FNPT)', N'0.196', N'0.2279', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (114, N'E', N'1541 (1"  MNPT x 1" FNPT)', N'0.196', N'0.2279', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (115, N'F', N'1543 (1"  MNPT x 1-1/4" FNPT)', N'0.307', N'0.3568', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (116, N'F', N'1541 (1-1/4"  MNPT x 1-1/4" FNPT)', N'0.307', N'0.3568', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (117, N'F', N'1900 (1-1/4" -300 x 1-1/2" - 150)', N'0.307', N'0.3568', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (118, N'F', N'1900 (1-1/4" -600 x 1-1/2" - 150)', N'0.307', N'0.3568', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (119, N'G', N'1543 (1-1/4"  MNPT x 1-1/2" FNPT)', N'0.503', N'0.5849', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (120, N'G', N'1541 (1-1/2"  MNPT x 1-1/2" FNPT)', N'0.503', N'0.5849', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (121, N'G', N'1900 (1-1/4" -300 x 1-1/2" - 150)', N'0.503', N'0.5849', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (122, N'G', N'1900 (1-1/4" -600 x 1-1/2" - 150)', N'0.503', N'0.0129', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (123, N'H', N'1543 (1-1/2"  MNPT x 2" FNPT)', N'0.785', N'0.9127', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (124, N'H', N'1541 (2"  MNPT x 2" FNPT)', N'0.785', N'0.9127', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (125, N'H', N'1900 (1-1/2" -300 x 2-1/2" - 150)', N'0.785', N'0.9127', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (126, N'H', N'1900 (1-1/2" -600 x 2-1/2" - 150)', N'0.785', N'0.9127', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (127, N'K', N'1900 (2" -300 x 3" - 150)', N'1.838', N'2.138', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (128, N'K', N'1900 (2" -600 x 3" - 150)', N'1.838', N'2.138', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (129, N'L', N'1900 (2-1/2" -300 x 4-1/2" - 150)', N'2.853', N'3.317', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (130, N'L', N'1900 (2-1/2" -600 x 4-1/2" - 150)', N'2.853', N'3.317', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (131, N'M', N'1900 (3" -300 x 4" - 150)', N'3.6', N'4.186', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (132, N'M', N'1900 (3" -600 x 4" - 150)', N'3.6', N'4.186', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (133, N'N', N'1900 (4" -300 x 6" - 150)', N'4.34', N'5.047', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (134, N'N', N'1900 (4" -600 x 6" - 150)', N'4.34', N'5.047', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (135, N'P', N'1900 (4" -300 x 6" - 150)', N'6.38', N'7.417', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (136, N'P', N'1900 (4" -600 x 6" - 150)', N'6.38', N'7.417', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (137, N'Q', N'1900 (6" -300 x 8" - 150)', N'11.05', N'12.85', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (138, N'Q', N'1900 (6" -600 x 8" - 150)', N'11.05', N'12.85', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (143, N'J', N'1543 (2"  MNPT x 2-1/2" FNPT)', N'1.287', N'1.496', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (144, N'J', N'1541 (2-1/2"  MNPT x 2-1/2" FNPT)', N'1.287', N'1.496', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (145, N'J', N'1900 (1-1/2" -300 x 2-1/2" - 150)', N'1.287', N'1.496', N'R')
INSERT [dbo].[Valvulas] ([id], [orificio], [valor], [api], [asme], [typev]) VALUES (146, N'J', N'1900 (1-1/2" -600 x 2-1/2" - 150)', N'1.287', N'1.496', N'R')
SET IDENTITY_INSERT [dbo].[Valvulas] OFF
SET IDENTITY_INSERT [dbo].[ValvulasSS] ON 

INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (31, CAST(0.10 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)), N'Violeta', N'T14232T0012', 75, 162, CAST(0.06 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (32, CAST(0.30 AS Decimal(10, 2)), CAST(1.10 AS Decimal(10, 2)), N'Naranja', N'T14233T0012', 75, 162, CAST(0.07 AS Decimal(10, 2)), CAST(0.36 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (33, CAST(0.60 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), N'Rojo', N'T14234T0012', 75, 162, CAST(0.15 AS Decimal(10, 2)), CAST(0.73 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (34, CAST(1.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), N'Amarillo', N'T14235T0012', 75, 162, CAST(0.20 AS Decimal(10, 2)), CAST(0.87 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (35, CAST(1.70 AS Decimal(10, 2)), CAST(5.60 AS Decimal(10, 2)), N'Verde', N'T14236T0012', 75, 162, CAST(0.26 AS Decimal(10, 2)), CAST(2.18 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (36, CAST(2.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(10, 2)), N'Gris', N'T14238T0012', 75, 162, CAST(0.73 AS Decimal(10, 2)), CAST(5.08 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (37, CAST(4.00 AS Decimal(10, 2)), CAST(19.00 AS Decimal(10, 2)), N'Vinotinto', N'T14239T0012', 75, 162, CAST(1.16 AS Decimal(10, 2)), CAST(8.70 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (38, CAST(7.00 AS Decimal(10, 2)), CAST(33.00 AS Decimal(10, 2)), N'Negro', N'T14240T0012', 75, 162, CAST(2.47 AS Decimal(10, 2)), CAST(16.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (39, CAST(15.00 AS Decimal(10, 2)), CAST(75.00 AS Decimal(10, 2)), N'Azul', N'T14237T0012', 235, 71, CAST(5.08 AS Decimal(10, 2)), CAST(36.30 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (40, CAST(31.00 AS Decimal(10, 2)), CAST(161.00 AS Decimal(10, 2)), N'Vinotinto', N'T14239T0012', 235, 71, CAST(10.20 AS Decimal(10, 2)), CAST(79.80 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (41, CAST(59.00 AS Decimal(10, 2)), CAST(235.00 AS Decimal(10, 2)), N'Negro', N'T14240T0012', 235, 71, CAST(23.20 AS Decimal(10, 2)), CAST(145.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (42, CAST(235.00 AS Decimal(10, 2)), CAST(323.00 AS Decimal(10, 2)), N'Vinotinto', N'T14239T0012', 1470, 27, CAST(43.50 AS Decimal(10, 2)), CAST(-1.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (46, CAST(323.00 AS Decimal(10, 2)), CAST(588.00 AS Decimal(10, 2)), N'Negro', N'T14240T0012', 1470, 27, CAST(94.30 AS Decimal(10, 2)), CAST(-1.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (47, CAST(588.00 AS Decimal(10, 2)), CAST(808.00 AS Decimal(10, 2)), N'Vinotinto', N'T14239T0012', 1470, 17, CAST(102.00 AS Decimal(10, 2)), CAST(-1.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (52, CAST(81.00 AS Decimal(10, 2)), CAST(232.00 AS Decimal(10, 2)), N'Vinotinto', N'T14239T0012', 514, 236, CAST(14.50 AS Decimal(10, 2)), CAST(145.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (53, CAST(122.00 AS Decimal(10, 2)), CAST(514.00 AS Decimal(10, 2)), N'Negro', N'T14240T0012', 514, 236, CAST(36.30 AS Decimal(10, 2)), CAST(290.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (67, CAST(257.00 AS Decimal(10, 2)), CAST(1058.00 AS Decimal(10, 2)), N'Gris', N'T14238T0012', 1058, 315, CAST(72.50 AS Decimal(10, 2)), CAST(479.00 AS Decimal(10, 2)))
INSERT [dbo].[ValvulasSS] ([id], [minimo], [maximo], [color], [partnum], [maxpre], [nanometrico], [tolerancia], [maxdif]) VALUES (68, CAST(808.00 AS Decimal(10, 2)), CAST(1470.00 AS Decimal(10, 2)), N'Negro', N'T14240T0012', 1470, 17, CAST(174.00 AS Decimal(10, 2)), CAST(-1.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ValvulasSS] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ah]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[AdiabaticHead] ADD  CONSTRAINT [uni_ProDes_ah] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ah] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_all]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Allowable] ADD  CONSTRAINT [uni_ProDes_all] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_all] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_name_area]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Areas] ADD  CONSTRAINT [PK_name_area] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uni_ProDesBds]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[BendingStressD] ADD  CONSTRAINT [uni_ProDesBds] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_bds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uni_ProDesBdsf]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[BendingStressF] ADD  CONSTRAINT [uni_ProDesBdsf] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_bdsf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDesBaw]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[BendingStressW] ADD  CONSTRAINT [uni_ProDesBaw] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_baw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uni_ProDesDp]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[DesingPressure] ADD  CONSTRAINT [uni_ProDesDp] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_dp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uni_ProDesDpp]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[DesingPressureP] ADD  CONSTRAINT [uni_ProDesDpp] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_dpp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_elr]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ElectricalResistance] ADD  CONSTRAINT [uni_ProDes_elr] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_elr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ere]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ElectrolyteResistance] ADD  CONSTRAINT [uni_ProDes_ere] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_erf]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Erf] ADD  CONSTRAINT [uni_ProDes_erf] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_erf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ew]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[EstimatedWeight] ADD  CONSTRAINT [uni_ProDes_ew] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ew] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_fl]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[FanLaws] ADD  CONSTRAINT [uni_ProDes_fl] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_fl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_gp]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[GasPipeline] ADD  CONSTRAINT [uni_ProDes_gp] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_gp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uni_ProDesS]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[GasPipelineR] ADD  CONSTRAINT [uni_ProDesS] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_soil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_htz]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[HotTapSizing] ADD  CONSTRAINT [uni_ProDes_htz] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_htz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ins]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Installation] ADD  CONSTRAINT [uni_ProDes_ins] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ins] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ma]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Maop] ADD  CONSTRAINT [uni_ProDes_ma] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_mal]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[MaximunAllowable] ADD  CONSTRAINT [uni_ProDes_mal] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_mal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_ohm]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Ohm] ADD  CONSTRAINT [uni_ProDes_ohm] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_ohm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_pap]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[PackPipeline] ADD  CONSTRAINT [uni_ProDes_pap] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_pap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_phy]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[PipelineHydrostatic] ADD  CONSTRAINT [uni_ProDes_phy] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_phy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_poi]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[PostInstallation] ADD  CONSTRAINT [uni_ProDes_poi] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_poi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Proyects__72E12F1B295BFFF0]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ProyectsTemp] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_re]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[RateElectrical] ADD  CONSTRAINT [uni_ProDes_re] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_re] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rs]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[RegulatorStation] ADD  CONSTRAINT [uni_ProDes_rs] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDesRW]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ReinforcementWeld] ADD  CONSTRAINT [uni_ProDesRW] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rwb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rel]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[RelationshipRand] ADD  CONSTRAINT [uni_ProDes_rel] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rvr]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ReliefValveReaction] ADD  CONSTRAINT [uni_ProDes_rvr] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rvr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rvs]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ReliefValveSizing] ADD  CONSTRAINT [uni_ProDes_rvs] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rvs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rn]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[RequiredAnodes] ADD  CONSTRAINT [uni_ProDes_rn] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_riagb]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ResistanceIAGB] ADD  CONSTRAINT [uni_ProDes_riagb] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_riagb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rmva]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ResistanceRMVA] ADD  CONSTRAINT [uni_ProDes_rmva] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rmva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rsha]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ResistanceRSHA] ADD  CONSTRAINT [uni_ProDes_rsha] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rsha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uni_ProDes_rsva]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[ResistanceRSVA] ADD  CONSTRAINT [uni_ProDes_rsva] UNIQUE NONCLUSTERED 
(
	[id_proyect] ASC,
	[description_rsva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_name]    Script Date: 20/11/2019 7:58:29 p. m. ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [PK_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actividades]  WITH CHECK ADD  CONSTRAINT [FK_Actividades_Especialidades] FOREIGN KEY([id_espe])
REFERENCES [dbo].[Especialidades] ([id])
GO
ALTER TABLE [dbo].[Actividades] CHECK CONSTRAINT [FK_Actividades_Especialidades]
GO
ALTER TABLE [dbo].[ActividadModulo]  WITH CHECK ADD  CONSTRAINT [FK_ActividadModulo_Actividad] FOREIGN KEY([id_actividadpro])
REFERENCES [dbo].[EspecialidadFaseActPro] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActividadModulo] CHECK CONSTRAINT [FK_ActividadModulo_Actividad]
GO
ALTER TABLE [dbo].[ActividadModulo]  WITH CHECK ADD  CONSTRAINT [FK_ActividadModulo_Modulo] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulos] ([id])
GO
ALTER TABLE [dbo].[ActividadModulo] CHECK CONSTRAINT [FK_ActividadModulo_Modulo]
GO
ALTER TABLE [dbo].[ActividadPesos]  WITH CHECK ADD  CONSTRAINT [FK_ActividadPesos_Fase] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id])
GO
ALTER TABLE [dbo].[ActividadPesos] CHECK CONSTRAINT [FK_ActividadPesos_Fase]
GO
ALTER TABLE [dbo].[ActividadPesos]  WITH CHECK ADD  CONSTRAINT [FK_ActividadPesos_Proyecto] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyects] ([id])
GO
ALTER TABLE [dbo].[ActividadPesos] CHECK CONSTRAINT [FK_ActividadPesos_Proyecto]
GO
ALTER TABLE [dbo].[Actuadores]  WITH CHECK ADD  CONSTRAINT [FK_Actuadores_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Actuadores] CHECK CONSTRAINT [FK_Actuadores_Proyects]
GO
ALTER TABLE [dbo].[Actuadores]  WITH CHECK ADD  CONSTRAINT [FK_Actuadores_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Actuadores] CHECK CONSTRAINT [FK_Actuadores_Users]
GO
ALTER TABLE [dbo].[AdiabaticHead]  WITH CHECK ADD  CONSTRAINT [FK_AdiabaticHead_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[AdiabaticHead] CHECK CONSTRAINT [FK_AdiabaticHead_Proyects]
GO
ALTER TABLE [dbo].[AdiabaticHead]  WITH CHECK ADD  CONSTRAINT [FK_AdiabaticHead_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[AdiabaticHead] CHECK CONSTRAINT [FK_AdiabaticHead_Users]
GO
ALTER TABLE [dbo].[AdiabaticHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_AdiabaticHorsePower_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[AdiabaticHorsePower] CHECK CONSTRAINT [FK_AdiabaticHorsePower_Proyects]
GO
ALTER TABLE [dbo].[AdiabaticHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_AdiabaticHorsePower_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[AdiabaticHorsePower] CHECK CONSTRAINT [FK_AdiabaticHorsePower_Users]
GO
ALTER TABLE [dbo].[Allowable]  WITH CHECK ADD  CONSTRAINT [FK_Allowable_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Allowable] CHECK CONSTRAINT [FK_Allowable_Proyects]
GO
ALTER TABLE [dbo].[Allowable]  WITH CHECK ADD  CONSTRAINT [FK_Allowable_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Allowable] CHECK CONSTRAINT [FK_Allowable_Users]
GO
ALTER TABLE [dbo].[AlternativeAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_AlternativeAcceptance_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[Proyects] ([id])
GO
ALTER TABLE [dbo].[AlternativeAcceptance] CHECK CONSTRAINT [FK_AlternativeAcceptance_Proyects]
GO
ALTER TABLE [dbo].[AlternativeAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_AlternativeAcceptance_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[AlternativeAcceptance] CHECK CONSTRAINT [FK_AlternativeAcceptance_Users]
GO
ALTER TABLE [dbo].[AreasUsuario]  WITH CHECK ADD  CONSTRAINT [FK_AreasUsuario_Area] FOREIGN KEY([id_area])
REFERENCES [dbo].[Areas] ([id])
GO
ALTER TABLE [dbo].[AreasUsuario] CHECK CONSTRAINT [FK_AreasUsuario_Area]
GO
ALTER TABLE [dbo].[AreasUsuario]  WITH CHECK ADD  CONSTRAINT [FK_AreasUsuario_Usuario] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[AreasUsuario] CHECK CONSTRAINT [FK_AreasUsuario_Usuario]
GO
ALTER TABLE [dbo].[BendingStressD]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressD_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[BendingStressD] CHECK CONSTRAINT [FK_BendingStressD_Proyects]
GO
ALTER TABLE [dbo].[BendingStressD]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressD_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[BendingStressD] CHECK CONSTRAINT [FK_BendingStressD_Users]
GO
ALTER TABLE [dbo].[BendingStressF]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressF_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[BendingStressF] CHECK CONSTRAINT [FK_BendingStressF_Proyects]
GO
ALTER TABLE [dbo].[BendingStressF]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressF_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[BendingStressF] CHECK CONSTRAINT [FK_BendingStressF_Users]
GO
ALTER TABLE [dbo].[BendingStressW]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressW_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[BendingStressW] CHECK CONSTRAINT [FK_BendingStressW_Proyects]
GO
ALTER TABLE [dbo].[BendingStressW]  WITH CHECK ADD  CONSTRAINT [FK_BendingStressW_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[BendingStressW] CHECK CONSTRAINT [FK_BendingStressW_Users]
GO
ALTER TABLE [dbo].[CapacityHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_CapacityHorsePower_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[CapacityHorsePower] CHECK CONSTRAINT [FK_CapacityHorsePower_Proyects]
GO
ALTER TABLE [dbo].[CapacityHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_CapacityHorsePower_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[CapacityHorsePower] CHECK CONSTRAINT [FK_CapacityHorsePower_Users]
GO
ALTER TABLE [dbo].[CathodicProtection]  WITH CHECK ADD  CONSTRAINT [FK_CathodicProtection_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[CathodicProtection] CHECK CONSTRAINT [FK_CathodicProtection_Proyects]
GO
ALTER TABLE [dbo].[CathodicProtection]  WITH CHECK ADD  CONSTRAINT [FK_CathodicProtection_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[CathodicProtection] CHECK CONSTRAINT [FK_CathodicProtection_Users]
GO
ALTER TABLE [dbo].[ComboBoxModeloActuadores]  WITH CHECK ADD  CONSTRAINT [FK_ComboBoxModeloActuadores_Accion] FOREIGN KEY([id_accion])
REFERENCES [dbo].[ComboBoxAccionActuadores] ([id])
GO
ALTER TABLE [dbo].[ComboBoxModeloActuadores] CHECK CONSTRAINT [FK_ComboBoxModeloActuadores_Accion]
GO
ALTER TABLE [dbo].[ComboBoxModeloActuadores]  WITH CHECK ADD  CONSTRAINT [FK_ComboBoxModeloActuadores_Referencia] FOREIGN KEY([id_referencia])
REFERENCES [dbo].[ComboBoxRefeActuadores] ([id])
GO
ALTER TABLE [dbo].[ComboBoxModeloActuadores] CHECK CONSTRAINT [FK_ComboBoxModeloActuadores_Referencia]
GO
ALTER TABLE [dbo].[ComboBoxRefeActuadores]  WITH CHECK ADD  CONSTRAINT [FK_ComboBoxRefeActuadores_Marca] FOREIGN KEY([id_marca])
REFERENCES [dbo].[ComboBoxMarcaActuadores] ([id])
GO
ALTER TABLE [dbo].[ComboBoxRefeActuadores] CHECK CONSTRAINT [FK_ComboBoxRefeActuadores_Marca]
GO
ALTER TABLE [dbo].[ComboBoxTorqueActuadores]  WITH CHECK ADD  CONSTRAINT [FK_ComboBoxTorqueActuadores_Ansi] FOREIGN KEY([id_ansi])
REFERENCES [dbo].[ComboBoxAnsiActuadores] ([id])
GO
ALTER TABLE [dbo].[ComboBoxTorqueActuadores] CHECK CONSTRAINT [FK_ComboBoxTorqueActuadores_Ansi]
GO
ALTER TABLE [dbo].[ComboBoxTorqueActuadores]  WITH CHECK ADD  CONSTRAINT [FK_ComboBoxTorqueActuadores_Inches] FOREIGN KEY([id_inches])
REFERENCES [dbo].[ComboBoxInchesActuadores] ([id])
GO
ALTER TABLE [dbo].[ComboBoxTorqueActuadores] CHECK CONSTRAINT [FK_ComboBoxTorqueActuadores_Inches]
GO
ALTER TABLE [dbo].[ComputadoresF]  WITH CHECK ADD  CONSTRAINT [FK_ComputadoresF_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ComputadoresF] CHECK CONSTRAINT [FK_ComputadoresF_Proyects]
GO
ALTER TABLE [dbo].[ComputadoresF]  WITH CHECK ADD  CONSTRAINT [FK_ComputadoresF_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ComputadoresF] CHECK CONSTRAINT [FK_ComputadoresF_Users]
GO
ALTER TABLE [dbo].[DesingPressure]  WITH CHECK ADD  CONSTRAINT [FK_DesingPressure_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[DesingPressure] CHECK CONSTRAINT [FK_DesingPressure_Proyects]
GO
ALTER TABLE [dbo].[DesingPressure]  WITH CHECK ADD  CONSTRAINT [FK_DesingPressure_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[DesingPressure] CHECK CONSTRAINT [FK_DesingPressure_Users]
GO
ALTER TABLE [dbo].[DesingPressureP]  WITH CHECK ADD  CONSTRAINT [FK_DesingPressureP_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[DesingPressureP] CHECK CONSTRAINT [FK_DesingPressureP_Proyects]
GO
ALTER TABLE [dbo].[DesingPressureP]  WITH CHECK ADD  CONSTRAINT [FK_DesingPressureP_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[DesingPressureP] CHECK CONSTRAINT [FK_DesingPressureP_Users]
GO
ALTER TABLE [dbo].[DiameterGVel]  WITH CHECK ADD  CONSTRAINT [FK_DiameterGVel_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[DiameterGVel] CHECK CONSTRAINT [FK_DiameterGVel_Proyects]
GO
ALTER TABLE [dbo].[DiameterGVel]  WITH CHECK ADD  CONSTRAINT [FK_DiameterGVel_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[DiameterGVel] CHECK CONSTRAINT [FK_DiameterGVel_Users]
GO
ALTER TABLE [dbo].[ElectricalResistance]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalResistance_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ElectricalResistance] CHECK CONSTRAINT [FK_ElectricalResistance_Proyects]
GO
ALTER TABLE [dbo].[ElectricalResistance]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalResistance_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ElectricalResistance] CHECK CONSTRAINT [FK_ElectricalResistance_Users]
GO
ALTER TABLE [dbo].[ElectrolyteResistance]  WITH CHECK ADD  CONSTRAINT [FK_ElectrolyteResistance_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ElectrolyteResistance] CHECK CONSTRAINT [FK_ElectrolyteResistance_Proyects]
GO
ALTER TABLE [dbo].[ElectrolyteResistance]  WITH CHECK ADD  CONSTRAINT [FK_ElectrolyteResistance_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ElectrolyteResistance] CHECK CONSTRAINT [FK_ElectrolyteResistance_Users]
GO
ALTER TABLE [dbo].[Erf]  WITH CHECK ADD  CONSTRAINT [FK_Erf_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Erf] CHECK CONSTRAINT [FK_Erf_Proyects]
GO
ALTER TABLE [dbo].[Erf]  WITH CHECK ADD  CONSTRAINT [FK_Erf_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Erf] CHECK CONSTRAINT [FK_Erf_Users]
GO
ALTER TABLE [dbo].[EspecialidadFase]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFase_Especialidad] FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[Especialidades] ([id])
GO
ALTER TABLE [dbo].[EspecialidadFase] CHECK CONSTRAINT [FK_EspecialidadFase_Especialidad]
GO
ALTER TABLE [dbo].[EspecialidadFase]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFase_Fase] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id])
GO
ALTER TABLE [dbo].[EspecialidadFase] CHECK CONSTRAINT [FK_EspecialidadFase_Fase]
GO
ALTER TABLE [dbo].[EspecialidadFase]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFase_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EspecialidadFase] CHECK CONSTRAINT [FK_EspecialidadFase_Proyects]
GO
ALTER TABLE [dbo].[EspecialidadFase]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFase_User] FOREIGN KEY([lider])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[EspecialidadFase] CHECK CONSTRAINT [FK_EspecialidadFase_User]
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFaseActPro_Especialidad] FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[Especialidades] ([id])
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro] CHECK CONSTRAINT [FK_EspecialidadFaseActPro_Especialidad]
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFaseActPro_Fase] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id])
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro] CHECK CONSTRAINT [FK_EspecialidadFaseActPro_Fase]
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadFaseActPro_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EspecialidadFaseActPro] CHECK CONSTRAINT [FK_EspecialidadFaseActPro_Proyects]
GO
ALTER TABLE [dbo].[EspecialidadProyects]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadProyects_Especialidad] FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[Especialidades] ([id])
GO
ALTER TABLE [dbo].[EspecialidadProyects] CHECK CONSTRAINT [FK_EspecialidadProyects_Especialidad]
GO
ALTER TABLE [dbo].[EspecialidadProyects]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadProyects_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EspecialidadProyects] CHECK CONSTRAINT [FK_EspecialidadProyects_Proyects]
GO
ALTER TABLE [dbo].[EspecialidadProyects]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadProyects_User] FOREIGN KEY([lider])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[EspecialidadProyects] CHECK CONSTRAINT [FK_EspecialidadProyects_User]
GO
ALTER TABLE [dbo].[EstimatedWeight]  WITH CHECK ADD  CONSTRAINT [FK_EstimatedWeight_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[EstimatedWeight] CHECK CONSTRAINT [FK_EstimatedWeight_Proyects]
GO
ALTER TABLE [dbo].[EstimatedWeight]  WITH CHECK ADD  CONSTRAINT [FK_EstimatedWeight_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[EstimatedWeight] CHECK CONSTRAINT [FK_EstimatedWeight_Users]
GO
ALTER TABLE [dbo].[FanLaws]  WITH CHECK ADD  CONSTRAINT [FK_FanLaws_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[FanLaws] CHECK CONSTRAINT [FK_FanLaws_Proyects]
GO
ALTER TABLE [dbo].[FanLaws]  WITH CHECK ADD  CONSTRAINT [FK_FanLaws_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[FanLaws] CHECK CONSTRAINT [FK_FanLaws_Users]
GO
ALTER TABLE [dbo].[FaseTiempo]  WITH CHECK ADD  CONSTRAINT [FK_FaseTiempo_Especialidad] FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[Especialidades] ([id])
GO
ALTER TABLE [dbo].[FaseTiempo] CHECK CONSTRAINT [FK_FaseTiempo_Especialidad]
GO
ALTER TABLE [dbo].[FaseTiempo]  WITH CHECK ADD  CONSTRAINT [FK_FaseTiempo_Fase] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id])
GO
ALTER TABLE [dbo].[FaseTiempo] CHECK CONSTRAINT [FK_FaseTiempo_Fase]
GO
ALTER TABLE [dbo].[FaseTiempo]  WITH CHECK ADD  CONSTRAINT [FK_FaseTiempo_Proyecto] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyects] ([id])
GO
ALTER TABLE [dbo].[FaseTiempo] CHECK CONSTRAINT [FK_FaseTiempo_Proyecto]
GO
ALTER TABLE [dbo].[GasPipeline]  WITH CHECK ADD  CONSTRAINT [FK_GasPipeline_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[GasPipeline] CHECK CONSTRAINT [FK_GasPipeline_Proyects]
GO
ALTER TABLE [dbo].[GasPipeline]  WITH CHECK ADD  CONSTRAINT [FK_GasPipeline_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[GasPipeline] CHECK CONSTRAINT [FK_GasPipeline_Users]
GO
ALTER TABLE [dbo].[GasPipelineR]  WITH CHECK ADD  CONSTRAINT [FK_GasPipelineR_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[GasPipelineR] CHECK CONSTRAINT [FK_GasPipelineR_Proyects]
GO
ALTER TABLE [dbo].[GasPipelineR]  WITH CHECK ADD  CONSTRAINT [FK_GasPipelineR_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[GasPipelineR] CHECK CONSTRAINT [FK_GasPipelineR_Users]
GO
ALTER TABLE [dbo].[HotTapSizing]  WITH CHECK ADD  CONSTRAINT [FK_HotTapSizing_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[HotTapSizing] CHECK CONSTRAINT [FK_HotTapSizing_Proyects]
GO
ALTER TABLE [dbo].[HotTapSizing]  WITH CHECK ADD  CONSTRAINT [FK_HotTapSizing_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[HotTapSizing] CHECK CONSTRAINT [FK_HotTapSizing_Users]
GO
ALTER TABLE [dbo].[Installation]  WITH CHECK ADD  CONSTRAINT [FK_Installation_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Installation] CHECK CONSTRAINT [FK_Installation_Proyects]
GO
ALTER TABLE [dbo].[Installation]  WITH CHECK ADD  CONSTRAINT [FK_Installation_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Installation] CHECK CONSTRAINT [FK_Installation_Users]
GO
ALTER TABLE [dbo].[Maop]  WITH CHECK ADD  CONSTRAINT [FK_Maop_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Maop] CHECK CONSTRAINT [FK_Maop_Proyects]
GO
ALTER TABLE [dbo].[Maop]  WITH CHECK ADD  CONSTRAINT [FK_Maop_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Maop] CHECK CONSTRAINT [FK_Maop_Users]
GO
ALTER TABLE [dbo].[MaximunAllowable]  WITH CHECK ADD  CONSTRAINT [FK_MaximunAllowable_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[MaximunAllowable] CHECK CONSTRAINT [FK_MaximunAllowable_Proyects]
GO
ALTER TABLE [dbo].[MaximunAllowable]  WITH CHECK ADD  CONSTRAINT [FK_MaximunAllowable_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[MaximunAllowable] CHECK CONSTRAINT [FK_MaximunAllowable_Users]
GO
ALTER TABLE [dbo].[Medidores]  WITH CHECK ADD  CONSTRAINT [FK_MedRotatorios_ProyectsTemp] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Medidores] CHECK CONSTRAINT [FK_MedRotatorios_ProyectsTemp]
GO
ALTER TABLE [dbo].[Medidores]  WITH CHECK ADD  CONSTRAINT [FK_MedRotatorios_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Medidores] CHECK CONSTRAINT [FK_MedRotatorios_Users]
GO
ALTER TABLE [dbo].[ModuloOpcion]  WITH CHECK ADD  CONSTRAINT [FK_ModuloOpcion_Modulo] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulos] ([id])
GO
ALTER TABLE [dbo].[ModuloOpcion] CHECK CONSTRAINT [FK_ModuloOpcion_Modulo]
GO
ALTER TABLE [dbo].[ModuloOpcion]  WITH CHECK ADD  CONSTRAINT [FK_ModuloOpcion_Opcion] FOREIGN KEY([id_opcion])
REFERENCES [dbo].[Opciones] ([id])
GO
ALTER TABLE [dbo].[ModuloOpcion] CHECK CONSTRAINT [FK_ModuloOpcion_Opcion]
GO
ALTER TABLE [dbo].[MotorizedV]  WITH CHECK ADD  CONSTRAINT [FK_MotorizedV_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[MotorizedV] CHECK CONSTRAINT [FK_MotorizedV_Proyects]
GO
ALTER TABLE [dbo].[MotorizedV]  WITH CHECK ADD  CONSTRAINT [FK_MotorizedV_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[MotorizedV] CHECK CONSTRAINT [FK_MotorizedV_Users]
GO
ALTER TABLE [dbo].[Ohm]  WITH CHECK ADD  CONSTRAINT [FK_Ohm_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Ohm] CHECK CONSTRAINT [FK_Ohm_Proyects]
GO
ALTER TABLE [dbo].[Ohm]  WITH CHECK ADD  CONSTRAINT [FK_Ohm_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Ohm] CHECK CONSTRAINT [FK_Ohm_Users]
GO
ALTER TABLE [dbo].[PackPipeline]  WITH CHECK ADD  CONSTRAINT [FK_PackPipeline_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PackPipeline] CHECK CONSTRAINT [FK_PackPipeline_Proyects]
GO
ALTER TABLE [dbo].[PackPipeline]  WITH CHECK ADD  CONSTRAINT [FK_PackPipeline_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PackPipeline] CHECK CONSTRAINT [FK_PackPipeline_Users]
GO
ALTER TABLE [dbo].[PipelineHydrostatic]  WITH CHECK ADD  CONSTRAINT [FK_PipelineHydrostatic_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PipelineHydrostatic] CHECK CONSTRAINT [FK_PipelineHydrostatic_Proyects]
GO
ALTER TABLE [dbo].[PipelineHydrostatic]  WITH CHECK ADD  CONSTRAINT [FK_PipelineHydrostatic_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PipelineHydrostatic] CHECK CONSTRAINT [FK_PipelineHydrostatic_Users]
GO
ALTER TABLE [dbo].[PipelineTime ]  WITH CHECK ADD  CONSTRAINT [FK_PipelineTime _Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PipelineTime ] CHECK CONSTRAINT [FK_PipelineTime _Proyects]
GO
ALTER TABLE [dbo].[PipelineTime ]  WITH CHECK ADD  CONSTRAINT [FK_PipelineTime _Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PipelineTime ] CHECK CONSTRAINT [FK_PipelineTime _Users]
GO
ALTER TABLE [dbo].[PipingPipe]  WITH CHECK ADD  CONSTRAINT [FK_PipingPipe_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PipingPipe] CHECK CONSTRAINT [FK_PipingPipe_Proyects]
GO
ALTER TABLE [dbo].[PipingPipe]  WITH CHECK ADD  CONSTRAINT [FK_PipingPipe_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PipingPipe] CHECK CONSTRAINT [FK_PipingPipe_Users]
GO
ALTER TABLE [dbo].[Platina]  WITH CHECK ADD  CONSTRAINT [FK_Platina_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Platina] CHECK CONSTRAINT [FK_Platina_Proyects]
GO
ALTER TABLE [dbo].[Platina]  WITH CHECK ADD  CONSTRAINT [FK_Platina_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Platina] CHECK CONSTRAINT [FK_Platina_Users]
GO
ALTER TABLE [dbo].[PolytropicHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_PolytropicHorsePower_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PolytropicHorsePower] CHECK CONSTRAINT [FK_PolytropicHorsePower_Proyects]
GO
ALTER TABLE [dbo].[PolytropicHorsePower]  WITH CHECK ADD  CONSTRAINT [FK_PolytropicHorsePower_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PolytropicHorsePower] CHECK CONSTRAINT [FK_PolytropicHorsePower_Users]
GO
ALTER TABLE [dbo].[PostInstallation]  WITH CHECK ADD  CONSTRAINT [FK_PostInstallation_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PostInstallation] CHECK CONSTRAINT [FK_PostInstallation_Proyects]
GO
ALTER TABLE [dbo].[PostInstallation]  WITH CHECK ADD  CONSTRAINT [FK_PostInstallation_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PostInstallation] CHECK CONSTRAINT [FK_PostInstallation_Users]
GO
ALTER TABLE [dbo].[PowerConsumption]  WITH CHECK ADD  CONSTRAINT [FK_PowerConsumption_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PowerConsumption] CHECK CONSTRAINT [FK_PowerConsumption_Proyects]
GO
ALTER TABLE [dbo].[PowerConsumption]  WITH CHECK ADD  CONSTRAINT [FK_PowerConsumption_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PowerConsumption] CHECK CONSTRAINT [FK_PowerConsumption_Users]
GO
ALTER TABLE [dbo].[Proyects]  WITH CHECK ADD  CONSTRAINT [FK_Proyects_ProyectsTemp] FOREIGN KEY([id_proyecttemp])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Proyects] CHECK CONSTRAINT [FK_Proyects_ProyectsTemp]
GO
ALTER TABLE [dbo].[Proyects]  WITH CHECK ADD  CONSTRAINT [FK_Users_Proyects] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Proyects] CHECK CONSTRAINT [FK_Users_Proyects]
GO
ALTER TABLE [dbo].[ProyectsTemp]  WITH CHECK ADD  CONSTRAINT [FK_Users_ProyectsTemp] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ProyectsTemp] CHECK CONSTRAINT [FK_Users_ProyectsTemp]
GO
ALTER TABLE [dbo].[PurgingCalculations ]  WITH CHECK ADD  CONSTRAINT [FK_PurgingCalculations _Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[PurgingCalculations ] CHECK CONSTRAINT [FK_PurgingCalculations _Proyects]
GO
ALTER TABLE [dbo].[PurgingCalculations ]  WITH CHECK ADD  CONSTRAINT [FK_PurgingCalculations _Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[PurgingCalculations ] CHECK CONSTRAINT [FK_PurgingCalculations _Users]
GO
ALTER TABLE [dbo].[RateElectrical]  WITH CHECK ADD  CONSTRAINT [FK_RateElectrical_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[RateElectrical] CHECK CONSTRAINT [FK_RateElectrical_Proyects]
GO
ALTER TABLE [dbo].[RateElectrical]  WITH CHECK ADD  CONSTRAINT [FK_RateElectrical_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RateElectrical] CHECK CONSTRAINT [FK_RateElectrical_Users]
GO
ALTER TABLE [dbo].[Reguladores]  WITH CHECK ADD  CONSTRAINT [FK_Reguladores_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Reguladores] CHECK CONSTRAINT [FK_Reguladores_Proyects]
GO
ALTER TABLE [dbo].[Reguladores]  WITH CHECK ADD  CONSTRAINT [FK_Reguladores_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Reguladores] CHECK CONSTRAINT [FK_Reguladores_Users]
GO
ALTER TABLE [dbo].[ReguladoresCV]  WITH CHECK ADD  CONSTRAINT [FK_ReguladoresTM_Modelos] FOREIGN KEY([id_modelo])
REFERENCES [dbo].[ReguladoresModelo] ([id])
GO
ALTER TABLE [dbo].[ReguladoresCV] CHECK CONSTRAINT [FK_ReguladoresTM_Modelos]
GO
ALTER TABLE [dbo].[ReguladoresCV]  WITH CHECK ADD  CONSTRAINT [FK_ReguladoresTM_Tamano] FOREIGN KEY([id_tamano])
REFERENCES [dbo].[ReguladoresTamano] ([id])
GO
ALTER TABLE [dbo].[ReguladoresCV] CHECK CONSTRAINT [FK_ReguladoresTM_Tamano]
GO
ALTER TABLE [dbo].[RegulatorStation]  WITH CHECK ADD  CONSTRAINT [FK_RegulatorStation_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[RegulatorStation] CHECK CONSTRAINT [FK_RegulatorStation_Proyects]
GO
ALTER TABLE [dbo].[RegulatorStation]  WITH CHECK ADD  CONSTRAINT [FK_RegulatorStation_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RegulatorStation] CHECK CONSTRAINT [FK_RegulatorStation_Users]
GO
ALTER TABLE [dbo].[ReinforcementWeld]  WITH CHECK ADD  CONSTRAINT [FK_ReinforcementWeld_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ReinforcementWeld] CHECK CONSTRAINT [FK_ReinforcementWeld_Proyects]
GO
ALTER TABLE [dbo].[ReinforcementWeld]  WITH CHECK ADD  CONSTRAINT [FK_ReinforcementWeld_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ReinforcementWeld] CHECK CONSTRAINT [FK_ReinforcementWeld_Users]
GO
ALTER TABLE [dbo].[RelationshipRand]  WITH CHECK ADD  CONSTRAINT [FK_RelationshipRand_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[RelationshipRand] CHECK CONSTRAINT [FK_RelationshipRand_Proyects]
GO
ALTER TABLE [dbo].[RelationshipRand]  WITH CHECK ADD  CONSTRAINT [FK_RelationshipRand_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RelationshipRand] CHECK CONSTRAINT [FK_RelationshipRand_Users]
GO
ALTER TABLE [dbo].[ReliefValveReaction]  WITH CHECK ADD  CONSTRAINT [FK_ReliefValveReaction_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ReliefValveReaction] CHECK CONSTRAINT [FK_ReliefValveReaction_Proyects]
GO
ALTER TABLE [dbo].[ReliefValveReaction]  WITH CHECK ADD  CONSTRAINT [FK_ReliefValveReaction_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ReliefValveReaction] CHECK CONSTRAINT [FK_ReliefValveReaction_Users]
GO
ALTER TABLE [dbo].[ReliefValveSizing]  WITH CHECK ADD  CONSTRAINT [FK_ReliefValveSizing_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ReliefValveSizing] CHECK CONSTRAINT [FK_ReliefValveSizing_Proyects]
GO
ALTER TABLE [dbo].[ReliefValveSizing]  WITH CHECK ADD  CONSTRAINT [FK_ReliefValveSizing_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ReliefValveSizing] CHECK CONSTRAINT [FK_ReliefValveSizing_Users]
GO
ALTER TABLE [dbo].[RequiredAnodes]  WITH CHECK ADD  CONSTRAINT [FK_RequiredAnodes_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[RequiredAnodes] CHECK CONSTRAINT [FK_RequiredAnodes_Proyects]
GO
ALTER TABLE [dbo].[RequiredAnodes]  WITH CHECK ADD  CONSTRAINT [FK_RequiredAnodes_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RequiredAnodes] CHECK CONSTRAINT [FK_RequiredAnodes_Users]
GO
ALTER TABLE [dbo].[ResistanceIAGB]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceIAGB_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ResistanceIAGB] CHECK CONSTRAINT [FK_ResistanceIAGB_Proyects]
GO
ALTER TABLE [dbo].[ResistanceIAGB]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceIAGB_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ResistanceIAGB] CHECK CONSTRAINT [FK_ResistanceIAGB_Users]
GO
ALTER TABLE [dbo].[ResistanceRMVA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRMVA_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ResistanceRMVA] CHECK CONSTRAINT [FK_ResistanceRMVA_Proyects]
GO
ALTER TABLE [dbo].[ResistanceRMVA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRMVA_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ResistanceRMVA] CHECK CONSTRAINT [FK_ResistanceRMVA_Users]
GO
ALTER TABLE [dbo].[ResistanceRSHA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRSHA_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ResistanceRSHA] CHECK CONSTRAINT [FK_ResistanceRSHA_Proyects]
GO
ALTER TABLE [dbo].[ResistanceRSHA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRSHA_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ResistanceRSHA] CHECK CONSTRAINT [FK_ResistanceRSHA_Users]
GO
ALTER TABLE [dbo].[ResistanceRSVA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRSVA_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ResistanceRSVA] CHECK CONSTRAINT [FK_ResistanceRSVA_Proyects]
GO
ALTER TABLE [dbo].[ResistanceRSVA]  WITH CHECK ADD  CONSTRAINT [FK_ResistanceRSVA_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ResistanceRSVA] CHECK CONSTRAINT [FK_ResistanceRSVA_Users]
GO
ALTER TABLE [dbo].[RolesUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RolesUsuario_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles2] ([id])
GO
ALTER TABLE [dbo].[RolesUsuario] CHECK CONSTRAINT [FK_RolesUsuario_Rol]
GO
ALTER TABLE [dbo].[RolesUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RolesUsuario_Usuario] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RolesUsuario] CHECK CONSTRAINT [FK_RolesUsuario_Usuario]
GO
ALTER TABLE [dbo].[RolesUsuPro]  WITH CHECK ADD  CONSTRAINT [FK_RolesUsuPro_Proyecto] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[ProyectsTemp] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolesUsuPro] CHECK CONSTRAINT [FK_RolesUsuPro_Proyecto]
GO
ALTER TABLE [dbo].[RolesUsuPro]  WITH CHECK ADD  CONSTRAINT [FK_RolesUsuPro_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[RolesUsuPro] CHECK CONSTRAINT [FK_RolesUsuPro_Rol]
GO
ALTER TABLE [dbo].[RolesUsuPro]  WITH CHECK ADD  CONSTRAINT [FK_RolesUsuPro_Usuario] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[RolesUsuPro] CHECK CONSTRAINT [FK_RolesUsuPro_Usuario]
GO
ALTER TABLE [dbo].[Rudenbergs]  WITH CHECK ADD  CONSTRAINT [FK_Rudenbergs_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Rudenbergs] CHECK CONSTRAINT [FK_Rudenbergs_Proyects]
GO
ALTER TABLE [dbo].[Rudenbergs]  WITH CHECK ADD  CONSTRAINT [FK_Rudenbergs_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Rudenbergs] CHECK CONSTRAINT [FK_Rudenbergs_Users]
GO
ALTER TABLE [dbo].[Suggested]  WITH CHECK ADD  CONSTRAINT [FK_Proyects_Suggested] FOREIGN KEY([idproyect])
REFERENCES [dbo].[Proyects] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Suggested] CHECK CONSTRAINT [FK_Proyects_Suggested]
GO
ALTER TABLE [dbo].[TorquePorActuadores]  WITH CHECK ADD  CONSTRAINT [FK_TorquePorActuadores_Actuador] FOREIGN KEY([id_actuador])
REFERENCES [dbo].[ComboBoxModeloActuadores] ([id])
GO
ALTER TABLE [dbo].[TorquePorActuadores] CHECK CONSTRAINT [FK_TorquePorActuadores_Actuador]
GO
ALTER TABLE [dbo].[TorquePorActuadores]  WITH CHECK ADD  CONSTRAINT [FK_TorquePorActuadores_Presion] FOREIGN KEY([id_presion])
REFERENCES [dbo].[ComboBoxPresionActuadores] ([id])
GO
ALTER TABLE [dbo].[TorquePorActuadores] CHECK CONSTRAINT [FK_TorquePorActuadores_Presion]
GO
ALTER TABLE [dbo].[Transmitters]  WITH CHECK ADD  CONSTRAINT [FK_Transmitters_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[Transmitters] CHECK CONSTRAINT [FK_Transmitters_Proyects]
GO
ALTER TABLE [dbo].[Transmitters]  WITH CHECK ADD  CONSTRAINT [FK_Transmitters_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Transmitters] CHECK CONSTRAINT [FK_Transmitters_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Rol]
GO
ALTER TABLE [dbo].[UsersSession]  WITH CHECK ADD  CONSTRAINT [FK_UsersSession_Usuario] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UsersSession] CHECK CONSTRAINT [FK_UsersSession_Usuario]
GO
ALTER TABLE [dbo].[ValvulasReg]  WITH CHECK ADD  CONSTRAINT [FK_ValvulasReg_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ValvulasReg] CHECK CONSTRAINT [FK_ValvulasReg_Proyects]
GO
ALTER TABLE [dbo].[ValvulasReg]  WITH CHECK ADD  CONSTRAINT [FK_ValvulasReg_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ValvulasReg] CHECK CONSTRAINT [FK_ValvulasReg_Users]
GO
ALTER TABLE [dbo].[ValvulasSReg]  WITH CHECK ADD  CONSTRAINT [FK_ValvulasSReg_Proyects] FOREIGN KEY([id_proyect])
REFERENCES [dbo].[ProyectsTemp] ([id])
GO
ALTER TABLE [dbo].[ValvulasSReg] CHECK CONSTRAINT [FK_ValvulasSReg_Proyects]
GO
ALTER TABLE [dbo].[ValvulasSReg]  WITH CHECK ADD  CONSTRAINT [FK_ValvulasSReg_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ValvulasSReg] CHECK CONSTRAINT [FK_ValvulasSReg_Users]
GO
/****** Object:  StoredProcedure [dbo].[editarPaso1]    Script Date: 20/11/2019 7:58:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editarPaso1]
	@id_proyecto INT,
	@new_name varchar(50),
	@ids_especialidades varchar(50),
	@res INT OUTPUT
AS

SET @res = (SELECT COUNT(id)
	FROM [Plataforma].[dbo].[ProyectsTemp]
	WHERE id != @id_proyecto and name = @new_name);

if @res > 0
	print 'Se debe alertar'
else
    DECLARE @espe varchar(50)
	SET @espe = (SELECT count(splitdata) FROM [Plataforma].[dbo].[Split] (@ids_especialidades,'-'))
	print @espe
	

RETURN;


GO
