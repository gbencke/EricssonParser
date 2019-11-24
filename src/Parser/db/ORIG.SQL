-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: PARSER
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_AddressIPv4`
--

DROP TABLE IF EXISTS `t_AddressIPv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AddressIPv4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_interfaceIPv4Id` varchar(100) DEFAULT NULL,
  `f_addressIPv4Id` varchar(100) DEFAULT NULL,
  `f_configurationMode` text,
  `f_dhcpClientIdentifierType` text,
  `f_reservedBy` text,
  `f_usedAddress` varchar(255) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_in_ad` (`f_addressIPv4Id`,`f_meContextId`,`f_subNetworkId`,`f_routerId`,`f_interfaceIPv4Id`,`f_managedElementId`,`f_transportId`),
  KEY `f_usedAddress` (`f_usedAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=169149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AdmissionControl`
--

DROP TABLE IF EXISTS `t_AdmissionControl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AdmissionControl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_admissionControlId` varchar(100) DEFAULT NULL,
  `f_admNrRbDifferentiationThr` bigint(20) DEFAULT NULL,
  `f_admNrRrcDifferentiationThr` bigint(20) DEFAULT NULL,
  `f_admResourceMinQciPrio` bigint(20) DEFAULT NULL,
  `f_arpBasedPreEmptionState` text,
  `f_diffAdmCtrlFilteringEnabled` bit(1) DEFAULT NULL,
  `f_dlAdmDifferentiationThr` bigint(20) DEFAULT NULL,
  `f_dlAdmOverloadThr` bigint(20) DEFAULT NULL,
  `f_dlMbmsGbrRatio` bigint(20) DEFAULT NULL,
  `f_dlTransNwBandwidth` bigint(20) DEFAULT NULL,
  `f_lbAtoThresholdLevel1` bigint(20) DEFAULT NULL,
  `f_lbAtoThresholdLevel2` bigint(20) DEFAULT NULL,
  `f_limitSrNonPa` bigint(20) DEFAULT NULL,
  `f_nrOfPaConnHpaReservPerCell` bigint(20) DEFAULT NULL,
  `f_nrOfPaConnReservationsPerCell` bigint(20) DEFAULT NULL,
  `f_nrOfPrevPreempPaRbReservation` bigint(20) DEFAULT NULL,
  `f_nrOfRbReservationsPerPaConn` bigint(20) DEFAULT NULL,
  `f_paArpOverride` bigint(20) DEFAULT NULL,
  `f_paArpOverrideHpa` bigint(20) DEFAULT NULL,
  `f_resourceReservationForDifferentiation` bigint(20) DEFAULT NULL,
  `f_resourceReservationForPAState` text,
  `f_srBbmPaUsersPreallocation` bit(1) DEFAULT NULL,
  `f_ulAdmDifferentiationThr` bigint(20) DEFAULT NULL,
  `f_ulAdmOverloadThr` bigint(20) DEFAULT NULL,
  `f_ulTransNwBandwidth` bigint(20) DEFAULT NULL,
  `f_zzzTemp1` bigint(20) DEFAULT NULL,
  `f_zzzTemp10` bigint(20) DEFAULT NULL,
  `f_zzzTemp11` bigint(20) DEFAULT NULL,
  `f_zzzTemp12` bigint(20) DEFAULT NULL,
  `f_zzzTemp13` bigint(20) DEFAULT NULL,
  `f_zzzTemp14` bigint(20) DEFAULT NULL,
  `f_zzzTemp15` bigint(20) DEFAULT NULL,
  `f_zzzTemp16` bigint(20) DEFAULT NULL,
  `f_zzzTemp17` bigint(20) DEFAULT NULL,
  `f_zzzTemp18` bigint(20) DEFAULT NULL,
  `f_zzzTemp19` bigint(20) DEFAULT NULL,
  `f_zzzTemp2` bigint(20) DEFAULT NULL,
  `f_zzzTemp20` bigint(20) DEFAULT NULL,
  `f_zzzTemp21` bigint(20) DEFAULT NULL,
  `f_zzzTemp3` bigint(20) DEFAULT NULL,
  `f_zzzTemp4` bigint(20) DEFAULT NULL,
  `f_zzzTemp5` bigint(20) DEFAULT NULL,
  `f_zzzTemp6` bigint(20) DEFAULT NULL,
  `f_zzzTemp7` bigint(20) DEFAULT NULL,
  `f_zzzTemp8` bigint(20) DEFAULT NULL,
  `f_zzzTemp9` bigint(20) DEFAULT NULL,
  `f_zzzTemporary22` bigint(20) DEFAULT NULL,
  `f_zzzTemporary23` bigint(20) DEFAULT NULL,
  `f_zzzTemporary24` bigint(20) DEFAULT NULL,
  `f_zzzTemporary25` bigint(20) DEFAULT NULL,
  `f_zzzTemporary26` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ad` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_admissionControlId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AmoFunction`
--

DROP TABLE IF EXISTS `t_AmoFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AmoFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_amoFunctionId` varchar(100) DEFAULT NULL,
  `f_allowInterVendorX2Signal` bit(1) DEFAULT NULL,
  `f_amoAllowedInterVendor` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_am` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_amoFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AnrFunction`
--

DROP TABLE IF EXISTS `t_AnrFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionId` varchar(100) DEFAULT NULL,
  `f_cellRelHoAttRateThreshold` bigint(20) DEFAULT NULL,
  `f_maxNoPciReportsEvent` bigint(20) DEFAULT NULL,
  `f_maxTimeEventBasedPciConf` bigint(20) DEFAULT NULL,
  `f_pciConflictDetectionEcgiMeas` bit(1) DEFAULT NULL,
  `f_pciConflictMobilityEcgiMeas` bit(1) DEFAULT NULL,
  `f_perCgiMeasPlmnWhiteListGeran` bit(1) DEFAULT NULL,
  `f_perCgiMeasPlmnWhiteListUtran` bit(1) DEFAULT NULL,
  `f_perEcgiMeasPlmnWhiteList` bit(1) DEFAULT NULL,
  `f_plmnWhiteListEnabled` bit(1) DEFAULT NULL,
  `f_plmnWhiteListGeranEnabled` bit(1) DEFAULT NULL,
  `f_plmnWhiteListUtranEnabled` bit(1) DEFAULT NULL,
  `f_prioHoRate` bigint(20) DEFAULT NULL,
  `f_prioHoSuccRate` bigint(20) DEFAULT NULL,
  `f_prioTime` bigint(20) DEFAULT NULL,
  `f_probCellDetectLowHoSuccThres` bigint(20) DEFAULT NULL,
  `f_probCellDetectLowHoSuccTime` bigint(20) DEFAULT NULL,
  `f_probCellDetectMedHoSuccThres` bigint(20) DEFAULT NULL,
  `f_probCellDetectMedHoSuccTime` bigint(20) DEFAULT NULL,
  `f_problematicCellPolicy` text,
  `f_removeNcellTime` bigint(20) DEFAULT NULL,
  `f_removeNenbTime` bigint(20) DEFAULT NULL,
  `f_removeNrelTime` bigint(20) DEFAULT NULL,
  `f_zzzTemporary10` bigint(20) DEFAULT NULL,
  `f_zzzTemporary11` bigint(20) DEFAULT NULL,
  `f_zzzTemporary12` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  `f_zzzTemporary8` bigint(20) DEFAULT NULL,
  `f_zzzTemporary9` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_an` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_anrFunctionId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AnrFunctionEUtran`
--

DROP TABLE IF EXISTS `t_AnrFunctionEUtran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionEUtran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionEUtranId` varchar(100) DEFAULT NULL,
  `f_acquirePlmnIdListEnabled` bit(1) DEFAULT NULL,
  `f_anrEutranInterFMeasReportDecr` bigint(20) DEFAULT NULL,
  `f_anrEutranInterFMeasReportIncr` bigint(20) DEFAULT NULL,
  `f_anrEutranInterFMeasReportMax` bigint(20) DEFAULT NULL,
  `f_anrEutranInterFMeasReportMin` bigint(20) DEFAULT NULL,
  `f_anrInterFreqState` text,
  `f_anrIntraFreqState` text,
  `f_anrUesEUtraIntraFDecr` bigint(20) DEFAULT NULL,
  `f_anrUesEUtraIntraFIncrAnr` bigint(20) DEFAULT NULL,
  `f_anrUesEUtraIntraFIncrHo` bigint(20) DEFAULT NULL,
  `f_anrUesEUtraIntraFMax` bigint(20) DEFAULT NULL,
  `f_anrUesEUtraIntraFMin` bigint(20) DEFAULT NULL,
  `f_anrUesThreshInterFDecr` bigint(20) DEFAULT NULL,
  `f_anrUesThreshInterFIncrAnr` bigint(20) DEFAULT NULL,
  `f_anrUesThreshInterFIncrHo` bigint(20) DEFAULT NULL,
  `f_anrUesThreshInterFMax` bigint(20) DEFAULT NULL,
  `f_anrUesThreshInterFMin` bigint(20) DEFAULT NULL,
  `f_cellAddRsrpThresholdEutran` bigint(20) DEFAULT NULL,
  `f_cellAddRsrqThresholdEutran` bigint(20) DEFAULT NULL,
  `f_hoAllowedEutranPolicy` bit(1) DEFAULT NULL,
  `f_lbCellOffloadCapacityPolicy` bigint(20) DEFAULT NULL,
  `f_x2SetupPolicy` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_an_an` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_anrFunctionId`,`f_anrFunctionEUtranId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AnrFunctionGeran`
--

DROP TABLE IF EXISTS `t_AnrFunctionGeran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionGeran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionGeranId` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportDecr` bigint(20) DEFAULT NULL,
  `f_anrGeranMeasReportIncr` bigint(20) DEFAULT NULL,
  `f_anrGeranMeasReportMax` bigint(20) DEFAULT NULL,
  `f_anrGeranMeasReportMin` bigint(20) DEFAULT NULL,
  `f_anrGeranMeasReportRacIncr` bigint(20) DEFAULT NULL,
  `f_anrGeranRacMeasOn` bit(1) DEFAULT NULL,
  `f_anrStateGsm` text,
  `f_rimIntegrationEnabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_an_an` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_anrFunctionId`,`f_managedElementId`,`f_anrFunctionGeranId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AnrFunctionUtran`
--

DROP TABLE IF EXISTS `t_AnrFunctionUtran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionUtran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionUtranId` varchar(100) DEFAULT NULL,
  `f_anrStateUtran` text,
  `f_anrUtranAcMeasOn` bit(1) DEFAULT NULL,
  `f_anrUtranMeasReportAcIncr` bigint(20) DEFAULT NULL,
  `f_anrUtranMeasReportDecr` bigint(20) DEFAULT NULL,
  `f_anrUtranMeasReportIncr` bigint(20) DEFAULT NULL,
  `f_anrUtranMeasReportMax` bigint(20) DEFAULT NULL,
  `f_anrUtranMeasReportMin` bigint(20) DEFAULT NULL,
  `f_cellAddEcNoThresholdUtranDelta` bigint(20) DEFAULT NULL,
  `f_cellAddRscpThresholdUtranDelta` bigint(20) DEFAULT NULL,
  `f_hoAllowedUtranPolicy` bit(1) DEFAULT NULL,
  `f_rimIntegrationEnabled` bit(1) DEFAULT NULL,
  `f_srvccPolicy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_an_an` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_anrFunctionId`,`f_managedElementId`,`f_anrFunctionUtranId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AnrPciConflictDrxProfile`
--

DROP TABLE IF EXISTS `t_AnrPciConflictDrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrPciConflictDrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrPciConflictDrxProfileId` varchar(100) DEFAULT NULL,
  `f_anrPciConflictDrxInactivityTimer` text,
  `f_anrPciConflictLongDrxCycle` text,
  `f_anrPciConflictOnDurationTimer` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_an` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_anrPciConflictDrxProfileId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AntennaNearUnit`
--

DROP TABLE IF EXISTS `t_AntennaNearUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaNearUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_hardwareVersion` varchar(255) DEFAULT NULL,
  `f_iuantDeviceType` bigint(20) DEFAULT NULL,
  `f_onUnitUniqueId` varchar(255) DEFAULT NULL,
  `f_productNumber` varchar(255) DEFAULT NULL,
  `f_rfPortRef` varchar(255) DEFAULT NULL,
  `f_selfTestStatus` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_softwareVersion` varchar(255) DEFAULT NULL,
  `f_uniqueId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an` (`f_meContextId`,`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaNearUnitId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=452542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AntennaSubunit`
--

DROP TABLE IF EXISTS `t_AntennaSubunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaSubunit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaUnitId` varchar(100) DEFAULT NULL,
  `f_antennaSubunitId` varchar(100) DEFAULT NULL,
  `f_azimuthHalfPowerBeamwidth` bigint(20) DEFAULT NULL,
  `f_commonChBeamfrmPortMap` text,
  `f_customComChBeamfrmWtsAmplitude` text,
  `f_customComChBeamfrmWtsPhase` text,
  `f_maxTotalTilt` bigint(20) DEFAULT NULL,
  `f_minTotalTilt` bigint(20) DEFAULT NULL,
  `f_retSubunitRef` varchar(255) DEFAULT NULL,
  `f_totalTilt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an_an` (`f_meContextId`,`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaUnitId`,`f_managedElementId`,`f_equipmentId`,`f_antennaSubunitId`)
) ENGINE=MyISAM AUTO_INCREMENT=891606 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AntennaUnit`
--

DROP TABLE IF EXISTS `t_AntennaUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaUnitId` varchar(100) DEFAULT NULL,
  `f_mechanicalAntennaTilt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an` (`f_meContextId`,`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaUnitId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=516914 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AntennaUnitGroup`
--

DROP TABLE IF EXISTS `t_AntennaUnitGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaUnitGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an` (`f_meContextId`,`f_subNetworkId`,`f_antennaUnitGroupId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=516914 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AuPort`
--

DROP TABLE IF EXISTS `t_AuPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaUnitId` varchar(100) DEFAULT NULL,
  `f_antennaSubunitId` varchar(100) DEFAULT NULL,
  `f_auPortId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an_an_au` (`f_meContextId`,`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaUnitId`,`f_managedElementId`,`f_auPortId`,`f_equipmentId`,`f_antennaSubunitId`)
) ENGINE=MyISAM AUTO_INCREMENT=1388567 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AuthenticationOrder`
--

DROP TABLE IF EXISTS `t_AuthenticationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthenticationOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_authenticationOrderId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_au` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_authenticationOrderId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AuthenticationOrder_authenticationMethodOrder`
--

DROP TABLE IF EXISTS `t_AuthenticationOrder_authenticationMethodOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthenticationOrder_authenticationMethodOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_authenticationOrderId` varchar(100) DEFAULT NULL,
  `f_orderNumber` bigint(20) DEFAULT NULL,
  `f_methodReference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_au` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_authenticationOrderId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AuthorizationOrder`
--

DROP TABLE IF EXISTS `t_AuthorizationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthorizationOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_authorizationOrderId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_au` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_authorizationOrderId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AuthorizationOrder_authorizationMethodOrder`
--

DROP TABLE IF EXISTS `t_AuthorizationOrder_authorizationMethodOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthorizationOrder_authorizationMethodOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_authorizationOrderId` varchar(100) DEFAULT NULL,
  `f_orderNumber` bigint(20) DEFAULT NULL,
  `f_methodReference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_au` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_authorizationOrderId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AutoCellCapEstFunction`
--

DROP TABLE IF EXISTS `t_AutoCellCapEstFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutoCellCapEstFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_autoCellCapEstFunctionId` varchar(100) DEFAULT NULL,
  `f_useEstimatedCellCap` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_au` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_autoCellCapEstFunctionId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AutoProvisioning`
--

DROP TABLE IF EXISTS `t_AutoProvisioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutoProvisioning` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_autoProvisioningId` varchar(100) DEFAULT NULL,
  `f_rbsConfigLevel` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_au` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeSupportId`,`f_autoProvisioningId`)
) ENGINE=MyISAM AUTO_INCREMENT=84575 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_AutonomousMode`
--

DROP TABLE IF EXISTS `t_AutonomousMode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutonomousMode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_autonomousModeId` varchar(100) DEFAULT NULL,
  `f_activationState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_au` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_lmId`,`f_autonomousModeId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BandCombCompression`
--

DROP TABLE IF EXISTS `t_BandCombCompression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BandCombCompression` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_carrierAggregationFunctionId` varchar(100) DEFAULT NULL,
  `f_bandCombCompressionId` varchar(100) DEFAULT NULL,
  `f_requestMaxCCsDL` bigint(20) DEFAULT NULL,
  `f_requestMaxCCsUL` bigint(20) DEFAULT NULL,
  `f_requestReducedFormat` text,
  `f_requestReducedIntNonContComb` text,
  `f_requestSkipFallbackComb` text,
  `f_requestedBandCombCompression` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ca_ba` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_bandCombCompressionId`,`f_managedElementId`,`f_carrierAggregationFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BbProcessingResource`
--

DROP TABLE IF EXISTS `t_BbProcessingResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BbProcessingResource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_bbProcessingResourceId` varchar(100) DEFAULT NULL,
  `f_dlBbCapacityMaxLimit` bigint(20) DEFAULT NULL,
  `f_dlBbCapacityNet` bigint(20) DEFAULT NULL,
  `f_licCapDistr` bigint(20) DEFAULT NULL,
  `f_licPrbUnit` bigint(20) DEFAULT NULL,
  `f_ulBbCapacityMaxLimit` bigint(20) DEFAULT NULL,
  `f_ulBbCapacityNet` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_bb` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_bbProcessingResourceId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=44117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BoundaryOrdinaryClock`
--

DROP TABLE IF EXISTS `t_BoundaryOrdinaryClock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BoundaryOrdinaryClock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ptpId` varchar(100) DEFAULT NULL,
  `f_boundaryOrdinaryClockId` varchar(100) DEFAULT NULL,
  `f_clockStatus` text,
  `f_clockType` text,
  `f_domainNumber` bigint(20) DEFAULT NULL,
  `f_priority1` bigint(20) DEFAULT NULL,
  `f_priority2` bigint(20) DEFAULT NULL,
  `f_ptpProfile` text,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_pt_bo` (`f_meContextId`,`f_subNetworkId`,`f_boundaryOrdinaryClockId`,`f_managedElementId`,`f_transportId`,`f_ptpId`)
) ENGINE=MyISAM AUTO_INCREMENT=84575 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrM`
--

DROP TABLE IF EXISTS `t_BrM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br` (`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackup`
--

DROP TABLE IF EXISTS `t_BrmBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupId` varchar(100) DEFAULT NULL,
  `f_backupName` text,
  `f_creationTime` varchar(255) DEFAULT NULL,
  `f_creationType` text,
  `f_status` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_brmBackupId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1317423 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupHousekeeping`
--

DROP TABLE IF EXISTS `t_BrmBackupHousekeeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupHousekeeping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupHousekeepingId` varchar(100) DEFAULT NULL,
  `f_autoDelete` text,
  `f_maxStoredManualBackups` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_brmBackupHousekeepingId`,`f_subNetworkId`,`f_managedElementId`,`f_brmBackupManagerId`,`f_systemFunctionsId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupLabelStore`
--

DROP TABLE IF EXISTS `t_BrmBackupLabelStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupLabelStore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupLabelStoreId` varchar(100) DEFAULT NULL,
  `f_lastCreatedBackup` varchar(255) DEFAULT NULL,
  `f_restoreEscalationList` text,
  `f_lastRestoredBackup` text,
  `f_lastExportedBackup` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_brmBackupLabelStoreId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupManager`
--

DROP TABLE IF EXISTS `t_BrmBackupManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupManager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_autoExport` text,
  `f_backupDomain` varchar(255) DEFAULT NULL,
  `f_backupType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br` (`f_subNetworkId`,`f_managedElementId`,`f_brmBackupManagerId`,`f_systemFunctionsId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupManager_progressReport`
--

DROP TABLE IF EXISTS `t_BrmBackupManager_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupManager_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=27332 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupScheduler`
--

DROP TABLE IF EXISTS `t_BrmBackupScheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupScheduler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupSchedulerId` varchar(100) DEFAULT NULL,
  `f_adminState` text,
  `f_autoExport` text,
  `f_maxStoredScheduledBackups` bigint(20) DEFAULT NULL,
  `f_scheduledBackupName` varchar(255) DEFAULT NULL,
  `f_nextScheduledTime` varchar(255) DEFAULT NULL,
  `f_mostRecentlyCreatedAutoBackup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_brmBackupSchedulerId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=84576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackupScheduler_progressReport`
--

DROP TABLE IF EXISTS `t_BrmBackupScheduler_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupScheduler_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupSchedulerId` varchar(100) DEFAULT NULL,
  `f_result` bigint(20) DEFAULT NULL,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` bigint(20) DEFAULT NULL,
  `f_additionalInfo` varchar(255) DEFAULT NULL,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` varchar(255) DEFAULT NULL,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_brmBackupSchedulerId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackup_progressReport`
--

DROP TABLE IF EXISTS `t_BrmBackup_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackup_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_brmBackupId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=55661 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmBackup_swVersion`
--

DROP TABLE IF EXISTS `t_BrmBackup_swVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackup_swVersion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupId` varchar(100) DEFAULT NULL,
  `f_productionDate` varchar(255) DEFAULT NULL,
  `f_description` text,
  `f_productNumber` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  `f_productName` varchar(255) DEFAULT NULL,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_managedElementId`,`f_brmBackupManagerId`,`f_systemFunctionsId`,`f_brmBackupId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=1327363 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmCalendarBasedPeriodicEvent`
--

DROP TABLE IF EXISTS `t_BrmCalendarBasedPeriodicEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmCalendarBasedPeriodicEvent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupSchedulerId` varchar(100) DEFAULT NULL,
  `f_brmCalendarBasedPeriodicEventId` varchar(100) DEFAULT NULL,
  `f_dayOfMonth` bigint(20) DEFAULT NULL,
  `f_dayOfWeek` bigint(20) DEFAULT NULL,
  `f_dayOfWeekOccurrence` bigint(20) DEFAULT NULL,
  `f_month` bigint(20) DEFAULT NULL,
  `f_startTime` varchar(255) DEFAULT NULL,
  `f_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_brmCalendarBasedPeriodicEventId`,`f_brmBackupSchedulerId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmFailsafeBackup`
--

DROP TABLE IF EXISTS `t_BrmFailsafeBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmFailsafeBackup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmFailsafeBackupId` varchar(100) DEFAULT NULL,
  `f_timeoutLength` bigint(20) DEFAULT NULL,
  `f_usageState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_managedElementId`,`f_brmFailsafeBackupId`,`f_brmBackupManagerId`,`f_systemFunctionsId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmFailsafeBackup_progressReport`
--

DROP TABLE IF EXISTS `t_BrmFailsafeBackup_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmFailsafeBackup_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmFailsafeBackupId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br_br` (`f_subNetworkId`,`f_systemFunctionsId`,`f_brmBackupManagerId`,`f_brMId`,`f_meContextId`,`f_brmFailsafeBackupId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=2250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_BrmRollbackAtRestore`
--

DROP TABLE IF EXISTS `t_BrmRollbackAtRestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmRollbackAtRestore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_brmRollbackAtRestoreId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_br_br` (`f_subNetworkId`,`f_managedElementId`,`f_brmRollbackAtRestoreId`,`f_systemFunctionsId`,`f_brMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Cabinet`
--

DROP TABLE IF EXISTS `t_Cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Cabinet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_cabinetId` varchar(100) DEFAULT NULL,
  `f_alarmInExternalMe` bit(1) DEFAULT NULL,
  `f_climateRegulationSystem` text,
  `f_climateSystem` text,
  `f_smokeDetector` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_ca` (`f_cabinetId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=84913 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CapacityKey`
--

DROP TABLE IF EXISTS `t_CapacityKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_capacityKeyId` varchar(100) DEFAULT NULL,
  `f_grantedCapacityLevel` bigint(20) DEFAULT NULL,
  `f_keyId` varchar(255) DEFAULT NULL,
  `f_licensedCapacityLimitReached` bit(1) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_productType` varchar(255) DEFAULT NULL,
  `f_state` varchar(255) DEFAULT NULL,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_expiration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ca` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_capacityKeyId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=2395080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CapacityKey_licensedCapacityLimit`
--

DROP TABLE IF EXISTS `t_CapacityKey_licensedCapacityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityKey_licensedCapacityLimit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_capacityKeyId` varchar(100) DEFAULT NULL,
  `f_noLimit` bit(1) DEFAULT NULL,
  `f_value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ca` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_capacityKeyId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=2395080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CapacityState`
--

DROP TABLE IF EXISTS `t_CapacityState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityState` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_capacityStateId` varchar(100) DEFAULT NULL,
  `f_capacityKey` varchar(255) DEFAULT NULL,
  `f_description` text,
  `f_grantedCapacityLevel` bigint(20) DEFAULT NULL,
  `f_keyId` varchar(255) DEFAULT NULL,
  `f_licenseState` text,
  `f_licensedCapacityLimitReached` bit(1) DEFAULT NULL,
  `f_serviceState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ca` (`f_lmId`,`f_capacityStateId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=3075070 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CapacityState_currentCapacityLimit`
--

DROP TABLE IF EXISTS `t_CapacityState_currentCapacityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityState_currentCapacityLimit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_capacityStateId` varchar(100) DEFAULT NULL,
  `f_noLimit` bit(1) DEFAULT NULL,
  `f_value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ca` (`f_meContextId`,`f_subNetworkId`,`f_capacityStateId`,`f_systemFunctionsId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=3075070 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CarrierAggregationFunction`
--

DROP TABLE IF EXISTS `t_CarrierAggregationFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CarrierAggregationFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_carrierAggregationFunctionId` varchar(100) DEFAULT NULL,
  `f_a6TriggerSCellDeconfig` bit(1) DEFAULT NULL,
  `f_caPreemptionThreshold` bigint(20) DEFAULT NULL,
  `f_caPreference` text,
  `f_caRateAdjustCoeff` bigint(20) DEFAULT NULL,
  `f_caUsageLimit` bigint(20) DEFAULT NULL,
  `f_dcSCellActDeactDataThres` bigint(20) DEFAULT NULL,
  `f_dcSCellActDeactDataThresHyst` bigint(20) DEFAULT NULL,
  `f_dcSCellDeactDelayTimer` bigint(20) DEFAULT NULL,
  `f_dynamicSCellSelectionMethod` text,
  `f_effectiveBwImpactDl4Layer` bigint(20) DEFAULT NULL,
  `f_enhancedSelectionOfMimoAndCa` bit(1) DEFAULT NULL,
  `f_fourLayerMimoPreferred` bit(1) DEFAULT NULL,
  `f_laaSCellActProhibitTimer` bigint(20) DEFAULT NULL,
  `f_laaSCellDeactProhibitTimer` bigint(20) DEFAULT NULL,
  `f_pdcchEnhancedLaForVolte` bit(1) DEFAULT NULL,
  `f_sCellActDeactDataThres` bigint(20) DEFAULT NULL,
  `f_sCellActDeactDataThresHyst` bigint(20) DEFAULT NULL,
  `f_sCellActDeactUlDataThresh` bigint(20) DEFAULT NULL,
  `f_sCellActDeactUlDataThreshHyst` bigint(20) DEFAULT NULL,
  `f_sCellActProhibitTimer` bigint(20) DEFAULT NULL,
  `f_sCellDeactDelayTimer` bigint(20) DEFAULT NULL,
  `f_sCellDeactOutOfCoverageTimer` bigint(20) DEFAULT NULL,
  `f_sCellDeactProhibitTimer` bigint(20) DEFAULT NULL,
  `f_sCellPdcchOuterLoopMargin` bigint(20) DEFAULT NULL,
  `f_sCellScheduleSinrThres` bigint(20) DEFAULT NULL,
  `f_sCellSelectionMode` text,
  `f_selectionPolicyUlTargetRatio` bigint(20) DEFAULT NULL,
  `f_selectionPolicyUlWeighting` bigint(20) DEFAULT NULL,
  `f_useAbsolutePrioForCspEffBw` bit(1) DEFAULT NULL,
  `f_waitForAdditionalSCellOpportunity` bigint(20) DEFAULT NULL,
  `f_waitForBetterSCellRep` bigint(20) DEFAULT NULL,
  `f_waitForBlindSelSCellRepLessTtt` bigint(20) DEFAULT NULL,
  `f_waitForCaOpportunity` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_zzzTemporary3` bigint(20) DEFAULT NULL,
  `f_zzzTemporary4` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ca` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_carrierAggregationFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CellPerformance`
--

DROP TABLE IF EXISTS `t_CellPerformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellPerformance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_cellPerformanceId` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_zzzTemporary3` bigint(20) DEFAULT NULL,
  `f_zzzTemporary4` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  `f_zzzTemporary8` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ce` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_cellPerformanceId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CellResources`
--

DROP TABLE IF EXISTS `t_CellResources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellResources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cellResourcesId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ce` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_cellResourcesId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CellSleepFunction`
--

DROP TABLE IF EXISTS `t_CellSleepFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellSleepFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_cellSleepFunctionId` varchar(100) DEFAULT NULL,
  `f_capCellDlPrbSleepThreshold` bigint(20) DEFAULT NULL,
  `f_capCellMobReasNotSleepThr` bigint(20) DEFAULT NULL,
  `f_capCellRrcConnSleepThreshold` bigint(20) DEFAULT NULL,
  `f_capCellSleepMonitorDurTimer` bigint(20) DEFAULT NULL,
  `f_capCellSleepProhibitInterval` bigint(20) DEFAULT NULL,
  `f_covCellDlPrbWakeUpThreshold` bigint(20) DEFAULT NULL,
  `f_covCellLatestStatsAdaRatio` bigint(20) DEFAULT NULL,
  `f_covCellRrcConnEstAttMin` bigint(20) DEFAULT NULL,
  `f_covCellRrcConnWakeUpThreshold` bigint(20) DEFAULT NULL,
  `f_covCellRrcReestWakeUpThr` bigint(20) DEFAULT NULL,
  `f_covCellUeCtxtRelMin` bigint(20) DEFAULT NULL,
  `f_covCellUeLostWakeUpThr` bigint(20) DEFAULT NULL,
  `f_covCellWakeUpMonitorDurTimer` bigint(20) DEFAULT NULL,
  `f_coverageCellDiscovery` bit(1) DEFAULT NULL,
  `f_isAllowedMsmOnCovCell` bit(1) DEFAULT NULL,
  `f_isCleanupHitRateTable` bit(1) DEFAULT NULL,
  `f_sleepEndTime` varchar(255) DEFAULT NULL,
  `f_sleepMode` text,
  `f_sleepStartTime` varchar(255) DEFAULT NULL,
  `f_sleepState` text,
  `f_wakeUpLastHoTime` bigint(20) DEFAULT NULL,
  `f_wakeUpWaitTimer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ce` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_cellSleepFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CellSleepNodeFunction`
--

DROP TABLE IF EXISTS `t_CellSleepNodeFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellSleepNodeFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cellSleepNodeFunctionId` varchar(100) DEFAULT NULL,
  `f_csmEutranInterFMeasReportDecr` bigint(20) DEFAULT NULL,
  `f_csmEutranInterFMeasReportIncr` bigint(20) DEFAULT NULL,
  `f_csmEutranInterFMeasReportMax` bigint(20) DEFAULT NULL,
  `f_csmEutranInterFMeasReportMin` bigint(20) DEFAULT NULL,
  `f_csmMinHitRateForCovCell` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ce` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_cellSleepNodeFunctionId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CertM`
--

DROP TABLE IF EXISTS `t_CertM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CertM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_activeVendorCredential` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CertMCapabilities`
--

DROP TABLE IF EXISTS `t_CertMCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CertMCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_certMCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_keySupport` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_ce` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_managedElementId`,`f_certMCapabilitiesId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ChainCertificate`
--

DROP TABLE IF EXISTS `t_ChainCertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ChainCertificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_chainCertificateId` varchar(100) DEFAULT NULL,
  `f_certificateState` text,
  `f_vendorCredentialId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_no_ch` (`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeCredentialId`,`f_systemFunctionsId`,`f_certMId`,`f_chainCertificateId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=341686 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ChainCertificate_certificateContent`
--

DROP TABLE IF EXISTS `t_ChainCertificate_certificateContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ChainCertificate_certificateContent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_chainCertificateId` varchar(100) DEFAULT NULL,
  `f_extensionContent` text,
  `f_keyUsage` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_publicKeyAlgorithm` varchar(255) DEFAULT NULL,
  `f_subject` varchar(255) DEFAULT NULL,
  `f_publicKey` text,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  `f_issuer` varchar(255) DEFAULT NULL,
  `f_signatureAlgorithm` varchar(255) DEFAULT NULL,
  `f_validTo` varchar(255) DEFAULT NULL,
  `f_vendorCredentialId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_ve_ch` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_vendorCredentialId`,`f_secMId`,`f_managedElementId`,`f_chainCertificateId`)
) ENGINE=MyISAM AUTO_INCREMENT=341686 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Cli`
--

DROP TABLE IF EXISTS `t_Cli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Cli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_cliId` varchar(100) DEFAULT NULL,
  `f_idleTimer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_cl` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_cliId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CliSsh`
--

DROP TABLE IF EXISTS `t_CliSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CliSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_cliSshId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_port` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_cl` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_cliSshId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CliTls`
--

DROP TABLE IF EXISTS `t_CliTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CliTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_cliTlsId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_cl` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_cliTlsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CmFunction`
--

DROP TABLE IF EXISTS `t_CmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_cmFunctionId` varchar(100) DEFAULT NULL,
  `f_failedSyncsCount` bigint(20) DEFAULT NULL,
  `f_iposCopyConfigFrequency` bigint(20) DEFAULT NULL,
  `f_syncStatus` text,
  `f_lostSynchronization` text,
  `f_lastFailedSync` text,
  PRIMARY KEY (`id`),
  KEY `idx_ne_cm` (`f_networkElementId`,`f_cmFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CmNodeHeartbeatSupervision`
--

DROP TABLE IF EXISTS `t_CmNodeHeartbeatSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CmNodeHeartbeatSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_cmNodeHeartbeatSupervisionId` varchar(100) DEFAULT NULL,
  `f_active` bit(1) DEFAULT NULL,
  `f_heartbeatInterval` bigint(20) DEFAULT NULL,
  `f_heartbeatTimeout` bigint(20) DEFAULT NULL,
  `f_heartbeatTimestamp` varchar(255) DEFAULT NULL,
  `f_numberOfRetries` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_cm` (`f_networkElementId`,`f_cmNodeHeartbeatSupervisionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ComConnectivityInformation`
--

DROP TABLE IF EXISTS `t_ComConnectivityInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ComConnectivityInformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_comConnectivityInformationId` varchar(100) DEFAULT NULL,
  `f_fileTransferProtocol` text,
  `f_ftpTlsServerPort` bigint(20) DEFAULT NULL,
  `f_ipAddress` varchar(255) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_snmpAgentPort` bigint(20) DEFAULT NULL,
  `f_snmpReadCommunity` varchar(255) DEFAULT NULL,
  `f_snmpVersion` text,
  `f_snmpWriteCommunity` varchar(255) DEFAULT NULL,
  `f_transportProtocol` text,
  `f_snmpSecurityLevel` text,
  `f_snmpSecurityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_co` (`f_networkElementId`,`f_comConnectivityInformationId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ConsumedEnergyMeasurement`
--

DROP TABLE IF EXISTS `t_ConsumedEnergyMeasurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ConsumedEnergyMeasurement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_consumedEnergyMeasurementId` varchar(100) DEFAULT NULL,
  `f_noOfContributingUnits` bigint(20) DEFAULT NULL,
  `f_reservedBy` text,
  `f_totalNumberOfUnits` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_co` (`f_meContextId`,`f_subNetworkId`,`f_consumedEnergyMeasurementId`,`f_managedElementId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_CpriLinkSupervision`
--

DROP TABLE IF EXISTS `t_CpriLinkSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CpriLinkSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_cpriLinkSupervisionId` varchar(100) DEFAULT NULL,
  `f_cpriLinkFilterTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_cp` (`f_cpriLinkSupervisionId`,`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DataRadioBearer`
--

DROP TABLE IF EXISTS `t_DataRadioBearer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DataRadioBearer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_radioBearerTableId` varchar(100) DEFAULT NULL,
  `f_dataRadioBearerId` varchar(100) DEFAULT NULL,
  `f_dlMaxRetxThreshold` bigint(20) DEFAULT NULL,
  `f_tPollRetransmitDl` bigint(20) DEFAULT NULL,
  `f_tPollRetransmitUl` bigint(20) DEFAULT NULL,
  `f_ulMaxRetxThreshold` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ra_da` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_dataRadioBearerId`,`f_radioBearerTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DateAndTime`
--

DROP TABLE IF EXISTS `t_DateAndTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DateAndTime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_timeMId` varchar(100) DEFAULT NULL,
  `f_dateAndTimeId` varchar(100) DEFAULT NULL,
  `f_dateTimeOffset` varchar(255) DEFAULT NULL,
  `f_tzRevision` text,
  `f_timeZone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ti_da` (`f_timeMId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_dateAndTimeId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DlComp`
--

DROP TABLE IF EXISTS `t_DlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_dlCompId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_dl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_dlCompId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DnsClient`
--

DROP TABLE IF EXISTS `t_DnsClient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DnsClient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_dnsClientId` varchar(100) DEFAULT NULL,
  `f_configurationMode` bigint(20) DEFAULT NULL,
  `f_dscp` bigint(20) DEFAULT NULL,
  `f_serverAddress` varchar(255) DEFAULT NULL,
  `f_usedServerAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_dn` (`f_subNetworkId`,`f_meContextId`,`f_dnsClientId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DrxProfile`
--

DROP TABLE IF EXISTS `t_DrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_drxProfileId` varchar(100) DEFAULT NULL,
  `f_drxInactivityTimer` text,
  `f_drxRetransmissionTimer` text,
  `f_drxState` text,
  `f_longDrxCycle` text,
  `f_longDrxCycleOnly` text,
  `f_onDurationTimer` text,
  `f_shortDrxCycle` text,
  `f_shortDrxCycleTimer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_dr` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_drxProfileId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=854868 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_DscpPcpMap`
--

DROP TABLE IF EXISTS `t_DscpPcpMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DscpPcpMap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_qosProfilesId` varchar(100) DEFAULT NULL,
  `f_dscpPcpMapId` varchar(100) DEFAULT NULL,
  `f_defaultPcp` bigint(20) DEFAULT NULL,
  `f_pcp1` bigint(20) DEFAULT NULL,
  `f_pcp2` text,
  `f_pcp3` bigint(20) DEFAULT NULL,
  `f_pcp4` text,
  `f_pcp5` text,
  `f_pcp6` bigint(20) DEFAULT NULL,
  `f_pcp7` bigint(20) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_qo_ds` (`f_dscpPcpMapId`,`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_qosProfilesId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Dst`
--

DROP TABLE IF EXISTS `t_Dst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Dst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_routeTableIPv4StaticId` varchar(100) DEFAULT NULL,
  `f_dstId` varchar(100) DEFAULT NULL,
  `f_dst` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ro_ds` (`f_meContextId`,`f_subNetworkId`,`f_routeTableIPv4StaticId`,`f_routerId`,`f_managedElementId`,`f_transportId`,`f_dstId`)
) ENGINE=MyISAM AUTO_INCREMENT=170863 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ENodeBFunction`
--

DROP TABLE IF EXISTS `t_ENodeBFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ENodeBFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `nominal` varchar(6) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_alignTtiBundWUlTrigSinr` text,
  `f_altNasBackTo` text,
  `f_biasThpWifiMobility` bigint(20) DEFAULT NULL,
  `f_caAwareMfbiIntraCellHo` bit(1) DEFAULT NULL,
  `f_caUnknownImeisvEnabled` bit(1) DEFAULT NULL,
  `f_checkEmergencySoftLock` bit(1) DEFAULT NULL,
  `f_combCellSectorSelectThreshRx` bigint(20) DEFAULT NULL,
  `f_combCellSectorSelectThreshTx` bigint(20) DEFAULT NULL,
  `f_csfbMeasFromIdleMode` bit(1) DEFAULT NULL,
  `f_csfbUseRegisteredLai` bit(1) DEFAULT NULL,
  `f_csmMinHighHitThreshold` bigint(20) DEFAULT NULL,
  `f_dlMaxWaitingTimeGlobal` bigint(20) DEFAULT NULL,
  `f_dnsLookupOnTai` text,
  `f_dnsLookupTimer` bigint(20) DEFAULT NULL,
  `f_dscpLabel` bigint(20) DEFAULT NULL,
  `f_eNBId` bigint(20) DEFAULT NULL,
  `f_enabledUlTrigMeas` bit(1) DEFAULT NULL,
  `f_endcDataUsageReportEnabled` bit(1) DEFAULT NULL,
  `f_endcPowerOffsetLte` bigint(20) DEFAULT NULL,
  `f_endcSplitAllowedNonDynPwrShUe` bit(1) DEFAULT NULL,
  `f_eranUlCompReSelectLinkTime` bigint(20) DEFAULT NULL,
  `f_extendedWaitTimeNb` bigint(20) DEFAULT NULL,
  `f_forcedSiTunnelingActive` bit(1) DEFAULT NULL,
  `f_gtpuErrorIndicationDscp` bigint(20) DEFAULT NULL,
  `f_inactivitySupervisionTimerNb` text,
  `f_initPreschedulingEnable` bit(1) DEFAULT NULL,
  `f_interEnbCaTunnelDscp` bigint(20) DEFAULT NULL,
  `f_interEnbUlCompTunnelDscp` bigint(20) DEFAULT NULL,
  `f_intraEnbHoNasNonDelIndCause` bit(1) DEFAULT NULL,
  `f_iuaBbmResourceLimit` bigint(20) DEFAULT NULL,
  `f_licCapDistrMethod` text,
  `f_licConnectedUsersPercentileConf` bigint(20) DEFAULT NULL,
  `f_licDlBbPercentileConf` bigint(20) DEFAULT NULL,
  `f_licDlPrbPercentileConf` bigint(20) DEFAULT NULL,
  `f_licUlBbPercentileConf` bigint(20) DEFAULT NULL,
  `f_licUlPrbPercentileConf` bigint(20) DEFAULT NULL,
  `f_maxNoCellsNaccCsfb` bigint(20) DEFAULT NULL,
  `f_maxNrOfEnbPartnersEranUlComp` bigint(20) DEFAULT NULL,
  `f_maxNrOfInterEnbUlCompLbm` bigint(20) DEFAULT NULL,
  `f_maxRandc` bigint(20) DEFAULT NULL,
  `f_measuringEcgiWithAgActive` bit(1) DEFAULT NULL,
  `f_mfbiFbipOnX2Enabled` bit(1) DEFAULT NULL,
  `f_mfbiSupport` bit(1) DEFAULT NULL,
  `f_mfbiSupportPolicy` bit(1) DEFAULT NULL,
  `f_minRandc` bigint(20) DEFAULT NULL,
  `f_mtRreWithoutNeighborActive` bit(1) DEFAULT NULL,
  `f_nbRrcConnReestActive` bit(1) DEFAULT NULL,
  `f_nnsfMode` text,
  `f_pdbMeasurementDelta` bigint(20) DEFAULT NULL,
  `f_prioritizeAdditionalBands` bit(1) DEFAULT NULL,
  `f_pwsPersistentStorage` text,
  `f_randUpdateInterval` bigint(20) DEFAULT NULL,
  `f_release` text,
  `f_releaseInactiveUesInactTime` bigint(20) DEFAULT NULL,
  `f_releaseInactiveUesMpLoadLevel` text,
  `f_rrcConnReestActive` bit(1) DEFAULT NULL,
  `f_s1GtpuEchoDscp` bigint(20) DEFAULT NULL,
  `f_s1GtpuEchoEnable` text,
  `f_s1GtpuEchoFailureAction` text,
  `f_s1GtpuEchoInterval` bigint(20) DEFAULT NULL,
  `f_s1HODirDataPathAvail` bit(1) DEFAULT NULL,
  `f_s1RetryTimer` bigint(20) DEFAULT NULL,
  `f_sctpRef` varchar(255) DEFAULT NULL,
  `f_softLockRwRWaitTimerInternal` bigint(20) DEFAULT NULL,
  `f_softLockRwRWaitTimerOperator` bigint(20) DEFAULT NULL,
  `f_tOutgoingHoExecCdma1xRtt` bigint(20) DEFAULT NULL,
  `f_tRelocOverall` bigint(20) DEFAULT NULL,
  `f_tS1HoCancelTimer` bigint(20) DEFAULT NULL,
  `f_tWaitForConnEstInd` bigint(20) DEFAULT NULL,
  `f_tddVoipDrxProfileId` bigint(20) DEFAULT NULL,
  `f_timeAndPhaseSynchAlignment` bit(1) DEFAULT NULL,
  `f_timeAndPhaseSynchCritical` bit(1) DEFAULT NULL,
  `f_timePhaseMaxDevIeNBUlComp` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviation` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationCdma2000` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationEdrx` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationIeNbCa` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationMbms` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationOtdoa` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationSib16` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd1` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd2` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd3` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd4` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd5` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd6` bigint(20) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd7` bigint(20) DEFAULT NULL,
  `f_ulMaxWaitingTimeGlobal` bigint(20) DEFAULT NULL,
  `f_ulSchedulerDynamicBWAllocationEnabled` bit(1) DEFAULT NULL,
  `f_upIpAddressRef` varchar(255) DEFAULT NULL,
  `f_useBandPrioritiesInSCellEval` bit(1) DEFAULT NULL,
  `f_x2GtpuEchoDscp` bigint(20) DEFAULT NULL,
  `f_x2GtpuEchoEnable` text,
  `f_x2IpAddrViaS1Active` bit(1) DEFAULT NULL,
  `f_x2SetupTwoWayRelations` bit(1) DEFAULT NULL,
  `f_x2retryTimerMaxAuto` bigint(20) DEFAULT NULL,
  `f_x2retryTimerStart` bigint(20) DEFAULT NULL,
  `f_zzzTemporary10` bigint(20) DEFAULT NULL,
  `f_zzzTemporary11` bigint(20) DEFAULT NULL,
  `f_zzzTemporary12` bigint(20) DEFAULT NULL,
  `f_zzzTemporary13` bigint(20) DEFAULT NULL,
  `f_zzzTemporary16` bigint(20) DEFAULT NULL,
  `f_zzzTemporary18` bigint(20) DEFAULT NULL,
  `f_zzzTemporary21` bigint(20) DEFAULT NULL,
  `f_zzzTemporary22` bigint(20) DEFAULT NULL,
  `f_zzzTemporary23` bigint(20) DEFAULT NULL,
  `f_zzzTemporary24` bigint(20) DEFAULT NULL,
  `f_zzzTemporary25` bigint(20) DEFAULT NULL,
  `f_zzzTemporary26` bigint(20) DEFAULT NULL,
  `f_zzzTemporary28` bigint(20) DEFAULT NULL,
  `f_zzzTemporary32` bigint(20) DEFAULT NULL,
  `f_zzzTemporary34` bigint(20) DEFAULT NULL,
  `f_zzzTemporary35` bigint(20) DEFAULT NULL,
  `f_zzzTemporary36` bigint(20) DEFAULT NULL,
  `f_zzzTemporary37` bigint(20) DEFAULT NULL,
  `f_zzzTemporary39` bigint(20) DEFAULT NULL,
  `f_zzzTemporary40` bigint(20) DEFAULT NULL,
  `f_zzzTemporary41` bigint(20) DEFAULT NULL,
  `f_zzzTemporary42` bigint(20) DEFAULT NULL,
  `f_zzzTemporary47` bigint(20) DEFAULT NULL,
  `f_zzzTemporary48` bigint(20) DEFAULT NULL,
  `f_zzzTemporary49` bigint(20) DEFAULT NULL,
  `f_zzzTemporary50` bigint(20) DEFAULT NULL,
  `f_zzzTemporary51` bigint(20) DEFAULT NULL,
  `f_zzzTemporary52` bigint(20) DEFAULT NULL,
  `f_zzzTemporary54` bigint(20) DEFAULT NULL,
  `f_zzzTemporary55` bigint(20) DEFAULT NULL,
  `f_zzzTemporary57` bigint(20) DEFAULT NULL,
  `f_zzzTemporary58` bigint(20) DEFAULT NULL,
  `f_zzzTemporary61` bigint(20) DEFAULT NULL,
  `f_zzzTemporary62` bigint(20) DEFAULT NULL,
  `f_zzzTemporary64` bit(1) DEFAULT NULL,
  `f_zzzTemporary65` bigint(20) DEFAULT NULL,
  `f_zzzTemporary66` bigint(20) DEFAULT NULL,
  `f_zzzTemporary67` bigint(20) DEFAULT NULL,
  `f_zzzTemporary68` bigint(20) DEFAULT NULL,
  `f_zzzTemporary9` bigint(20) DEFAULT NULL,
  `f_zzzTemporary56` bigint(20) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`),
  KEY `nominal` (`nominal`),
  KEY `f_managedElementId` (`f_managedElementId`),
  KEY `f_eNBId` (`f_eNBId`)
) ENGINE=MyISAM AUTO_INCREMENT=44988 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ENodeBFunction_eNodeBPlmnId`
--

DROP TABLE IF EXISTS `t_ENodeBFunction_eNodeBPlmnId`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ENodeBFunction_eNodeBPlmnId` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtraNetwork`
--

DROP TABLE IF EXISTS `t_EUtraNetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtraNetwork` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `nominal` varchar(6) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `cId` int(9) DEFAULT NULL,
  `f_acBarringForEmergency` bit(1) DEFAULT NULL,
  `f_acBarringInfoPresent` bit(1) DEFAULT NULL,
  `f_acBarringPlmnPabEnabled` bit(1) DEFAULT NULL,
  `f_acBarringSkipForMmtelVideo` bit(1) DEFAULT NULL,
  `f_acBarringSkipForMmtelVoice` bit(1) DEFAULT NULL,
  `f_acBarringSkipForSms` bit(1) DEFAULT NULL,
  `f_adaptiveCfiHoProhibit` text,
  `f_additionalFreqBandList` bigint(20) DEFAULT NULL,
  `f_additionalPlmnAlarmSupprList` text,
  `f_additionalPlmnReservedList` text,
  `f_additionalSpectrumEmissionValues` text,
  `f_additionalUpperLayerIndList` text,
  `f_administrativeState` text,
  `f_advCellSupAction` text,
  `f_advCellSupSensitivity` bigint(20) DEFAULT NULL,
  `f_ailgActive` bit(1) DEFAULT NULL,
  `f_ailgAutoRestartEnabled` bit(1) DEFAULT NULL,
  `f_allocThrPucchFormat1` bigint(20) DEFAULT NULL,
  `f_allocTimerPucchFormat1` bigint(20) DEFAULT NULL,
  `f_alpha` bigint(20) DEFAULT NULL,
  `f_altitude` bigint(20) DEFAULT NULL,
  `f_arpPriorityLevelForSPIFHo` text,
  `f_availabilityStatus` text,
  `f_bcCdma2000SysTimeType` text,
  `f_beamWeightSet16Tr` bigint(20) DEFAULT NULL,
  `f_beamWeightSet16TrTm9` bigint(20) DEFAULT NULL,
  `f_bsrThreshold` bigint(20) DEFAULT NULL,
  `f_caPrioThreshold` bigint(20) DEFAULT NULL,
  `f_catm1SupportEnabled` bit(1) DEFAULT NULL,
  `f_catmMbmsDlSubframes` bigint(20) DEFAULT NULL,
  `f_cceDynUeAdmCtrlOverloadThr` bigint(20) DEFAULT NULL,
  `f_cceDynUeAdmCtrlRetDiffThr` bigint(20) DEFAULT NULL,
  `f_cellBarred` text,
  `f_cellCapMaxCellSubCap` bigint(20) DEFAULT NULL,
  `f_cellCapMinCellSubCap` bigint(20) DEFAULT NULL,
  `f_cellCapMinMaxWriProt` bit(1) DEFAULT NULL,
  `f_cellDownlinkCaCapacity` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  `f_cellRange` bigint(20) DEFAULT NULL,
  `f_cellSubscriptionCapacity` bigint(20) DEFAULT NULL,
  `f_cfraEnable` bit(1) DEFAULT NULL,
  `f_channelSelectionSetSize` bigint(20) DEFAULT NULL,
  `f_cioLowerLimitAdjBySon` bigint(20) DEFAULT NULL,
  `f_cioUpperLimitAdjBySon` bigint(20) DEFAULT NULL,
  `f_clusteredPuschMprFactor` bigint(20) DEFAULT NULL,
  `f_commonSrPeriodicity` bigint(20) DEFAULT NULL,
  `f_confidence` bigint(20) DEFAULT NULL,
  `f_covTriggerdBlindHoAllowed` bit(1) DEFAULT NULL,
  `f_covTriggerdBlindHoAllowedBr` bit(1) DEFAULT NULL,
  `f_crsGain` bigint(20) DEFAULT NULL,
  `f_csiRsConfigType` text,
  `f_csiRsConfigType8TxFDD` text,
  `f_deallocThrPucchFormat1` bigint(20) DEFAULT NULL,
  `f_deallocTimerPucchFormat1` bigint(20) DEFAULT NULL,
  `f_dl256QamEnabled` bit(1) DEFAULT NULL,
  `f_dlBlerTargetEnabled` bit(1) DEFAULT NULL,
  `f_dlChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_dlConfigurableFrequencyStart` bigint(20) DEFAULT NULL,
  `f_dlDynUeAdmCtrlOverloadThr` bigint(20) DEFAULT NULL,
  `f_dlDynUeAdmCtrlRetDiffThr` bigint(20) DEFAULT NULL,
  `f_dlFrequencyAllocationProportion` bigint(20) DEFAULT NULL,
  `f_dlInterferenceManagementActive` bit(1) DEFAULT NULL,
  `f_dlInternalChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_dlPowerChangeRate` bigint(20) DEFAULT NULL,
  `f_dlPowerRampUpInitRatio` bigint(20) DEFAULT NULL,
  `f_dlPowerRampUpRate` bigint(20) DEFAULT NULL,
  `f_dlPowerRatio` bigint(20) DEFAULT NULL,
  `f_dlPowerState` text,
  `f_drxActive` bit(1) DEFAULT NULL,
  `f_dsrTransMax` bigint(20) DEFAULT NULL,
  `f_dummyCdmaBandClass` text,
  `f_dynLoadCtrlMinNewConn` bigint(20) DEFAULT NULL,
  `f_dynUeAdmCtrlEnabled` bit(1) DEFAULT NULL,
  `f_dynUeAdmCtrlFilterConst` bigint(20) DEFAULT NULL,
  `f_dynUlResourceAllocEnabled` bit(1) DEFAULT NULL,
  `f_eDrxAllowed` bit(1) DEFAULT NULL,
  `f_eDrxUeType` text,
  `f_eUlFssSwitchThresh` bigint(20) DEFAULT NULL,
  `f_earfcndl` bigint(20) DEFAULT NULL,
  `f_earfcnul` bigint(20) DEFAULT NULL,
  `f_elcEnabled` bit(1) DEFAULT NULL,
  `f_elcLongDrxCycle` text,
  `f_emergencyAreaId` text,
  `f_enableDrxAwareRlcArq` bit(1) DEFAULT NULL,
  `f_enableServiceSpecificHARQ` bit(1) DEFAULT NULL,
  `f_enableSinrUplinkClpc` bit(1) DEFAULT NULL,
  `f_enableUeAssistedAdaptiveDrx` bit(1) DEFAULT NULL,
  `f_enableUeAssistedSigReduction` bit(1) DEFAULT NULL,
  `f_eranUlCompUserSelSinrHys` bigint(20) DEFAULT NULL,
  `f_eranUlCompUserSelSinrThr` bigint(20) DEFAULT NULL,
  `f_estCellCapUsableFraction` bigint(20) DEFAULT NULL,
  `f_expectedMaxNoOfUsersInCell` bigint(20) DEFAULT NULL,
  `f_filterUeDlThpTimeThr` bigint(20) DEFAULT NULL,
  `f_filterUeDlThpVolThr` bigint(20) DEFAULT NULL,
  `f_freqBand` bigint(20) DEFAULT NULL,
  `f_gpsTimeSFN0DecimalSecond` bigint(20) DEFAULT NULL,
  `f_gpsTimeSFN0Seconds` bigint(20) DEFAULT NULL,
  `f_harqOffsetDl` bigint(20) DEFAULT NULL,
  `f_harqOffsetUl` bigint(20) DEFAULT NULL,
  `f_highBasebandPriority` bit(1) DEFAULT NULL,
  `f_highSpeedUEActive` bit(1) DEFAULT NULL,
  `f_highestSupportedCeLevelBr` bigint(20) DEFAULT NULL,
  `f_hoOptAdjThresholdAbs` bigint(20) DEFAULT NULL,
  `f_hoOptAdjThresholdAbsQci1` bigint(20) DEFAULT NULL,
  `f_hoOptAdjThresholdPerc` bigint(20) DEFAULT NULL,
  `f_hoOptAdjThresholdPercQci1` bigint(20) DEFAULT NULL,
  `f_hoOptStatNum` bigint(20) DEFAULT NULL,
  `f_hoOptStatNumQci1` bigint(20) DEFAULT NULL,
  `f_hoOptStatTime` bigint(20) DEFAULT NULL,
  `f_hpueCaSwitchHyst` bigint(20) DEFAULT NULL,
  `f_hpueCaSwitchThres` bigint(20) DEFAULT NULL,
  `f_hpueCaSwitchTimeToTrigger` bigint(20) DEFAULT NULL,
  `f_iflbAbEnabled` bit(1) DEFAULT NULL,
  `f_includeLcgInMacUeThp` text,
  `f_initCdma2000SysTimeType` text,
  `f_initialBufferSizeDefault` bigint(20) DEFAULT NULL,
  `f_interEnbUlCompUserSelSinrHys` bigint(20) DEFAULT NULL,
  `f_interEnbUlCompUserSelSinrThr` bigint(20) DEFAULT NULL,
  `f_interferenceThresholdSinrClpc` bigint(20) DEFAULT NULL,
  `f_isDlOnly` bit(1) DEFAULT NULL,
  `f_lastModification` text,
  `f_lastSchedLinkAdaptEnabled` bit(1) DEFAULT NULL,
  `f_latencyLongThreshold` bigint(20) DEFAULT NULL,
  `f_latitude` bigint(20) DEFAULT NULL,
  `f_lbEUtranAcceptOffloadThreshold` bigint(20) DEFAULT NULL,
  `f_lbEUtranCellOffloadCapacity` bigint(20) DEFAULT NULL,
  `f_lbEUtranTriggerOffloadThreshold` bigint(20) DEFAULT NULL,
  `f_lbTpNonQualFraction` bigint(20) DEFAULT NULL,
  `f_lbTpRankThreshMin` bigint(20) DEFAULT NULL,
  `f_lbUtranOffloadThreshold` bigint(20) DEFAULT NULL,
  `f_lbabBarringPriorityLevel` text,
  `f_lbabDecr` bigint(20) DEFAULT NULL,
  `f_lbabIncr` bigint(20) DEFAULT NULL,
  `f_lbabMinBarringFactor` bigint(20) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio1` bigint(20) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio2` bigint(20) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio3` bigint(20) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio4` bigint(20) DEFAULT NULL,
  `f_lbabPeriod` bigint(20) DEFAULT NULL,
  `f_lbabThreshRejectRateHigh` bigint(20) DEFAULT NULL,
  `f_lbabThreshRejectRateLow` bigint(20) DEFAULT NULL,
  `f_lbabThreshTimeHigh` bigint(20) DEFAULT NULL,
  `f_lbabThreshTimeLow` bigint(20) DEFAULT NULL,
  `f_lessPrbUsageThreshold` bigint(20) DEFAULT NULL,
  `f_liteMcsReduction` text,
  `f_loadBasedBarringFactor` bigint(20) DEFAULT NULL,
  `f_loadBasedCaEnabled` bit(1) DEFAULT NULL,
  `f_longitude` bigint(20) DEFAULT NULL,
  `f_maxNoClusteredPuschAlloc` bigint(20) DEFAULT NULL,
  `f_maxSentCrsAssistCells` bigint(20) DEFAULT NULL,
  `f_maxSoftLockBackoffTime` bigint(20) DEFAULT NULL,
  `f_maxValidSubframeDlBr` bigint(20) DEFAULT NULL,
  `f_mbsfnSubframesForTm9` text,
  `f_measBasedElcControl` bit(1) DEFAULT NULL,
  `f_measGapShareSchemeCeABr` text,
  `f_mfbiFreqBandIndPrio` bit(1) DEFAULT NULL,
  `f_minBestCellHoAttempts` bigint(20) DEFAULT NULL,
  `f_mobCtrlAtPoorCovActive` bit(1) DEFAULT NULL,
  `f_modificationPeriodCoeff` bigint(20) DEFAULT NULL,
  `f_msg3FrequencyAllocationBr` bigint(20) DEFAULT NULL,
  `f_nRResCoordPattern` text,
  `f_networkSignallingValue` text,
  `f_networkSignallingValueCa` text,
  `f_noConsecutiveSubframes` text,
  `f_noOfChannelSelectionSets` bigint(20) DEFAULT NULL,
  `f_noOfCrsPorts` bigint(20) DEFAULT NULL,
  `f_noOfEnhAdptReTxCand` bigint(20) DEFAULT NULL,
  `f_noOfPucchCqiUsers` bigint(20) DEFAULT NULL,
  `f_noOfPucchFormat3PrbPairs` bigint(20) DEFAULT NULL,
  `f_noOfPucchSrUsers` bigint(20) DEFAULT NULL,
  `f_noOfUlImprovedUe` bigint(20) DEFAULT NULL,
  `f_nrOfPreallocatedSrRes` bigint(20) DEFAULT NULL,
  `f_ns05FullBandSchedEnabled` bit(1) DEFAULT NULL,
  `f_ns05FullBandUsersInCellThres` bigint(20) DEFAULT NULL,
  `f_ns05LowBandSchedMode` text,
  `f_ns05PathlossOffsetThres` bigint(20) DEFAULT NULL,
  `f_operationalState` text,
  `f_orientMajorAxis` bigint(20) DEFAULT NULL,
  `f_otdoaCheckEnabled` bit(1) DEFAULT NULL,
  `f_otdoaSuplActive` bit(1) DEFAULT NULL,
  `f_outOfCoverageSrTimerPeriodicity` bigint(20) DEFAULT NULL,
  `f_outOfCoverageThreshold` bigint(20) DEFAULT NULL,
  `f_pMaxServingCell` bigint(20) DEFAULT NULL,
  `f_pZeroNominalPucch` bigint(20) DEFAULT NULL,
  `f_pZeroNominalPusch` bigint(20) DEFAULT NULL,
  `f_pdcchCfiMode` text,
  `f_pdcchCovImproveDtx` bit(1) DEFAULT NULL,
  `f_pdcchCovImproveQci1` bit(1) DEFAULT NULL,
  `f_pdcchCovImproveSrb` bit(1) DEFAULT NULL,
  `f_pdcchLaGinrMargin` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdj` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdjPCell` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdjVolte` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopUpStep` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopUpStepPCell` bigint(20) DEFAULT NULL,
  `f_pdcchOuterLoopUpStepVolte` bigint(20) DEFAULT NULL,
  `f_pdcchPowerBoostMax` bigint(20) DEFAULT NULL,
  `f_pdcchTargetBler` bigint(20) DEFAULT NULL,
  `f_pdcchTargetBlerPCell` bigint(20) DEFAULT NULL,
  `f_pdcchTargetBlerVolte` bigint(20) DEFAULT NULL,
  `f_pdschMaxNrOfPrbsPerUe` bigint(20) DEFAULT NULL,
  `f_pdschTypeBGain` bigint(20) DEFAULT NULL,
  `f_physicalLayerCellId` bigint(20) DEFAULT NULL,
  `f_physicalLayerCellIdGroup` bigint(20) DEFAULT NULL,
  `f_physicalLayerSubCellId` bigint(20) DEFAULT NULL,
  `f_plmnPabBarringPriorityLevel` text,
  `f_prachFrequencyAllocation` bigint(20) DEFAULT NULL,
  `f_preambleInitialReceivedTargetPower` bigint(20) DEFAULT NULL,
  `f_prescheduling` bit(1) DEFAULT NULL,
  `f_primaryPlmnAlarmSuppr` bit(1) DEFAULT NULL,
  `f_primaryPlmnReserved` bit(1) DEFAULT NULL,
  `f_primaryPsdOffset` bigint(20) DEFAULT NULL,
  `f_primaryUpperLayerInd` text,
  `f_prioHpueCapability` text,
  `f_prsConfigIndex` bigint(20) DEFAULT NULL,
  `f_prsConfigIndexMapped` bigint(20) DEFAULT NULL,
  `f_prsMutingPattern` text,
  `f_prsMutingPatternLen` bigint(20) DEFAULT NULL,
  `f_prsPeriod` text,
  `f_prsPowerBoosting` bigint(20) DEFAULT NULL,
  `f_prsTransmisScheme` text,
  `f_pucchOverdimensioning` bigint(20) DEFAULT NULL,
  `f_puschFrequencyAllocationBr` bigint(20) DEFAULT NULL,
  `f_puschMaxNrOfPrbsPerUe` bigint(20) DEFAULT NULL,
  `f_puschNcpChannelEstWindowSize` text,
  `f_puschPwrOffset256qam` bigint(20) DEFAULT NULL,
  `f_puschPwrOffset64qam` bigint(20) DEFAULT NULL,
  `f_qQualMin` bigint(20) DEFAULT NULL,
  `f_qQualMinOffset` bigint(20) DEFAULT NULL,
  `f_qQualMinRsrqCe` bigint(20) DEFAULT NULL,
  `f_qRxLevMin` bigint(20) DEFAULT NULL,
  `f_qRxLevMinCe` bigint(20) DEFAULT NULL,
  `f_qRxLevMinOffset` bigint(20) DEFAULT NULL,
  `f_rachRootSequence` bigint(20) DEFAULT NULL,
  `f_rateShapingActive` bit(1) DEFAULT NULL,
  `f_reservedBy` text,
  `f_rtpTimeout` bigint(20) DEFAULT NULL,
  `f_rwrSearchZoneAllowed` bit(1) DEFAULT NULL,
  `f_rxSinrTargetClpc` bigint(20) DEFAULT NULL,
  `f_sCellHandlingAtVolteCall` text,
  `f_schedulingInfoSib1BrMod` text,
  `f_sdmActive` bit(1) DEFAULT NULL,
  `f_sectorCarrierRef` varchar(255) DEFAULT NULL,
  `f_servOrPrioIFHoSetupBearer` bit(1) DEFAULT NULL,
  `f_servOrPrioRedirectEnabled` bit(1) DEFAULT NULL,
  `f_servOrPrioTriggeredErabAction` text,
  `f_servOrPrioTriggeredIFHo` text,
  `f_siValidityTimeBr` text,
  `f_siWindowLength` bigint(20) DEFAULT NULL,
  `f_spifhoSetupBearerAtInitialCtxtSetup` bit(1) DEFAULT NULL,
  `f_srDetectHighThres` bigint(20) DEFAULT NULL,
  `f_srProcessingLevel` text,
  `f_srvccDelayTimer` bigint(20) DEFAULT NULL,
  `f_tReorderingAutoConfiguration` bit(1) DEFAULT NULL,
  `f_tTimeAlignmentTimer` bigint(20) DEFAULT NULL,
  `f_tTimeAlignmentTimerBr` bigint(20) DEFAULT NULL,
  `f_tUeBlockingTimer` bigint(20) DEFAULT NULL,
  `f_tac` bigint(20) DEFAULT NULL,
  `f_threshServingLow` bigint(20) DEFAULT NULL,
  `f_tm9Tm4ModeSwitchingEnabled` bit(1) DEFAULT NULL,
  `f_transmissionMode` text,
  `f_ttiBundlingAfterHo` text,
  `f_ttiBundlingAfterReest` text,
  `f_ttiBundlingAtSetup` text,
  `f_ttiBundlingSwitchThres` bigint(20) DEFAULT NULL,
  `f_ttiBundlingSwitchThresHyst` bigint(20) DEFAULT NULL,
  `f_ul256qamEnabled` bit(1) DEFAULT NULL,
  `f_ul64qamEnabled` bit(1) DEFAULT NULL,
  `f_ulBlerTargetEnabled` bit(1) DEFAULT NULL,
  `f_ulChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_ulConfigurableFrequencyStart` bigint(20) DEFAULT NULL,
  `f_ulDynUeAdmCtrlOverloadThr` bigint(20) DEFAULT NULL,
  `f_ulDynUeAdmCtrlRetDiffThr` bigint(20) DEFAULT NULL,
  `f_ulFrequencyAllocationProportion` bigint(20) DEFAULT NULL,
  `f_ulHarqVolteBlerTarget` bigint(20) DEFAULT NULL,
  `f_ulImprovedUeSchedLastEnabled` bit(1) DEFAULT NULL,
  `f_ulInterferenceManagementActive` bit(1) DEFAULT NULL,
  `f_ulInternalChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_ulPsdLoadThresholdSinrClpc` bigint(20) DEFAULT NULL,
  `f_ulSCellPriority` bigint(20) DEFAULT NULL,
  `f_ulSchedCtrlForOocUesEnabled` bit(1) DEFAULT NULL,
  `f_ulSrsEnable` bit(1) DEFAULT NULL,
  `f_ulTrigActive` bit(1) DEFAULT NULL,
  `f_ulTxPsdDistrThr` bigint(20) DEFAULT NULL,
  `f_uncertAltitude` bigint(20) DEFAULT NULL,
  `f_uncertSemiMajor` bigint(20) DEFAULT NULL,
  `f_uncertSemiMinor` bigint(20) DEFAULT NULL,
  `f_upperLayerIndR15Usage` bit(1) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  `f_zzzTemporary14` bigint(20) DEFAULT NULL,
  `f_zzzTemporary17` bigint(20) DEFAULT NULL,
  `f_zzzTemporary21` bigint(20) DEFAULT NULL,
  `f_zzzTemporary22` bigint(20) DEFAULT NULL,
  `f_zzzTemporary23` bigint(20) DEFAULT NULL,
  `f_zzzTemporary24` bigint(20) DEFAULT NULL,
  `f_zzzTemporary29` bigint(20) DEFAULT NULL,
  `f_zzzTemporary30` bigint(20) DEFAULT NULL,
  `f_zzzTemporary31` bigint(20) DEFAULT NULL,
  `f_zzzTemporary32` bigint(20) DEFAULT NULL,
  `f_zzzTemporary33` bigint(20) DEFAULT NULL,
  `f_zzzTemporary41` bigint(20) DEFAULT NULL,
  `f_zzzTemporary42` bigint(20) DEFAULT NULL,
  `f_zzzTemporary43` bigint(20) DEFAULT NULL,
  `f_zzzTemporary50` bigint(20) DEFAULT NULL,
  `f_zzzTemporary57` bigint(20) DEFAULT NULL,
  `f_zzzTemporary59` bigint(20) DEFAULT NULL,
  `f_zzzTemporary60` bigint(20) DEFAULT NULL,
  `f_zzzTemporary61` bigint(20) DEFAULT NULL,
  `f_zzzTemporary62` bigint(20) DEFAULT NULL,
  `f_zzzTemporary63` bigint(20) DEFAULT NULL,
  `f_zzzTemporary64` bigint(20) DEFAULT NULL,
  `f_zzzTemporary65` bigint(20) DEFAULT NULL,
  `f_zzzTemporary66` bigint(20) DEFAULT NULL,
  `f_zzzTemporary67` bigint(20) DEFAULT NULL,
  `f_zzzTemporary68` bigint(20) DEFAULT NULL,
  `f_zzzTemporary69` bigint(20) DEFAULT NULL,
  `f_zzzTemporary70` bigint(20) DEFAULT NULL,
  `f_zzzTemporary71` bigint(20) DEFAULT NULL,
  `f_zzzTemporary72` bigint(20) DEFAULT NULL,
  `f_zzzTemporary73` bigint(20) DEFAULT NULL,
  `f_zzzTemporary74` bigint(20) DEFAULT NULL,
  `f_zzzTemporary78` bigint(20) DEFAULT NULL,
  `f_zzzTemporary79` bigint(20) DEFAULT NULL,
  `f_zzzTemporary80` bigint(20) DEFAULT NULL,
  `f_zzzTemporary81` bigint(20) DEFAULT NULL,
  `f_zzzTemporary82` bigint(20) DEFAULT NULL,
  `f_zzzTemporary83` bigint(20) DEFAULT NULL,
  `f_zzzTemporary84` bigint(20) DEFAULT NULL,
  `f_hostingDigitalUnit` varchar(255) DEFAULT NULL,
  `f_pciConflict` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`),
  KEY `nominal` (`nominal`),
  KEY `cId` (`cId`),
  KEY `f_managedElementId` (`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_acBarringForCsfb`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_acBarringForCsfb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_acBarringForCsfb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringTime` bigint(20) DEFAULT NULL,
  `f_acBarringFactor` bigint(20) DEFAULT NULL,
  `f_acBarringForSpecialAC` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_acBarringForMoData`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_acBarringForMoData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_acBarringForMoData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringTime` bigint(20) DEFAULT NULL,
  `f_acBarringFactor` bigint(20) DEFAULT NULL,
  `f_acBarringForSpecialAC` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_acBarringForMoSignalling`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_acBarringForMoSignalling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_acBarringForMoSignalling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringTime` bigint(20) DEFAULT NULL,
  `f_acBarringFactor` bigint(20) DEFAULT NULL,
  `f_acBarringForSpecialAC` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_acBarringPresence`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_acBarringPresence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_acBarringPresence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringPriorityCsfb` text,
  `f_acBarringPrioEmergencySpecAc` text,
  `f_acBarringForEmergencySpecAcPres` text,
  `f_acBarringPriorityMmtelVideo` text,
  `f_acBarringForMmtelVideoPresence` text,
  `f_acBarringForMoDataPresence` text,
  `f_acBarringForCsfbPresence` text,
  `f_acBarringForMoSignPresence` text,
  `f_acBarringPriorityMoSignaling` text,
  `f_acBarringPriorityMoData` text,
  `f_acBarringForMmtelVoicePresence` text,
  `f_acBarringPriorityMmtelVoice` text,
  `f_acBarringPrioMoSignalingSpecAc` text,
  `f_acBarringPrioMoDataSpecAc` text,
  `f_acBarringPrioCsfbSpecAc` text,
  `f_acBarringPrioMmtelVoiceSpecAc` text,
  `f_acBarringPrioMmtelVideoSpecAc` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_activePlmnList`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_activePlmnList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_activePlmnList` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`),
  KEY `f_eUtranCellFDDId` (`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=513922 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_additionalMultipleNSPmax`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_additionalMultipleNSPmax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_additionalMultipleNSPmax` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_multipleNSvalue` text,
  `f_multiplePmax` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=263860 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_additionalPlmnList`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_additionalPlmnList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_additionalPlmnList` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=2652701 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_changeNotification`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_changeNotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_changeNotification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_changeNotificationSIB13` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB24` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB16` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB15` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB3` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB4` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB1` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB2` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB7` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB8` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB5` bit(1) DEFAULT NULL,
  `f_changeNotificationSIB6` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_eutranCellCoverage`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_eutranCellCoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_eutranCellCoverage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_posCellBearing` bigint(20) DEFAULT NULL,
  `f_posCellOpeningAngle` bigint(20) DEFAULT NULL,
  `f_posCellRadius` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_frameStartOffset`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_frameStartOffset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_frameStartOffset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_subFrameOffset` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_loadBasedCaMsrThr`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_loadBasedCaMsrThr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_loadBasedCaMsrThr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_dlPrbUtilThreshHigh` bigint(20) DEFAULT NULL,
  `f_cceUtilThreshLow` bigint(20) DEFAULT NULL,
  `f_ulSeUtilThreshLow` bigint(20) DEFAULT NULL,
  `f_ulPrbUtilThreshHigh` bigint(20) DEFAULT NULL,
  `f_cceUtilThreshHigh` bigint(20) DEFAULT NULL,
  `f_dlSeUtilThreshLow` bigint(20) DEFAULT NULL,
  `f_ulPrbUtilThreshLow` bigint(20) DEFAULT NULL,
  `f_dlPrbUtilThreshLow` bigint(20) DEFAULT NULL,
  `f_dlSeUtilThreshHigh` bigint(20) DEFAULT NULL,
  `f_ulSeUtilThreshHigh` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_mappingInfo`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_mappingInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_mappingInfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mappingInfoSIB10` text,
  `f_mappingInfoSIB15` text,
  `f_mappingInfoSIB8` text,
  `f_mappingInfoSIB16` text,
  `f_mappingInfoSIB24` text,
  `f_mappingInfoSIB13` text,
  `f_mappingInfoSIB11` text,
  `f_mappingInfoSIB12` text,
  `f_mappingInfoSIB3` text,
  `f_mappingInfoSIB6` text,
  `f_mappingInfoSIB7` text,
  `f_mappingInfoSIB4` text,
  `f_mappingInfoSIB5` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_mappingInfoCe`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_mappingInfoCe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_mappingInfoCe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mappingInfoSIB15` text,
  `f_mappingInfoSIB8` text,
  `f_mappingInfoSIB16` text,
  `f_mappingInfoSIB13` text,
  `f_mappingInfoSIB11` text,
  `f_mappingInfoSIB12` text,
  `f_mappingInfoSIB10` text,
  `f_mappingInfoSIB3` text,
  `f_mappingInfoSIB6` text,
  `f_mappingInfoSIB7` text,
  `f_mappingInfoSIB4` text,
  `f_mappingInfoSIB5` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_pciConflictCell`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_pciConflictCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_pciConflictCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_enbId` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=45512 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_pciDetectingCell`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_pciDetectingCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_pciDetectingCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  `f_enbId` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=45512 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_siPeriodicity`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_siPeriodicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_siPeriodicity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_siPeriodicitySI1` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI2` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI10` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI9` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI7` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI8` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI5` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI6` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI3` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI4` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_siPeriodicityBr`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_siPeriodicityBr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_siPeriodicityBr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_siPeriodicitySI1` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI2` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI10` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI9` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI7` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI8` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI5` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI6` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI3` bigint(20) DEFAULT NULL,
  `f_siPeriodicitySI4` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_ssacBarringForMMTELVideo`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_ssacBarringForMMTELVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_ssacBarringForMMTELVideo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringTime` bigint(20) DEFAULT NULL,
  `f_acBarringFactor` bigint(20) DEFAULT NULL,
  `f_acBarringForSpecialAC` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_ssacBarringForMMTELVoice`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_ssacBarringForMMTELVoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_ssacBarringForMMTELVoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_acBarringTime` bigint(20) DEFAULT NULL,
  `f_acBarringFactor` bigint(20) DEFAULT NULL,
  `f_acBarringForSpecialAC` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_systemInformationBlock24`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_systemInformationBlock24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_systemInformationBlock24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_tReselectionNR` bigint(20) DEFAULT NULL,
  `f_tReselectionNRSfHigh` bigint(20) DEFAULT NULL,
  `f_tReselectionNRSfMedium` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=489561 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_systemInformationBlock3`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_systemInformationBlock3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_systemInformationBlock3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_threshServingLowQ` bigint(20) DEFAULT NULL,
  `f_sIntraSearch` bigint(20) DEFAULT NULL,
  `f_sNonIntraSearchP` bigint(20) DEFAULT NULL,
  `f_sNonIntraSearchQ` bigint(20) DEFAULT NULL,
  `f_tHystNormal` bigint(20) DEFAULT NULL,
  `f_sNonIntraSearchv920Active` bit(1) DEFAULT NULL,
  `f_nCellChangeHigh` bigint(20) DEFAULT NULL,
  `f_tEvaluation` bigint(20) DEFAULT NULL,
  `f_qHystSfMedium` bigint(20) DEFAULT NULL,
  `f_nCellChangeMedium` bigint(20) DEFAULT NULL,
  `f_qHystSfHigh` bigint(20) DEFAULT NULL,
  `f_sIntraSearchv920Active` bit(1) DEFAULT NULL,
  `f_sIntraSearchQ` bigint(20) DEFAULT NULL,
  `f_qHyst` bigint(20) DEFAULT NULL,
  `f_sIntraSearchP` bigint(20) DEFAULT NULL,
  `f_sNonIntraSearch` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_systemInformationBlock6`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_systemInformationBlock6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_systemInformationBlock6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_tReselectionUtraSfHigh` bigint(20) DEFAULT NULL,
  `f_tReselectionUtraSfMedium` bigint(20) DEFAULT NULL,
  `f_tReselectionUtra` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_systemInformationBlock7`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_systemInformationBlock7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_systemInformationBlock7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_tReselectionGeranSfMedium` bigint(20) DEFAULT NULL,
  `f_tReselectionGeranSfHigh` bigint(20) DEFAULT NULL,
  `f_tReselectionGeran` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellFDD_systemInformationBlock8`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD_systemInformationBlock8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD_systemInformationBlock8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_tReselectionCdma1xRtt` bigint(20) DEFAULT NULL,
  `f_tReselectionCdma1xRttSfMedium` bigint(20) DEFAULT NULL,
  `f_tReselectionCdmaHrpd` bigint(20) DEFAULT NULL,
  `f_tReselectionCdmaHrpdSfMedium` bigint(20) DEFAULT NULL,
  `f_tReselectionCdmaHrpdSfHigh` bigint(20) DEFAULT NULL,
  `f_tReselectionCdma1xRttSfHigh` bigint(20) DEFAULT NULL,
  `f_searchWindowSizeCdma` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellRelation`
--

DROP TABLE IF EXISTS `t_EUtranCellRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_eUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_eUtranCellRelationId` varchar(100) DEFAULT NULL,
  `f_amoAllowed` bit(1) DEFAULT NULL,
  `f_amoState` text,
  `f_cellIndividualOffsetEUtran` bigint(20) DEFAULT NULL,
  `f_cellIndividualOffsetEUtranQci1` bigint(20) DEFAULT NULL,
  `f_coverageIndicator` text,
  `f_coverageIndicatorBr` text,
  `f_createdBy` text,
  `f_crsAssistanceInfoPriority` bigint(20) DEFAULT NULL,
  `f_eranExternalUlCompGroupAvail` text,
  `f_eranUlCompCoopCellAllowed` bit(1) DEFAULT NULL,
  `f_hoSuccLevel` text,
  `f_ieNBUlCompCoopCellAllowed` bit(1) DEFAULT NULL,
  `f_includeInSystemInformation` bit(1) DEFAULT NULL,
  `f_incomingLoadBalancing` bit(1) DEFAULT NULL,
  `f_isHoAllowed` bit(1) DEFAULT NULL,
  `f_isHoAllowedBr` bit(1) DEFAULT NULL,
  `f_isRemoveAllowed` bit(1) DEFAULT NULL,
  `f_lastModification` text,
  `f_lbBnrAllowed` bit(1) DEFAULT NULL,
  `f_lbCovIndicated` bit(1) DEFAULT NULL,
  `f_loadBalancing` text,
  `f_neighborCellRef` varchar(255) DEFAULT NULL,
  `f_qOffsetCellEUtran` bigint(20) DEFAULT NULL,
  `f_sCellCandidate` text,
  `f_sCellPriority` bigint(20) DEFAULT NULL,
  `f_sleepModeCapacityCell` bit(1) DEFAULT NULL,
  `f_sleepModeCovCellCandidate` text,
  `f_sleepModeCoverageCell` bit(1) DEFAULT NULL,
  `f_timeOfCreation` text,
  `f_timeOfLastModification` text,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_eu_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellRelationId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_eUtranFreqRelationId`)
) ENGINE=MyISAM AUTO_INCREMENT=38786234 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranCellRelation_mobilityStatus`
--

DROP TABLE IF EXISTS `t_EUtranCellRelation_mobilityStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellRelation_mobilityStatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_eUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_eUtranCellRelationId` varchar(100) DEFAULT NULL,
  `f_available` bit(1) DEFAULT NULL,
  `f_reason` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_eu_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellRelationId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_eUtranFreqRelationId`)
) ENGINE=MyISAM AUTO_INCREMENT=38786233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranFreqRelation`
--

DROP TABLE IF EXISTS `t_EUtranFreqRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranFreqRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_eUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_a3RsrpFreqOffsetAdjustment` bigint(20) DEFAULT NULL,
  `f_a3RsrqFreqOffsetAdjustment` bigint(20) DEFAULT NULL,
  `f_a5Thr1RsrpFreqOffset` bigint(20) DEFAULT NULL,
  `f_a5Thr1RsrqFreqOffset` bigint(20) DEFAULT NULL,
  `f_a5Thr2RsrpFreqOffset` bigint(20) DEFAULT NULL,
  `f_a5Thr2RsrqFreqOffset` bigint(20) DEFAULT NULL,
  `f_allowedMeasBandwidth` bigint(20) DEFAULT NULL,
  `f_amoAllowed` bit(1) DEFAULT NULL,
  `f_anrMeasOn` bit(1) DEFAULT NULL,
  `f_arpPrio` bigint(20) DEFAULT NULL,
  `f_atoAllowed` bit(1) DEFAULT NULL,
  `f_caFreqPriority` bigint(20) DEFAULT NULL,
  `f_caFreqProportion` bigint(20) DEFAULT NULL,
  `f_caTriggeredRedirectionActive` bit(1) DEFAULT NULL,
  `f_cellReselectionPriority` bigint(20) DEFAULT NULL,
  `f_cellSleepCovCellMeasOn` bit(1) DEFAULT NULL,
  `f_cioQci1Enabled` bit(1) DEFAULT NULL,
  `f_connectedModeMobilityPrio` bigint(20) DEFAULT NULL,
  `f_connectedModeMobilityPrioBr` bigint(20) DEFAULT NULL,
  `f_createdBy` text,
  `f_csgCellTargetIdType` text,
  `f_csgPhysCellId` bigint(20) DEFAULT NULL,
  `f_csgPhysCellIdRange` bigint(20) DEFAULT NULL,
  `f_csmUeCapMonitorEnabled` bit(1) DEFAULT NULL,
  `f_csmUeCapMonitorTime` bigint(20) DEFAULT NULL,
  `f_eutranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_hybridCsgPhysCellId` bigint(20) DEFAULT NULL,
  `f_hybridCsgPhysCellIdRange` bigint(20) DEFAULT NULL,
  `f_interFreqMeasType` text,
  `f_interFreqMeasTypeUlSinr` text,
  `f_lastModification` text,
  `f_lbA5Thr1RsrpFreqOffset` bigint(20) DEFAULT NULL,
  `f_lbActivationThreshold` bigint(20) DEFAULT NULL,
  `f_lbBnrPolicy` text,
  `f_mdtMeasOn` bit(1) DEFAULT NULL,
  `f_mobilityAction` text,
  `f_mobilityActionBr` text,
  `f_neighCellConfig` text,
  `f_nonPlannedPciCIO` bigint(20) DEFAULT NULL,
  `f_nonPlannedPciTargetIdType` text,
  `f_nonPlannedPhysCellId` bigint(20) DEFAULT NULL,
  `f_nonPlannedPhysCellIdRange` bigint(20) DEFAULT NULL,
  `f_pMax` bigint(20) DEFAULT NULL,
  `f_presenceAntennaPort1` bit(1) DEFAULT NULL,
  `f_qOffsetFreq` bigint(20) DEFAULT NULL,
  `f_qQualMin` bigint(20) DEFAULT NULL,
  `f_qQualMinRsrqCe` bigint(20) DEFAULT NULL,
  `f_qRxLevMin` bigint(20) DEFAULT NULL,
  `f_qRxLevMinCe` bigint(20) DEFAULT NULL,
  `f_tReselectionEutra` bigint(20) DEFAULT NULL,
  `f_tReselectionEutraCe` bigint(20) DEFAULT NULL,
  `f_tReselectionEutraSfHigh` bigint(20) DEFAULT NULL,
  `f_tReselectionEutraSfMedium` bigint(20) DEFAULT NULL,
  `f_threshXHigh` bigint(20) DEFAULT NULL,
  `f_threshXHighQ` bigint(20) DEFAULT NULL,
  `f_threshXLow` bigint(20) DEFAULT NULL,
  `f_threshXLowQ` bigint(20) DEFAULT NULL,
  `f_timeOfCreation` text,
  `f_timeOfLastModification` text,
  `f_voicePrio` bigint(20) DEFAULT NULL,
  `f_voicePrioBr` bigint(20) DEFAULT NULL,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_eu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_eUtranFreqRelationId`)
) ENGINE=MyISAM AUTO_INCREMENT=2066002 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranFreqRelation_candNeighborRel`
--

DROP TABLE IF EXISTS `t_EUtranFreqRelation_candNeighborRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranFreqRelation_candNeighborRel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_eUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_mobilityStatusReason` bigint(20) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_physicalLayerSubCellId` bigint(20) DEFAULT NULL,
  `f_enbId` bigint(20) DEFAULT NULL,
  `f_tac` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_physicalLayerCellIdGroup` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_eu` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_eUtranCellFDDId`,`f_eUtranFreqRelationId`)
) ENGINE=MyISAM AUTO_INCREMENT=54046 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EUtranFrequency`
--

DROP TABLE IF EXISTS `t_EUtranFrequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranFrequency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_eUtranFrequencyId` varchar(100) DEFAULT NULL,
  `f_arfcnValueEUtranDl` bigint(20) DEFAULT NULL,
  `f_freqBand` bigint(20) DEFAULT NULL,
  `f_mfbiFreqBandIndPrio` bit(1) DEFAULT NULL,
  `f_reservedBy` mediumtext,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_additionalFreqBandList` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_eu` (`f_eNodeBFunctionId`,`f_eUtranFrequencyId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=177313 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EcBus`
--

DROP TABLE IF EXISTS `t_EcBus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EcBus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_ecBusId` varchar(100) DEFAULT NULL,
  `f_ecBusConnectionType` varchar(255) DEFAULT NULL,
  `f_ecBusConnectorRef` varchar(255) DEFAULT NULL,
  `f_equipmentSupportFunctionRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_ec` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_ecBusId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EcPort`
--

DROP TABLE IF EXISTS `t_EcPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EcPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_ecPortId` varchar(100) DEFAULT NULL,
  `f_cascadingOrder` bigint(20) DEFAULT NULL,
  `f_ecBusRef` varchar(255) DEFAULT NULL,
  `f_hubPosition` varchar(255) DEFAULT NULL,
  `f_operationalState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_ec` (`f_subNetworkId`,`f_ecPortId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EmergencyUnlock`
--

DROP TABLE IF EXISTS `t_EmergencyUnlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EmergencyUnlock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_emergencyUnlockId` varchar(100) DEFAULT NULL,
  `f_activationState` text,
  `f_activationsLeft` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_em` (`f_lmId`,`f_subNetworkId`,`f_managedElementId`,`f_emergencyUnlockId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EndcProfilePredefined`
--

DROP TABLE IF EXISTS `t_EndcProfilePredefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EndcProfilePredefined` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_endcProfilePredefinedId` varchar(100) DEFAULT NULL,
  `f_meNbS1TermReqArpLev` bigint(20) DEFAULT NULL,
  `f_reservedBy` text,
  `f_splitNotAllowedUeArpLev` bigint(20) DEFAULT NULL,
  `f_userLabelPredefined` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_en` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_endcProfilePredefinedId`)
) ENGINE=MyISAM AUTO_INCREMENT=134978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EnergyMeter`
--

DROP TABLE IF EXISTS `t_EnergyMeter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnergyMeter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_energyMeterId` varchar(100) DEFAULT NULL,
  `f_energyMeterEnabled` text,
  `f_unitInformation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_en` (`f_subNetworkId`,`f_energyMeterId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=591299 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EnrollmentAuthority`
--

DROP TABLE IF EXISTS `t_EnrollmentAuthority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentAuthority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_enrollmentAuthorityId` varchar(100) DEFAULT NULL,
  `f_enrollmentAuthorityName` varchar(255) DEFAULT NULL,
  `f_enrollmentCaFingerprint` varchar(255) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_en` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_managedElementId`,`f_enrollmentAuthorityId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EnrollmentServer`
--

DROP TABLE IF EXISTS `t_EnrollmentServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_enrollmentServerGroupId` varchar(100) DEFAULT NULL,
  `f_enrollmentServerId` varchar(100) DEFAULT NULL,
  `f_protocol` text,
  `f_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_en_en` (`f_enrollmentServerId`,`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_certMId`,`f_enrollmentServerGroupId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EnrollmentServerGroup`
--

DROP TABLE IF EXISTS `t_EnrollmentServerGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentServerGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_enrollmentServerGroupId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_en` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_enrollmentServerGroupId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Equipment`
--

DROP TABLE IF EXISTS `t_Equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EquipmentDiscovery`
--

DROP TABLE IF EXISTS `t_EquipmentDiscovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EquipmentDiscovery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_equipmentDiscoveryId` varchar(100) DEFAULT NULL,
  `f_antennaDeviceScanInBackground` bit(1) DEFAULT NULL,
  `f_antennaDeviceScanStatus` text,
  `f_dataRate` text,
  `f_portConfiguration` text,
  `f_portVoltage` text,
  `f_sftpPassword` varchar(255) DEFAULT NULL,
  `f_sftpServerPath` varchar(255) DEFAULT NULL,
  `f_sftpUsername` varchar(255) DEFAULT NULL,
  `f_sftpServerIpAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_eq` (`f_subNetworkId`,`f_equipmentDiscoveryId`,`f_nodeSupportId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EquipmentSupportFunction`
--

DROP TABLE IF EXISTS `t_EquipmentSupportFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EquipmentSupportFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentSupportFunctionId` varchar(100) DEFAULT NULL,
  `f_autoCreateExternalNodes` bit(1) DEFAULT NULL,
  `f_autoCreateUnits` bit(1) DEFAULT NULL,
  `f_release` text,
  `f_supportSystemControl` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq` (`f_meContextId`,`f_subNetworkId`,`f_equipmentSupportFunctionId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EricssonFilter`
--

DROP TABLE IF EXISTS `t_EricssonFilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EricssonFilter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_ldapId` varchar(100) DEFAULT NULL,
  `f_ericssonFilterId` varchar(100) DEFAULT NULL,
  `f_targetBasedAccessControl` text,
  `f_version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_ld_ld_er` (`f_ldapId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_userManagementId`,`f_ericssonFilterId`,`f_meContextId`,`f_ldapAuthenticationMethodId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EricssonLeanCarrierFunction`
--

DROP TABLE IF EXISTS `t_EricssonLeanCarrierFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EricssonLeanCarrierFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_ericssonLeanCarrierFunctionId` varchar(100) DEFAULT NULL,
  `f_disableElcOnVolte` bit(1) DEFAULT NULL,
  `f_elcDrxOnDurationPostHeating` bigint(20) DEFAULT NULL,
  `f_elcDrxOnDurationPreHeating` bigint(20) DEFAULT NULL,
  `f_elcPdcchCrsMuting` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_er` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ericssonLeanCarrierFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EthernetPort`
--

DROP TABLE IF EXISTS `t_EthernetPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EthernetPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ethernetPortId` varchar(100) DEFAULT NULL,
  `f_admOperatingMode` text,
  `f_administrativeState` text,
  `f_autoNegEnable` bit(1) DEFAULT NULL,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_macAddress` varchar(255) DEFAULT NULL,
  `f_mtu` bigint(20) DEFAULT NULL,
  `f_operOperatingMode` text,
  `f_operationalState` text,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_et` (`f_subNetworkId`,`f_ethernetPortId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Etws`
--

DROP TABLE IF EXISTS `t_Etws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Etws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_etwsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_et` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_etwsId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventCapabilities`
--

DROP TABLE IF EXISTS `t_EventCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_maxNoOfJobs` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`,`f_eventCapabilitiesId`)
) ENGINE=MyISAM AUTO_INCREMENT=322773 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventFilterType`
--

DROP TABLE IF EXISTS `t_EventFilterType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventFilterType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventFilterTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_eventFilterTypeId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=730978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventGroup`
--

DROP TABLE IF EXISTS `t_EventGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`,`f_eventGroupId`)
) ENGINE=MyISAM AUTO_INCREMENT=2006153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventJob`
--

DROP TABLE IF EXISTS `t_EventJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventJob` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventJobId` varchar(100) DEFAULT NULL,
  `f_currentJobState` text,
  `f_description` text,
  `f_eventGroupRef` varchar(255) DEFAULT NULL,
  `f_fileCompressionType` text,
  `f_fileOutputEnabled` bit(1) DEFAULT NULL,
  `f_jobControl` text,
  `f_reportingPeriod` text,
  `f_requestedJobState` text,
  `f_streamCompressionType` text,
  `f_streamOutputEnabled` bit(1) DEFAULT NULL,
  `f_eventTypeRef` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_eventJobId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1936633 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventJob_eventFilter`
--

DROP TABLE IF EXISTS `t_EventJob_eventFilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventJob_eventFilter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventJobId` varchar(100) DEFAULT NULL,
  `f_filterValue` varchar(255) DEFAULT NULL,
  `f_filterName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_eventJobId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=96493 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventProducer`
--

DROP TABLE IF EXISTS `t_EventProducer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventProducer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=322773 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_EventType`
--

DROP TABLE IF EXISTS `t_EventType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_eventGroupId` varchar(100) DEFAULT NULL,
  `f_eventTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_ev_ev` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`,`f_eventGroupId`,`f_eventTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=60962005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalENodeBFunction`
--

DROP TABLE IF EXISTS `t_ExternalENodeBFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalENodeBFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_createdBy` text,
  `f_eNBId` bigint(20) DEFAULT NULL,
  `f_eSCellCapacityScaling` bigint(20) DEFAULT NULL,
  `f_eranLinkMaxRttDelay` bigint(20) DEFAULT NULL,
  `f_interENodeBCAInteractionMode` text,
  `f_lastModification` text,
  `f_mfbiSupport` bit(1) DEFAULT NULL,
  `f_timeOfCreation` text,
  `f_ulTrigHoSupport` text,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_timeOfLastModification` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_meContextId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=3981173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalENodeBFunction_eNodeBPlmnId`
--

DROP TABLE IF EXISTS `t_ExternalENodeBFunction_eNodeBPlmnId`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalENodeBFunction_eNodeBPlmnId` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=3981173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalEUtranCellFDD`
--

DROP TABLE IF EXISTS `t_ExternalEUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalEUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_externalEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_createdBy` text,
  `f_dlChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_eutranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_freqBand` bigint(20) DEFAULT NULL,
  `f_isRemoveAllowed` bit(1) DEFAULT NULL,
  `f_lastModification` text,
  `f_lbEUtranCellOffloadCapacity` bigint(20) DEFAULT NULL,
  `f_localCellId` bigint(20) DEFAULT NULL,
  `f_noOfTxAntennas` bigint(20) DEFAULT NULL,
  `f_physicalLayerCellId` bigint(20) DEFAULT NULL,
  `f_physicalLayerCellIdGroup` bigint(20) DEFAULT NULL,
  `f_physicalLayerSubCellId` bigint(20) DEFAULT NULL,
  `f_plmnListVerifiedByX2OrCgi` bit(1) DEFAULT NULL,
  `f_remoteCellStateEranUlComp` text,
  `f_reservedBy` text,
  `f_tac` bigint(20) DEFAULT NULL,
  `f_timeOfCreation` text,
  `f_timeOfLastModification` text,
  `f_ulChannelBandwidth` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt1` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt2` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt3` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt4` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt5` bigint(20) DEFAULT NULL,
  `f_additionalFreqBandList` bigint(20) DEFAULT NULL,
  `f_pciConflict` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex_ex` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_meContextId`,`f_externalEUtranCellFDDId`,`f_managedElementId`,`f_externalENodeBFunctionId`),
  KEY `f_externalEUtranCellFDDId` (`f_externalEUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=12186852 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalEUtranCellFDD_activePlmnList`
--

DROP TABLE IF EXISTS `t_ExternalEUtranCellFDD_activePlmnList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalEUtranCellFDD_activePlmnList` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_externalEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex_ex` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_externalEUtranCellFDDId`,`f_eUtraNetworkId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=12186852 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalEUtranCellFDD_pciConflictCell`
--

DROP TABLE IF EXISTS `t_ExternalEUtranCellFDD_pciConflictCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalEUtranCellFDD_pciConflictCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_externalEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_enbId` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex_ex` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_meContextId`,`f_externalEUtranCellFDDId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=519297 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalEUtranCellFDD_pciDetectingCell`
--

DROP TABLE IF EXISTS `t_ExternalEUtranCellFDD_pciDetectingCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalEUtranCellFDD_pciDetectingCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_externalEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_cellId` bigint(20) DEFAULT NULL,
  `f_enbId` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex_ex` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_meContextId`,`f_externalEUtranCellFDDId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=519297 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalPower`
--

DROP TABLE IF EXISTS `t_ExternalPower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalPower` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentSupportFunctionId` varchar(100) DEFAULT NULL,
  `f_externalPowerId` varchar(100) DEFAULT NULL,
  `f_operationalState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_ex` (`f_subNetworkId`,`f_equipmentSupportFunctionId`,`f_meContextId`,`f_externalPowerId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=81144 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalUtranCellFDD`
--

DROP TABLE IF EXISTS `t_ExternalUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  `f_utranFrequencyId` varchar(100) DEFAULT NULL,
  `f_externalUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_isRemoveAllowed` bit(1) DEFAULT NULL,
  `f_lac` bigint(20) DEFAULT NULL,
  `f_lastModification` text,
  `f_lbUtranCellOffloadCapacity` bigint(20) DEFAULT NULL,
  `f_physicalCellIdentity` bigint(20) DEFAULT NULL,
  `f_rac` bigint(20) DEFAULT NULL,
  `f_reservedBy` text,
  `f_rimAssociationStatus` text,
  `f_rimCapable` text,
  `f_srvccCapability` text,
  `f_timeOfCreation` text,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_zzzTemporary3` bigint(20) DEFAULT NULL,
  `f_zzzTemporary4` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt1` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt2` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt3` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt4` bigint(20) DEFAULT NULL,
  `f_zzzTemporaryExt5` bigint(20) DEFAULT NULL,
  `f_timeOfLastModification` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ut_ut_ex` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_utranFrequencyId`,`f_meContextId`,`f_externalUtranCellFDDId`,`f_managedElementId`,`f_utraNetworkId`)
) ENGINE=MyISAM AUTO_INCREMENT=1262007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalUtranCellFDD_cellIdentity`
--

DROP TABLE IF EXISTS `t_ExternalUtranCellFDD_cellIdentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalUtranCellFDD_cellIdentity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  `f_utranFrequencyId` varchar(100) DEFAULT NULL,
  `f_externalUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_rncId` bigint(20) DEFAULT NULL,
  `f_cId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ut_ut_ex` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_externalUtranCellFDDId`,`f_utranFrequencyId`,`f_managedElementId`,`f_utraNetworkId`)
) ENGINE=MyISAM AUTO_INCREMENT=1262007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ExternalUtranCellFDD_plmnIdentity`
--

DROP TABLE IF EXISTS `t_ExternalUtranCellFDD_plmnIdentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalUtranCellFDD_plmnIdentity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  `f_utranFrequencyId` varchar(100) DEFAULT NULL,
  `f_externalUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ut_ut_ex` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_externalUtranCellFDDId`,`f_utranFrequencyId`,`f_managedElementId`,`f_utraNetworkId`)
) ENGINE=MyISAM AUTO_INCREMENT=1262007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FanGroup`
--

DROP TABLE IF EXISTS `t_FanGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FanGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_cabinetId` varchar(100) DEFAULT NULL,
  `f_fanGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_ca_fa` (`f_meContextId`,`f_cabinetId`,`f_subNetworkId`,`f_managedElementId`,`f_fanGroupId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=254737 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FeatureKey`
--

DROP TABLE IF EXISTS `t_FeatureKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FeatureKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_featureKeyId` varchar(100) DEFAULT NULL,
  `f_keyId` varchar(255) DEFAULT NULL,
  `f_name` text,
  `f_productType` varchar(255) DEFAULT NULL,
  `f_shared` bit(1) DEFAULT NULL,
  `f_state` varchar(255) DEFAULT NULL,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_expiration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_fe` (`f_subNetworkId`,`f_systemFunctionsId`,`f_featureKeyId`,`f_meContextId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=19081977 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FeatureState`
--

DROP TABLE IF EXISTS `t_FeatureState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FeatureState` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_featureStateId` varchar(100) DEFAULT NULL,
  `f_featureKey` varchar(255) DEFAULT NULL,
  `f_featureState` text,
  `f_keyId` varchar(255) DEFAULT NULL,
  `f_licenseState` text,
  `f_serviceState` text,
  `f_description` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_fe` (`f_lmId`,`f_featureStateId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=25535115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FieldReplaceableUnit`
--

DROP TABLE IF EXISTS `t_FieldReplaceableUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FieldReplaceableUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_isSharedWithExternalMe` bit(1) DEFAULT NULL,
  `f_operationalState` text,
  `f_userLabel` varchar(255) DEFAULT NULL,
  `f_supportUnitRef` varchar(255) DEFAULT NULL,
  `f_positionRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=606551 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FieldReplaceableUnit_hwTestResult`
--

DROP TABLE IF EXISTS `t_FieldReplaceableUnit_hwTestResult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FieldReplaceableUnit_hwTestResult` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_hwTestStatus` text,
  `f_timeStamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FieldReplaceableUnit_productData`
--

DROP TABLE IF EXISTS `t_FieldReplaceableUnit_productData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FieldReplaceableUnit_productData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_productionDate` varchar(255) DEFAULT NULL,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_productNumber` text,
  `f_productName` text,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=599101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FilePullCapabilities`
--

DROP TABLE IF EXISTS `t_FilePullCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FilePullCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_filePullCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_alignedReportingPeriod` bit(1) DEFAULT NULL,
  `f_finalROP` bit(1) DEFAULT NULL,
  `f_outputDirectory` varchar(255) DEFAULT NULL,
  `f_supportedCompressionTypes` text,
  `f_supportedReportingPeriods` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_fi` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`,`f_filePullCapabilitiesId`)
) ENGINE=MyISAM AUTO_INCREMENT=322773 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FileTPM`
--

DROP TABLE IF EXISTS `t_FileTPM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FileTPM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_fileTPMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_fi` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_fileTPMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Filter`
--

DROP TABLE IF EXISTS `t_Filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Filter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_ldapId` varchar(100) DEFAULT NULL,
  `f_filterId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_ld_ld_fi` (`f_meContextId`,`f_ldapId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_filterId`,`f_secMId`,`f_ldapAuthenticationMethodId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FlexibleQoSFunction`
--

DROP TABLE IF EXISTS `t_FlexibleQoSFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FlexibleQoSFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_flexibleQoSFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_fl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_flexibleQoSFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Fm`
--

DROP TABLE IF EXISTS `t_Fm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Fm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fmId` varchar(100) DEFAULT NULL,
  `f_heartbeatInterval` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_fm` (`f_subNetworkId`,`f_managedElementId`,`f_fmId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FmAlarm`
--

DROP TABLE IF EXISTS `t_FmAlarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fmId` varchar(100) DEFAULT NULL,
  `f_fmAlarmId` varchar(100) DEFAULT NULL,
  `f_originalAdditionalText` text,
  `f_originalEventTime` varchar(255) DEFAULT NULL,
  `f_originalSeverity` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_fm_fm` (`f_subNetworkId`,`f_managedElementId`,`f_fmId`,`f_systemFunctionsId`,`f_fmAlarmId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=87168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FmAlarmModel`
--

DROP TABLE IF EXISTS `t_FmAlarmModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmModel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fmId` varchar(100) DEFAULT NULL,
  `f_fmAlarmModelId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_fm_fm` (`f_subNetworkId`,`f_fmAlarmModelId`,`f_managedElementId`,`f_fmId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FmAlarmSupervision`
--

DROP TABLE IF EXISTS `t_FmAlarmSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_fmAlarmSupervisionId` varchar(100) DEFAULT NULL,
  `f_active` bit(1) DEFAULT NULL,
  `f_automaticSynchronization` bit(1) DEFAULT NULL,
  `f_failoverCount` bigint(20) DEFAULT NULL,
  `f_heartbeatTimeout` bigint(20) DEFAULT NULL,
  `f_heartbeatinterval` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_fm` (`f_networkElementId`,`f_fmAlarmSupervisionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FmAlarmType`
--

DROP TABLE IF EXISTS `t_FmAlarmType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fmId` varchar(100) DEFAULT NULL,
  `f_fmAlarmModelId` varchar(100) DEFAULT NULL,
  `f_fmAlarmTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_fm_fm_fm` (`f_subNetworkId`,`f_fmAlarmModelId`,`f_managedElementId`,`f_fmAlarmTypeId`,`f_fmId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=17779664 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FmFunction`
--

DROP TABLE IF EXISTS `t_FmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_fmFunctionId` varchar(100) DEFAULT NULL,
  `f_alarmSuppressedState` bit(1) DEFAULT NULL,
  `f_currentServiceState` text,
  `f_lastUpdated` varchar(255) DEFAULT NULL,
  `f_lastUpdatedTimeStamp` text,
  `f_subscriptionState` text,
  `f_technicianPresentState` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_fm` (`f_networkElementId`,`f_fmFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FreqBandData`
--

DROP TABLE IF EXISTS `t_FreqBandData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FreqBandData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_rfPortId` varchar(100) DEFAULT NULL,
  `f_freqBandDataId` varchar(100) DEFAULT NULL,
  `f_vswrSupervisionActive` bit(1) DEFAULT NULL,
  `f_vswrSupervisionSensitivity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_rf_fr` (`f_freqBandDataId`,`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_equipmentId`,`f_rfPortId`,`f_fieldReplaceableUnitId`),
  KEY `ManagedElement_FRU_RFPort` (`f_managedElementId`,`f_fieldReplaceableUnitId`,`f_rfPortId`)
) ENGINE=MyISAM AUTO_INCREMENT=3125521 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FtpServer`
--

DROP TABLE IF EXISTS `t_FtpServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_fileTPMId` varchar(100) DEFAULT NULL,
  `f_ftpServerId` varchar(100) DEFAULT NULL,
  `f_idleTimer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_fi_ft` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_fileTPMId`,`f_managedElementId`,`f_ftpServerId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FtpTls`
--

DROP TABLE IF EXISTS `t_FtpTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_fileTPMId` varchar(100) DEFAULT NULL,
  `f_ftpTlsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_fi_ft` (`f_meContextId`,`f_ftpTlsId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_fileTPMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_FtpTlsServer`
--

DROP TABLE IF EXISTS `t_FtpTlsServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpTlsServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_fileTPMId` varchar(100) DEFAULT NULL,
  `f_ftpServerId` varchar(100) DEFAULT NULL,
  `f_ftpTlsServerId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_port` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_fi_ft_ft` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_ftpTlsServerId`,`f_meContextId`,`f_fileTPMId`,`f_managedElementId`,`f_ftpServerId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_GeographicLocation`
--

DROP TABLE IF EXISTS `t_GeographicLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GeographicLocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_geographicLocationId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_ge` (`f_networkElementId`,`f_geographicLocationId`)
) ENGINE=MyISAM AUTO_INCREMENT=1522 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_GeometricPoint`
--

DROP TABLE IF EXISTS `t_GeometricPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GeometricPoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_geographicLocationId` varchar(100) DEFAULT NULL,
  `f_geometricPointId` varchar(100) DEFAULT NULL,
  `f_latitude` text,
  `f_longitude` text,
  PRIMARY KEY (`id`),
  KEY `idx_ne_ge_ge` (`f_networkElementId`,`f_geographicLocationId`,`f_geometricPointId`)
) ENGINE=MyISAM AUTO_INCREMENT=1522 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_GracePeriod`
--

DROP TABLE IF EXISTS `t_GracePeriod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GracePeriod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_capacityStateId` varchar(100) DEFAULT NULL,
  `f_gracePeriodId` varchar(100) DEFAULT NULL,
  `f_gracePeriodState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ca_gr` (`f_gracePeriodId`,`f_lmId`,`f_capacityStateId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HcJob`
--

DROP TABLE IF EXISTS `t_HcJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcJob` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_hcJobId` varchar(100) DEFAULT NULL,
  `f_lastRunTime` varchar(255) DEFAULT NULL,
  `f_rulesCategories` text,
  `f_status` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he_hc` (`f_subNetworkId`,`f_systemFunctionsId`,`f_hcJobId`,`f_meContextId`,`f_healthCheckMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=51398 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HcJob_failedRules`
--

DROP TABLE IF EXISTS `t_HcJob_failedRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcJob_failedRules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_hcJobId` varchar(100) DEFAULT NULL,
  `f_entity` text,
  `f_reason` text,
  `f_hcRule` varchar(255) DEFAULT NULL,
  `f_severity` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he_hc` (`f_subNetworkId`,`f_systemFunctionsId`,`f_hcJobId`,`f_meContextId`,`f_healthCheckMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=12170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HcJob_progressReport`
--

DROP TABLE IF EXISTS `t_HcJob_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcJob_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_hcJobId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he_hc` (`f_subNetworkId`,`f_systemFunctionsId`,`f_hcJobId`,`f_meContextId`,`f_healthCheckMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=51398 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HcRule`
--

DROP TABLE IF EXISTS `t_HcRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcRule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_hcRuleId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_categories` text,
  `f_recommendedAction` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he_hc` (`f_hcRuleId`,`f_subNetworkId`,`f_managedElementId`,`f_healthCheckMId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=1708667 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HcRule_inputParameters`
--

DROP TABLE IF EXISTS `t_HcRule_inputParameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcRule_inputParameters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_hcRuleId` varchar(100) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_description` text,
  `f_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he_hc` (`f_subNetworkId`,`f_systemFunctionsId`,`f_hcRuleId`,`f_meContextId`,`f_healthCheckMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HealthCheckM`
--

DROP TABLE IF EXISTS `t_HealthCheckM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HealthCheckM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_lastStatus` text,
  `f_maxNoOfReportFiles` bigint(20) DEFAULT NULL,
  `f_lastUpdateTime` varchar(255) DEFAULT NULL,
  `f_lastExecutedJob` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_he` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_healthCheckMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HttpM`
--

DROP TABLE IF EXISTS `t_HttpM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HttpM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_httpMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ht` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_httpMId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Https`
--

DROP TABLE IF EXISTS `t_Https`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Https` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_httpMId` varchar(100) DEFAULT NULL,
  `f_httpsId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ht_ht` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_httpsId`,`f_managedElementId`,`f_httpMId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HwInventory`
--

DROP TABLE IF EXISTS `t_HwInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HwInventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_hwInventoryId` varchar(100) DEFAULT NULL,
  `f_timeOfLatestInvChange` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_hw` (`f_meContextId`,`f_hwInventoryId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HwItem`
--

DROP TABLE IF EXISTS `t_HwItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HwItem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_hwInventoryId` varchar(100) DEFAULT NULL,
  `f_hwItemId` varchar(100) DEFAULT NULL,
  `f_equipmentMoRef` varchar(255) DEFAULT NULL,
  `f_hwCapability` text,
  `f_hwModel` varchar(255) DEFAULT NULL,
  `f_hwName` text,
  `f_hwType` varchar(255) DEFAULT NULL,
  `f_manualDataEntry` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_vendorName` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_hw_hw` (`f_subNetworkId`,`f_hwItemId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`,`f_hwInventoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=3740664 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_HwItem_productData`
--

DROP TABLE IF EXISTS `t_HwItem_productData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HwItem_productData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_hwInventoryId` varchar(100) DEFAULT NULL,
  `f_hwItemId` varchar(100) DEFAULT NULL,
  `f_productNumber` text,
  `f_type` varchar(255) DEFAULT NULL,
  `f_productRevision` text,
  `f_productName` text,
  `f_productionDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_hw_hw` (`f_meContextId`,`f_hwInventoryId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_hwItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=3740664 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ikev2PolicyProfile`
--

DROP TABLE IF EXISTS `t_Ikev2PolicyProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ikev2PolicyProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ikev2PolicyProfileId` varchar(100) DEFAULT NULL,
  `f_dpdTime` bigint(20) DEFAULT NULL,
  `f_ikeDscp` bigint(20) DEFAULT NULL,
  `f_ikeSaLifetime` bigint(20) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ik` (`f_meContextId`,`f_ikev2PolicyProfileId`,`f_subNetworkId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ikev2PolicyProfile_ikev2Proposal`
--

DROP TABLE IF EXISTS `t_Ikev2PolicyProfile_ikev2Proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ikev2PolicyProfile_ikev2Proposal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ikev2PolicyProfileId` varchar(100) DEFAULT NULL,
  `f_diffieHellmanGroup` text,
  `f_integrityAlgorithm` text,
  `f_encryptionAlgorithm` text,
  `f_pseudoRandomFunction` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ik` (`f_subNetworkId`,`f_meContextId`,`f_ikev2PolicyProfileId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ikev2Session`
--

DROP TABLE IF EXISTS `t_Ikev2Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ikev2Session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_ipsecTunnelId` varchar(100) DEFAULT NULL,
  `f_ikev2SessionId` varchar(100) DEFAULT NULL,
  `f_ikev2PolicyProfile` varchar(255) DEFAULT NULL,
  `f_localIdentityOrigin` text,
  `f_operationalState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ip_ik` (`f_ipsecTunnelId`,`f_subNetworkId`,`f_ikev2SessionId`,`f_meContextId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ImeisvTable`
--

DROP TABLE IF EXISTS `t_ImeisvTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ImeisvTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_imeisvTableId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_im` (`f_meContextId`,`f_eNodeBFunctionId`,`f_imeisvTableId`,`f_subNetworkId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_InstantUplinkAccess`
--

DROP TABLE IF EXISTS `t_InstantUplinkAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InstantUplinkAccess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_instantUplinkAccessId` varchar(100) DEFAULT NULL,
  `f_iuaCellResourceLimit` bigint(20) DEFAULT NULL,
  `f_iuaCoscheduleDynamic` bit(1) DEFAULT NULL,
  `f_iuaDeactPdcchMargin` bigint(20) DEFAULT NULL,
  `f_iuaDeactTimer` bigint(20) DEFAULT NULL,
  `f_iuaDuration` bigint(20) DEFAULT NULL,
  `f_iuaEnabled` bit(1) DEFAULT NULL,
  `f_iuaInactivityTimer` bigint(20) DEFAULT NULL,
  `f_iuaIntervalFdd` text,
  `f_iuaIntervalTdd` text,
  `f_iuaLoadThreshold` bigint(20) DEFAULT NULL,
  `f_iuaSinrDeactHyst` bigint(20) DEFAULT NULL,
  `f_iuaSinrThreshold` bigint(20) DEFAULT NULL,
  `f_iuaTargetBufferEmptyTime` bigint(20) DEFAULT NULL,
  `f_iuaTargetBufferSize` bigint(20) DEFAULT NULL,
  `f_iuaUePrbLimit` bigint(20) DEFAULT NULL,
  `f_iuaInterval` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_in` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_instantUplinkAccessId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IntegrationUnlock`
--

DROP TABLE IF EXISTS `t_IntegrationUnlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IntegrationUnlock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_integrationUnlockId` varchar(100) DEFAULT NULL,
  `f_activationState` text,
  `f_activationsLeft` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_in` (`f_lmId`,`f_integrationUnlockId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_InterfaceIPv4`
--

DROP TABLE IF EXISTS `t_InterfaceIPv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InterfaceIPv4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_interfaceIPv4Id` varchar(100) DEFAULT NULL,
  `f_arpTimeout` bigint(20) DEFAULT NULL,
  `f_bfdStaticRoutes` text,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_loopback` bit(1) DEFAULT NULL,
  `f_mtu` bigint(20) DEFAULT NULL,
  `f_operationalState` text,
  `f_pcpArp` bigint(20) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_egressQosMarking` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_in` (`f_subNetworkId`,`f_meContextId`,`f_routerId`,`f_interfaceIPv4Id`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=170863 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_InventoryFunction`
--

DROP TABLE IF EXISTS `t_InventoryFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InventoryFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_sHMFunctionId` varchar(100) DEFAULT NULL,
  `f_inventoryFunctionId` varchar(100) DEFAULT NULL,
  `f_syncStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_ne_sh_in` (`f_networkElementId`,`f_inventoryFunctionId`,`f_sHMFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_InventorySupervision`
--

DROP TABLE IF EXISTS `t_InventorySupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InventorySupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_inventorySupervisionId` varchar(100) DEFAULT NULL,
  `f_active` bit(1) DEFAULT NULL,
  `f_doInventorySync` bit(1) DEFAULT NULL,
  `f_inventoryType` text,
  PRIMARY KEY (`id`),
  KEY `idx_ne_in` (`f_networkElementId`,`f_inventorySupervisionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IpsecPolicy`
--

DROP TABLE IF EXISTS `t_IpsecPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecPolicy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_ipsecTunnelId` varchar(100) DEFAULT NULL,
  `f_ipsecPolicyId` varchar(100) DEFAULT NULL,
  `f_antiReplayProtection` bit(1) DEFAULT NULL,
  `f_ipsecProposalProfile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ip_ip` (`f_meContextId`,`f_ipsecPolicyId`,`f_ipsecTunnelId`,`f_subNetworkId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IpsecProposalProfile`
--

DROP TABLE IF EXISTS `t_IpsecProposalProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecProposalProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ipsecProposalProfileId` varchar(100) DEFAULT NULL,
  `f_pfs` bit(1) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ip` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_ipsecProposalProfileId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IpsecProposalProfile_childSaLifetime`
--

DROP TABLE IF EXISTS `t_IpsecProposalProfile_childSaLifetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecProposalProfile_childSaLifetime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ipsecProposalProfileId` varchar(100) DEFAULT NULL,
  `f_timeLimit` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ip` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_ipsecProposalProfileId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IpsecProposalProfile_ipsecProposal`
--

DROP TABLE IF EXISTS `t_IpsecProposalProfile_ipsecProposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecProposalProfile_ipsecProposal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ipsecProposalProfileId` varchar(100) DEFAULT NULL,
  `f_integrityAlgorithm` text,
  `f_encryptionAlgorithm` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ip` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_ipsecProposalProfileId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IpsecTunnel`
--

DROP TABLE IF EXISTS `t_IpsecTunnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecTunnel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_ipsecTunnelId` varchar(100) DEFAULT NULL,
  `f_localAddress` varchar(255) DEFAULT NULL,
  `f_remoteAddress` varchar(255) DEFAULT NULL,
  `f_remoteAddressSecondary` varchar(255) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ip` (`f_meContextId`,`f_ipsecTunnelId`,`f_subNetworkId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_IuaProfile`
--

DROP TABLE IF EXISTS `t_IuaProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IuaProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_iuaProfileId` varchar(100) DEFAULT NULL,
  `f_iuaDeactTimer` bigint(20) DEFAULT NULL,
  `f_iuaDuration` bigint(20) DEFAULT NULL,
  `f_iuaInactivityTimer` bigint(20) DEFAULT NULL,
  `f_iuaIntervalFdd` text,
  `f_iuaIntervalTdd` text,
  `f_iuaSinrDeactHyst` bigint(20) DEFAULT NULL,
  `f_iuaSinrThreshold` bigint(20) DEFAULT NULL,
  `f_iuaTargetBufferEmptyTime` bigint(20) DEFAULT NULL,
  `f_iuaTargetBufferSize` bigint(20) DEFAULT NULL,
  `f_iuaUePrbLimit` bigint(20) DEFAULT NULL,
  `f_iuaInterval` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_iu` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_iuaProfileId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=224962 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_KeyFileInformation`
--

DROP TABLE IF EXISTS `t_KeyFileInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_KeyFileInformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_keyFileManagementId` varchar(100) DEFAULT NULL,
  `f_keyFileInformationId` varchar(100) DEFAULT NULL,
  `f_installationTime` varchar(255) DEFAULT NULL,
  `f_locatable` bit(1) DEFAULT NULL,
  `f_productType` varchar(255) DEFAULT NULL,
  `f_sequenceNumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ke_ke` (`f_meContextId`,`f_subNetworkId`,`f_keyFileManagementId`,`f_systemFunctionsId`,`f_lmId`,`f_managedElementId`,`f_keyFileInformationId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_KeyFileManagement`
--

DROP TABLE IF EXISTS `t_KeyFileManagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_KeyFileManagement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_keyFileManagementId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ke` (`f_meContextId`,`f_subNetworkId`,`f_keyFileManagementId`,`f_systemFunctionsId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_KeyFileManagement_reportProgress`
--

DROP TABLE IF EXISTS `t_KeyFileManagement_reportProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_KeyFileManagement_reportProgress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_keyFileManagementId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_additionalInfo` text,
  `f_state` text,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm_ke` (`f_subNetworkId`,`f_keyFileManagementId`,`f_systemFunctionsId`,`f_meContextId`,`f_lmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ldap`
--

DROP TABLE IF EXISTS `t_Ldap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ldap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_ldapId` varchar(100) DEFAULT NULL,
  `f_baseDn` varchar(255) DEFAULT NULL,
  `f_bindDn` varchar(255) DEFAULT NULL,
  `f_fallbackLdapIpAddress` varchar(255) DEFAULT NULL,
  `f_ldapIpAddress` varchar(255) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_profileFilter` text,
  `f_serverPort` bigint(20) DEFAULT NULL,
  `f_tlsMode` text,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  `f_useReferrals` bit(1) DEFAULT NULL,
  `f_useTls` bit(1) DEFAULT NULL,
  `f_userLabel` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_ld_ld` (`f_ldapId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_userManagementId`,`f_meContextId`,`f_ldapAuthenticationMethodId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LdapAuthenticationMethod`
--

DROP TABLE IF EXISTS `t_LdapAuthenticationMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LdapAuthenticationMethod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_ld` (`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_userManagementId`,`f_meContextId`,`f_ldapAuthenticationMethodId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ldap_bindPassword`
--

DROP TABLE IF EXISTS `t_Ldap_bindPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ldap_bindPassword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_ldapId` varchar(100) DEFAULT NULL,
  `f_cleartext` bit(1) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_ld_ld` (`f_meContextId`,`f_ldapId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_ldapAuthenticationMethodId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LicenseSupport`
--

DROP TABLE IF EXISTS `t_LicenseSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LicenseSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_licenseSupportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_li` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_licenseSupportId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Lm`
--

DROP TABLE IF EXISTS `t_Lm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Lm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_fingerprint` varchar(255) DEFAULT NULL,
  `f_fingerprintUpdateable` bit(1) DEFAULT NULL,
  `f_lastInventoryChange` varchar(255) DEFAULT NULL,
  `f_lastLicenseInventoryRefresh` varchar(255) DEFAULT NULL,
  `f_lmState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lm` (`f_lmId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LoadBalancingFunction`
--

DROP TABLE IF EXISTS `t_LoadBalancingFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LoadBalancingFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_loadBalancingFunctionId` varchar(100) DEFAULT NULL,
  `f_isUlEvalAllowedAtCaTrHo` bit(1) DEFAULT NULL,
  `f_isUlEvalAllowedAtTpLbHo` bit(1) DEFAULT NULL,
  `f_lbAllowedForEndcUe` bit(1) DEFAULT NULL,
  `f_lbCaCapHysteresis` bigint(20) DEFAULT NULL,
  `f_lbCaThreshold` bigint(20) DEFAULT NULL,
  `f_lbCauseCodeS1SourceTriggersOffload` text,
  `f_lbCauseCodeS1TargetAcceptsOffload` text,
  `f_lbCauseCodeX2SourceTriggersOffload` text,
  `f_lbCauseCodeX2TargetAcceptsOffload` text,
  `f_lbCeiling` bigint(20) DEFAULT NULL,
  `f_lbDiffCaOffset` bigint(20) DEFAULT NULL,
  `f_lbEUtranOffloadBackoffTime` bigint(20) DEFAULT NULL,
  `f_lbHitRateEUtranAddThreshold` bigint(20) DEFAULT NULL,
  `f_lbHitRateEUtranMeasUeIntensity` bigint(20) DEFAULT NULL,
  `f_lbHitRateEUtranMeasUeThreshold` bigint(20) DEFAULT NULL,
  `f_lbHitRateEUtranRemoveThreshold` bigint(20) DEFAULT NULL,
  `f_lbHitRateUtranAddThreshold` bigint(20) DEFAULT NULL,
  `f_lbHitRateUtranMeasUeIntensity` bigint(20) DEFAULT NULL,
  `f_lbHitRateUtranMeasUeThreshold` bigint(20) DEFAULT NULL,
  `f_lbHitRateUtranRemoveThreshold` bigint(20) DEFAULT NULL,
  `f_lbMeasScalingLimit` bigint(20) DEFAULT NULL,
  `f_lbRateOffsetCoefficient` bigint(20) DEFAULT NULL,
  `f_lbRateOffsetLoadThreshold` bigint(20) DEFAULT NULL,
  `f_lbThreshold` bigint(20) DEFAULT NULL,
  `f_lbUeEvaluationTimer` bigint(20) DEFAULT NULL,
  `f_lbUtranOffloadBackoffTime` bigint(20) DEFAULT NULL,
  `f_ocdMaxNoHighHitRateCells` bigint(20) DEFAULT NULL,
  `f_ocdMinHighHitThresh` bigint(20) DEFAULT NULL,
  `f_txPwrForOverlaidCellDetect` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_lo` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_loadBalancingFunctionId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LocalAuthorizationMethod`
--

DROP TABLE IF EXISTS `t_LocalAuthorizationMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LocalAuthorizationMethod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_localAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_lo` (`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_localAuthorizationMethodId`,`f_userManagementId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Log`
--

DROP TABLE IF EXISTS `t_Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_logMId` varchar(100) DEFAULT NULL,
  `f_logId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lo_lo` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_logMId`,`f_managedElementId`,`f_logId`)
) ENGINE=MyISAM AUTO_INCREMENT=1433402 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LogM`
--

DROP TABLE IF EXISTS `t_LogM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LogM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_logMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lo` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_logMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LogM_progressReport`
--

DROP TABLE IF EXISTS `t_LogM_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LogM_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_logMId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_actionName` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lo` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_logMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=78230 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Log_progressReport`
--

DROP TABLE IF EXISTS `t_Log_progressReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Log_progressReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_logMId` varchar(100) DEFAULT NULL,
  `f_logId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_lo_lo` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_logMId`,`f_managedElementId`,`f_logId`)
) ENGINE=MyISAM AUTO_INCREMENT=688803 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LoggedMdt`
--

DROP TABLE IF EXISTS `t_LoggedMdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LoggedMdt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_mdtConfigurationId` varchar(100) DEFAULT NULL,
  `f_loggedMdtId` varchar(100) DEFAULT NULL,
  `f_areaScopeType` text,
  `f_loggedMdtConfigEnabled` bit(1) DEFAULT NULL,
  `f_loggedMdtGnssCheck` bit(1) DEFAULT NULL,
  `f_loggedMdtReportEnabled` bit(1) DEFAULT NULL,
  `f_loggingDuration` text,
  `f_loggingInterval` text,
  `f_numberOfMdtConfigUes` bigint(20) DEFAULT NULL,
  `f_tceId` bigint(20) DEFAULT NULL,
  `f_traceId` bigint(20) DEFAULT NULL,
  `f_traceRecSessionReference` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_md_lo` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_loggedMdtId`,`f_managedElementId`,`f_mdtConfigurationId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_LogicalChannelGroup`
--

DROP TABLE IF EXISTS `t_LogicalChannelGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LogicalChannelGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  `f_logicalChannelGroupId` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_qc_lo` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_logicalChannelGroupId`,`f_qciTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=179969 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MACConfiguration`
--

DROP TABLE IF EXISTS `t_MACConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MACConfiguration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_radioBearerTableId` varchar(100) DEFAULT NULL,
  `f_mACConfigurationId` varchar(100) DEFAULT NULL,
  `f_dlMaxHARQTx` bigint(20) DEFAULT NULL,
  `f_ulMaxHARQTx` bigint(20) DEFAULT NULL,
  `f_ulTtiBundlingMaxHARQTx` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ra_ma` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_mACConfigurationId`,`f_radioBearerTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MaintenanceUser`
--

DROP TABLE IF EXISTS `t_MaintenanceUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MaintenanceUser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_userIdentityId` varchar(100) DEFAULT NULL,
  `f_maintenanceUserId` varchar(100) DEFAULT NULL,
  `f_userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_us_ma` (`f_meContextId`,`f_maintenanceUserId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`,`f_userIdentityId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MaintenanceUserSecurity`
--

DROP TABLE IF EXISTS `t_MaintenanceUserSecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MaintenanceUserSecurity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_userIdentityId` varchar(100) DEFAULT NULL,
  `f_maintenanceUserSecurityId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_us_ma` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_maintenanceUserSecurityId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`,`f_userIdentityId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ManagedElement`
--

DROP TABLE IF EXISTS `t_ManagedElement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ManagedElement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_dnPrefix` varchar(255) DEFAULT NULL,
  `f_managedElementType` varchar(255) DEFAULT NULL,
  `f_neType` text,
  `f_networkManagedElementId` varchar(255) DEFAULT NULL,
  `f_release` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma` (`f_subNetworkId`,`f_managedElementId`,`f_meContextId`),
  KEY `f_managedElementId` (`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MdtConfiguration`
--

DROP TABLE IF EXISTS `t_MdtConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MdtConfiguration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_mdtConfigurationId` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrpMdt` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrqMdt` bigint(20) DEFAULT NULL,
  `f_hysteresisA2Mdt` bigint(20) DEFAULT NULL,
  `f_maxReportCellsA2Mdt` bigint(20) DEFAULT NULL,
  `f_measGapAllowedMdt` bit(1) DEFAULT NULL,
  `f_positioningMethod` text,
  `f_rcefReportEnabled` bit(1) DEFAULT NULL,
  `f_reportAmountMdt` bigint(20) DEFAULT NULL,
  `f_reportIntervalMdt` text,
  `f_reportQuantityA2Mdt` text,
  `f_reportingTrigger` text,
  `f_rlfReportEnabled` bit(1) DEFAULT NULL,
  `f_timeToTriggerA2Mdt` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA2Mdt` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_md` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_mdtConfigurationId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MeContext`
--

DROP TABLE IF EXISTS `t_MeContext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MeContext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_neType` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me` (`f_subNetworkId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=86890 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MimoSleepFunction`
--

DROP TABLE IF EXISTS `t_MimoSleepFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MimoSleepFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mimoSleepFunctionId` varchar(100) DEFAULT NULL,
  `f_portMergingEnabled` bit(1) DEFAULT NULL,
  `f_sleepEndTime` varchar(255) DEFAULT NULL,
  `f_sleepMode` text,
  `f_sleepPowerControl` text,
  `f_sleepStartTime` varchar(255) DEFAULT NULL,
  `f_sleepState` text,
  `f_switchDownMonitorDurTimer` bigint(20) DEFAULT NULL,
  `f_switchDownPrbThreshold` bigint(20) DEFAULT NULL,
  `f_switchDownRrcConnThreshold` bigint(20) DEFAULT NULL,
  `f_switchUpMonitorDurTimer` bigint(20) DEFAULT NULL,
  `f_switchUpPrbThreshold` bigint(20) DEFAULT NULL,
  `f_switchUpRrcConnThreshold` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_mi` (`f_mimoSleepFunctionId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MpClusterHandling`
--

DROP TABLE IF EXISTS `t_MpClusterHandling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MpClusterHandling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_mpClusterHandlingId` varchar(100) DEFAULT NULL,
  `f_primaryCoreRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_mp` (`f_meContextId`,`f_subNetworkId`,`f_mpClusterHandlingId`,`f_managedElementId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_MpProcessingResource`
--

DROP TABLE IF EXISTS `t_MpProcessingResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MpProcessingResource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_mpProcessingResourceId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_mp` (`f_meContextId`,`f_subNetworkId`,`f_mpProcessingResourceId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=44578 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetconfSsh`
--

DROP TABLE IF EXISTS `t_NetconfSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_netconfSshId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_port` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ne` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_netconfSshId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetconfTls`
--

DROP TABLE IF EXISTS `t_NetconfTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_netconfTlsId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ne` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_netconfTlsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetconfYangSsh`
--

DROP TABLE IF EXISTS `t_NetconfYangSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfYangSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_onapSupportId` varchar(100) DEFAULT NULL,
  `f_netconfYangSshId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_on_ne` (`f_subNetworkId`,`f_nodeSupportId`,`f_netconfYangSshId`,`f_meContextId`,`f_onapSupportId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=6321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetconfYangTls`
--

DROP TABLE IF EXISTS `t_NetconfYangTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfYangTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_onapSupportId` varchar(100) DEFAULT NULL,
  `f_netconfYangTlsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_on_ne` (`f_netconfYangTlsId`,`f_subNetworkId`,`f_nodeSupportId`,`f_meContextId`,`f_onapSupportId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=6321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetworkElement`
--

DROP TABLE IF EXISTS `t_NetworkElement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetworkElement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_failedSoftwareSyncsCount` bigint(20) DEFAULT NULL,
  `f_lastSuccessfulSoftwareSync` text,
  `f_managementState` text,
  `f_neType` text,
  `f_nodeModelIdentity` varchar(255) DEFAULT NULL,
  `f_ossModelIdentity` varchar(255) DEFAULT NULL,
  `f_ossPrefix` varchar(255) DEFAULT NULL,
  `f_release` varchar(255) DEFAULT NULL,
  `f_softwareSyncStatus` text,
  `f_technologyDomain` text,
  `f_timeZone` text,
  `f_utcOffset` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne` (`f_networkElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetworkElementSecurity`
--

DROP TABLE IF EXISTS `t_NetworkElementSecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetworkElementSecurity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_securityFunctionId` varchar(100) DEFAULT NULL,
  `f_networkElementSecurityId` varchar(100) DEFAULT NULL,
  `f_algorithmAndKeySize` text,
  `f_enrollmentMode` text,
  `f_secureUserName` varchar(255) DEFAULT NULL,
  `f_snmpAuthProtocol` text,
  `f_snmpPrivProtocol` text,
  `f_snmpAuthKey` varchar(255) DEFAULT NULL,
  `f_snmpPrivKey` varchar(255) DEFAULT NULL,
  `f_targetGroups` varchar(255) DEFAULT NULL,
  `f_ldapApplicationUserPassword` varchar(255) DEFAULT NULL,
  `f_ldapApplicationUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_se_ne` (`f_networkElementId`,`f_securityFunctionId`,`f_networkElementSecurityId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NetworkElement_neProductVersion`
--

DROP TABLE IF EXISTS `t_NetworkElement_neProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetworkElement_neProductVersion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_identity` varchar(255) DEFAULT NULL,
  `f_revision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne` (`f_networkElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85367 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NextHop`
--

DROP TABLE IF EXISTS `t_NextHop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NextHop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_routeTableIPv4StaticId` varchar(100) DEFAULT NULL,
  `f_dstId` varchar(100) DEFAULT NULL,
  `f_nextHopId` varchar(100) DEFAULT NULL,
  `f_adminDistance` bigint(20) DEFAULT NULL,
  `f_bfdMonitoring` bit(1) DEFAULT NULL,
  `f_discard` bit(1) DEFAULT NULL,
  `f_reference` varchar(255) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ro_ds_ne` (`f_meContextId`,`f_subNetworkId`,`f_routeTableIPv4StaticId`,`f_routerId`,`f_managedElementId`,`f_nextHopId`,`f_transportId`,`f_dstId`)
) ENGINE=MyISAM AUTO_INCREMENT=171317 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodeCredential`
--

DROP TABLE IF EXISTS `t_NodeCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeCredential` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_certificateState` text,
  `f_enrollmentAuthority` varchar(255) DEFAULT NULL,
  `f_enrollmentServerGroup` varchar(255) DEFAULT NULL,
  `f_enrollmentTimer` bigint(20) DEFAULT NULL,
  `f_expiryAlarmThreshold` bigint(20) DEFAULT NULL,
  `f_keyInfo` text,
  `f_renewalMode` text,
  `f_subjectName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_no` (`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeCredentialId`,`f_systemFunctionsId`,`f_certMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodeCredential_certificateContent`
--

DROP TABLE IF EXISTS `t_NodeCredential_certificateContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeCredential_certificateContent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_extensionContent` text,
  `f_keyUsage` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_publicKeyAlgorithm` varchar(255) DEFAULT NULL,
  `f_subject` varchar(255) DEFAULT NULL,
  `f_publicKey` text,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  `f_issuer` varchar(255) DEFAULT NULL,
  `f_signatureAlgorithm` varchar(255) DEFAULT NULL,
  `f_validTo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_no` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_managedElementId`,`f_nodeCredentialId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodeCredential_enrollmentProgress`
--

DROP TABLE IF EXISTS `t_NodeCredential_enrollmentProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeCredential_enrollmentProgress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_no` (`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeCredentialId`,`f_systemFunctionsId`,`f_certMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodeGroupSyncMember`
--

DROP TABLE IF EXISTS `t_NodeGroupSyncMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeGroupSyncMember` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_nodeGroupSyncMemberId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_selectionMode` text,
  `f_syncNodePriority` bigint(20) DEFAULT NULL,
  `f_syncRiPortCandidate` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra_no` (`f_subNetworkId`,`f_synchronizationId`,`f_radioEquipmentClockId`,`f_meContextId`,`f_nodeGroupSyncMemberId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=82311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodePerformance`
--

DROP TABLE IF EXISTS `t_NodePerformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodePerformance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_nodePerformanceId` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` bigint(20) DEFAULT NULL,
  `f_zzzTemporary2` bigint(20) DEFAULT NULL,
  `f_zzzTemporary3` bigint(20) DEFAULT NULL,
  `f_zzzTemporary4` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  `f_zzzTemporary8` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_no` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_nodePerformanceId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NodeSupport`
--

DROP TABLE IF EXISTS `t_NodeSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_release` varchar(255) DEFAULT NULL,
  `f_supportFunction` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NonPlannedPciDrxProfile`
--

DROP TABLE IF EXISTS `t_NonPlannedPciDrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NonPlannedPciDrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciDrxProfileId` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciDrxInactivityTimer` text,
  `f_nonPlannedPciLongDrxCycle` text,
  `f_nonPlannedPciOnDurationTimer` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_no` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_nonPlannedPciDrxProfileId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ntp`
--

DROP TABLE IF EXISTS `t_Ntp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ntp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_timeMId` varchar(100) DEFAULT NULL,
  `f_ntpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ti_nt` (`f_timeMId`,`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_ntpId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_NtpServer`
--

DROP TABLE IF EXISTS `t_NtpServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NtpServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_timeMId` varchar(100) DEFAULT NULL,
  `f_ntpId` varchar(100) DEFAULT NULL,
  `f_ntpServerId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_serverAddress` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ti_nt_nt` (`f_timeMId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_ntpServerId`,`f_meContextId`,`f_ntpId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=341731 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_OamAccessPoint`
--

DROP TABLE IF EXISTS `t_OamAccessPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamAccessPoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_oamAccessPointId` varchar(100) DEFAULT NULL,
  `f_accessPoint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_oa` (`f_oamAccessPointId`,`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=170865 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_OamIpSupport`
--

DROP TABLE IF EXISTS `t_OamIpSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamIpSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_oamIpSupportId` varchar(100) DEFAULT NULL,
  `f_ipAddressChangeStatus` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_oa` (`f_subNetworkId`,`f_oamIpSupportId`,`f_nodeSupportId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_OamTrafficClass`
--

DROP TABLE IF EXISTS `t_OamTrafficClass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamTrafficClass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_oamTrafficClassId` varchar(100) DEFAULT NULL,
  `f_dscp` bigint(20) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_oa` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_oamTrafficClassId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_OnSiteActivities`
--

DROP TABLE IF EXISTS `t_OnSiteActivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OnSiteActivities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_onSiteActivitiesId` varchar(100) DEFAULT NULL,
  `f_technicianPresent` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_on` (`f_subNetworkId`,`f_nodeSupportId`,`f_meContextId`,`f_onSiteActivitiesId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_OnapSupport`
--

DROP TABLE IF EXISTS `t_OnapSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OnapSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_onapSupportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_on` (`f_subNetworkId`,`f_nodeSupportId`,`f_meContextId`,`f_onapSupportId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=6321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PMICScannerInfo`
--

DROP TABLE IF EXISTS `t_PMICScannerInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PMICScannerInfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_pMICScannerInfoId` varchar(100) DEFAULT NULL,
  `f_errorCode` bigint(20) DEFAULT NULL,
  `f_fileCollectionEnabled` bit(1) DEFAULT NULL,
  `f_id` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_nodeName` varchar(255) DEFAULT NULL,
  `f_processType` varchar(255) DEFAULT NULL,
  `f_ropPeriod` bigint(20) DEFAULT NULL,
  `f_status` text,
  `f_subscriptionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_pm` (`f_networkElementId`,`f_pMICScannerInfoId`)
) ENGINE=MyISAM AUTO_INCREMENT=2668954 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PacketCapture`
--

DROP TABLE IF EXISTS `t_PacketCapture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PacketCapture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_packetCaptureId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_pa` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_packetCaptureId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=2958 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Paging`
--

DROP TABLE IF EXISTS `t_Paging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Paging` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_pagingId` varchar(100) DEFAULT NULL,
  `f_defaultPagingCycle` bigint(20) DEFAULT NULL,
  `f_defaultPagingCycleNbIot` bigint(20) DEFAULT NULL,
  `f_maxNoOfPagingRecords` bigint(20) DEFAULT NULL,
  `f_maxNoOfPagingRecordsNb` bigint(20) DEFAULT NULL,
  `f_nB` text,
  `f_nBBr` text,
  `f_nBNbIot` text,
  `f_noOfDefPagCyclPrim` bigint(20) DEFAULT NULL,
  `f_pagingDiscardTimerDrx` bigint(20) DEFAULT NULL,
  `f_pagingDiscardTimerDrxNb` bigint(20) DEFAULT NULL,
  `f_pagingDiscardTimerEdrx` bigint(20) DEFAULT NULL,
  `f_pagingDiscardTimerEdrxNb` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pa` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_pagingId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ParameterChangeRequests`
--

DROP TABLE IF EXISTS `t_ParameterChangeRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ParameterChangeRequests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_parameterChangeRequestsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pa` (`f_meContextId`,`f_eNodeBFunctionId`,`f_parameterChangeRequestsId`,`f_subNetworkId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PeerIPv4`
--

DROP TABLE IF EXISTS `t_PeerIPv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PeerIPv4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_peerIPv4Id` varchar(100) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_pe` (`f_peerIPv4Id`,`f_meContextId`,`f_subNetworkId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=170863 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PlmnInfo`
--

DROP TABLE IF EXISTS `t_PlmnInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PlmnInfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_plmnInfoId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_plmnInfoId`)
) ENGINE=MyISAM AUTO_INCREMENT=44473 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PlmnInfo_actualPlmn`
--

DROP TABLE IF EXISTS `t_PlmnInfo_actualPlmn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PlmnInfo_actualPlmn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_plmnInfoId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_plmnInfoId`)
) ENGINE=MyISAM AUTO_INCREMENT=44473 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PlmnInfo_plmnWhiteList`
--

DROP TABLE IF EXISTS `t_PlmnInfo_plmnWhiteList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PlmnInfo_plmnWhiteList` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_plmnInfoId` varchar(100) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_plmnInfoId`)
) ENGINE=MyISAM AUTO_INCREMENT=88155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Pm`
--

DROP TABLE IF EXISTS `t_Pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Pm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_pmId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmEventM`
--

DROP TABLE IF EXISTS `t_PmEventM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmEventService`
--

DROP TABLE IF EXISTS `t_PmEventService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventService` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_pmEventServiceId` varchar(100) DEFAULT NULL,
  `f_cellTraceFileSize` bigint(20) DEFAULT NULL,
  `f_cellTraceHighPrioReserve` bigint(20) DEFAULT NULL,
  `f_cellTracePeriodicReport` bit(1) DEFAULT NULL,
  `f_eventsExcludedFromUeTrace` text,
  `f_streamPortPmUeTrace` bigint(20) DEFAULT NULL,
  `f_streamStatusNotification` bit(1) DEFAULT NULL,
  `f_totalCellTraceStorageSize` bigint(20) DEFAULT NULL,
  `f_totalEventStorageSize` bigint(20) DEFAULT NULL,
  `f_totalUeTraceStorageSize` bigint(20) DEFAULT NULL,
  `f_ueTrExcludeNonRacUeRefEvents` bit(1) DEFAULT NULL,
  `f_ueTraceFileSize` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pm` (`f_pmEventServiceId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmEventService_streamStatusPmCellTrace`
--

DROP TABLE IF EXISTS `t_PmEventService_streamStatusPmCellTrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventService_streamStatusPmCellTrace` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_pmEventServiceId` varchar(100) DEFAULT NULL,
  `f_traceReference` bigint(20) DEFAULT NULL,
  `f_scannerId` bigint(20) DEFAULT NULL,
  `f_streamStatus` text,
  `f_fileStatus` text,
  `f_portNumber` bigint(20) DEFAULT NULL,
  `f_ipAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pm` (`f_pmEventServiceId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=269953 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmEventService_streamStatusPmUeTrace`
--

DROP TABLE IF EXISTS `t_PmEventService_streamStatusPmUeTrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventService_streamStatusPmUeTrace` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_pmEventServiceId` varchar(100) DEFAULT NULL,
  `f_fileStatus` text,
  `f_ipAddress` varchar(255) DEFAULT NULL,
  `f_portNumber` bigint(20) DEFAULT NULL,
  `f_traceReference` bigint(20) DEFAULT NULL,
  `f_streamStatus` text,
  `f_scannerId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pm` (`f_pmEventServiceId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=719873 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmFunction`
--

DROP TABLE IF EXISTS `t_PmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_pmFunctionId` varchar(100) DEFAULT NULL,
  `f_fileCollectionState` text,
  `f_neConfigurationManagerState` text,
  `f_pmEnabled` bit(1) DEFAULT NULL,
  `f_scannerMasterState` text,
  `f_sourceDir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_pm` (`f_networkElementId`,`f_pmFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmMeasurementCapabilities`
--

DROP TABLE IF EXISTS `t_PmMeasurementCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmMeasurementCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmId` varchar(100) DEFAULT NULL,
  `f_pmMeasurementCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_alignedReportingPeriod` bit(1) DEFAULT NULL,
  `f_fileLocation` varchar(255) DEFAULT NULL,
  `f_fileRPSupported` bit(1) DEFAULT NULL,
  `f_finalROP` bit(1) DEFAULT NULL,
  `f_jobGroupingSupport` bit(1) DEFAULT NULL,
  `f_jobPrioritizationSupport` bit(1) DEFAULT NULL,
  `f_jobStartStopSupport` text,
  `f_maxNoOfJobs` bigint(20) DEFAULT NULL,
  `f_maxNoOfPmFiles` bigint(20) DEFAULT NULL,
  `f_measurementJobSupport` bit(1) DEFAULT NULL,
  `f_realTimeJobSupport` bit(1) DEFAULT NULL,
  `f_ropFilenameTimestamp` text,
  `f_supportedCompressionTypes` text,
  `f_supportedMeasJobGps` text,
  `f_supportedRopPeriods` text,
  `f_thresholdJobSupport` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_pm` (`f_subNetworkId`,`f_systemFunctionsId`,`f_pmId`,`f_meContextId`,`f_pmMeasurementCapabilitiesId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmSupport`
--

DROP TABLE IF EXISTS `t_PmSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_pmSupportId` varchar(100) DEFAULT NULL,
  `f_ropFileHandling` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_pm` (`f_subNetworkId`,`f_pmSupportId`,`f_nodeSupportId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PmUlInterferenceReport`
--

DROP TABLE IF EXISTS `t_PmUlInterferenceReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmUlInterferenceReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_sectorCarrierId` varchar(100) DEFAULT NULL,
  `f_pmUlInterferenceReportId` varchar(100) DEFAULT NULL,
  `f_rfBranchRxRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_se_pm` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_pmUlInterferenceReportId`,`f_meContextId`,`f_sectorCarrierId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1240613 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PreschedProfile`
--

DROP TABLE IF EXISTS `t_PreschedProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PreschedProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_preschedProfileId` varchar(100) DEFAULT NULL,
  `f_preschedulingDataSize` bigint(20) DEFAULT NULL,
  `f_preschedulingDuration` bigint(20) DEFAULT NULL,
  `f_preschedulingPeriod` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pr` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_preschedProfileId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=224962 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PreschedulingProfile`
--

DROP TABLE IF EXISTS `t_PreschedulingProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PreschedulingProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_preschedulingProfileId` varchar(100) DEFAULT NULL,
  `f_preschedulingDataSize` bigint(20) DEFAULT NULL,
  `f_preschedulingDuration` bigint(20) DEFAULT NULL,
  `f_preschedulingPeriod` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pr` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_preschedulingProfileId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PtmFunction`
--

DROP TABLE IF EXISTS `t_PtmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PtmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_ptmFunctionId` varchar(100) DEFAULT NULL,
  `f_ptmEnabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_pt` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_ptmFunctionId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ptp`
--

DROP TABLE IF EXISTS `t_Ptp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ptp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ptpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_pt` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_transportId`,`f_ptpId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_PtpBcOcPort`
--

DROP TABLE IF EXISTS `t_PtpBcOcPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PtpBcOcPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_ptpId` varchar(100) DEFAULT NULL,
  `f_boundaryOrdinaryClockId` varchar(100) DEFAULT NULL,
  `f_ptpBcOcPortId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_announceMessageInterval` bigint(20) DEFAULT NULL,
  `f_associatedGrandmaster` varchar(255) DEFAULT NULL,
  `f_asymmetryCompensation` bigint(20) DEFAULT NULL,
  `f_dscp` bigint(20) DEFAULT NULL,
  `f_durationField` bigint(20) DEFAULT NULL,
  `f_localPriority` bigint(20) DEFAULT NULL,
  `f_masterOnly` bit(1) DEFAULT NULL,
  `f_operationalState` text,
  `f_pBit` bigint(20) DEFAULT NULL,
  `f_ptpMulticastAddress` text,
  `f_ptpPathTimeError` bigint(20) DEFAULT NULL,
  `f_ptpPortStatus` text,
  `f_syncMessageInterval` bigint(20) DEFAULT NULL,
  `f_transportInterface` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_pt_bo_pt` (`f_subNetworkId`,`f_boundaryOrdinaryClockId`,`f_meContextId`,`f_managedElementId`,`f_ptpBcOcPortId`,`f_transportId`,`f_ptpId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_QciProfilePredefined`
--

DROP TABLE IF EXISTS `t_QciProfilePredefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QciProfilePredefined` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  `f_qciProfilePredefinedId` varchar(100) DEFAULT NULL,
  `f_absPrioOverride` text,
  `f_aqmMode` text,
  `f_bitRateRecommendationEnabled` bit(1) DEFAULT NULL,
  `f_counterActiveMode` bit(1) DEFAULT NULL,
  `f_dataFwdPerQciEnabled` bit(1) DEFAULT NULL,
  `f_dlMaxHARQTxQci` bigint(20) DEFAULT NULL,
  `f_dlMaxWaitingTime` bigint(20) DEFAULT NULL,
  `f_dlMinBitRate` bigint(20) DEFAULT NULL,
  `f_dlResourceAllocationStrategy` text,
  `f_drxPriority` bigint(20) DEFAULT NULL,
  `f_drxProfileRef` varchar(255) DEFAULT NULL,
  `f_dscp` bigint(20) DEFAULT NULL,
  `f_endcProfileRef` varchar(255) DEFAULT NULL,
  `f_harqPriority` bigint(20) DEFAULT NULL,
  `f_inactivityTimerOffset` bigint(20) DEFAULT NULL,
  `f_lessMaxDelayThreshold` bigint(20) DEFAULT NULL,
  `f_logicalChannelGroupRef` varchar(255) DEFAULT NULL,
  `f_pdb` bigint(20) DEFAULT NULL,
  `f_pdbOffset` bigint(20) DEFAULT NULL,
  `f_pdcpSNLength` bigint(20) DEFAULT NULL,
  `f_priority` bigint(20) DEFAULT NULL,
  `f_priorityFraction` bigint(20) DEFAULT NULL,
  `f_qci` bigint(20) DEFAULT NULL,
  `f_qciACTuning` bigint(20) DEFAULT NULL,
  `f_qciSubscriptionQuanta` bigint(20) DEFAULT NULL,
  `f_relativePriority` bigint(20) DEFAULT NULL,
  `f_resourceAllocationStrategy` text,
  `f_resourceType` text,
  `f_rlcMode` text,
  `f_rlcSNLength` bigint(20) DEFAULT NULL,
  `f_rlfPriority` bigint(20) DEFAULT NULL,
  `f_rlfProfileRef` varchar(255) DEFAULT NULL,
  `f_rohcEnabled` bit(1) DEFAULT NULL,
  `f_schedulingAlgorithm` text,
  `f_serviceType` text,
  `f_srsAllocationStrategy` text,
  `f_tReorderingDl` bigint(20) DEFAULT NULL,
  `f_tReorderingUl` bigint(20) DEFAULT NULL,
  `f_timerPriority` bigint(20) DEFAULT NULL,
  `f_ulMaxHARQTxQci` bigint(20) DEFAULT NULL,
  `f_ulMaxWaitingTime` bigint(20) DEFAULT NULL,
  `f_ulMinBitRate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_qc_qc` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_qciProfilePredefinedId`,`f_qciTableId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=629889 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_QciProfilePredefined_measReportConfigParams`
--

DROP TABLE IF EXISTS `t_QciProfilePredefined_measReportConfigParams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QciProfilePredefined_measReportConfigParams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  `f_qciProfilePredefinedId` varchar(100) DEFAULT NULL,
  `f_b2Threshold2RscpUtraOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerInterA3Rsrq` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrqGeranOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrpUtraOffset` bigint(20) DEFAULT NULL,
  `f_a5Threshold1RsrpOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerInterA3` bigint(20) DEFAULT NULL,
  `f_b2Threshold2GeranOffset` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrqPrimOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold2EcNoUtraOffset` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrqSecOffset` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrpPrimOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold2Cdma2000Offset` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrpGeranOffset` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrqPrimOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrpCdma2000Offset` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrpSecOffset` bigint(20) DEFAULT NULL,
  `f_a3IntraOffsetAdjustmentRsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold2RsrqOffset` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrqSecOffset` bigint(20) DEFAULT NULL,
  `f_a3IntraOffsetAdjustmentRsrq` bigint(20) DEFAULT NULL,
  `f_a5Threshold2RsrpOffset` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrpSecOffset` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrpPrimOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrqUtraOffset` bigint(20) DEFAULT NULL,
  `f_b2Threshold1RsrqCdma2000Offset` bigint(20) DEFAULT NULL,
  `f_a3InterOffsetAdjustmentRsrp` bigint(20) DEFAULT NULL,
  `f_offsetPerQciPrio` bigint(20) DEFAULT NULL,
  `f_a3InterOffsetAdjustmentRsrq` bigint(20) DEFAULT NULL,
  `f_a5Threshold1RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerIntraA3` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_qc_qc` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_qciProfilePredefinedId`,`f_qciTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=629889 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_QciTable`
--

DROP TABLE IF EXISTS `t_QciTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QciTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_qc` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_qciTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_QosProfiles`
--

DROP TABLE IF EXISTS `t_QosProfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QosProfiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_qosProfilesId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_qo` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_qosProfilesId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioBearerTable`
--

DROP TABLE IF EXISTS `t_RadioBearerTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioBearerTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_radioBearerTableId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ra` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_radioBearerTableId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioEquipmentClock`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_bfnOffset` bigint(20) DEFAULT NULL,
  `f_freqDeviationThreshold` bigint(20) DEFAULT NULL,
  `f_selectionProcessMode` text,
  `f_timeSyncAssistanceState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra` (`f_subNetworkId`,`f_synchronizationId`,`f_radioEquipmentClockId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85431 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioEquipmentClockReference`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClockReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClockReference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockReferenceId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_holdOffTime` bigint(20) DEFAULT NULL,
  `f_operationalState` text,
  `f_priority` bigint(20) DEFAULT NULL,
  `f_receivedQualityLevel` text,
  `f_referenceStatus` text,
  `f_syncRefType` text,
  `f_useQLFrom` text,
  `f_waitToRestoreTime` bigint(20) DEFAULT NULL,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra_ra` (`f_subNetworkId`,`f_synchronizationId`,`f_radioEquipmentClockReferenceId`,`f_radioEquipmentClockId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85431 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioEquipmentClockReference_adminQualityLevel`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClockReference_adminQualityLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClockReference_adminQualityLevel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockReferenceId` varchar(100) DEFAULT NULL,
  `f_qualityLevelValueOptionI` text,
  `f_qualityLevelValueOptionIII` text,
  `f_qualityLevelValueOptionII` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra_ra` (`f_subNetworkId`,`f_synchronizationId`,`f_radioEquipmentClockReferenceId`,`f_radioEquipmentClockId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85431 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioEquipmentClock_minQualityLevel`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClock_minQualityLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClock_minQualityLevel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_qualityLevelValueOptionI` text,
  `f_qualityLevelValueOptionIII` text,
  `f_qualityLevelValueOptionII` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra` (`f_subNetworkId`,`f_synchronizationId`,`f_radioEquipmentClockId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85431 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RadioEquipmentClock_timeHoldoverAlarmConfig`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClock_timeHoldoverAlarmConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClock_timeHoldoverAlarmConfig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_enable` bit(1) DEFAULT NULL,
  `f_filterTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy_ra` (`f_meContextId`,`f_subNetworkId`,`f_synchronizationId`,`f_managedElementId`,`f_radioEquipmentClockId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=77115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Rcs`
--

DROP TABLE IF EXISTS `t_Rcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rcs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_rcsId` varchar(100) DEFAULT NULL,
  `f_rlcDlDeliveryFailureAction` text,
  `f_tInactivityTimer` bigint(20) DEFAULT NULL,
  `f_tInactivityTimerBr` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_rc` (`f_rcsId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA1A2Br`
--

DROP TABLE IF EXISTS `t_ReportConfigA1A2Br`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1A2Br` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA1A2BrId` varchar(100) DEFAULT NULL,
  `f_a1a2UlIntraSearchIntraFThr` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2UlIntraFSearch` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1UlIntraFSearch` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2UlIntraFSearch` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_reportConfigA1A2BrId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530541 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA1Prim`
--

DROP TABLE IF EXISTS `t_ReportConfigA1Prim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1Prim` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA1PrimId` varchar(100) DEFAULT NULL,
  `f_a1ThrRsrpPrimOffsetCeABr` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrpPrim` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrqPrim` bigint(20) DEFAULT NULL,
  `f_hysteresisA1Prim` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1Prim` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_reportConfigA1PrimId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA1Sec`
--

DROP TABLE IF EXISTS `t_ReportConfigA1Sec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1Sec` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA1SecId` varchar(100) DEFAULT NULL,
  `f_a1ThrRsrpSecOffsetCeABr` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrpSec` bigint(20) DEFAULT NULL,
  `f_a1ThresholdRsrqSec` bigint(20) DEFAULT NULL,
  `f_hysteresisA1Sec` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1Sec` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_reportConfigA1SecId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA4`
--

DROP TABLE IF EXISTS `t_ReportConfigA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA4Id` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_a4ThresholdRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA4` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA4` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA4` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_reportConfigA4Id`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA5`
--

DROP TABLE IF EXISTS `t_ReportConfigA5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5Id` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA5` bigint(20) DEFAULT NULL,
  `f_hysteresisA5RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA5` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA5Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA5` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigA5Id`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA5Anr`
--

DROP TABLE IF EXISTS `t_ReportConfigA5Anr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5Anr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5Id` varchar(100) DEFAULT NULL,
  `f_reportConfigA5AnrId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1RsrpAnrDelta` bigint(20) DEFAULT NULL,
  `f_a5Threshold1RsrqAnrDelta` bigint(20) DEFAULT NULL,
  `f_a5Threshold2RsrpAnrDelta` bigint(20) DEFAULT NULL,
  `f_a5Threshold2RsrqAnrDelta` bigint(20) DEFAULT NULL,
  `f_hysteresisA5` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA5` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigA5AnrId`,`f_managedElementId`,`f_reportConfigA5Id`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA5DlComp`
--

DROP TABLE IF EXISTS `t_ReportConfigA5DlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5DlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5DlCompId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigA5DlCompId`,`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA5SoftLock`
--

DROP TABLE IF EXISTS `t_ReportConfigA5SoftLock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5SoftLock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5SoftLockId` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigA5SoftLockId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigA5UlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigA5UlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5UlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5UlTrigId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA5` bigint(20) DEFAULT NULL,
  `f_reportIntervalA5` text,
  `f_timeToTriggerA5` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigA5UlTrigId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB1GUtra`
--

DROP TABLE IF EXISTS `t_ReportConfigB1GUtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1GUtra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB1GUtraId` varchar(100) DEFAULT NULL,
  `f_b1Threshold` bigint(20) DEFAULT NULL,
  `f_hysteresisB1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB1` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB1` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigB1GUtraId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB1Geran`
--

DROP TABLE IF EXISTS `t_ReportConfigB1Geran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1Geran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB1GeranId` varchar(100) DEFAULT NULL,
  `f_b1ThresholdGeran` bigint(20) DEFAULT NULL,
  `f_hysteresisB1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB1` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB1GeranId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB1NR`
--

DROP TABLE IF EXISTS `t_ReportConfigB1NR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1NR` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB1NRId` varchar(100) DEFAULT NULL,
  `f_b1Threshold` bigint(20) DEFAULT NULL,
  `f_hysteresisB1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB1` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB1NR` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB1NRId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=489562 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB1Utra`
--

DROP TABLE IF EXISTS `t_ReportConfigB1Utra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1Utra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB1UtraId` varchar(100) DEFAULT NULL,
  `f_b1ThresholdEcNoUtra` bigint(20) DEFAULT NULL,
  `f_b1ThresholdRscpUtra` bigint(20) DEFAULT NULL,
  `f_hysteresisB1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB1` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB1UtraId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2Cdma2000`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Cdma2000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Cdma2000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2Cdma2000Id` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_b2Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_b2Threshold2Cdma2000` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB2` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB2Cdma2000Id`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2Cdma20001xRtt`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Cdma20001xRtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Cdma20001xRtt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2Cdma20001xRttId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_b2Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_b2Threshold2Cdma20001xRtt` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB2` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_reportConfigB2Cdma20001xRttId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2CdmaRttUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2CdmaRttUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2CdmaRttUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2CdmaRttUlTrigId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_reportConfigB2CdmaRttUlTrigId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2CdmaUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2CdmaUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2CdmaUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2CdmaUlTrigId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB2CdmaUlTrigId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2Geran`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Geran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Geran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2GeranId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_b2Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_b2Threshold2Geran` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB2` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB2GeranId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2GeranUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2GeranUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2GeranUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2GeranUlTrigId` varchar(100) DEFAULT NULL,
  `f_b2Threshold2Geran` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_reportIntervalB2` text,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigB2GeranUlTrigId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2Utra`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Utra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Utra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2UtraId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_b2Threshold1Rsrq` bigint(20) DEFAULT NULL,
  `f_b2Threshold2EcNoUtra` bigint(20) DEFAULT NULL,
  `f_b2Threshold2RscpUtra` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityB2` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_reportConfigB2UtraId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigB2UtraUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2UtraUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2UtraUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2UtraUlTrigId` varchar(100) DEFAULT NULL,
  `f_b2Threshold2EcNoUtra` bigint(20) DEFAULT NULL,
  `f_b2Threshold2RscpUtra` bigint(20) DEFAULT NULL,
  `f_hysteresisB2` bigint(20) DEFAULT NULL,
  `f_reportIntervalB2` text,
  `f_timeToTriggerB2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigB2UtraUlTrigId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigCsfbCdma2000`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbCdma2000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbCdma2000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbCdma2000Id` varchar(100) DEFAULT NULL,
  `f_hysteresis` bigint(20) DEFAULT NULL,
  `f_thresholdCdma20001xRtt` bigint(20) DEFAULT NULL,
  `f_timeToTrigger` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`,`f_reportConfigCsfbCdma2000Id`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigCsfbGeran`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbGeran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbGeran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbGeranId` varchar(100) DEFAULT NULL,
  `f_hysteresis` bigint(20) DEFAULT NULL,
  `f_thresholdGeran` bigint(20) DEFAULT NULL,
  `f_timeToTrigger` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`,`f_reportConfigCsfbGeranId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigCsfbUtra`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbUtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbUtra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbUtraId` varchar(100) DEFAULT NULL,
  `f_hysteresis` bigint(20) DEFAULT NULL,
  `f_thresholdEcNo` bigint(20) DEFAULT NULL,
  `f_thresholdRscp` bigint(20) DEFAULT NULL,
  `f_timeToTrigger` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_reportConfigCsfbUtraId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigCsg`
--

DROP TABLE IF EXISTS `t_ReportConfigCsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigCsgId` varchar(100) DEFAULT NULL,
  `f_a5Thr1RsrpAltCsgOffset` bigint(20) DEFAULT NULL,
  `f_a5Thr2RsrpAltCsgOffset` bigint(20) DEFAULT NULL,
  `f_hysteresisA5AltCsg` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA5AltCsg` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigCsgId`,`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraBadCovPrim`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBadCovPrim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBadCovPrim` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBadCovPrimId` varchar(100) DEFAULT NULL,
  `f_a2ThrRsrpPrimOffsetCeABr` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrpPrim` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrqPrim` bigint(20) DEFAULT NULL,
  `f_hysteresisA2Prim` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2Prim` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA2Prim` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_reportConfigEUtraBadCovPrimId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraBadCovSec`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBadCovSec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBadCovSec` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBadCovSecId` varchar(100) DEFAULT NULL,
  `f_a2ThrRsrpSecOffsetCeABr` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrpSec` bigint(20) DEFAULT NULL,
  `f_a2ThresholdRsrqSec` bigint(20) DEFAULT NULL,
  `f_hysteresisA2Sec` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2Sec` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA2Sec` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigEUtraBadCovSecId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraBestCell`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBestCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBestCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBestCellId` varchar(100) DEFAULT NULL,
  `f_a3offset` bigint(20) DEFAULT NULL,
  `f_hysteresisA3` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA3` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA3` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigEUtraBestCellId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraBestCellAnr`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBestCellAnr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBestCellAnr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBestCellId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBestCellAnrId` varchar(100) DEFAULT NULL,
  `f_a3offsetAnrDelta` bigint(20) DEFAULT NULL,
  `f_hysteresisA3` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA3` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigEUtraBestCellId`,`f_managedElementId`,`f_reportConfigEUtraBestCellAnrId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraIFA3UlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraIFA3UlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraIFA3UlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraIFA3UlTrigId` varchar(100) DEFAULT NULL,
  `f_a3Offset` bigint(20) DEFAULT NULL,
  `f_hysteresisA3` bigint(20) DEFAULT NULL,
  `f_reportIntervalA3` text,
  `f_timeToTriggerA3` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`,`f_reportConfigEUtraIFA3UlTrigId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraIFBestCell`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraIFBestCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraIFBestCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraIFBestCellId` varchar(100) DEFAULT NULL,
  `f_a3RsrqOffset` bigint(20) DEFAULT NULL,
  `f_a3offset` bigint(20) DEFAULT NULL,
  `f_hysteresisA3` bigint(20) DEFAULT NULL,
  `f_hysteresisA3RsrqOffset` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA3` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA3Rsrq` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA3` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigEUtraIFBestCellId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraInterFreqLb`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraInterFreqLb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraInterFreqLb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraInterFreqLbId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrp` bigint(20) DEFAULT NULL,
  `f_a5Threshold2Rsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA5` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigEUtraInterFreqLbId`,`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigEUtraInterFreqMbms`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraInterFreqMbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraInterFreqMbms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraInterFreqMbmsId` varchar(100) DEFAULT NULL,
  `f_a5ThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA5` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_reportConfigEUtraInterFreqMbmsId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigElcA1A2`
--

DROP TABLE IF EXISTS `t_ReportConfigElcA1A2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigElcA1A2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigElcA1A2Id` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2Rsrp` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_reportConfigElcA1A2Id`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigInterEnbUlComp`
--

DROP TABLE IF EXISTS `t_ReportConfigInterEnbUlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigInterEnbUlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigInterEnbUlCompId` varchar(100) DEFAULT NULL,
  `f_a3Offset` bigint(20) DEFAULT NULL,
  `f_hysteresisA3` bigint(20) DEFAULT NULL,
  `f_reportIntervalA3` text,
  `f_timeToTriggerA3` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigInterEnbUlCompId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigInterRatLb`
--

DROP TABLE IF EXISTS `t_ReportConfigInterRatLb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigInterRatLb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigInterRatLbId` varchar(100) DEFAULT NULL,
  `f_utranB1ThresholdEcNo` bigint(20) DEFAULT NULL,
  `f_utranB1ThresholdRscp` bigint(20) DEFAULT NULL,
  `f_utranHysteresisB1` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_ueMeasControlId`,`f_eUtranCellFDDId`,`f_reportConfigInterRatLbId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigSCellA1A2`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA1A2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA1A2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA1A2Id` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_a1a2ThresholdRsrpBidir` bigint(20) DEFAULT NULL,
  `f_a1a2ThresholdRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2Rsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2RsrpBidirectional` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2Rsrq` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA1A2` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_reportConfigSCellA1A2Id`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigSCellA4`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA4Id` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_a4ThresholdRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA4` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA4` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA4` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`,`f_reportConfigSCellA4Id`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigSCellA6`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA6Id` varchar(100) DEFAULT NULL,
  `f_a6offset` bigint(20) DEFAULT NULL,
  `f_hysteresisA6` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA6` bigint(20) DEFAULT NULL,
  `f_triggerQuantityA6` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_reportConfigSCellA6Id`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ReportConfigSearch`
--

DROP TABLE IF EXISTS `t_ReportConfigSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSearch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigSearchId` varchar(100) DEFAULT NULL,
  `f_a1a2SearchThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_a1a2SearchThresholdRsrq` bigint(20) DEFAULT NULL,
  `f_a1a2UlSearchThreshold` bigint(20) DEFAULT NULL,
  `f_a2CriticalThrQci1RsrpOffset` bigint(20) DEFAULT NULL,
  `f_a2CriticalThrQci1RsrqOffset` bigint(20) DEFAULT NULL,
  `f_a2CriticalThresholdRsrp` bigint(20) DEFAULT NULL,
  `f_a2CriticalThresholdRsrq` bigint(20) DEFAULT NULL,
  `f_a2OuterSearchThrRsrpOffset` bigint(20) DEFAULT NULL,
  `f_a2OuterSearchThrRsrqOffset` bigint(20) DEFAULT NULL,
  `f_a2UlCriticalThreshold` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2SearchRsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2SearchRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA1A2UlSearch` bigint(20) DEFAULT NULL,
  `f_hysteresisA2CriticalRsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA2CriticalRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA2OuterSearchRsrp` bigint(20) DEFAULT NULL,
  `f_hysteresisA2OuterSearchRsrq` bigint(20) DEFAULT NULL,
  `f_hysteresisA2UlCritical` bigint(20) DEFAULT NULL,
  `f_inhibitA2SearchConfig` text,
  `f_timeToTriggerA1Search` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1SearchRsrq` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA1UlSearch` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2Critical` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2CriticalRsrq` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2OutSearch` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2OutSearchRsrq` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2Search` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2SearchRsrq` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2UlCritical` bigint(20) DEFAULT NULL,
  `f_timeToTriggerA2UlSearch` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue_re` (`f_reportConfigSearchId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ResourcePartitions`
--

DROP TABLE IF EXISTS `t_ResourcePartitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ResourcePartitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_resourcePartitionsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_re` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_resourcePartitionsId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RetSubUnit`
--

DROP TABLE IF EXISTS `t_RetSubUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RetSubUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_retSubUnitId` varchar(100) DEFAULT NULL,
  `f_calibrationStatus` text,
  `f_electricalAntennaTilt` bigint(20) DEFAULT NULL,
  `f_iuantAntennaBearing` bigint(20) DEFAULT NULL,
  `f_iuantAntennaModelNumber` varchar(255) DEFAULT NULL,
  `f_iuantAntennaOperatingBand` bigint(20) DEFAULT NULL,
  `f_iuantAntennaOperatingGain` text,
  `f_iuantAntennaSerialNumber` text,
  `f_iuantBaseStationId` text,
  `f_iuantInstallationDate` text,
  `f_iuantInstallersId` text,
  `f_iuantSectorId` text,
  `f_maxTilt` bigint(20) DEFAULT NULL,
  `f_minTilt` bigint(20) DEFAULT NULL,
  `f_subunitNumber` bigint(20) DEFAULT NULL,
  `f_tiltChangeStatus` text,
  `f_userLabel` text,
  `f_verticalBeamWidthMode` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an_re` (`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaNearUnitId`,`f_meContextId`,`f_retSubUnitId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=454522 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RfBranch`
--

DROP TABLE IF EXISTS `t_RfBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RfBranch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_rfBranchId` varchar(100) DEFAULT NULL,
  `f_auPortRef` varchar(255) DEFAULT NULL,
  `f_dlAttenuation` text,
  `f_dlAttenuationPerFqRange` text,
  `f_dlTrafficDelay` text,
  `f_dlTrafficDelayPerFqRange` text,
  `f_rfPortRef` varchar(255) DEFAULT NULL,
  `f_ulAttenuation` text,
  `f_ulAttenuationPerFqRange` text,
  `f_ulTrafficDelay` text,
  `f_ulTrafficDelayPerFqRange` text,
  `f_tmaRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_rf` (`f_subNetworkId`,`f_antennaUnitGroupId`,`f_rfBranchId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=1399131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RfPort`
--

DROP TABLE IF EXISTS `t_RfPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RfPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_rfPortId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_antennaSupervisionActive` bit(1) DEFAULT NULL,
  `f_dlFrequencyRanges` text,
  `f_microSleepTxRadioCapability` text,
  `f_microSleepTxRadioStatus` text,
  `f_nodeUniqueRfPortId` varchar(255) DEFAULT NULL,
  `f_operationalState` text,
  `f_rlFreqSweepFailedReason` text,
  `f_rlFreqSweepStatus` text,
  `f_ulFrequencyRanges` text,
  `f_vswrSupervisionActive` bit(1) DEFAULT NULL,
  `f_vswrSupervisionSensitivity` bigint(20) DEFAULT NULL,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_rf` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_rfPortId`,`f_fieldReplaceableUnitId`),
  KEY `ManagedElement_FRU_RFPort` (`f_managedElementId`,`f_fieldReplaceableUnitId`,`f_rfPortId`)
) ENGINE=MyISAM AUTO_INCREMENT=1915446 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RiLink`
--

DROP TABLE IF EXISTS `t_RiLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RiLink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_riLinkId` varchar(100) DEFAULT NULL,
  `f_fronthaulDeviceLineRate` text,
  `f_linkTag` bigint(20) DEFAULT NULL,
  `f_operationalState` text,
  `f_riPortRef1` varchar(255) DEFAULT NULL,
  `f_riPortRef2` varchar(255) DEFAULT NULL,
  `f_transportType` text,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_ri` (`f_subNetworkId`,`f_riLinkId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=521120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RiPort`
--

DROP TABLE IF EXISTS `t_RiPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RiPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_riPortId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_channelRef` varchar(255) DEFAULT NULL,
  `f_sfpModuleRef` varchar(255) DEFAULT NULL,
  `f_transmissionStandard` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_ri` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_riPortId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=2323704 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RlfProfile`
--

DROP TABLE IF EXISTS `t_RlfProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RlfProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_rlfProfileId` varchar(100) DEFAULT NULL,
  `f_n310` bigint(20) DEFAULT NULL,
  `f_n311` bigint(20) DEFAULT NULL,
  `f_t301` bigint(20) DEFAULT NULL,
  `f_t310` bigint(20) DEFAULT NULL,
  `f_t311` bigint(20) DEFAULT NULL,
  `f_reservedBy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_rl` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_rlfProfileId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1034821 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Role`
--

DROP TABLE IF EXISTS `t_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_localAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_roleId` varchar(100) DEFAULT NULL,
  `f_roleName` varchar(255) DEFAULT NULL,
  `f_userLabel` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_lo_ro` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_roleId`,`f_secMId`,`f_managedElementId`,`f_localAuthorizationMethodId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1518853 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_RouteTableIPv4Static`
--

DROP TABLE IF EXISTS `t_RouteTableIPv4Static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RouteTableIPv4Static` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_routeTableIPv4StaticId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro_ro` (`f_meContextId`,`f_subNetworkId`,`f_routeTableIPv4StaticId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=170863 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Router`
--

DROP TABLE IF EXISTS `t_Router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Router` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_hopLimit` bigint(20) DEFAULT NULL,
  `f_pathMtuExpiresIPv6` bigint(20) DEFAULT NULL,
  `f_ttl` bigint(20) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_ro` (`f_meContextId`,`f_subNetworkId`,`f_routerId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=170863 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Rrc`
--

DROP TABLE IF EXISTS `t_Rrc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rrc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_rrcId` varchar(100) DEFAULT NULL,
  `f_t300` bigint(20) DEFAULT NULL,
  `f_t300Br` bigint(20) DEFAULT NULL,
  `f_t300NbIot` bigint(20) DEFAULT NULL,
  `f_t301` bigint(20) DEFAULT NULL,
  `f_t301Br` bigint(20) DEFAULT NULL,
  `f_t301Nb` bigint(20) DEFAULT NULL,
  `f_t304` bigint(20) DEFAULT NULL,
  `f_t304Br` bigint(20) DEFAULT NULL,
  `f_t311` bigint(20) DEFAULT NULL,
  `f_t311Nb` bigint(20) DEFAULT NULL,
  `f_t320` bigint(20) DEFAULT NULL,
  `f_tRrcConnReest` bigint(20) DEFAULT NULL,
  `f_tRrcConnectionReconfiguration` bigint(20) DEFAULT NULL,
  `f_tWaitForRrcConnReest` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_rr` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_rrcId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Rule`
--

DROP TABLE IF EXISTS `t_Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_localAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_roleId` varchar(100) DEFAULT NULL,
  `f_ruleId` varchar(100) DEFAULT NULL,
  `f_userLabel` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_lo_ro_ru` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_roleId`,`f_secMId`,`f_ruleId`,`f_managedElementId`,`f_localAuthorizationMethodId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=27152768 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SHMFunction`
--

DROP TABLE IF EXISTS `t_SHMFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SHMFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_sHMFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_sh` (`f_networkElementId`,`f_sHMFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Schema`
--

DROP TABLE IF EXISTS `t_Schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Schema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_schemaId` varchar(100) DEFAULT NULL,
  `f_baseModelIdentifier` varchar(255) DEFAULT NULL,
  `f_baseModelVersion` varchar(255) DEFAULT NULL,
  `f_identifier` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sc` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_schemaId`)
) ENGINE=MyISAM AUTO_INCREMENT=12726342 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SciProfile`
--

DROP TABLE IF EXISTS `t_SciProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SciProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  `f_sciProfileId` varchar(100) DEFAULT NULL,
  `f_absPrioOverride` text,
  `f_dlMaxWaitingTime` bigint(20) DEFAULT NULL,
  `f_dlMinBitRate` bigint(20) DEFAULT NULL,
  `f_dlRelativePriority` bigint(20) DEFAULT NULL,
  `f_dlResourceAllocationStrategy` text,
  `f_lessMaxDelayThreshold` bigint(20) DEFAULT NULL,
  `f_logicalChannelGroupRef` varchar(255) DEFAULT NULL,
  `f_pdb` bigint(20) DEFAULT NULL,
  `f_priority` bigint(20) DEFAULT NULL,
  `f_schedulingAlgorithm` text,
  `f_sci` bigint(20) DEFAULT NULL,
  `f_srsAllocationStrategy` text,
  `f_ulMaxWaitingTime` bigint(20) DEFAULT NULL,
  `f_ulMinBitRate` bigint(20) DEFAULT NULL,
  `f_ulRelativePriority` bigint(20) DEFAULT NULL,
  `f_ulResourceAllocationStrategy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_qc_sc` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_qciTableId`,`f_sciProfileId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=854849 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Sctp`
--

DROP TABLE IF EXISTS `t_Sctp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Sctp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_sctpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sc` (`f_meContextId`,`f_subNetworkId`,`f_sctpId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SctpAssociation`
--

DROP TABLE IF EXISTS `t_SctpAssociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpAssociation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_sctpEndpointId` varchar(100) DEFAULT NULL,
  `f_sctpAssociationId` varchar(100) DEFAULT NULL,
  `f_pmtudSctpPduSize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sc_sc` (`f_meContextId`,`f_subNetworkId`,`f_sctpEndpointId`,`f_managedElementId`,`f_sctpAssociationId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=4024551 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SctpEndpoint`
--

DROP TABLE IF EXISTS `t_SctpEndpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpEndpoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_sctpEndpointId` varchar(100) DEFAULT NULL,
  `f_localIpAddress` varchar(255) DEFAULT NULL,
  `f_operationalState` text,
  `f_portNumber` bigint(20) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_sctpProfile` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sc` (`f_subNetworkId`,`f_sctpEndpointId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SctpProfile`
--

DROP TABLE IF EXISTS `t_SctpProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_sctpProfileId` varchar(100) DEFAULT NULL,
  `f_alphaIndex` text,
  `f_assocMaxRtx` bigint(20) DEFAULT NULL,
  `f_betaIndex` text,
  `f_bundlingActivated` bit(1) DEFAULT NULL,
  `f_bundlingAdaptiveActivated` bit(1) DEFAULT NULL,
  `f_bundlingTimer` bigint(20) DEFAULT NULL,
  `f_cookieLife` bigint(20) DEFAULT NULL,
  `f_dscp` bigint(20) DEFAULT NULL,
  `f_hbMaxBurst` bigint(20) DEFAULT NULL,
  `f_heartbeatActivated` bit(1) DEFAULT NULL,
  `f_heartbeatInterval` bigint(20) DEFAULT NULL,
  `f_incCookieLife` bigint(20) DEFAULT NULL,
  `f_initARWnd` bigint(20) DEFAULT NULL,
  `f_initRto` bigint(20) DEFAULT NULL,
  `f_initialHeartbeatInterval` bigint(20) DEFAULT NULL,
  `f_maxActivateThr` bigint(20) DEFAULT NULL,
  `f_maxBurst` bigint(20) DEFAULT NULL,
  `f_maxInStreams` bigint(20) DEFAULT NULL,
  `f_maxInitRt` bigint(20) DEFAULT NULL,
  `f_maxOutStreams` bigint(20) DEFAULT NULL,
  `f_maxRto` bigint(20) DEFAULT NULL,
  `f_maxSctpPduSize` bigint(20) DEFAULT NULL,
  `f_maxShutdownRt` bigint(20) DEFAULT NULL,
  `f_minActivateThr` bigint(20) DEFAULT NULL,
  `f_minRto` bigint(20) DEFAULT NULL,
  `f_noSwitchback` bit(1) DEFAULT NULL,
  `f_pathMaxRtx` bigint(20) DEFAULT NULL,
  `f_primaryPathAvoidance` bit(1) DEFAULT NULL,
  `f_primaryPathMaxRtx` bigint(20) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_sackTimer` bigint(20) DEFAULT NULL,
  `f_thrTransmitBuffer` bigint(20) DEFAULT NULL,
  `f_thrTransmitBufferCongCeased` bigint(20) DEFAULT NULL,
  `f_transmitBufferSize` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sc` (`f_subNetworkId`,`f_meContextId`,`f_sctpProfileId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SecM`
--

DROP TABLE IF EXISTS `t_SecM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se` (`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SectorCarrier`
--

DROP TABLE IF EXISTS `t_SectorCarrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SectorCarrier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_sectorCarrierId` varchar(100) DEFAULT NULL,
  `f_antCalModeTddAasDl` bigint(20) DEFAULT NULL,
  `f_availabilityStatus` text,
  `f_configuredMaxTxPower` bigint(20) DEFAULT NULL,
  `f_digitalTilt` bigint(20) DEFAULT NULL,
  `f_maximumTransmissionPower` bigint(20) DEFAULT NULL,
  `f_microSleepTxActivation` bit(1) DEFAULT NULL,
  `f_noOfRxAntennas` bigint(20) DEFAULT NULL,
  `f_noOfTxAntennas` bigint(20) DEFAULT NULL,
  `f_operationalState` text,
  `f_pimMitigAggressiveness` text,
  `f_pimMitigDlMutingFixed` bit(1) DEFAULT NULL,
  `f_pimMitigDlMutingPerc` bigint(20) DEFAULT NULL,
  `f_pimMitigDlMutingPeriod` bigint(20) DEFAULT NULL,
  `f_pimMitigLevelThresh` bigint(20) DEFAULT NULL,
  `f_prsEnabled` bit(1) DEFAULT NULL,
  `f_radioTransmitPerformanceMode` text,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_sectorFunctionRef` varchar(255) DEFAULT NULL,
  `f_sectorShape` text,
  `f_txPowerPersistentLock` bit(1) DEFAULT NULL,
  `f_ulForcedTimingAdvanceCommand` bigint(20) DEFAULT NULL,
  `f_virtualComChBeamfrmWtsAmplitude` text,
  `f_virtualComChBeamfrmWtsPhase` text,
  `f_virtualSector` bit(1) DEFAULT NULL,
  `f_zzzTemporary4` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  `f_rfBranchTxRef` text,
  `f_rfBranchRxRef` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_se` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_sectorCarrierId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=530534 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SectorEquipmentFunction`
--

DROP TABLE IF EXISTS `t_SectorEquipmentFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SectorEquipmentFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_sectorEquipmentFunctionId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_eUtranFqBands` text,
  `f_nRFqBands` text,
  `f_operationalState` text,
  `f_reservedBy` text,
  `f_rfBranchRef` text,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_se` (`f_subNetworkId`,`f_sectorEquipmentFunctionId`,`f_nodeSupportId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=521120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SecurityFunction`
--

DROP TABLE IF EXISTS `t_SecurityFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecurityFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_securityFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ne_se` (`f_networkElementId`,`f_securityFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=86836 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SecurityHandling`
--

DROP TABLE IF EXISTS `t_SecurityHandling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecurityHandling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_securityHandlingId` varchar(100) DEFAULT NULL,
  `f_cipheringAlgoPrio` text,
  `f_countWrapSupervisionActive` bit(1) DEFAULT NULL,
  `f_integrityProtectAlgoPrio` text,
  `f_rbIdSupervisionActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_se` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_securityHandlingId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SfpChannel`
--

DROP TABLE IF EXISTS `t_SfpChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SfpChannel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_sfpModuleId` varchar(100) DEFAULT NULL,
  `f_sfpChannelId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_sf_sf` (`f_meContextId`,`f_subNetworkId`,`f_sfpChannelId`,`f_managedElementId`,`f_sfpModuleId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=2301123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SfpModule`
--

DROP TABLE IF EXISTS `t_SfpModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SfpModule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_sfpModuleId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_sf` (`f_subNetworkId`,`f_sfpModuleId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=2484404 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SignalingRadioBearer`
--

DROP TABLE IF EXISTS `t_SignalingRadioBearer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SignalingRadioBearer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_radioBearerTableId` varchar(100) DEFAULT NULL,
  `f_signalingRadioBearerId` varchar(100) DEFAULT NULL,
  `f_dlMaxRetxThreshold` bigint(20) DEFAULT NULL,
  `f_tPollRetransmitDl` bigint(20) DEFAULT NULL,
  `f_tPollRetransmitUl` bigint(20) DEFAULT NULL,
  `f_tReorderingDl` bigint(20) DEFAULT NULL,
  `f_tReorderingUl` bigint(20) DEFAULT NULL,
  `f_ulMaxRetxThreshold` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ra_si` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_radioBearerTableId`,`f_managedElementId`,`f_signalingRadioBearerId`)
) ENGINE=MyISAM AUTO_INCREMENT=44993 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Snmp`
--

DROP TABLE IF EXISTS `t_Snmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Snmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_enableSourceCheckForV1V2C` bit(1) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_portDtls` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_snmpId`,`f_meContextId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SnmpTargetV2C`
--

DROP TABLE IF EXISTS `t_SnmpTargetV2C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV2C` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_snmpTargetV2CId` varchar(100) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_administrativeState` text,
  `f_community` varchar(255) DEFAULT NULL,
  `f_informRetryCount` bigint(20) DEFAULT NULL,
  `f_informTimeout` bigint(20) DEFAULT NULL,
  `f_isMibWritable` bit(1) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_transportMethod` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn_sn` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_snmpId`,`f_meContextId`,`f_snmpTargetV2CId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85436 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SnmpTargetV3`
--

DROP TABLE IF EXISTS `t_SnmpTargetV3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_snmpTargetV3Id` varchar(100) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_administrativeState` text,
  `f_authProtocol` text,
  `f_informRetryCount` bigint(20) DEFAULT NULL,
  `f_informTimeout` bigint(20) DEFAULT NULL,
  `f_isMibWritable` bit(1) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_privProtocol` text,
  `f_snmpSecurityLevel` text,
  `f_transportMethod` text,
  `f_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn_sn` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_snmpId`,`f_meContextId`,`f_snmpTargetV3Id`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=148815 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SnmpTargetV3_authKey`
--

DROP TABLE IF EXISTS `t_SnmpTargetV3_authKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV3_authKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_snmpTargetV3Id` varchar(100) DEFAULT NULL,
  `f_cleartext` bit(1) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn_sn` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_snmpId`,`f_meContextId`,`f_snmpTargetV3Id`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=148815 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SnmpTargetV3_privKey`
--

DROP TABLE IF EXISTS `t_SnmpTargetV3_privKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV3_privKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_snmpTargetV3Id` varchar(100) DEFAULT NULL,
  `f_cleartext` bit(1) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn_sn` (`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_snmpId`,`f_meContextId`,`f_snmpTargetV3Id`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=148814 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Snmp_agentAddress`
--

DROP TABLE IF EXISTS `t_Snmp_agentAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Snmp_agentAddress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_port` bigint(20) DEFAULT NULL,
  `f_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_sn` (`f_snmpId`,`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Ssh`
--

DROP TABLE IF EXISTS `t_Ssh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ssh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_sshId` varchar(100) DEFAULT NULL,
  `f_selectedCiphers` text,
  `f_selectedKeyExchanges` text,
  `f_selectedMacs` text,
  `f_supportedCiphers` text,
  `f_supportedKeyExchanges` text,
  `f_supportedMacs` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ss` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_managedElementId`,`f_sshId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_StreamingCapabilities`
--

DROP TABLE IF EXISTS `t_StreamingCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_StreamingCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  `f_streamingCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_streamCapabilitiesId` varchar(255) DEFAULT NULL,
  `f_supportedCompressionTypes` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_pm_ev_st` (`f_subNetworkId`,`f_systemFunctionsId`,`f_streamingCapabilitiesId`,`f_meContextId`,`f_eventProducerId`,`f_pmEventMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=322773 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SupportUnit`
--

DROP TABLE IF EXISTS `t_SupportUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SupportUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_supportUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_operationalState` text,
  `f_providedServices` text,
  `f_reservedBy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_su` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_supportUnitId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=116247 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SupportUnit_productData`
--

DROP TABLE IF EXISTS `t_SupportUnit_productData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SupportUnit_productData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_supportUnitId` varchar(100) DEFAULT NULL,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_productionDate` varchar(255) DEFAULT NULL,
  `f_productNumber` text,
  `f_productName` text,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_su` (`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_supportUnitId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=116247 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwInventory`
--

DROP TABLE IF EXISTS `t_SwInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwInventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_active` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swInventoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwItem`
--

DROP TABLE IF EXISTS `t_SwItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwItem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_swItemId` varchar(100) DEFAULT NULL,
  `f_additionalInfo` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_sw` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swInventoryId`,`f_swItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=8887119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwItem_administrativeData`
--

DROP TABLE IF EXISTS `t_SwItem_administrativeData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwItem_administrativeData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_swItemId` varchar(100) DEFAULT NULL,
  `f_productionDate` text,
  `f_description` text,
  `f_productNumber` varchar(255) DEFAULT NULL,
  `f_type` text,
  `f_productName` varchar(255) DEFAULT NULL,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_sw` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swInventoryId`,`f_swItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=8887119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwM`
--

DROP TABLE IF EXISTS `t_SwM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_actionCapable` text,
  `f_fallbackTimer` bigint(20) DEFAULT NULL,
  `f_actionCapableInfo` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_swMId`)
) ENGINE=MyISAM AUTO_INCREMENT=85433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwM_reportProgress`
--

DROP TABLE IF EXISTS `t_SwM_reportProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwM_reportProgress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_swMId`)
) ENGINE=MyISAM AUTO_INCREMENT=13239 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwVersion`
--

DROP TABLE IF EXISTS `t_SwVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwVersion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_swVersionId` varchar(100) DEFAULT NULL,
  `f_consistsOf` text,
  `f_timeOfActivation` varchar(255) DEFAULT NULL,
  `f_timeOfInstallation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_sw` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swVersionId`,`f_swInventoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=91892 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SwVersion_administrativeData`
--

DROP TABLE IF EXISTS `t_SwVersion_administrativeData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwVersion_administrativeData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_swVersionId` varchar(100) DEFAULT NULL,
  `f_productionDate` varchar(255) DEFAULT NULL,
  `f_description` text,
  `f_productNumber` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  `f_productName` varchar(255) DEFAULT NULL,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_sw` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swVersionId`,`f_swInventoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=91892 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SyncPort`
--

DROP TABLE IF EXISTS `t_SyncPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SyncPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_syncPortId` varchar(100) DEFAULT NULL,
  `f_operationalState` text,
  `f_availabilityStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_sy` (`f_subNetworkId`,`f_syncPortId`,`f_meContextId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Synchronization`
--

DROP TABLE IF EXISTS `t_Synchronization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Synchronization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_fixedPosition` bit(1) DEFAULT NULL,
  `f_telecomStandard` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_sy` (`f_subNetworkId`,`f_synchronizationId`,`f_meContextId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SysM`
--

DROP TABLE IF EXISTS `t_SysM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SysM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_SystemFunctions`
--

DROP TABLE IF EXISTS `t_SystemFunctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SystemFunctions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy` (`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TermPointToENB`
--

DROP TABLE IF EXISTS `t_TermPointToENB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToENB` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_termPointToENBId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_createdBy` text,
  `f_domainName` varchar(255) DEFAULT NULL,
  `f_eranUlCompSwCompatibility` text,
  `f_ipAddress` varchar(255) DEFAULT NULL,
  `f_ipv6Address` varchar(255) DEFAULT NULL,
  `f_lastModification` text,
  `f_operationalState` text,
  `f_timeOfCreation` text,
  `f_usedIpAddress` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` text,
  `f_timeOfLastModification` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ex_te` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtraNetworkId`,`f_termPointToENBId`,`f_meContextId`,`f_managedElementId`,`f_externalENodeBFunctionId`)
) ENGINE=MyISAM AUTO_INCREMENT=3611195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TermPointToMme`
--

DROP TABLE IF EXISTS `t_TermPointToMme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToMme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_termPointToMmeId` varchar(100) DEFAULT NULL,
  `f_administrativeState` text,
  `f_dcnType` text,
  `f_ipAddress1` varchar(255) DEFAULT NULL,
  `f_ipAddress2` varchar(255) DEFAULT NULL,
  `f_ipv6Address1` varchar(255) DEFAULT NULL,
  `f_ipv6Address2` varchar(255) DEFAULT NULL,
  `f_mmeCodeListLTERelated` bigint(20) DEFAULT NULL,
  `f_mmeGIListLTERelated` bigint(20) DEFAULT NULL,
  `f_mmeName` varchar(255) DEFAULT NULL,
  `f_mmeSupportLegacyLte` bit(1) DEFAULT NULL,
  `f_mmeSupportNbIoT` bit(1) DEFAULT NULL,
  `f_operationalState` text,
  `f_relativeMmeCapacity` bigint(20) DEFAULT NULL,
  `f_usedIpAddress` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_te` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_meContextId`,`f_managedElementId`,`f_termPointToMmeId`)
) ENGINE=MyISAM AUTO_INCREMENT=134978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TermPointToMme_servedPlmnListLTERelated`
--

DROP TABLE IF EXISTS `t_TermPointToMme_servedPlmnListLTERelated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToMme_servedPlmnListLTERelated` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_termPointToMmeId` varchar(100) DEFAULT NULL,
  `f_mnc` bigint(20) DEFAULT NULL,
  `f_mncLength` bigint(20) DEFAULT NULL,
  `f_mcc` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_te` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_termPointToMmeId`)
) ENGINE=MyISAM AUTO_INCREMENT=134679 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TermPointToSGW`
--

DROP TABLE IF EXISTS `t_TermPointToSGW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToSGW` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_termPointToSGWId` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_te` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_termPointToSGWId`)
) ENGINE=MyISAM AUTO_INCREMENT=225395 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TimeM`
--

DROP TABLE IF EXISTS `t_TimeM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TimeM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_timeMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_ti` (`f_timeMId`,`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TimeSettings`
--

DROP TABLE IF EXISTS `t_TimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TimeSettings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_timeSettingsId` varchar(100) DEFAULT NULL,
  `f_gpsToUtcLeapSeconds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_no_ti` (`f_meContextId`,`f_subNetworkId`,`f_timeSettingsId`,`f_managedElementId`,`f_nodeSupportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Tls`
--

DROP TABLE IF EXISTS `t_Tls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Tls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_tlsId` varchar(100) DEFAULT NULL,
  `f_cipherFilter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_tl` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_tlsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Tls_enabledCiphers`
--

DROP TABLE IF EXISTS `t_Tls_enabledCiphers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Tls_enabledCiphers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_tlsId` varchar(100) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_protocolVersion` varchar(255) DEFAULT NULL,
  `f_keyExchange` varchar(255) DEFAULT NULL,
  `f_authentication` varchar(255) DEFAULT NULL,
  `f_mac` varchar(255) DEFAULT NULL,
  `f_encryption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_tl` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_tlsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=3986799 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Tls_supportedCiphers`
--

DROP TABLE IF EXISTS `t_Tls_supportedCiphers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Tls_supportedCiphers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_tlsId` varchar(100) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_mac` varchar(255) DEFAULT NULL,
  `f_keyExchange` varchar(255) DEFAULT NULL,
  `f_encryption` varchar(255) DEFAULT NULL,
  `f_protocolVersion` varchar(255) DEFAULT NULL,
  `f_authentication` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_tl` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_tlsId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=3986799 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TmaSubUnit`
--

DROP TABLE IF EXISTS `t_TmaSubUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TmaSubUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_tmaSubUnitId` varchar(100) DEFAULT NULL,
  `f_dlAttenuation` bigint(20) DEFAULT NULL,
  `f_dlTrafficDelay` bigint(20) DEFAULT NULL,
  `f_iuantAntennaBearing` bigint(20) DEFAULT NULL,
  `f_iuantAntennaInstalledMechanicalTilt` bigint(20) DEFAULT NULL,
  `f_iuantAntennaOperatingBand` bigint(20) DEFAULT NULL,
  `f_iuantAntennaOperatingGain` varchar(255) DEFAULT NULL,
  `f_iuantInstallationDate` varchar(255) DEFAULT NULL,
  `f_iuantInstallersId` varchar(255) DEFAULT NULL,
  `f_iuantTmaSubunitFreqRangeRx` varchar(255) DEFAULT NULL,
  `f_iuantTmaSubunitFreqRangeTx` varchar(255) DEFAULT NULL,
  `f_iuantTmaSubunitGainRes` bigint(20) DEFAULT NULL,
  `f_iuantTmaSubunitMaxGain` bigint(20) DEFAULT NULL,
  `f_iuantTmaSubunitMinGain` bigint(20) DEFAULT NULL,
  `f_subunitNumber` bigint(20) DEFAULT NULL,
  `f_tmaType` bigint(20) DEFAULT NULL,
  `f_ulGain` bigint(20) DEFAULT NULL,
  `f_ulTrafficDelay` bigint(20) DEFAULT NULL,
  `f_iuantBaseStationId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an_tm` (`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaNearUnitId`,`f_meContextId`,`f_tmaSubUnitId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=1825 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TmaSubUnit_tmfData`
--

DROP TABLE IF EXISTS `t_TmaSubUnit_tmfData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TmaSubUnit_tmfData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_tmaSubUnitId` varchar(100) DEFAULT NULL,
  `f_dlAttenuation` bigint(20) DEFAULT NULL,
  `f_ifBandwidth` bigint(20) DEFAULT NULL,
  `f_dlTrafficDelay` bigint(20) DEFAULT NULL,
  `f_ulTrafficDelay` bigint(20) DEFAULT NULL,
  `f_ulFeederFrequency` bigint(20) DEFAULT NULL,
  `f_ulAirFrequency` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_an_an_tm` (`f_subNetworkId`,`f_antennaUnitGroupId`,`f_antennaNearUnitId`,`f_meContextId`,`f_tmaSubUnitId`,`f_managedElementId`,`f_equipmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=1825 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TnPort`
--

DROP TABLE IF EXISTS `t_TnPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TnPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_tnPortId` varchar(100) DEFAULT NULL,
  `f_sfpModuleRef` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_eq_fi_tn` (`f_meContextId`,`f_subNetworkId`,`f_tnPortId`,`f_managedElementId`,`f_equipmentId`,`f_fieldReplaceableUnitId`)
) ENGINE=MyISAM AUTO_INCREMENT=341725 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TopologySchema`
--

DROP TABLE IF EXISTS `t_TopologySchema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TopologySchema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_topologySchemaId` varchar(100) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sy_to` (`f_meContextId`,`f_sysMId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_topologySchemaId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=79113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_Transport`
--

DROP TABLE IF EXISTS `t_Transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Transport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TrustCategory`
--

DROP TABLE IF EXISTS `t_TrustCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TrustCategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_trustCategoryId` varchar(100) DEFAULT NULL,
  `f_crlCheck` text,
  `f_trustedCertificates` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_tr` (`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_trustCategoryId`,`f_systemFunctionsId`,`f_certMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TrustedCertificate`
--

DROP TABLE IF EXISTS `t_TrustedCertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TrustedCertificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_trustedCertificateId` varchar(100) DEFAULT NULL,
  `f_certificateState` text,
  `f_managedState` text,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_tr` (`f_secMId`,`f_trustedCertificateId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_certMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=341733 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_TrustedCertificate_certificateContent`
--

DROP TABLE IF EXISTS `t_TrustedCertificate_certificateContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TrustedCertificate_certificateContent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_trustedCertificateId` varchar(100) DEFAULT NULL,
  `f_extensionContent` text,
  `f_keyUsage` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_publicKeyAlgorithm` varchar(255) DEFAULT NULL,
  `f_subject` varchar(255) DEFAULT NULL,
  `f_publicKey` text,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  `f_issuer` varchar(255) DEFAULT NULL,
  `f_signatureAlgorithm` varchar(255) DEFAULT NULL,
  `f_validTo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_tr` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_secMId`,`f_managedElementId`,`f_trustedCertificateId`)
) ENGINE=MyISAM AUTO_INCREMENT=341733 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UeMeasControl`
--

DROP TABLE IF EXISTS `t_UeMeasControl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UeMeasControl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_a3MobilityTimerBr` bigint(20) DEFAULT NULL,
  `f_a3SuspendCsgTimer` bigint(20) DEFAULT NULL,
  `f_a5B2MobilityTimer` bigint(20) DEFAULT NULL,
  `f_a5MobilityTimerBr` bigint(20) DEFAULT NULL,
  `f_allowReleaseQci1` bit(1) DEFAULT NULL,
  `f_bothA5RsrpRsrqCheck` bit(1) DEFAULT NULL,
  `f_bothB1RscpEcnoCheck` bit(1) DEFAULT NULL,
  `f_bothB2RscpEcnoCheck` bit(1) DEFAULT NULL,
  `f_bothInterA3RsrpRsrqCheck` bit(1) DEFAULT NULL,
  `f_bothIntraA3RsrpRsrqCheck` bit(1) DEFAULT NULL,
  `f_checkA2SearchLevel` bit(1) DEFAULT NULL,
  `f_csfbHoTargetSearchTimer` bigint(20) DEFAULT NULL,
  `f_excludeInterFreqAtCritical` bit(1) DEFAULT NULL,
  `f_filterCoefficientEUtraNI` bigint(20) DEFAULT NULL,
  `f_filterCoefficientEUtraRsrp` bigint(20) DEFAULT NULL,
  `f_filterCoefficientEUtraRsrq` bigint(20) DEFAULT NULL,
  `f_filterCoefficientEUtraUlSinrMax` bigint(20) DEFAULT NULL,
  `f_filterCoefficientEcnoUtra` bigint(20) DEFAULT NULL,
  `f_filterCoefficientRscpUtra` bigint(20) DEFAULT NULL,
  `f_inhibitB2RsrqConfig` bit(1) DEFAULT NULL,
  `f_intraFreqMeasModeBr` text,
  `f_lowPrioMeasThresh` bigint(20) DEFAULT NULL,
  `f_maxMeasCdma20001xRtt` bigint(20) DEFAULT NULL,
  `f_maxMeasCdma2000eHrpd` bigint(20) DEFAULT NULL,
  `f_maxMeasEUtraOther` bigint(20) DEFAULT NULL,
  `f_maxMeasGeran` bigint(20) DEFAULT NULL,
  `f_maxMeasInterFreqEUtra` bigint(20) DEFAULT NULL,
  `f_maxMeasNR` bigint(20) DEFAULT NULL,
  `f_maxMeasUtraFdd` bigint(20) DEFAULT NULL,
  `f_maxMeasUtraTdd` bigint(20) DEFAULT NULL,
  `f_maxNoMeasReportsInact` bigint(20) DEFAULT NULL,
  `f_maxUtranCellsToMeasure` bigint(20) DEFAULT NULL,
  `f_measQuantityUtraFDD` text,
  `f_nrB1MobiltyTimerLessTtt` bigint(20) DEFAULT NULL,
  `f_rwrToNRAllowed` bit(1) DEFAULT NULL,
  `f_sMeasure` bigint(20) DEFAULT NULL,
  `f_searchEffortTime` bigint(20) DEFAULT NULL,
  `f_servOrPrioIFHoTimer` bigint(20) DEFAULT NULL,
  `f_targetA2UlSearchOffset` bigint(20) DEFAULT NULL,
  `f_ueMeasurementsActive` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveBr` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveCDMA2000` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveCDMA20001xRtt` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveGERAN` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveIF` bit(1) DEFAULT NULL,
  `f_ueMeasurementsActiveUTRAN` bit(1) DEFAULT NULL,
  `f_ulSinrOffset` bigint(20) DEFAULT NULL,
  `f_waitForResumeNRMeas` bigint(20) DEFAULT NULL,
  `f_waitForStartNRMeas` bigint(20) DEFAULT NULL,
  `f_zzzTemporary10` bigint(20) DEFAULT NULL,
  `f_zzzTemporary11` bigint(20) DEFAULT NULL,
  `f_zzzTemporary12` bigint(20) DEFAULT NULL,
  `f_zzzTemporary13` bigint(20) DEFAULT NULL,
  `f_zzzTemporary14` bigint(20) DEFAULT NULL,
  `f_zzzTemporary15` bigint(20) DEFAULT NULL,
  `f_zzzTemporary16` bigint(20) DEFAULT NULL,
  `f_zzzTemporary17` bigint(20) DEFAULT NULL,
  `f_zzzTemporary18` bigint(20) DEFAULT NULL,
  `f_zzzTemporary21` bigint(20) DEFAULT NULL,
  `f_zzzTemporary22` bigint(20) DEFAULT NULL,
  `f_zzzTemporary23` bigint(20) DEFAULT NULL,
  `f_zzzTemporary24` bigint(20) DEFAULT NULL,
  `f_zzzTemporary25` bigint(20) DEFAULT NULL,
  `f_zzzTemporary26` bigint(20) DEFAULT NULL,
  `f_zzzTemporary27` bigint(20) DEFAULT NULL,
  `f_zzzTemporary5` bigint(20) DEFAULT NULL,
  `f_zzzTemporary6` bigint(20) DEFAULT NULL,
  `f_zzzTemporary7` bigint(20) DEFAULT NULL,
  `f_zzzTemporary8` bigint(20) DEFAULT NULL,
  `f_zzzTemporary9` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ue` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_managedElementId`,`f_ueMeasControlId`)
) ENGINE=MyISAM AUTO_INCREMENT=530542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UpgradePackage`
--

DROP TABLE IF EXISTS `t_UpgradePackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_created` varchar(255) DEFAULT NULL,
  `f_ignoreBreakPoints` bit(1) DEFAULT NULL,
  `f_state` text,
  `f_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_up` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_swMId`,`f_upgradePackageId`)
) ENGINE=MyISAM AUTO_INCREMENT=91673 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UpgradePackage_activationStep`
--

DROP TABLE IF EXISTS `t_UpgradePackage_activationStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage_activationStep` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_serialNumber` bigint(20) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_description` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_up` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swMId`,`f_upgradePackageId`)
) ENGINE=MyISAM AUTO_INCREMENT=91673 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UpgradePackage_administrativeData`
--

DROP TABLE IF EXISTS `t_UpgradePackage_administrativeData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage_administrativeData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_productionDate` varchar(255) DEFAULT NULL,
  `f_description` text,
  `f_productNumber` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  `f_productName` varchar(255) DEFAULT NULL,
  `f_productRevision` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_up` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_managedElementId`,`f_swMId`,`f_upgradePackageId`)
) ENGINE=MyISAM AUTO_INCREMENT=91673 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UpgradePackage_password`
--

DROP TABLE IF EXISTS `t_UpgradePackage_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_cleartext` bit(1) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_up` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_swMId`,`f_upgradePackageId`)
) ENGINE=MyISAM AUTO_INCREMENT=73759 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UpgradePackage_reportProgress`
--

DROP TABLE IF EXISTS `t_UpgradePackage_reportProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage_reportProgress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_result` text,
  `f_stepProgressPercentage` bigint(20) DEFAULT NULL,
  `f_actionId` bigint(20) DEFAULT NULL,
  `f_step` bigint(20) DEFAULT NULL,
  `f_progressPercentage` bigint(20) DEFAULT NULL,
  `f_state` text,
  `f_additionalInfo` text,
  `f_timeActionCompleted` varchar(255) DEFAULT NULL,
  `f_resultInfo` text,
  `f_timeOfLastStatusUpdate` varchar(255) DEFAULT NULL,
  `f_progressInfo` text,
  `f_timeActionStarted` varchar(255) DEFAULT NULL,
  `f_actionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_sw_up` (`f_subNetworkId`,`f_systemFunctionsId`,`f_meContextId`,`f_managedElementId`,`f_swMId`,`f_upgradePackageId`)
) ENGINE=MyISAM AUTO_INCREMENT=1283 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UserIdentity`
--

DROP TABLE IF EXISTS `t_UserIdentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UserIdentity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_userIdentityId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us_us` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`,`f_userIdentityId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UserManagement`
--

DROP TABLE IF EXISTS `t_UserManagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UserManagement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  `f_legalNotice` text,
  `f_loginFailureDelay` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_us` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_secMId`,`f_managedElementId`,`f_userManagementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85435 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UtraNetwork`
--

DROP TABLE IF EXISTS `t_UtraNetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtraNetwork` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ut` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_managedElementId`,`f_utraNetworkId`)
) ENGINE=MyISAM AUTO_INCREMENT=44994 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UtranCellRelation`
--

DROP TABLE IF EXISTS `t_UtranCellRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranCellRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_utranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_utranCellRelationId` varchar(100) DEFAULT NULL,
  `f_coverageIndicator` text,
  `f_createdBy` text,
  `f_externalUtranCellFDDRef` varchar(255) DEFAULT NULL,
  `f_isHoAllowed` bit(1) DEFAULT NULL,
  `f_isRemoveAllowed` bit(1) DEFAULT NULL,
  `f_lastModification` text,
  `f_lbBnrAllowed` bit(1) DEFAULT NULL,
  `f_lbCovIndicated` bit(1) DEFAULT NULL,
  `f_loadBalancing` text,
  `f_timeOfCreation` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ut_ut` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_utranCellRelationId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_utranFreqRelationId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=2306441 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UtranCellRelation_mobilityStatus`
--

DROP TABLE IF EXISTS `t_UtranCellRelation_mobilityStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranCellRelation_mobilityStatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_utranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_utranCellRelationId` varchar(100) DEFAULT NULL,
  `f_available` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ut_ut` (`f_meContextId`,`f_eNodeBFunctionId`,`f_utranFreqRelationId`,`f_subNetworkId`,`f_utranCellRelationId`,`f_managedElementId`,`f_eUtranCellFDDId`)
) ENGINE=MyISAM AUTO_INCREMENT=2306441 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UtranFreqRelation`
--

DROP TABLE IF EXISTS `t_UtranFreqRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranFreqRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_utranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_altCsfbTargetPrio` bigint(20) DEFAULT NULL,
  `f_altCsfbTargetPrioEc` bigint(20) DEFAULT NULL,
  `f_anrMeasOn` bit(1) DEFAULT NULL,
  `f_atoAllowed` bit(1) DEFAULT NULL,
  `f_b2Thr1RsrpUtraFreqOffset` bigint(20) DEFAULT NULL,
  `f_b2Thr1RsrqUtraFreqOffset` bigint(20) DEFAULT NULL,
  `f_b2Thr2EcNoUtraFreqOffset` bigint(20) DEFAULT NULL,
  `f_b2Thr2RscpUtraFreqOffset` bigint(20) DEFAULT NULL,
  `f_cellReselectionPriority` bigint(20) DEFAULT NULL,
  `f_connectedModeMobilityPrio` bigint(20) DEFAULT NULL,
  `f_csFallbackPrio` bigint(20) DEFAULT NULL,
  `f_csFallbackPrioEC` bigint(20) DEFAULT NULL,
  `f_lbBnrPolicy` text,
  `f_maxNrUtranCellRelations` bigint(20) DEFAULT NULL,
  `f_mobilityAction` text,
  `f_mobilityActionCsfb` text,
  `f_pMaxUtra` bigint(20) DEFAULT NULL,
  `f_qOffsetFreq` bigint(20) DEFAULT NULL,
  `f_qQualMin` bigint(20) DEFAULT NULL,
  `f_qRxLevMin` bigint(20) DEFAULT NULL,
  `f_threshXHigh` bigint(20) DEFAULT NULL,
  `f_threshXHighQ` bigint(20) DEFAULT NULL,
  `f_threshXLow` bigint(20) DEFAULT NULL,
  `f_threshXLowQ` bigint(20) DEFAULT NULL,
  `f_utranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_voicePrio` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_eu_ut` (`f_eNodeBFunctionId`,`f_subNetworkId`,`f_eUtranCellFDDId`,`f_meContextId`,`f_utranFreqRelationId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=1079824 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_UtranFrequency`
--

DROP TABLE IF EXISTS `t_UtranFrequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranFrequency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  `f_utranFrequencyId` varchar(100) DEFAULT NULL,
  `f_arfcnValueUtranDl` bigint(20) DEFAULT NULL,
  `f_reservedBy` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_en_ut_ut` (`f_meContextId`,`f_eNodeBFunctionId`,`f_subNetworkId`,`f_utranFrequencyId`,`f_managedElementId`,`f_utraNetworkId`)
) ENGINE=MyISAM AUTO_INCREMENT=92591 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_VendorCredential`
--

DROP TABLE IF EXISTS `t_VendorCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_VendorCredential` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_vendorCredentialId` varchar(100) DEFAULT NULL,
  `f_certificateState` text,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_ve` (`f_vendorCredentialId`,`f_secMId`,`f_subNetworkId`,`f_managedElementId`,`f_systemFunctionsId`,`f_certMId`,`f_meContextId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_VendorCredential_certificateContent`
--

DROP TABLE IF EXISTS `t_VendorCredential_certificateContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_VendorCredential_certificateContent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_vendorCredentialId` varchar(100) DEFAULT NULL,
  `f_extensionContent` text,
  `f_keyUsage` text,
  `f_serialNumber` varchar(255) DEFAULT NULL,
  `f_publicKeyAlgorithm` varchar(255) DEFAULT NULL,
  `f_subject` varchar(255) DEFAULT NULL,
  `f_publicKey` text,
  `f_validFrom` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  `f_issuer` varchar(255) DEFAULT NULL,
  `f_signatureAlgorithm` varchar(255) DEFAULT NULL,
  `f_validTo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_sy_se_ce_ve` (`f_meContextId`,`f_subNetworkId`,`f_systemFunctionsId`,`f_certMId`,`f_vendorCredentialId`,`f_secMId`,`f_managedElementId`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_VlanPort`
--

DROP TABLE IF EXISTS `t_VlanPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_VlanPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_subNetworkId` varchar(100) DEFAULT NULL,
  `f_meContextId` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  `f_vlanPortId` varchar(100) DEFAULT NULL,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_isTagged` bit(1) DEFAULT NULL,
  `f_lowLatencySwitching` bit(1) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_vlanId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_su_me_ma_tr_vl` (`f_meContextId`,`f_subNetworkId`,`f_managedElementId`,`f_vlanPortId`,`f_transportId`)
) ENGINE=MyISAM AUTO_INCREMENT=85432 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-24  1:33:35
