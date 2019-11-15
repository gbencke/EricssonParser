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
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_InterfaceIPv4Id` varchar(100) DEFAULT NULL,
  `f_address` varchar(100) DEFAULT NULL,
  `f_addressIPv4Id` varchar(100) DEFAULT NULL,
  `f_configurationMode` varchar(100) DEFAULT NULL,
  `f_dhcpClientIdentifier` varchar(100) DEFAULT NULL,
  `f_dhcpClientIdentifierType` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_usedAddress` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AddressIPv4`
--

LOCK TABLES `t_AddressIPv4` WRITE;
/*!40000 ALTER TABLE `t_AddressIPv4` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AddressIPv4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AdmissionControl`
--

DROP TABLE IF EXISTS `t_AdmissionControl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AdmissionControl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_admNrRbDifferentiationThr` varchar(100) DEFAULT NULL,
  `f_admNrRrcDifferentiationThr` varchar(100) DEFAULT NULL,
  `f_admResourceMinQciPrio` varchar(100) DEFAULT NULL,
  `f_admissionControlId` varchar(100) DEFAULT NULL,
  `f_arpBasedPreEmptionState` varchar(100) DEFAULT NULL,
  `f_diffAdmCtrlFilteringEnabled` varchar(100) DEFAULT NULL,
  `f_dlAdmDifferentiationThr` varchar(100) DEFAULT NULL,
  `f_dlAdmOverloadThr` varchar(100) DEFAULT NULL,
  `f_dlMbmsGbrRatio` varchar(100) DEFAULT NULL,
  `f_dlTransNwBandwidth` varchar(100) DEFAULT NULL,
  `f_lbAtoThresholdLevel1` varchar(100) DEFAULT NULL,
  `f_lbAtoThresholdLevel2` varchar(100) DEFAULT NULL,
  `f_limitSrNonPa` varchar(100) DEFAULT NULL,
  `f_nrOfPaConnHpaReservPerCell` varchar(100) DEFAULT NULL,
  `f_nrOfPaConnReservationsPerCell` varchar(100) DEFAULT NULL,
  `f_nrOfPrevPreempPaRbReservation` varchar(100) DEFAULT NULL,
  `f_nrOfRbReservationsPerPaConn` varchar(100) DEFAULT NULL,
  `f_paArpOverride` varchar(100) DEFAULT NULL,
  `f_paArpOverrideHpa` varchar(100) DEFAULT NULL,
  `f_resourceReservationForDifferentiation` varchar(100) DEFAULT NULL,
  `f_resourceReservationForPAState` varchar(100) DEFAULT NULL,
  `f_srBbmPaUsersPreallocation` varchar(100) DEFAULT NULL,
  `f_ulAdmDifferentiationThr` varchar(100) DEFAULT NULL,
  `f_ulAdmOverloadThr` varchar(100) DEFAULT NULL,
  `f_ulTransNwBandwidth` varchar(100) DEFAULT NULL,
  `f_zzzTemp1` varchar(100) DEFAULT NULL,
  `f_zzzTemp10` varchar(100) DEFAULT NULL,
  `f_zzzTemp11` varchar(100) DEFAULT NULL,
  `f_zzzTemp12` varchar(100) DEFAULT NULL,
  `f_zzzTemp13` varchar(100) DEFAULT NULL,
  `f_zzzTemp14` varchar(100) DEFAULT NULL,
  `f_zzzTemp15` varchar(100) DEFAULT NULL,
  `f_zzzTemp16` varchar(100) DEFAULT NULL,
  `f_zzzTemp17` varchar(100) DEFAULT NULL,
  `f_zzzTemp18` varchar(100) DEFAULT NULL,
  `f_zzzTemp19` varchar(100) DEFAULT NULL,
  `f_zzzTemp2` varchar(100) DEFAULT NULL,
  `f_zzzTemp20` varchar(100) DEFAULT NULL,
  `f_zzzTemp21` varchar(100) DEFAULT NULL,
  `f_zzzTemp3` varchar(100) DEFAULT NULL,
  `f_zzzTemp4` varchar(100) DEFAULT NULL,
  `f_zzzTemp5` varchar(100) DEFAULT NULL,
  `f_zzzTemp6` varchar(100) DEFAULT NULL,
  `f_zzzTemp7` varchar(100) DEFAULT NULL,
  `f_zzzTemp8` varchar(100) DEFAULT NULL,
  `f_zzzTemp9` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary22` varchar(100) DEFAULT NULL,
  `f_zzzTemporary23` varchar(100) DEFAULT NULL,
  `f_zzzTemporary24` varchar(100) DEFAULT NULL,
  `f_zzzTemporary25` varchar(100) DEFAULT NULL,
  `f_zzzTemporary26` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AdmissionControl`
--

LOCK TABLES `t_AdmissionControl` WRITE;
/*!40000 ALTER TABLE `t_AdmissionControl` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AdmissionControl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AmoFunction`
--

DROP TABLE IF EXISTS `t_AmoFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AmoFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_allowInterVendorX2Signal` varchar(100) DEFAULT NULL,
  `f_amoAllowedInterVendor` varchar(100) DEFAULT NULL,
  `f_amoFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AmoFunction`
--

LOCK TABLES `t_AmoFunction` WRITE;
/*!40000 ALTER TABLE `t_AmoFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AmoFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AnrFunction`
--

DROP TABLE IF EXISTS `t_AnrFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionId` varchar(100) DEFAULT NULL,
  `f_cellRelHoAttRateThreshold` varchar(100) DEFAULT NULL,
  `f_maxNoPciReportsEvent` varchar(100) DEFAULT NULL,
  `f_maxTimeEventBasedPciConf` varchar(100) DEFAULT NULL,
  `f_pciConflictDetectionEcgiMeas` varchar(100) DEFAULT NULL,
  `f_pciConflictMobilityEcgiMeas` varchar(100) DEFAULT NULL,
  `f_perCgiMeasPlmnWhiteListGeran` varchar(100) DEFAULT NULL,
  `f_perCgiMeasPlmnWhiteListUtran` varchar(100) DEFAULT NULL,
  `f_perEcgiMeasPlmnWhiteList` varchar(100) DEFAULT NULL,
  `f_plmnWhiteListEnabled` varchar(100) DEFAULT NULL,
  `f_plmnWhiteListGeranEnabled` varchar(100) DEFAULT NULL,
  `f_plmnWhiteListUtranEnabled` varchar(100) DEFAULT NULL,
  `f_prioHoRate` varchar(100) DEFAULT NULL,
  `f_prioHoSuccRate` varchar(100) DEFAULT NULL,
  `f_prioTime` varchar(100) DEFAULT NULL,
  `f_probCellDetectLowHoSuccThres` varchar(100) DEFAULT NULL,
  `f_probCellDetectLowHoSuccTime` varchar(100) DEFAULT NULL,
  `f_probCellDetectMedHoSuccThres` varchar(100) DEFAULT NULL,
  `f_probCellDetectMedHoSuccTime` varchar(100) DEFAULT NULL,
  `f_problematicCellPolicy` varchar(100) DEFAULT NULL,
  `f_removeNcellTime` varchar(100) DEFAULT NULL,
  `f_removeNenbTime` varchar(100) DEFAULT NULL,
  `f_removeNrelTime` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary10` varchar(100) DEFAULT NULL,
  `f_zzzTemporary11` varchar(100) DEFAULT NULL,
  `f_zzzTemporary12` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  `f_zzzTemporary8` varchar(100) DEFAULT NULL,
  `f_zzzTemporary9` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AnrFunction`
--

LOCK TABLES `t_AnrFunction` WRITE;
/*!40000 ALTER TABLE `t_AnrFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AnrFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AnrFunctionEUtran`
--

DROP TABLE IF EXISTS `t_AnrFunctionEUtran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionEUtran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_AnrFunctionId` varchar(100) DEFAULT NULL,
  `f_acquirePlmnIdListEnabled` varchar(100) DEFAULT NULL,
  `f_anrEutranInterFMeasReportDecr` varchar(100) DEFAULT NULL,
  `f_anrEutranInterFMeasReportIncr` varchar(100) DEFAULT NULL,
  `f_anrEutranInterFMeasReportMax` varchar(100) DEFAULT NULL,
  `f_anrEutranInterFMeasReportMin` varchar(100) DEFAULT NULL,
  `f_anrFunctionEUtranId` varchar(100) DEFAULT NULL,
  `f_anrInterFreqState` varchar(100) DEFAULT NULL,
  `f_anrIntraFreqState` varchar(100) DEFAULT NULL,
  `f_anrUesEUtraIntraFDecr` varchar(100) DEFAULT NULL,
  `f_anrUesEUtraIntraFIncrAnr` varchar(100) DEFAULT NULL,
  `f_anrUesEUtraIntraFIncrHo` varchar(100) DEFAULT NULL,
  `f_anrUesEUtraIntraFMax` varchar(100) DEFAULT NULL,
  `f_anrUesEUtraIntraFMin` varchar(100) DEFAULT NULL,
  `f_anrUesThreshInterFDecr` varchar(100) DEFAULT NULL,
  `f_anrUesThreshInterFIncrAnr` varchar(100) DEFAULT NULL,
  `f_anrUesThreshInterFIncrHo` varchar(100) DEFAULT NULL,
  `f_anrUesThreshInterFMax` varchar(100) DEFAULT NULL,
  `f_anrUesThreshInterFMin` varchar(100) DEFAULT NULL,
  `f_cellAddRsrpThresholdEutran` varchar(100) DEFAULT NULL,
  `f_cellAddRsrqThresholdEutran` varchar(100) DEFAULT NULL,
  `f_hoAllowedEutranPolicy` varchar(100) DEFAULT NULL,
  `f_lbCellOffloadCapacityPolicy` varchar(100) DEFAULT NULL,
  `f_x2SetupPolicy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AnrFunctionEUtran`
--

LOCK TABLES `t_AnrFunctionEUtran` WRITE;
/*!40000 ALTER TABLE `t_AnrFunctionEUtran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AnrFunctionEUtran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AnrFunctionGeran`
--

DROP TABLE IF EXISTS `t_AnrFunctionGeran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionGeran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_AnrFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionGeranId` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportDecr` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportIncr` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportMax` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportMin` varchar(100) DEFAULT NULL,
  `f_anrGeranMeasReportRacIncr` varchar(100) DEFAULT NULL,
  `f_anrGeranRacMeasOn` varchar(100) DEFAULT NULL,
  `f_anrStateGsm` varchar(100) DEFAULT NULL,
  `f_rimIntegrationEnabled` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AnrFunctionGeran`
--

LOCK TABLES `t_AnrFunctionGeran` WRITE;
/*!40000 ALTER TABLE `t_AnrFunctionGeran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AnrFunctionGeran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AnrFunctionUtran`
--

DROP TABLE IF EXISTS `t_AnrFunctionUtran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrFunctionUtran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_AnrFunctionId` varchar(100) DEFAULT NULL,
  `f_anrFunctionUtranId` varchar(100) DEFAULT NULL,
  `f_anrStateUtran` varchar(100) DEFAULT NULL,
  `f_anrUtranAcMeasOn` varchar(100) DEFAULT NULL,
  `f_anrUtranMeasReportAcIncr` varchar(100) DEFAULT NULL,
  `f_anrUtranMeasReportDecr` varchar(100) DEFAULT NULL,
  `f_anrUtranMeasReportIncr` varchar(100) DEFAULT NULL,
  `f_anrUtranMeasReportMax` varchar(100) DEFAULT NULL,
  `f_anrUtranMeasReportMin` varchar(100) DEFAULT NULL,
  `f_cellAddEcNoThresholdUtranDelta` varchar(100) DEFAULT NULL,
  `f_cellAddRscpThresholdUtranDelta` varchar(100) DEFAULT NULL,
  `f_hoAllowedUtranPolicy` varchar(100) DEFAULT NULL,
  `f_rimIntegrationEnabled` varchar(100) DEFAULT NULL,
  `f_srvccPolicy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AnrFunctionUtran`
--

LOCK TABLES `t_AnrFunctionUtran` WRITE;
/*!40000 ALTER TABLE `t_AnrFunctionUtran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AnrFunctionUtran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AnrPciConflictDrxProfile`
--

DROP TABLE IF EXISTS `t_AnrPciConflictDrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AnrPciConflictDrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_anrPciConflictDrxInactivityTimer` varchar(100) DEFAULT NULL,
  `f_anrPciConflictDrxProfileId` varchar(100) DEFAULT NULL,
  `f_anrPciConflictLongDrxCycle` varchar(100) DEFAULT NULL,
  `f_anrPciConflictOnDurationTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AnrPciConflictDrxProfile`
--

LOCK TABLES `t_AnrPciConflictDrxProfile` WRITE;
/*!40000 ALTER TABLE `t_AnrPciConflictDrxProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AnrPciConflictDrxProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AntennaNearUnit`
--

DROP TABLE IF EXISTS `t_AntennaNearUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaNearUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_antennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_hardwareVersion` varchar(100) DEFAULT NULL,
  `f_iuantDeviceType` varchar(100) DEFAULT NULL,
  `f_onUnitUniqueId` varchar(100) DEFAULT NULL,
  `f_productNumber` varchar(100) DEFAULT NULL,
  `f_rfPortRef` varchar(255) DEFAULT NULL,
  `f_selfTestStatus` varchar(100) DEFAULT NULL,
  `f_serialNumber` varchar(100) DEFAULT NULL,
  `f_softwareVersion` varchar(100) DEFAULT NULL,
  `f_uniqueId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AntennaNearUnit`
--

LOCK TABLES `t_AntennaNearUnit` WRITE;
/*!40000 ALTER TABLE `t_AntennaNearUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AntennaNearUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AntennaSubunit`
--

DROP TABLE IF EXISTS `t_AntennaSubunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaSubunit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitId` varchar(100) DEFAULT NULL,
  `f_antennaSubunitId` varchar(100) DEFAULT NULL,
  `f_azimuthHalfPowerBeamwidth` varchar(100) DEFAULT NULL,
  `f_commonChBeamfrmPortMap` varchar(100) DEFAULT NULL,
  `f_customComChBeamfrmWtsAmplitude` varchar(100) DEFAULT NULL,
  `f_customComChBeamfrmWtsPhase` varchar(100) DEFAULT NULL,
  `f_maxTotalTilt` varchar(100) DEFAULT NULL,
  `f_minTotalTilt` varchar(100) DEFAULT NULL,
  `f_retSubunitRef` varchar(255) DEFAULT NULL,
  `f_totalTilt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AntennaSubunit`
--

LOCK TABLES `t_AntennaSubunit` WRITE;
/*!40000 ALTER TABLE `t_AntennaSubunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AntennaSubunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AntennaUnit`
--

DROP TABLE IF EXISTS `t_AntennaUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_antennaUnitId` varchar(100) DEFAULT NULL,
  `f_mechanicalAntennaTilt` varchar(100) DEFAULT NULL,
  `f_raeSubunitRef` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AntennaUnit`
--

LOCK TABLES `t_AntennaUnit` WRITE;
/*!40000 ALTER TABLE `t_AntennaUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AntennaUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AntennaUnitGroup`
--

DROP TABLE IF EXISTS `t_AntennaUnitGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AntennaUnitGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_antennaUnitGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AntennaUnitGroup`
--

LOCK TABLES `t_AntennaUnitGroup` WRITE;
/*!40000 ALTER TABLE `t_AntennaUnitGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AntennaUnitGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AuPort`
--

DROP TABLE IF EXISTS `t_AuPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitId` varchar(100) DEFAULT NULL,
  `f_AntennaSubunitId` varchar(100) DEFAULT NULL,
  `f_auPortId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AuPort`
--

LOCK TABLES `t_AuPort` WRITE;
/*!40000 ALTER TABLE `t_AuPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AuPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AuthenticationOrder`
--

DROP TABLE IF EXISTS `t_AuthenticationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthenticationOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_authenticationMethodOrder` varchar(255) DEFAULT NULL,
  `f_authenticationOrderId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AuthenticationOrder`
--

LOCK TABLES `t_AuthenticationOrder` WRITE;
/*!40000 ALTER TABLE `t_AuthenticationOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AuthenticationOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AuthorizationOrder`
--

DROP TABLE IF EXISTS `t_AuthorizationOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AuthorizationOrder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_authorizationMethodOrder` varchar(255) DEFAULT NULL,
  `f_authorizationOrderId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AuthorizationOrder`
--

LOCK TABLES `t_AuthorizationOrder` WRITE;
/*!40000 ALTER TABLE `t_AuthorizationOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AuthorizationOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AutoCellCapEstFunction`
--

DROP TABLE IF EXISTS `t_AutoCellCapEstFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutoCellCapEstFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_autoCellCapEstFunctionId` varchar(100) DEFAULT NULL,
  `f_useEstimatedCellCap` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AutoCellCapEstFunction`
--

LOCK TABLES `t_AutoCellCapEstFunction` WRITE;
/*!40000 ALTER TABLE `t_AutoCellCapEstFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AutoCellCapEstFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AutoProvisioning`
--

DROP TABLE IF EXISTS `t_AutoProvisioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutoProvisioning` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_autoProvisioningId` varchar(100) DEFAULT NULL,
  `f_rbsConfigLevel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AutoProvisioning`
--

LOCK TABLES `t_AutoProvisioning` WRITE;
/*!40000 ALTER TABLE `t_AutoProvisioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AutoProvisioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_AutonomousMode`
--

DROP TABLE IF EXISTS `t_AutonomousMode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_AutonomousMode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_activationState` varchar(100) DEFAULT NULL,
  `f_autonomousModeId` varchar(100) DEFAULT NULL,
  `f_expiration` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_AutonomousMode`
--

LOCK TABLES `t_AutonomousMode` WRITE;
/*!40000 ALTER TABLE `t_AutonomousMode` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_AutonomousMode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BandCombCompression`
--

DROP TABLE IF EXISTS `t_BandCombCompression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BandCombCompression` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_CarrierAggregationFunctionId` varchar(100) DEFAULT NULL,
  `f_bandCombCompressionId` varchar(100) DEFAULT NULL,
  `f_requestMaxCCsDL` varchar(100) DEFAULT NULL,
  `f_requestMaxCCsUL` varchar(100) DEFAULT NULL,
  `f_requestReducedFormat` varchar(100) DEFAULT NULL,
  `f_requestReducedIntNonContComb` varchar(100) DEFAULT NULL,
  `f_requestSkipFallbackComb` varchar(100) DEFAULT NULL,
  `f_requestedBandCombCompression` varchar(100) DEFAULT NULL,
  `f_requestedFreqBandsFiltered` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BandCombCompression`
--

LOCK TABLES `t_BandCombCompression` WRITE;
/*!40000 ALTER TABLE `t_BandCombCompression` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BandCombCompression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BbProcessingResource`
--

DROP TABLE IF EXISTS `t_BbProcessingResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BbProcessingResource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_bbProcessingResourceId` varchar(100) DEFAULT NULL,
  `f_dlBbCapacityMaxLimit` varchar(100) DEFAULT NULL,
  `f_dlBbCapacityNet` varchar(100) DEFAULT NULL,
  `f_licCapDistr` varchar(100) DEFAULT NULL,
  `f_licPrbUnit` varchar(100) DEFAULT NULL,
  `f_ulBbCapacityMaxLimit` varchar(100) DEFAULT NULL,
  `f_ulBbCapacityNet` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BbProcessingResource`
--

LOCK TABLES `t_BbProcessingResource` WRITE;
/*!40000 ALTER TABLE `t_BbProcessingResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BbProcessingResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BoundaryOrdinaryClock`
--

DROP TABLE IF EXISTS `t_BoundaryOrdinaryClock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BoundaryOrdinaryClock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_PtpId` varchar(100) DEFAULT NULL,
  `f_boundaryOrdinaryClockId` varchar(100) DEFAULT NULL,
  `f_clockStatus` varchar(100) DEFAULT NULL,
  `f_clockType` varchar(100) DEFAULT NULL,
  `f_domainNumber` varchar(100) DEFAULT NULL,
  `f_priority1` varchar(100) DEFAULT NULL,
  `f_priority2` varchar(100) DEFAULT NULL,
  `f_ptpProfile` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BoundaryOrdinaryClock`
--

LOCK TABLES `t_BoundaryOrdinaryClock` WRITE;
/*!40000 ALTER TABLE `t_BoundaryOrdinaryClock` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BoundaryOrdinaryClock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrM`
--

DROP TABLE IF EXISTS `t_BrM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_brMId` varchar(100) DEFAULT NULL,
  `f_exportPackageLabelPrefix` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrM`
--

LOCK TABLES `t_BrM` WRITE;
/*!40000 ALTER TABLE `t_BrM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmBackup`
--

DROP TABLE IF EXISTS `t_BrmBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_backupName` varchar(100) DEFAULT NULL,
  `f_brmBackupId` varchar(100) DEFAULT NULL,
  `f_creationTime` varchar(100) DEFAULT NULL,
  `f_creationType` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_status` varchar(100) DEFAULT NULL,
  `f_swVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmBackup`
--

LOCK TABLES `t_BrmBackup` WRITE;
/*!40000 ALTER TABLE `t_BrmBackup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmBackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmBackupHousekeeping`
--

DROP TABLE IF EXISTS `t_BrmBackupHousekeeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupHousekeeping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_autoDelete` varchar(100) DEFAULT NULL,
  `f_brmBackupHousekeepingId` varchar(100) DEFAULT NULL,
  `f_maxStoredManualBackups` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmBackupHousekeeping`
--

LOCK TABLES `t_BrmBackupHousekeeping` WRITE;
/*!40000 ALTER TABLE `t_BrmBackupHousekeeping` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmBackupHousekeeping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmBackupLabelStore`
--

DROP TABLE IF EXISTS `t_BrmBackupLabelStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupLabelStore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_brmBackupLabelStoreId` varchar(100) DEFAULT NULL,
  `f_lastCreatedBackup` varchar(100) DEFAULT NULL,
  `f_lastExportedBackup` varchar(100) DEFAULT NULL,
  `f_lastImportedBackup` varchar(100) DEFAULT NULL,
  `f_lastRestoredBackup` varchar(100) DEFAULT NULL,
  `f_restoreEscalationList` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmBackupLabelStore`
--

LOCK TABLES `t_BrmBackupLabelStore` WRITE;
/*!40000 ALTER TABLE `t_BrmBackupLabelStore` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmBackupLabelStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmBackupManager`
--

DROP TABLE IF EXISTS `t_BrmBackupManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupManager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_autoExport` varchar(100) DEFAULT NULL,
  `f_autoExportPassword` varchar(100) DEFAULT NULL,
  `f_autoExportUri` varchar(100) DEFAULT NULL,
  `f_backupDomain` varchar(100) DEFAULT NULL,
  `f_backupType` varchar(100) DEFAULT NULL,
  `f_brmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_manualBackupName` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmBackupManager`
--

LOCK TABLES `t_BrmBackupManager` WRITE;
/*!40000 ALTER TABLE `t_BrmBackupManager` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmBackupManager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmBackupScheduler`
--

DROP TABLE IF EXISTS `t_BrmBackupScheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmBackupScheduler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_adminState` varchar(100) DEFAULT NULL,
  `f_autoExport` varchar(100) DEFAULT NULL,
  `f_autoExportPassword` varchar(100) DEFAULT NULL,
  `f_autoExportUri` varchar(100) DEFAULT NULL,
  `f_brmBackupSchedulerId` varchar(100) DEFAULT NULL,
  `f_maxStoredScheduledBackups` varchar(100) DEFAULT NULL,
  `f_mostRecentlyCreatedAutoBackup` varchar(100) DEFAULT NULL,
  `f_nextScheduledTime` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_scheduledBackupName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmBackupScheduler`
--

LOCK TABLES `t_BrmBackupScheduler` WRITE;
/*!40000 ALTER TABLE `t_BrmBackupScheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmBackupScheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmCalendarBasedPeriodicEvent`
--

DROP TABLE IF EXISTS `t_BrmCalendarBasedPeriodicEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmCalendarBasedPeriodicEvent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_BrmBackupSchedulerId` varchar(100) DEFAULT NULL,
  `f_brmCalendarBasedPeriodicEventId` varchar(100) DEFAULT NULL,
  `f_dayOfMonth` varchar(100) DEFAULT NULL,
  `f_dayOfWeek` varchar(100) DEFAULT NULL,
  `f_dayOfWeekOccurrence` varchar(100) DEFAULT NULL,
  `f_month` varchar(100) DEFAULT NULL,
  `f_startTime` varchar(100) DEFAULT NULL,
  `f_stopTime` varchar(100) DEFAULT NULL,
  `f_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmCalendarBasedPeriodicEvent`
--

LOCK TABLES `t_BrmCalendarBasedPeriodicEvent` WRITE;
/*!40000 ALTER TABLE `t_BrmCalendarBasedPeriodicEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmCalendarBasedPeriodicEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmFailsafeBackup`
--

DROP TABLE IF EXISTS `t_BrmFailsafeBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmFailsafeBackup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_BrmBackupManagerId` varchar(100) DEFAULT NULL,
  `f_backupName` varchar(100) DEFAULT NULL,
  `f_brmFailsafeBackupId` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_timeoutLength` varchar(100) DEFAULT NULL,
  `f_usageState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmFailsafeBackup`
--

LOCK TABLES `t_BrmFailsafeBackup` WRITE;
/*!40000 ALTER TABLE `t_BrmFailsafeBackup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmFailsafeBackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_BrmRollbackAtRestore`
--

DROP TABLE IF EXISTS `t_BrmRollbackAtRestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_BrmRollbackAtRestore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_BrMId` varchar(100) DEFAULT NULL,
  `f_brmRollbackAtRestoreId` varchar(100) DEFAULT NULL,
  `f_timeAllowedBeforeRollback` varchar(100) DEFAULT NULL,
  `f_timeRemainingBeforeRollback` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_BrmRollbackAtRestore`
--

LOCK TABLES `t_BrmRollbackAtRestore` WRITE;
/*!40000 ALTER TABLE `t_BrmRollbackAtRestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_BrmRollbackAtRestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Cabinet`
--

DROP TABLE IF EXISTS `t_Cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Cabinet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_alarmInExternalMe` varchar(100) DEFAULT NULL,
  `f_cabinetId` varchar(100) DEFAULT NULL,
  `f_cabinetIdentifier` varchar(100) DEFAULT NULL,
  `f_climateRegulationSystem` varchar(100) DEFAULT NULL,
  `f_climateSystem` varchar(100) DEFAULT NULL,
  `f_positionRef` varchar(100) DEFAULT NULL,
  `f_productData` varchar(100) DEFAULT NULL,
  `f_sharedCabinetIdentifier` varchar(100) DEFAULT NULL,
  `f_smokeDetector` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Cabinet`
--

LOCK TABLES `t_Cabinet` WRITE;
/*!40000 ALTER TABLE `t_Cabinet` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CapacityKey`
--

DROP TABLE IF EXISTS `t_CapacityKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_capacityKeyId` varchar(100) DEFAULT NULL,
  `f_expiration` varchar(100) DEFAULT NULL,
  `f_grantedCapacityLevel` varchar(100) DEFAULT NULL,
  `f_keyId` varchar(100) DEFAULT NULL,
  `f_licensedCapacityLimit` varchar(100) DEFAULT NULL,
  `f_licensedCapacityLimitReached` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `f_productType` varchar(100) DEFAULT NULL,
  `f_shared` varchar(100) DEFAULT NULL,
  `f_state` varchar(255) DEFAULT NULL,
  `f_validFrom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CapacityKey`
--

LOCK TABLES `t_CapacityKey` WRITE;
/*!40000 ALTER TABLE `t_CapacityKey` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CapacityKey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CapacityState`
--

DROP TABLE IF EXISTS `t_CapacityState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CapacityState` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_capacityKey` varchar(255) DEFAULT NULL,
  `f_capacityStateId` varchar(100) DEFAULT NULL,
  `f_currentCapacityLimit` varchar(100) DEFAULT NULL,
  `f_description` varchar(100) DEFAULT NULL,
  `f_grantedCapacityLevel` varchar(100) DEFAULT NULL,
  `f_keyId` varchar(100) DEFAULT NULL,
  `f_licenseState` varchar(100) DEFAULT NULL,
  `f_licensedCapacityLimitReached` varchar(100) DEFAULT NULL,
  `f_serviceState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CapacityState`
--

LOCK TABLES `t_CapacityState` WRITE;
/*!40000 ALTER TABLE `t_CapacityState` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CapacityState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CarrierAggregationFunction`
--

DROP TABLE IF EXISTS `t_CarrierAggregationFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CarrierAggregationFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_a6TriggerSCellDeconfig` varchar(100) DEFAULT NULL,
  `f_caPreemptionThreshold` varchar(100) DEFAULT NULL,
  `f_caPreference` varchar(100) DEFAULT NULL,
  `f_caRateAdjustCoeff` varchar(100) DEFAULT NULL,
  `f_caUsageLimit` varchar(100) DEFAULT NULL,
  `f_carrierAggregationFunctionId` varchar(100) DEFAULT NULL,
  `f_dcSCellActDeactDataThres` varchar(100) DEFAULT NULL,
  `f_dcSCellActDeactDataThresHyst` varchar(100) DEFAULT NULL,
  `f_dcSCellDeactDelayTimer` varchar(100) DEFAULT NULL,
  `f_dynamicSCellSelectionMethod` varchar(100) DEFAULT NULL,
  `f_effectiveBwImpactDl4Layer` varchar(100) DEFAULT NULL,
  `f_enhancedSelectionOfMimoAndCa` varchar(100) DEFAULT NULL,
  `f_fourLayerMimoPreferred` varchar(100) DEFAULT NULL,
  `f_laaSCellActProhibitTimer` varchar(100) DEFAULT NULL,
  `f_laaSCellDeactProhibitTimer` varchar(100) DEFAULT NULL,
  `f_pdcchEnhancedLaForVolte` varchar(100) DEFAULT NULL,
  `f_sCellActDeactDataThres` varchar(100) DEFAULT NULL,
  `f_sCellActDeactDataThresHyst` varchar(100) DEFAULT NULL,
  `f_sCellActDeactUlDataThresh` varchar(100) DEFAULT NULL,
  `f_sCellActDeactUlDataThreshHyst` varchar(100) DEFAULT NULL,
  `f_sCellActProhibitTimer` varchar(100) DEFAULT NULL,
  `f_sCellDeactDelayTimer` varchar(100) DEFAULT NULL,
  `f_sCellDeactOutOfCoverageTimer` varchar(100) DEFAULT NULL,
  `f_sCellDeactProhibitTimer` varchar(100) DEFAULT NULL,
  `f_sCellPdcchOuterLoopMargin` varchar(100) DEFAULT NULL,
  `f_sCellScheduleSinrThres` varchar(100) DEFAULT NULL,
  `f_sCellSelectionMode` varchar(100) DEFAULT NULL,
  `f_selectionPolicyUlTargetRatio` varchar(100) DEFAULT NULL,
  `f_selectionPolicyUlWeighting` varchar(100) DEFAULT NULL,
  `f_useAbsolutePrioForCspEffBw` varchar(100) DEFAULT NULL,
  `f_waitForAdditionalSCellOpportunity` varchar(100) DEFAULT NULL,
  `f_waitForBetterSCellRep` varchar(100) DEFAULT NULL,
  `f_waitForBlindSelSCellRepLessTtt` varchar(100) DEFAULT NULL,
  `f_waitForCaOpportunity` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CarrierAggregationFunction`
--

LOCK TABLES `t_CarrierAggregationFunction` WRITE;
/*!40000 ALTER TABLE `t_CarrierAggregationFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CarrierAggregationFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CellPerformance`
--

DROP TABLE IF EXISTS `t_CellPerformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellPerformance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_cellPerformanceId` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  `f_zzzTemporary8` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CellPerformance`
--

LOCK TABLES `t_CellPerformance` WRITE;
/*!40000 ALTER TABLE `t_CellPerformance` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CellPerformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CellResources`
--

DROP TABLE IF EXISTS `t_CellResources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellResources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cellResourcesId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CellResources`
--

LOCK TABLES `t_CellResources` WRITE;
/*!40000 ALTER TABLE `t_CellResources` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CellResources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CellSleepFunction`
--

DROP TABLE IF EXISTS `t_CellSleepFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellSleepFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_capCellDlPrbSleepThreshold` varchar(100) DEFAULT NULL,
  `f_capCellMobReasNotSleepThr` varchar(100) DEFAULT NULL,
  `f_capCellRrcConnSleepThreshold` varchar(100) DEFAULT NULL,
  `f_capCellSleepMonitorDurTimer` varchar(100) DEFAULT NULL,
  `f_capCellSleepProhibitInterval` varchar(100) DEFAULT NULL,
  `f_cellSleepFunctionId` varchar(100) DEFAULT NULL,
  `f_covCellDlPrbWakeUpThreshold` varchar(100) DEFAULT NULL,
  `f_covCellLatestStatsAdaRatio` varchar(100) DEFAULT NULL,
  `f_covCellRrcConnEstAttMin` varchar(100) DEFAULT NULL,
  `f_covCellRrcConnWakeUpThreshold` varchar(100) DEFAULT NULL,
  `f_covCellRrcReestWakeUpThr` varchar(100) DEFAULT NULL,
  `f_covCellUeCtxtRelMin` varchar(100) DEFAULT NULL,
  `f_covCellUeLostWakeUpThr` varchar(100) DEFAULT NULL,
  `f_covCellWakeUpMonitorDurTimer` varchar(100) DEFAULT NULL,
  `f_coverageCellDiscovery` varchar(100) DEFAULT NULL,
  `f_isAllowedMsmOnCovCell` varchar(100) DEFAULT NULL,
  `f_isCleanupHitRateTable` varchar(100) DEFAULT NULL,
  `f_sleepEndTime` varchar(100) DEFAULT NULL,
  `f_sleepMode` varchar(100) DEFAULT NULL,
  `f_sleepProhibitStartTime` varchar(100) DEFAULT NULL,
  `f_sleepStartTime` varchar(100) DEFAULT NULL,
  `f_sleepState` varchar(100) DEFAULT NULL,
  `f_wakeUpLastHoTime` varchar(100) DEFAULT NULL,
  `f_wakeUpWaitTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CellSleepFunction`
--

LOCK TABLES `t_CellSleepFunction` WRITE;
/*!40000 ALTER TABLE `t_CellSleepFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CellSleepFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CellSleepNodeFunction`
--

DROP TABLE IF EXISTS `t_CellSleepNodeFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CellSleepNodeFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cellSleepNodeFunctionId` varchar(100) DEFAULT NULL,
  `f_csmEutranInterFMeasReportDecr` varchar(100) DEFAULT NULL,
  `f_csmEutranInterFMeasReportIncr` varchar(100) DEFAULT NULL,
  `f_csmEutranInterFMeasReportMax` varchar(100) DEFAULT NULL,
  `f_csmEutranInterFMeasReportMin` varchar(100) DEFAULT NULL,
  `f_csmMinHitRateForCovCell` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CellSleepNodeFunction`
--

LOCK TABLES `t_CellSleepNodeFunction` WRITE;
/*!40000 ALTER TABLE `t_CellSleepNodeFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CellSleepNodeFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CertM`
--

DROP TABLE IF EXISTS `t_CertM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CertM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_activeVendorCredential` varchar(255) DEFAULT NULL,
  `f_certMId` varchar(100) DEFAULT NULL,
  `f_localFileStorePath` varchar(100) DEFAULT NULL,
  `f_reportProgress` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CertM`
--

LOCK TABLES `t_CertM` WRITE;
/*!40000 ALTER TABLE `t_CertM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CertM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CertMCapabilities`
--

DROP TABLE IF EXISTS `t_CertMCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CertMCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_certMCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_keySupport` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CertMCapabilities`
--

LOCK TABLES `t_CertMCapabilities` WRITE;
/*!40000 ALTER TABLE `t_CertMCapabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CertMCapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ChainCertificate`
--

DROP TABLE IF EXISTS `t_ChainCertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ChainCertificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_VendorCredentialId` varchar(100) DEFAULT NULL,
  `f_certificateContent` text,
  `f_certificateState` varchar(100) DEFAULT NULL,
  `f_chainCertificateId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ChainCertificate`
--

LOCK TABLES `t_ChainCertificate` WRITE;
/*!40000 ALTER TABLE `t_ChainCertificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ChainCertificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Cli`
--

DROP TABLE IF EXISTS `t_Cli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Cli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_cliId` varchar(100) DEFAULT NULL,
  `f_idleTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Cli`
--

LOCK TABLES `t_Cli` WRITE;
/*!40000 ALTER TABLE `t_Cli` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Cli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CliSsh`
--

DROP TABLE IF EXISTS `t_CliSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CliSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_cliSshId` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CliSsh`
--

LOCK TABLES `t_CliSsh` WRITE;
/*!40000 ALTER TABLE `t_CliSsh` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CliSsh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CliTls`
--

DROP TABLE IF EXISTS `t_CliTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CliTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_cliTlsId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CliTls`
--

LOCK TABLES `t_CliTls` WRITE;
/*!40000 ALTER TABLE `t_CliTls` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CliTls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CmFunction`
--

DROP TABLE IF EXISTS `t_CmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_CmFunctionId` varchar(100) DEFAULT NULL,
  `f_failedSyncsCount` varchar(100) DEFAULT NULL,
  `f_iposCopyConfigFrequency` varchar(100) DEFAULT NULL,
  `f_lastFailedSync` varchar(100) DEFAULT NULL,
  `f_lostSynchronization` varchar(100) DEFAULT NULL,
  `f_syncStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CmFunction`
--

LOCK TABLES `t_CmFunction` WRITE;
/*!40000 ALTER TABLE `t_CmFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CmFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CmNodeHeartbeatSupervision`
--

DROP TABLE IF EXISTS `t_CmNodeHeartbeatSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CmNodeHeartbeatSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_CmNodeHeartbeatSupervisionId` varchar(100) DEFAULT NULL,
  `f_active` varchar(100) DEFAULT NULL,
  `f_heartbeatInterval` varchar(100) DEFAULT NULL,
  `f_heartbeatTimeout` varchar(100) DEFAULT NULL,
  `f_heartbeatTimestamp` varchar(100) DEFAULT NULL,
  `f_numberOfRetries` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CmNodeHeartbeatSupervision`
--

LOCK TABLES `t_CmNodeHeartbeatSupervision` WRITE;
/*!40000 ALTER TABLE `t_CmNodeHeartbeatSupervision` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CmNodeHeartbeatSupervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ComConnectivityInformation`
--

DROP TABLE IF EXISTS `t_ComConnectivityInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ComConnectivityInformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_ComConnectivityInformationId` varchar(100) DEFAULT NULL,
  `f_fileTransferProtocol` varchar(100) DEFAULT NULL,
  `f_ftpTlsServerPort` varchar(100) DEFAULT NULL,
  `f_ipAddress` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_snmpAgentPort` varchar(100) DEFAULT NULL,
  `f_snmpReadCommunity` varchar(100) DEFAULT NULL,
  `f_snmpSecurityLevel` varchar(100) DEFAULT NULL,
  `f_snmpSecurityName` varchar(100) DEFAULT NULL,
  `f_snmpVersion` varchar(100) DEFAULT NULL,
  `f_snmpWriteCommunity` varchar(100) DEFAULT NULL,
  `f_transportProtocol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ComConnectivityInformation`
--

LOCK TABLES `t_ComConnectivityInformation` WRITE;
/*!40000 ALTER TABLE `t_ComConnectivityInformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ComConnectivityInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ConsumedEnergyMeasurement`
--

DROP TABLE IF EXISTS `t_ConsumedEnergyMeasurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ConsumedEnergyMeasurement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_consumedEnergyMeasurementId` varchar(100) DEFAULT NULL,
  `f_noOfContributingUnits` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_totalNumberOfUnits` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ConsumedEnergyMeasurement`
--

LOCK TABLES `t_ConsumedEnergyMeasurement` WRITE;
/*!40000 ALTER TABLE `t_ConsumedEnergyMeasurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ConsumedEnergyMeasurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_CpriLinkSupervision`
--

DROP TABLE IF EXISTS `t_CpriLinkSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_CpriLinkSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_cpriLinkFilterTime` varchar(100) DEFAULT NULL,
  `f_cpriLinkSupervisionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_CpriLinkSupervision`
--

LOCK TABLES `t_CpriLinkSupervision` WRITE;
/*!40000 ALTER TABLE `t_CpriLinkSupervision` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_CpriLinkSupervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_DataRadioBearer`
--

DROP TABLE IF EXISTS `t_DataRadioBearer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DataRadioBearer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_RadioBearerTableId` varchar(100) DEFAULT NULL,
  `f_dataRadioBearerId` varchar(100) DEFAULT NULL,
  `f_dlMaxRetxThreshold` varchar(100) DEFAULT NULL,
  `f_tPollRetransmitDl` varchar(100) DEFAULT NULL,
  `f_tPollRetransmitUl` varchar(100) DEFAULT NULL,
  `f_ulMaxRetxThreshold` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_DataRadioBearer`
--

LOCK TABLES `t_DataRadioBearer` WRITE;
/*!40000 ALTER TABLE `t_DataRadioBearer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_DataRadioBearer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_DateAndTime`
--

DROP TABLE IF EXISTS `t_DateAndTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DateAndTime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_TimeMId` varchar(100) DEFAULT NULL,
  `f_dateAndTimeId` varchar(100) DEFAULT NULL,
  `f_dateTimeOffset` varchar(100) DEFAULT NULL,
  `f_timeZone` varchar(100) DEFAULT NULL,
  `f_tzRevision` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_DateAndTime`
--

LOCK TABLES `t_DateAndTime` WRITE;
/*!40000 ALTER TABLE `t_DateAndTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_DateAndTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_DlComp`
--

DROP TABLE IF EXISTS `t_DlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_dlCompId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_DlComp`
--

LOCK TABLES `t_DlComp` WRITE;
/*!40000 ALTER TABLE `t_DlComp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_DlComp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_DrxProfile`
--

DROP TABLE IF EXISTS `t_DrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_drxInactivityTimer` varchar(100) DEFAULT NULL,
  `f_drxProfileId` varchar(100) DEFAULT NULL,
  `f_drxRetransmissionTimer` varchar(100) DEFAULT NULL,
  `f_drxState` varchar(100) DEFAULT NULL,
  `f_longDrxCycle` varchar(100) DEFAULT NULL,
  `f_longDrxCycleOnly` varchar(100) DEFAULT NULL,
  `f_onDurationTimer` varchar(100) DEFAULT NULL,
  `f_shortDrxCycle` varchar(100) DEFAULT NULL,
  `f_shortDrxCycleTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_DrxProfile`
--

LOCK TABLES `t_DrxProfile` WRITE;
/*!40000 ALTER TABLE `t_DrxProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_DrxProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_DscpPcpMap`
--

DROP TABLE IF EXISTS `t_DscpPcpMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_DscpPcpMap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_QosProfilesId` varchar(100) DEFAULT NULL,
  `f_defaultPcp` varchar(100) DEFAULT NULL,
  `f_dscpPcpMapId` varchar(100) DEFAULT NULL,
  `f_pcp0` varchar(100) DEFAULT NULL,
  `f_pcp1` varchar(100) DEFAULT NULL,
  `f_pcp2` varchar(100) DEFAULT NULL,
  `f_pcp3` varchar(100) DEFAULT NULL,
  `f_pcp4` varchar(100) DEFAULT NULL,
  `f_pcp5` varchar(100) DEFAULT NULL,
  `f_pcp6` varchar(100) DEFAULT NULL,
  `f_pcp7` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_DscpPcpMap`
--

LOCK TABLES `t_DscpPcpMap` WRITE;
/*!40000 ALTER TABLE `t_DscpPcpMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_DscpPcpMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Dst`
--

DROP TABLE IF EXISTS `t_Dst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Dst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_RouteTableIPv4StaticId` varchar(100) DEFAULT NULL,
  `f_dst` varchar(100) DEFAULT NULL,
  `f_dstId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Dst`
--

LOCK TABLES `t_Dst` WRITE;
/*!40000 ALTER TABLE `t_Dst` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Dst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ENodeBFunction`
--

DROP TABLE IF EXISTS `t_ENodeBFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ENodeBFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_alignTtiBundWUlTrigSinr` varchar(100) DEFAULT NULL,
  `f_altNasBackTo` varchar(100) DEFAULT NULL,
  `f_biasThpWifiMobility` varchar(100) DEFAULT NULL,
  `f_caAwareMfbiIntraCellHo` varchar(100) DEFAULT NULL,
  `f_caUnknownImeisvEnabled` varchar(100) DEFAULT NULL,
  `f_checkEmergencySoftLock` varchar(100) DEFAULT NULL,
  `f_combCellSectorSelectThreshRx` varchar(100) DEFAULT NULL,
  `f_combCellSectorSelectThreshTx` varchar(100) DEFAULT NULL,
  `f_csfbMeasFromIdleMode` varchar(100) DEFAULT NULL,
  `f_csfbUseRegisteredLai` varchar(100) DEFAULT NULL,
  `f_csmMinHighHitThreshold` varchar(100) DEFAULT NULL,
  `f_dlMaxWaitingTimeGlobal` varchar(100) DEFAULT NULL,
  `f_dnsLookupOnTai` varchar(100) DEFAULT NULL,
  `f_dnsLookupTimer` varchar(100) DEFAULT NULL,
  `f_dnsSelectionS1X2Ref` varchar(100) DEFAULT NULL,
  `f_dscpLabel` varchar(100) DEFAULT NULL,
  `f_eNBId` varchar(100) DEFAULT NULL,
  `f_eNodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eNodeBPlmnId` varchar(100) DEFAULT NULL,
  `f_enabledUlTrigMeas` varchar(100) DEFAULT NULL,
  `f_endcDataUsageReportEnabled` varchar(100) DEFAULT NULL,
  `f_endcPowerOffsetLte` varchar(100) DEFAULT NULL,
  `f_endcSplitAllowedNonDynPwrShUe` varchar(100) DEFAULT NULL,
  `f_eranUlCompReSelectLinkTime` varchar(100) DEFAULT NULL,
  `f_eranUlCompVlanPortRef` varchar(100) DEFAULT NULL,
  `f_eranVlanPortRef` varchar(100) DEFAULT NULL,
  `f_extendedWaitTimeNb` varchar(100) DEFAULT NULL,
  `f_forcedSiTunnelingActive` varchar(100) DEFAULT NULL,
  `f_gtpuErrorIndicationDscp` varchar(100) DEFAULT NULL,
  `f_inactivitySupervisionTimerNb` varchar(100) DEFAULT NULL,
  `f_initPreschedulingEnable` varchar(100) DEFAULT NULL,
  `f_interEnbCaTunnelDscp` varchar(100) DEFAULT NULL,
  `f_interEnbUlCompTunnelDscp` varchar(100) DEFAULT NULL,
  `f_intraEnbHoNasNonDelIndCause` varchar(100) DEFAULT NULL,
  `f_intraRanIpAddressRef` varchar(100) DEFAULT NULL,
  `f_ipsecEpAddressRef` varchar(100) DEFAULT NULL,
  `f_iuaBbmResourceLimit` varchar(100) DEFAULT NULL,
  `f_licCapDistrMethod` varchar(100) DEFAULT NULL,
  `f_licConnectedUsersPercentileConf` varchar(100) DEFAULT NULL,
  `f_licDlBbPercentileConf` varchar(100) DEFAULT NULL,
  `f_licDlPrbPercentileConf` varchar(100) DEFAULT NULL,
  `f_licUlBbPercentileConf` varchar(100) DEFAULT NULL,
  `f_licUlPrbPercentileConf` varchar(100) DEFAULT NULL,
  `f_maxNoCellsNaccCsfb` varchar(100) DEFAULT NULL,
  `f_maxNrOfEnbPartnersEranUlComp` varchar(100) DEFAULT NULL,
  `f_maxNrOfInterEnbUlCompLbm` varchar(100) DEFAULT NULL,
  `f_maxRandc` varchar(100) DEFAULT NULL,
  `f_measuringEcgiWithAgActive` varchar(100) DEFAULT NULL,
  `f_mfbiFbipOnX2Enabled` varchar(100) DEFAULT NULL,
  `f_mfbiSupport` varchar(100) DEFAULT NULL,
  `f_mfbiSupportPolicy` varchar(100) DEFAULT NULL,
  `f_minRandc` varchar(100) DEFAULT NULL,
  `f_mtRreWithoutNeighborActive` varchar(100) DEFAULT NULL,
  `f_nbRrcConnReestActive` varchar(100) DEFAULT NULL,
  `f_nnsfMode` varchar(100) DEFAULT NULL,
  `f_pdbMeasurementDelta` varchar(100) DEFAULT NULL,
  `f_prioritizeAdditionalBands` varchar(100) DEFAULT NULL,
  `f_pwsPersistentStorage` varchar(100) DEFAULT NULL,
  `f_randUpdateInterval` varchar(100) DEFAULT NULL,
  `f_release` varchar(100) DEFAULT NULL,
  `f_releaseInactiveUesInactTime` varchar(100) DEFAULT NULL,
  `f_releaseInactiveUesMpLoadLevel` varchar(100) DEFAULT NULL,
  `f_rpUpIpAddressRef` varchar(100) DEFAULT NULL,
  `f_rrcConnReestActive` varchar(100) DEFAULT NULL,
  `f_s1GtpuEchoDscp` varchar(100) DEFAULT NULL,
  `f_s1GtpuEchoEnable` varchar(100) DEFAULT NULL,
  `f_s1GtpuEchoFailureAction` varchar(100) DEFAULT NULL,
  `f_s1GtpuEchoInterval` varchar(100) DEFAULT NULL,
  `f_s1HODirDataPathAvail` varchar(100) DEFAULT NULL,
  `f_s1RetryTimer` varchar(100) DEFAULT NULL,
  `f_sctpEndcX2Ref` varchar(100) DEFAULT NULL,
  `f_sctpRef` varchar(100) DEFAULT NULL,
  `f_sctpX2Ref` varchar(100) DEFAULT NULL,
  `f_softLockRwRWaitTimerInternal` varchar(100) DEFAULT NULL,
  `f_softLockRwRWaitTimerOperator` varchar(100) DEFAULT NULL,
  `f_tOutgoingHoExecCdma1xRtt` varchar(100) DEFAULT NULL,
  `f_tRelocOverall` varchar(100) DEFAULT NULL,
  `f_tS1HoCancelTimer` varchar(100) DEFAULT NULL,
  `f_tWaitForConnEstInd` varchar(100) DEFAULT NULL,
  `f_tddVoipDrxProfileId` varchar(100) DEFAULT NULL,
  `f_timeAndPhaseSynchAlignment` varchar(100) DEFAULT NULL,
  `f_timeAndPhaseSynchCritical` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDevIeNBUlComp` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviation` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationCdma2000` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationEdrx` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationIeNbCa` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationMbms` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationOtdoa` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationSib16` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd1` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd2` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd3` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd4` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd5` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd6` varchar(100) DEFAULT NULL,
  `f_timePhaseMaxDeviationTdd7` varchar(100) DEFAULT NULL,
  `f_ulMaxWaitingTimeGlobal` varchar(255) DEFAULT NULL,
  `f_ulSchedulerDynamicBWAllocationEnabled` varchar(100) DEFAULT NULL,
  `f_upEndcX2IpAddressRef` varchar(100) DEFAULT NULL,
  `f_upIpAddress2Ref` varchar(100) DEFAULT NULL,
  `f_upIpAddressRef` varchar(255) DEFAULT NULL,
  `f_upX2IpAddressRef` varchar(100) DEFAULT NULL,
  `f_useBandPrioritiesInSCellEval` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_x2BlackList` varchar(100) DEFAULT NULL,
  `f_x2GtpuEchoDscp` varchar(100) DEFAULT NULL,
  `f_x2GtpuEchoEnable` varchar(100) DEFAULT NULL,
  `f_x2IpAddrViaS1Active` varchar(100) DEFAULT NULL,
  `f_x2SetupTwoWayRelations` varchar(100) DEFAULT NULL,
  `f_x2WhiteList` varchar(100) DEFAULT NULL,
  `f_x2retryTimerMaxAuto` varchar(100) DEFAULT NULL,
  `f_x2retryTimerStart` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary10` varchar(100) DEFAULT NULL,
  `f_zzzTemporary11` varchar(100) DEFAULT NULL,
  `f_zzzTemporary12` varchar(100) DEFAULT NULL,
  `f_zzzTemporary13` varchar(100) DEFAULT NULL,
  `f_zzzTemporary16` varchar(100) DEFAULT NULL,
  `f_zzzTemporary18` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary21` varchar(100) DEFAULT NULL,
  `f_zzzTemporary22` varchar(100) DEFAULT NULL,
  `f_zzzTemporary23` varchar(100) DEFAULT NULL,
  `f_zzzTemporary24` varchar(100) DEFAULT NULL,
  `f_zzzTemporary25` varchar(100) DEFAULT NULL,
  `f_zzzTemporary26` varchar(100) DEFAULT NULL,
  `f_zzzTemporary28` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary32` varchar(100) DEFAULT NULL,
  `f_zzzTemporary34` varchar(100) DEFAULT NULL,
  `f_zzzTemporary35` varchar(100) DEFAULT NULL,
  `f_zzzTemporary36` varchar(100) DEFAULT NULL,
  `f_zzzTemporary37` varchar(100) DEFAULT NULL,
  `f_zzzTemporary39` varchar(100) DEFAULT NULL,
  `f_zzzTemporary40` varchar(100) DEFAULT NULL,
  `f_zzzTemporary41` varchar(100) DEFAULT NULL,
  `f_zzzTemporary42` varchar(100) DEFAULT NULL,
  `f_zzzTemporary43` varchar(100) DEFAULT NULL,
  `f_zzzTemporary47` varchar(100) DEFAULT NULL,
  `f_zzzTemporary48` varchar(100) DEFAULT NULL,
  `f_zzzTemporary49` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary50` varchar(100) DEFAULT NULL,
  `f_zzzTemporary51` varchar(100) DEFAULT NULL,
  `f_zzzTemporary52` varchar(100) DEFAULT NULL,
  `f_zzzTemporary54` varchar(100) DEFAULT NULL,
  `f_zzzTemporary55` varchar(100) DEFAULT NULL,
  `f_zzzTemporary57` varchar(100) DEFAULT NULL,
  `f_zzzTemporary58` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary61` varchar(100) DEFAULT NULL,
  `f_zzzTemporary62` varchar(100) DEFAULT NULL,
  `f_zzzTemporary64` varchar(100) DEFAULT NULL,
  `f_zzzTemporary65` varchar(100) DEFAULT NULL,
  `f_zzzTemporary66` varchar(100) DEFAULT NULL,
  `f_zzzTemporary67` varchar(100) DEFAULT NULL,
  `f_zzzTemporary68` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  `f_zzzTemporary8` varchar(100) DEFAULT NULL,
  `f_zzzTemporary9` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ENodeBFunction`
--

LOCK TABLES `t_ENodeBFunction` WRITE;
/*!40000 ALTER TABLE `t_ENodeBFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ENodeBFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EUtraNetwork`
--

DROP TABLE IF EXISTS `t_EUtraNetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtraNetwork` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_eUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EUtraNetwork`
--

LOCK TABLES `t_EUtraNetwork` WRITE;
/*!40000 ALTER TABLE `t_EUtraNetwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EUtraNetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EUtranCellFDD`
--

DROP TABLE IF EXISTS `t_EUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_acBarringForCsfb` varchar(100) DEFAULT NULL,
  `f_acBarringForEmergency` varchar(100) DEFAULT NULL,
  `f_acBarringForMoData` varchar(100) DEFAULT NULL,
  `f_acBarringForMoSignalling` varchar(100) DEFAULT NULL,
  `f_acBarringInfoPresent` varchar(100) DEFAULT NULL,
  `f_acBarringPlmnPabEnabled` varchar(100) DEFAULT NULL,
  `f_acBarringPresence` text,
  `f_acBarringSkipForMmtelVideo` varchar(100) DEFAULT NULL,
  `f_acBarringSkipForMmtelVoice` varchar(100) DEFAULT NULL,
  `f_acBarringSkipForSms` varchar(100) DEFAULT NULL,
  `f_activePlmnList` varchar(100) DEFAULT NULL,
  `f_activeServiceAreaId` varchar(100) DEFAULT NULL,
  `f_adaptiveCfiHoProhibit` varchar(100) DEFAULT NULL,
  `f_additionalFreqBandList` varchar(100) DEFAULT NULL,
  `f_additionalMultipleNSPmax` varchar(100) DEFAULT NULL,
  `f_additionalPlmnAlarmSupprList` varchar(100) DEFAULT NULL,
  `f_additionalPlmnList` varchar(255) DEFAULT NULL,
  `f_additionalPlmnReservedList` varchar(100) DEFAULT NULL,
  `f_additionalSpectrumEmissionValues` varchar(100) DEFAULT NULL,
  `f_additionalUpperLayerIndList` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_advCellSupAction` varchar(100) DEFAULT NULL,
  `f_advCellSupSensitivity` varchar(100) DEFAULT NULL,
  `f_ailgActive` varchar(100) DEFAULT NULL,
  `f_ailgAutoRestartEnabled` varchar(100) DEFAULT NULL,
  `f_ailgRef` varchar(100) DEFAULT NULL,
  `f_allocThrPucchFormat1` varchar(100) DEFAULT NULL,
  `f_allocTimerPucchFormat1` varchar(100) DEFAULT NULL,
  `f_alpha` varchar(100) DEFAULT NULL,
  `f_altitude` varchar(100) DEFAULT NULL,
  `f_arpPriorityLevelForSPIFHo` varchar(255) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_bcCdma2000SysTimeType` varchar(100) DEFAULT NULL,
  `f_beamWeightSet16Tr` varchar(100) DEFAULT NULL,
  `f_beamWeightSet16TrTm9` varchar(100) DEFAULT NULL,
  `f_bsrThreshold` varchar(100) DEFAULT NULL,
  `f_caPrioThreshold` varchar(100) DEFAULT NULL,
  `f_catm1SupportEnabled` varchar(100) DEFAULT NULL,
  `f_catmMbmsDlSubframes` varchar(100) DEFAULT NULL,
  `f_cceDynUeAdmCtrlOverloadThr` varchar(100) DEFAULT NULL,
  `f_cceDynUeAdmCtrlRetDiffThr` varchar(100) DEFAULT NULL,
  `f_cellBarred` varchar(100) DEFAULT NULL,
  `f_cellCapMaxCellSubCap` varchar(100) DEFAULT NULL,
  `f_cellCapMinCellSubCap` varchar(100) DEFAULT NULL,
  `f_cellCapMinMaxWriProt` varchar(100) DEFAULT NULL,
  `f_cellDownlinkCaCapacity` varchar(100) DEFAULT NULL,
  `f_cellId` varchar(100) DEFAULT NULL,
  `f_cellRange` varchar(100) DEFAULT NULL,
  `f_cellSubscriptionCapacity` varchar(100) DEFAULT NULL,
  `f_cfraEnable` varchar(100) DEFAULT NULL,
  `f_changeNotification` text,
  `f_channelSelectionSetSize` varchar(100) DEFAULT NULL,
  `f_cioLowerLimitAdjBySon` varchar(100) DEFAULT NULL,
  `f_cioUpperLimitAdjBySon` varchar(100) DEFAULT NULL,
  `f_clusteredPuschMprFactor` varchar(100) DEFAULT NULL,
  `f_commonSrPeriodicity` varchar(100) DEFAULT NULL,
  `f_confidence` varchar(100) DEFAULT NULL,
  `f_covTriggerdBlindHoAllowed` varchar(100) DEFAULT NULL,
  `f_covTriggerdBlindHoAllowedBr` varchar(100) DEFAULT NULL,
  `f_crsGain` varchar(100) DEFAULT NULL,
  `f_csiRsConfigType` varchar(100) DEFAULT NULL,
  `f_csiRsConfigType8TxFDD` varchar(100) DEFAULT NULL,
  `f_deallocThrPucchFormat1` varchar(100) DEFAULT NULL,
  `f_deallocTimerPucchFormat1` varchar(100) DEFAULT NULL,
  `f_diffAdmCtrlFilteringProfRef` varchar(100) DEFAULT NULL,
  `f_dl256QamEnabled` varchar(100) DEFAULT NULL,
  `f_dlBlerTargetEnabled` varchar(100) DEFAULT NULL,
  `f_dlChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_dlConfigurableFrequencyStart` varchar(100) DEFAULT NULL,
  `f_dlDynUeAdmCtrlOverloadThr` varchar(100) DEFAULT NULL,
  `f_dlDynUeAdmCtrlRetDiffThr` varchar(100) DEFAULT NULL,
  `f_dlFrequencyAllocationProportion` varchar(100) DEFAULT NULL,
  `f_dlInterferenceManagementActive` varchar(100) DEFAULT NULL,
  `f_dlInternalChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_dlPowerChangeRate` varchar(100) DEFAULT NULL,
  `f_dlPowerRampUpInitRatio` varchar(100) DEFAULT NULL,
  `f_dlPowerRampUpRate` varchar(100) DEFAULT NULL,
  `f_dlPowerRatio` varchar(100) DEFAULT NULL,
  `f_dlPowerState` varchar(100) DEFAULT NULL,
  `f_drxActive` varchar(100) DEFAULT NULL,
  `f_dsrTransMax` varchar(100) DEFAULT NULL,
  `f_dummyCdmaBandClass` varchar(100) DEFAULT NULL,
  `f_dynLoadCtrlMinNewConn` varchar(100) DEFAULT NULL,
  `f_dynUeAdmCtrlEnabled` varchar(100) DEFAULT NULL,
  `f_dynUeAdmCtrlFilterConst` varchar(100) DEFAULT NULL,
  `f_dynUlResourceAllocEnabled` varchar(100) DEFAULT NULL,
  `f_eDrxAllowed` varchar(100) DEFAULT NULL,
  `f_eDrxUeType` varchar(100) DEFAULT NULL,
  `f_eUlFssSwitchThresh` varchar(100) DEFAULT NULL,
  `f_eUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_earfcndl` varchar(100) DEFAULT NULL,
  `f_earfcnul` varchar(100) DEFAULT NULL,
  `f_elcEnabled` varchar(100) DEFAULT NULL,
  `f_elcLongDrxCycle` varchar(100) DEFAULT NULL,
  `f_emergencyAreaId` varchar(100) DEFAULT NULL,
  `f_enableDrxAwareRlcArq` varchar(100) DEFAULT NULL,
  `f_enableServiceSpecificHARQ` varchar(100) DEFAULT NULL,
  `f_enableSinrUplinkClpc` varchar(100) DEFAULT NULL,
  `f_enableUeAssistedAdaptiveDrx` varchar(100) DEFAULT NULL,
  `f_enableUeAssistedSigReduction` varchar(100) DEFAULT NULL,
  `f_endcAllowedPlmnList` varchar(100) DEFAULT NULL,
  `f_eranUlCompUserSelSinrHys` varchar(100) DEFAULT NULL,
  `f_eranUlCompUserSelSinrThr` varchar(100) DEFAULT NULL,
  `f_estCellCapUsableFraction` varchar(100) DEFAULT NULL,
  `f_eutranCellCoverage` varchar(100) DEFAULT NULL,
  `f_eutranCellPolygon` varchar(100) DEFAULT NULL,
  `f_expectedMaxNoOfUsersInCell` varchar(100) DEFAULT NULL,
  `f_extGUtranCellRef` varchar(100) DEFAULT NULL,
  `f_filterUeDlThpTimeThr` varchar(100) DEFAULT NULL,
  `f_filterUeDlThpVolThr` varchar(100) DEFAULT NULL,
  `f_frameStartOffset` varchar(100) DEFAULT NULL,
  `f_freqBand` varchar(100) DEFAULT NULL,
  `f_gpsTimeSFN0DecimalSecond` varchar(100) DEFAULT NULL,
  `f_gpsTimeSFN0Seconds` varchar(100) DEFAULT NULL,
  `f_harqOffsetDl` varchar(100) DEFAULT NULL,
  `f_harqOffsetUl` varchar(100) DEFAULT NULL,
  `f_highBasebandPriority` varchar(100) DEFAULT NULL,
  `f_highSpeedUEActive` varchar(100) DEFAULT NULL,
  `f_highestSupportedCeLevelBr` varchar(100) DEFAULT NULL,
  `f_hoOptAdjThresholdAbs` varchar(100) DEFAULT NULL,
  `f_hoOptAdjThresholdAbsQci1` varchar(100) DEFAULT NULL,
  `f_hoOptAdjThresholdPerc` varchar(100) DEFAULT NULL,
  `f_hoOptAdjThresholdPercQci1` varchar(100) DEFAULT NULL,
  `f_hoOptStatNum` varchar(100) DEFAULT NULL,
  `f_hoOptStatNumQci1` varchar(100) DEFAULT NULL,
  `f_hoOptStatTime` varchar(100) DEFAULT NULL,
  `f_hostingDigitalUnit` varchar(255) DEFAULT NULL,
  `f_hpueCaSwitchHyst` varchar(100) DEFAULT NULL,
  `f_hpueCaSwitchThres` varchar(100) DEFAULT NULL,
  `f_hpueCaSwitchTimeToTrigger` varchar(100) DEFAULT NULL,
  `f_idleModePrioAtReleaseRef` varchar(100) DEFAULT NULL,
  `f_iflbAbEnabled` varchar(100) DEFAULT NULL,
  `f_includeLcgInMacUeThp` varchar(100) DEFAULT NULL,
  `f_initCdma2000SysTimeType` varchar(100) DEFAULT NULL,
  `f_initialBufferSizeDefault` varchar(100) DEFAULT NULL,
  `f_interEnbUlCompUserSelSinrHys` varchar(100) DEFAULT NULL,
  `f_interEnbUlCompUserSelSinrThr` varchar(100) DEFAULT NULL,
  `f_interferenceThresholdSinrClpc` varchar(100) DEFAULT NULL,
  `f_isDlOnly` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lastSchedLinkAdaptEnabled` varchar(100) DEFAULT NULL,
  `f_latencyLongThreshold` varchar(100) DEFAULT NULL,
  `f_latitude` varchar(100) DEFAULT NULL,
  `f_lbEUtranAcceptOffloadThreshold` varchar(100) DEFAULT NULL,
  `f_lbEUtranCellOffloadCapacity` varchar(100) DEFAULT NULL,
  `f_lbEUtranTriggerOffloadThreshold` varchar(100) DEFAULT NULL,
  `f_lbTpNonQualFraction` varchar(100) DEFAULT NULL,
  `f_lbTpRankThreshMin` varchar(100) DEFAULT NULL,
  `f_lbUtranOffloadThreshold` varchar(100) DEFAULT NULL,
  `f_lbabBarringPriorityLevel` varchar(100) DEFAULT NULL,
  `f_lbabDecr` varchar(100) DEFAULT NULL,
  `f_lbabIncr` varchar(100) DEFAULT NULL,
  `f_lbabMinBarringFactor` varchar(100) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio1` varchar(100) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio2` varchar(100) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio3` varchar(100) DEFAULT NULL,
  `f_lbabMinBarringFactorPrio4` varchar(100) DEFAULT NULL,
  `f_lbabPeriod` varchar(100) DEFAULT NULL,
  `f_lbabThreshRejectRateHigh` varchar(100) DEFAULT NULL,
  `f_lbabThreshRejectRateLow` varchar(100) DEFAULT NULL,
  `f_lbabThreshTimeHigh` varchar(100) DEFAULT NULL,
  `f_lbabThreshTimeLow` varchar(100) DEFAULT NULL,
  `f_lessPrbUsageThreshold` varchar(100) DEFAULT NULL,
  `f_liteMcsReduction` varchar(100) DEFAULT NULL,
  `f_loadBasedBarringFactor` varchar(100) DEFAULT NULL,
  `f_loadBasedCaEnabled` varchar(255) DEFAULT NULL,
  `f_loadBasedCaMsrThr` varchar(255) DEFAULT NULL,
  `f_longitude` varchar(255) DEFAULT NULL,
  `f_mappingInfo` varchar(255) DEFAULT NULL,
  `f_mappingInfoCe` varchar(255) DEFAULT NULL,
  `f_maxNoClusteredPuschAlloc` varchar(100) DEFAULT NULL,
  `f_maxSentCrsAssistCells` varchar(100) DEFAULT NULL,
  `f_maxSoftLockBackoffTime` varchar(100) DEFAULT NULL,
  `f_maxValidSubframeDlBr` varchar(100) DEFAULT NULL,
  `f_mbsfnSubframesForTm9` varchar(100) DEFAULT NULL,
  `f_measBasedElcControl` varchar(100) DEFAULT NULL,
  `f_measCellGroupCellRef` varchar(100) DEFAULT NULL,
  `f_measCellGroupUeRef` varchar(100) DEFAULT NULL,
  `f_measGapShareSchemeCeABr` varchar(100) DEFAULT NULL,
  `f_mfbiFreqBandIndPrio` varchar(100) DEFAULT NULL,
  `f_minBestCellHoAttempts` varchar(100) DEFAULT NULL,
  `f_mobCtrlAtPoorCovActive` varchar(100) DEFAULT NULL,
  `f_modificationPeriodCoeff` varchar(100) DEFAULT NULL,
  `f_msg3FrequencyAllocationBr` varchar(100) DEFAULT NULL,
  `f_multipleNSPmaxReqMapping` varchar(100) DEFAULT NULL,
  `f_nRResCoordPattern` varchar(100) DEFAULT NULL,
  `f_networkSignallingValue` varchar(100) DEFAULT NULL,
  `f_networkSignallingValueCa` varchar(100) DEFAULT NULL,
  `f_noConsecutiveSubframes` varchar(100) DEFAULT NULL,
  `f_noOfChannelSelectionSets` varchar(100) DEFAULT NULL,
  `f_noOfCrsPorts` varchar(100) DEFAULT NULL,
  `f_noOfEnhAdptReTxCand` varchar(100) DEFAULT NULL,
  `f_noOfPucchCqiUsers` varchar(100) DEFAULT NULL,
  `f_noOfPucchFormat3PrbPairs` varchar(100) DEFAULT NULL,
  `f_noOfPucchSrUsers` varchar(100) DEFAULT NULL,
  `f_noOfUlImprovedUe` varchar(100) DEFAULT NULL,
  `f_nrOfPreallocatedSrRes` varchar(100) DEFAULT NULL,
  `f_ns05FullBandSchedEnabled` varchar(100) DEFAULT NULL,
  `f_ns05FullBandUsersInCellThres` varchar(100) DEFAULT NULL,
  `f_ns05LowBandSchedMode` varchar(100) DEFAULT NULL,
  `f_ns05PathlossOffsetThres` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_orientMajorAxis` varchar(100) DEFAULT NULL,
  `f_otdoaCheckEnabled` varchar(100) DEFAULT NULL,
  `f_otdoaSuplActive` varchar(100) DEFAULT NULL,
  `f_outOfCoverageSrTimerPeriodicity` varchar(100) DEFAULT NULL,
  `f_outOfCoverageThreshold` varchar(100) DEFAULT NULL,
  `f_pMaxServingCell` varchar(100) DEFAULT NULL,
  `f_pZeroNominalPucch` varchar(100) DEFAULT NULL,
  `f_pZeroNominalPusch` varchar(100) DEFAULT NULL,
  `f_pciConflict` varchar(100) DEFAULT NULL,
  `f_pciConflictCell` text,
  `f_pciDetectingCell` text,
  `f_pdcchCfiMode` varchar(100) DEFAULT NULL,
  `f_pdcchCovImproveDtx` varchar(100) DEFAULT NULL,
  `f_pdcchCovImproveQci1` varchar(100) DEFAULT NULL,
  `f_pdcchCovImproveSrb` varchar(100) DEFAULT NULL,
  `f_pdcchLaGinrMargin` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdj` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdjPCell` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopInitialAdjVolte` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopUpStep` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopUpStepPCell` varchar(100) DEFAULT NULL,
  `f_pdcchOuterLoopUpStepVolte` varchar(100) DEFAULT NULL,
  `f_pdcchPowerBoostMax` varchar(100) DEFAULT NULL,
  `f_pdcchTargetBler` varchar(100) DEFAULT NULL,
  `f_pdcchTargetBlerPCell` varchar(100) DEFAULT NULL,
  `f_pdcchTargetBlerVolte` varchar(100) DEFAULT NULL,
  `f_pdschMaxNrOfPrbsPerUe` varchar(100) DEFAULT NULL,
  `f_pdschTypeBGain` varchar(100) DEFAULT NULL,
  `f_physicalLayerCellId` varchar(100) DEFAULT NULL,
  `f_physicalLayerCellIdGroup` varchar(100) DEFAULT NULL,
  `f_physicalLayerSubCellId` varchar(100) DEFAULT NULL,
  `f_plmn1AbConfProfileRef` varchar(100) DEFAULT NULL,
  `f_plmn2AbConfProfileRef` varchar(100) DEFAULT NULL,
  `f_plmn3AbConfProfileRef` varchar(100) DEFAULT NULL,
  `f_plmnPabBarringPriorityLevel` varchar(100) DEFAULT NULL,
  `f_prachFrequencyAllocation` varchar(100) DEFAULT NULL,
  `f_preambleInitialReceivedTargetPower` varchar(100) DEFAULT NULL,
  `f_prescheduling` varchar(100) DEFAULT NULL,
  `f_primaryPlmnAlarmSuppr` varchar(100) DEFAULT NULL,
  `f_primaryPlmnReserved` varchar(100) DEFAULT NULL,
  `f_primaryPsdOffset` varchar(100) DEFAULT NULL,
  `f_primaryUpperLayerInd` varchar(100) DEFAULT NULL,
  `f_prioAdditionalFreqBandList` varchar(100) DEFAULT NULL,
  `f_prioHpueCapability` varchar(100) DEFAULT NULL,
  `f_prsConfigIndex` varchar(100) DEFAULT NULL,
  `f_prsConfigIndexMapped` varchar(100) DEFAULT NULL,
  `f_prsMutingPattern` varchar(100) DEFAULT NULL,
  `f_prsMutingPatternLen` varchar(100) DEFAULT NULL,
  `f_prsPeriod` varchar(100) DEFAULT NULL,
  `f_prsPowerBoosting` varchar(100) DEFAULT NULL,
  `f_prsTransmisScheme` varchar(100) DEFAULT NULL,
  `f_ptmCellProfileRef` varchar(100) DEFAULT NULL,
  `f_pucchOverdimensioning` varchar(100) DEFAULT NULL,
  `f_puschFrequencyAllocationBr` varchar(100) DEFAULT NULL,
  `f_puschMaxNrOfPrbsPerUe` varchar(100) DEFAULT NULL,
  `f_puschNcpChannelEstWindowSize` varchar(100) DEFAULT NULL,
  `f_puschPwrOffset256qam` varchar(100) DEFAULT NULL,
  `f_puschPwrOffset64qam` varchar(100) DEFAULT NULL,
  `f_qQualMin` varchar(100) DEFAULT NULL,
  `f_qQualMinOffset` varchar(100) DEFAULT NULL,
  `f_qQualMinRsrqCe` varchar(100) DEFAULT NULL,
  `f_qRxLevMin` varchar(100) DEFAULT NULL,
  `f_qRxLevMinCe` varchar(100) DEFAULT NULL,
  `f_qRxLevMinOffset` varchar(100) DEFAULT NULL,
  `f_qciTableRef` text,
  `f_rachRootSequence` varchar(100) DEFAULT NULL,
  `f_rateShapingActive` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_resourcePartitionGroupRef` varchar(100) DEFAULT NULL,
  `f_rtpTimeout` varchar(100) DEFAULT NULL,
  `f_rwrSearchZoneAllowed` varchar(100) DEFAULT NULL,
  `f_rxSinrTargetClpc` varchar(100) DEFAULT NULL,
  `f_sCellHandlingAtVolteCall` varchar(255) DEFAULT NULL,
  `f_schedulingInfoSib1BrMod` varchar(100) DEFAULT NULL,
  `f_sdmActive` varchar(100) DEFAULT NULL,
  `f_sectorCarrierRef` varchar(255) DEFAULT NULL,
  `f_servOrPrioIFHoSetupBearer` varchar(100) DEFAULT NULL,
  `f_servOrPrioRedirectEnabled` varchar(255) DEFAULT NULL,
  `f_servOrPrioTriggeredErabAction` varchar(255) DEFAULT NULL,
  `f_servOrPrioTriggeredIFHo` varchar(100) DEFAULT NULL,
  `f_siPeriodicity` varchar(255) DEFAULT NULL,
  `f_siPeriodicityBr` varchar(255) DEFAULT NULL,
  `f_siValidityTimeBr` varchar(100) DEFAULT NULL,
  `f_siWindowLength` varchar(100) DEFAULT NULL,
  `f_spectrumEmissionReqMapping` varchar(100) DEFAULT NULL,
  `f_spifhoSetupBearerAtInitialCtxtSetup` varchar(100) DEFAULT NULL,
  `f_srDetectHighThres` varchar(100) DEFAULT NULL,
  `f_srProcessingLevel` varchar(100) DEFAULT NULL,
  `f_srvccDelayTimer` text,
  `f_ssacBarringForMMTELVideo` varchar(100) DEFAULT NULL,
  `f_ssacBarringForMMTELVoice` varchar(100) DEFAULT NULL,
  `f_systemInformationBlock24` varchar(255) DEFAULT NULL,
  `f_systemInformationBlock3` text,
  `f_systemInformationBlock6` varchar(100) DEFAULT NULL,
  `f_systemInformationBlock7` varchar(100) DEFAULT NULL,
  `f_systemInformationBlock8` varchar(255) DEFAULT NULL,
  `f_tReorderingAutoConfiguration` varchar(100) DEFAULT NULL,
  `f_tTimeAlignmentTimer` varchar(100) DEFAULT NULL,
  `f_tTimeAlignmentTimerBr` varchar(100) DEFAULT NULL,
  `f_tUeBlockingTimer` varchar(100) DEFAULT NULL,
  `f_tac` varchar(100) DEFAULT NULL,
  `f_threshServingLow` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_tm9Tm4ModeSwitchingEnabled` varchar(100) DEFAULT NULL,
  `f_transmissionMode` varchar(100) DEFAULT NULL,
  `f_ttiBundlingAfterHo` varchar(100) DEFAULT NULL,
  `f_ttiBundlingAfterReest` varchar(100) DEFAULT NULL,
  `f_ttiBundlingAtSetup` varchar(100) DEFAULT NULL,
  `f_ttiBundlingSwitchThres` varchar(100) DEFAULT NULL,
  `f_ttiBundlingSwitchThresHyst` varchar(100) DEFAULT NULL,
  `f_ul256qamEnabled` varchar(100) DEFAULT NULL,
  `f_ul64qamEnabled` varchar(100) DEFAULT NULL,
  `f_ulBlerTargetEnabled` varchar(100) DEFAULT NULL,
  `f_ulChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_ulConfigurableFrequencyStart` varchar(100) DEFAULT NULL,
  `f_ulDynUeAdmCtrlOverloadThr` varchar(100) DEFAULT NULL,
  `f_ulDynUeAdmCtrlRetDiffThr` varchar(100) DEFAULT NULL,
  `f_ulFrequencyAllocationProportion` varchar(100) DEFAULT NULL,
  `f_ulHarqVolteBlerTarget` varchar(100) DEFAULT NULL,
  `f_ulImprovedUeSchedLastEnabled` varchar(100) DEFAULT NULL,
  `f_ulInterferenceManagementActive` varchar(100) DEFAULT NULL,
  `f_ulInternalChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_ulPsdLoadThresholdSinrClpc` varchar(100) DEFAULT NULL,
  `f_ulSCellPriority` varchar(100) DEFAULT NULL,
  `f_ulSchedCtrlForOocUesEnabled` varchar(100) DEFAULT NULL,
  `f_ulSrsEnable` varchar(100) DEFAULT NULL,
  `f_ulTrigActive` varchar(100) DEFAULT NULL,
  `f_ulTxPsdDistrThr` varchar(100) DEFAULT NULL,
  `f_uncertAltitude` varchar(100) DEFAULT NULL,
  `f_uncertSemiMajor` varchar(100) DEFAULT NULL,
  `f_uncertSemiMinor` varchar(100) DEFAULT NULL,
  `f_upperLayerIndR15Usage` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_validDlBrSubframes` varchar(100) DEFAULT NULL,
  `f_zzzTemporary14` varchar(100) DEFAULT NULL,
  `f_zzzTemporary17` varchar(100) DEFAULT NULL,
  `f_zzzTemporary21` varchar(100) DEFAULT NULL,
  `f_zzzTemporary22` varchar(100) DEFAULT NULL,
  `f_zzzTemporary23` varchar(100) DEFAULT NULL,
  `f_zzzTemporary24` varchar(100) DEFAULT NULL,
  `f_zzzTemporary29` varchar(100) DEFAULT NULL,
  `f_zzzTemporary30` varchar(100) DEFAULT NULL,
  `f_zzzTemporary31` varchar(100) DEFAULT NULL,
  `f_zzzTemporary32` varchar(100) DEFAULT NULL,
  `f_zzzTemporary33` varchar(100) DEFAULT NULL,
  `f_zzzTemporary41` varchar(100) DEFAULT NULL,
  `f_zzzTemporary42` varchar(100) DEFAULT NULL,
  `f_zzzTemporary43` varchar(100) DEFAULT NULL,
  `f_zzzTemporary50` varchar(100) DEFAULT NULL,
  `f_zzzTemporary57` varchar(100) DEFAULT NULL,
  `f_zzzTemporary59` varchar(100) DEFAULT NULL,
  `f_zzzTemporary60` varchar(100) DEFAULT NULL,
  `f_zzzTemporary61` varchar(100) DEFAULT NULL,
  `f_zzzTemporary62` varchar(100) DEFAULT NULL,
  `f_zzzTemporary63` varchar(100) DEFAULT NULL,
  `f_zzzTemporary64` varchar(100) DEFAULT NULL,
  `f_zzzTemporary65` varchar(100) DEFAULT NULL,
  `f_zzzTemporary66` varchar(100) DEFAULT NULL,
  `f_zzzTemporary67` varchar(100) DEFAULT NULL,
  `f_zzzTemporary68` varchar(100) DEFAULT NULL,
  `f_zzzTemporary69` varchar(100) DEFAULT NULL,
  `f_zzzTemporary70` varchar(100) DEFAULT NULL,
  `f_zzzTemporary71` varchar(100) DEFAULT NULL,
  `f_zzzTemporary72` varchar(100) DEFAULT NULL,
  `f_zzzTemporary73` varchar(100) DEFAULT NULL,
  `f_zzzTemporary74` varchar(100) DEFAULT NULL,
  `f_zzzTemporary75` varchar(100) DEFAULT NULL,
  `f_zzzTemporary76` varchar(100) DEFAULT NULL,
  `f_zzzTemporary77` varchar(100) DEFAULT NULL,
  `f_zzzTemporary78` varchar(100) DEFAULT NULL,
  `f_zzzTemporary79` varchar(100) DEFAULT NULL,
  `f_zzzTemporary80` varchar(100) DEFAULT NULL,
  `f_zzzTemporary81` varchar(100) DEFAULT NULL,
  `f_zzzTemporary82` varchar(100) DEFAULT NULL,
  `f_zzzTemporary83` varchar(100) DEFAULT NULL,
  `f_zzzTemporary84` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EUtranCellFDD`
--

LOCK TABLES `t_EUtranCellFDD` WRITE;
/*!40000 ALTER TABLE `t_EUtranCellFDD` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EUtranCellFDD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EUtranCellRelation`
--

DROP TABLE IF EXISTS `t_EUtranCellRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranCellRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_EUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_amoAllowed` varchar(100) DEFAULT NULL,
  `f_amoState` varchar(100) DEFAULT NULL,
  `f_cellIndividualOffsetEUtran` varchar(100) DEFAULT NULL,
  `f_cellIndividualOffsetEUtranQci1` varchar(100) DEFAULT NULL,
  `f_coverageIndicator` varchar(100) DEFAULT NULL,
  `f_coverageIndicatorBr` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_crsAssistanceInfoPriority` varchar(100) DEFAULT NULL,
  `f_eUtranCellRelationId` varchar(100) DEFAULT NULL,
  `f_eranExternalUlCompGroupAvail` varchar(100) DEFAULT NULL,
  `f_eranUlCompCoopCellAllowed` varchar(100) DEFAULT NULL,
  `f_hoSuccLevel` varchar(100) DEFAULT NULL,
  `f_ieNBUlCompCoopCellAllowed` varchar(100) DEFAULT NULL,
  `f_includeInSystemInformation` varchar(100) DEFAULT NULL,
  `f_incomingLoadBalancing` varchar(100) DEFAULT NULL,
  `f_isHoAllowed` varchar(100) DEFAULT NULL,
  `f_isHoAllowedBr` varchar(100) DEFAULT NULL,
  `f_isRemoveAllowed` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lbBnrAllowed` varchar(100) DEFAULT NULL,
  `f_lbCovIndicated` varchar(100) DEFAULT NULL,
  `f_loadBalancing` varchar(100) DEFAULT NULL,
  `f_mobilityStatus` varchar(100) DEFAULT NULL,
  `f_neighborCellRef` varchar(255) DEFAULT NULL,
  `f_qOffsetCellEUtran` varchar(100) DEFAULT NULL,
  `f_sCellCandidate` varchar(100) DEFAULT NULL,
  `f_sCellPriority` varchar(100) DEFAULT NULL,
  `f_sleepModeCapacityCell` varchar(100) DEFAULT NULL,
  `f_sleepModeCovCellCandidate` varchar(100) DEFAULT NULL,
  `f_sleepModeCoverageCell` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EUtranCellRelation`
--

LOCK TABLES `t_EUtranCellRelation` WRITE;
/*!40000 ALTER TABLE `t_EUtranCellRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EUtranCellRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EUtranFreqRelation`
--

DROP TABLE IF EXISTS `t_EUtranFreqRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranFreqRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_a3RsrpFreqOffsetAdjustment` varchar(100) DEFAULT NULL,
  `f_a3RsrqFreqOffsetAdjustment` varchar(100) DEFAULT NULL,
  `f_a5OffsetPerPC` varchar(100) DEFAULT NULL,
  `f_a5Thr1RsrpFreqOffset` varchar(100) DEFAULT NULL,
  `f_a5Thr1RsrqFreqOffset` varchar(100) DEFAULT NULL,
  `f_a5Thr2RsrpFreqOffset` varchar(100) DEFAULT NULL,
  `f_a5Thr2RsrqFreqOffset` varchar(100) DEFAULT NULL,
  `f_allowedMeasBandwidth` varchar(100) DEFAULT NULL,
  `f_allowedPlmnList` varchar(100) DEFAULT NULL,
  `f_amoAllowed` varchar(100) DEFAULT NULL,
  `f_anrMeasOn` varchar(100) DEFAULT NULL,
  `f_arpPrio` varchar(100) DEFAULT NULL,
  `f_atoAllowed` varchar(100) DEFAULT NULL,
  `f_blackListEntry` varchar(100) DEFAULT NULL,
  `f_blackListEntryIdleMode` varchar(100) DEFAULT NULL,
  `f_caFreqPriority` varchar(100) DEFAULT NULL,
  `f_caFreqProportion` varchar(100) DEFAULT NULL,
  `f_caTriggeredRedirectionActive` varchar(100) DEFAULT NULL,
  `f_candNeighborRel` text,
  `f_cellReselectionPriority` varchar(100) DEFAULT NULL,
  `f_cellSleepCovCellMeasOn` varchar(100) DEFAULT NULL,
  `f_cioQci1Enabled` varchar(100) DEFAULT NULL,
  `f_connectedModeMobilityPrio` varchar(100) DEFAULT NULL,
  `f_connectedModeMobilityPrioBr` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_csgCellTargetIdType` varchar(100) DEFAULT NULL,
  `f_csgPhysCellId` varchar(100) DEFAULT NULL,
  `f_csgPhysCellIdRange` varchar(100) DEFAULT NULL,
  `f_csmUeCapMonitorEnabled` varchar(100) DEFAULT NULL,
  `f_csmUeCapMonitorTime` varchar(100) DEFAULT NULL,
  `f_eUtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_eutranFreqToQciProfileRelation` varchar(100) DEFAULT NULL,
  `f_eutranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_hybridCsgPhysCellId` varchar(100) DEFAULT NULL,
  `f_hybridCsgPhysCellIdRange` varchar(100) DEFAULT NULL,
  `f_interFreqMeasType` varchar(100) DEFAULT NULL,
  `f_interFreqMeasTypeUlSinr` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lbA5Thr1RsrpFreqOffset` varchar(100) DEFAULT NULL,
  `f_lbActivationThreshold` varchar(100) DEFAULT NULL,
  `f_lbBnrPolicy` varchar(100) DEFAULT NULL,
  `f_mdtMeasOn` varchar(100) DEFAULT NULL,
  `f_mobilityAction` varchar(100) DEFAULT NULL,
  `f_mobilityActionBr` varchar(100) DEFAULT NULL,
  `f_neighCellConfig` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciCIO` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciTargetIdType` varchar(100) DEFAULT NULL,
  `f_nonPlannedPhysCellId` varchar(100) DEFAULT NULL,
  `f_nonPlannedPhysCellIdRange` varchar(100) DEFAULT NULL,
  `f_pMax` varchar(100) DEFAULT NULL,
  `f_presenceAntennaPort1` varchar(100) DEFAULT NULL,
  `f_qOffsetFreq` varchar(100) DEFAULT NULL,
  `f_qQualMin` varchar(100) DEFAULT NULL,
  `f_qQualMinRsrqCe` varchar(100) DEFAULT NULL,
  `f_qRxLevMin` varchar(100) DEFAULT NULL,
  `f_qRxLevMinCe` varchar(100) DEFAULT NULL,
  `f_tReselectionEutra` varchar(100) DEFAULT NULL,
  `f_tReselectionEutraCe` varchar(100) DEFAULT NULL,
  `f_tReselectionEutraSfHigh` varchar(100) DEFAULT NULL,
  `f_tReselectionEutraSfMedium` varchar(100) DEFAULT NULL,
  `f_threshXHigh` varchar(100) DEFAULT NULL,
  `f_threshXHighQ` varchar(100) DEFAULT NULL,
  `f_threshXLow` varchar(100) DEFAULT NULL,
  `f_threshXLowQ` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_voicePrio` varchar(100) DEFAULT NULL,
  `f_voicePrioBr` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EUtranFreqRelation`
--

LOCK TABLES `t_EUtranFreqRelation` WRITE;
/*!40000 ALTER TABLE `t_EUtranFreqRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EUtranFreqRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EUtranFrequency`
--

DROP TABLE IF EXISTS `t_EUtranFrequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EUtranFrequency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_additionalFreqBandList` varchar(100) DEFAULT NULL,
  `f_arfcnValueEUtranDl` varchar(100) DEFAULT NULL,
  `f_eUtranFrequencyId` varchar(100) DEFAULT NULL,
  `f_excludeAdditionalFreqBandList` varchar(100) DEFAULT NULL,
  `f_freqBand` varchar(100) DEFAULT NULL,
  `f_mfbiFreqBandIndPrio` varchar(100) DEFAULT NULL,
  `f_prioAdditionalFreqBandList` text,
  `f_reservedBy` text,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryList1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EUtranFrequency`
--

LOCK TABLES `t_EUtranFrequency` WRITE;
/*!40000 ALTER TABLE `t_EUtranFrequency` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EUtranFrequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EcBus`
--

DROP TABLE IF EXISTS `t_EcBus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EcBus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_ecBusConnectionType` varchar(100) DEFAULT NULL,
  `f_ecBusConnectorRef` varchar(255) DEFAULT NULL,
  `f_ecBusId` varchar(100) DEFAULT NULL,
  `f_equipmentSupportFunctionRef` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EcBus`
--

LOCK TABLES `t_EcBus` WRITE;
/*!40000 ALTER TABLE `t_EcBus` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EcBus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EcPort`
--

DROP TABLE IF EXISTS `t_EcPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EcPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_cascadingOrder` varchar(100) DEFAULT NULL,
  `f_ecBusRef` varchar(100) DEFAULT NULL,
  `f_ecPortId` varchar(100) DEFAULT NULL,
  `f_hubPosition` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EcPort`
--

LOCK TABLES `t_EcPort` WRITE;
/*!40000 ALTER TABLE `t_EcPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EcPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EmergencyUnlock`
--

DROP TABLE IF EXISTS `t_EmergencyUnlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EmergencyUnlock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_activationState` varchar(100) DEFAULT NULL,
  `f_activationsLeft` varchar(100) DEFAULT NULL,
  `f_emergencyUnlockId` varchar(100) DEFAULT NULL,
  `f_expiration` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EmergencyUnlock`
--

LOCK TABLES `t_EmergencyUnlock` WRITE;
/*!40000 ALTER TABLE `t_EmergencyUnlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EmergencyUnlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EndcProfilePredefined`
--

DROP TABLE IF EXISTS `t_EndcProfilePredefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EndcProfilePredefined` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_endcProfilePredefinedId` varchar(100) DEFAULT NULL,
  `f_meNbS1TermReqArpLev` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_splitNotAllowedUeArpLev` varchar(100) DEFAULT NULL,
  `f_userLabelPredefined` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EndcProfilePredefined`
--

LOCK TABLES `t_EndcProfilePredefined` WRITE;
/*!40000 ALTER TABLE `t_EndcProfilePredefined` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EndcProfilePredefined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EnergyMeter`
--

DROP TABLE IF EXISTS `t_EnergyMeter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnergyMeter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_consumedEnergyMeasurementRef` varchar(100) DEFAULT NULL,
  `f_energyMeterEnabled` varchar(100) DEFAULT NULL,
  `f_energyMeterId` varchar(100) DEFAULT NULL,
  `f_unitInformation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EnergyMeter`
--

LOCK TABLES `t_EnergyMeter` WRITE;
/*!40000 ALTER TABLE `t_EnergyMeter` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EnergyMeter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EnrollmentAuthority`
--

DROP TABLE IF EXISTS `t_EnrollmentAuthority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentAuthority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_enrollmentAuthorityId` varchar(100) DEFAULT NULL,
  `f_enrollmentAuthorityName` varchar(100) DEFAULT NULL,
  `f_enrollmentCaCertificate` varchar(100) DEFAULT NULL,
  `f_enrollmentCaFingerprint` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EnrollmentAuthority`
--

LOCK TABLES `t_EnrollmentAuthority` WRITE;
/*!40000 ALTER TABLE `t_EnrollmentAuthority` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EnrollmentAuthority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EnrollmentServer`
--

DROP TABLE IF EXISTS `t_EnrollmentServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_EnrollmentServerGroupId` varchar(100) DEFAULT NULL,
  `f_enrollmentInterface` varchar(100) DEFAULT NULL,
  `f_enrollmentServerId` varchar(100) DEFAULT NULL,
  `f_protocol` varchar(100) DEFAULT NULL,
  `f_uri` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EnrollmentServer`
--

LOCK TABLES `t_EnrollmentServer` WRITE;
/*!40000 ALTER TABLE `t_EnrollmentServer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EnrollmentServer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EnrollmentServerGroup`
--

DROP TABLE IF EXISTS `t_EnrollmentServerGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EnrollmentServerGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_enrollmentServerGroupId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EnrollmentServerGroup`
--

LOCK TABLES `t_EnrollmentServerGroup` WRITE;
/*!40000 ALTER TABLE `t_EnrollmentServerGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EnrollmentServerGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Equipment`
--

DROP TABLE IF EXISTS `t_Equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_equipmentId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Equipment`
--

LOCK TABLES `t_Equipment` WRITE;
/*!40000 ALTER TABLE `t_Equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EquipmentDiscovery`
--

DROP TABLE IF EXISTS `t_EquipmentDiscovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EquipmentDiscovery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_antennaDeviceScanInBackground` varchar(100) DEFAULT NULL,
  `f_antennaDeviceScanStatus` varchar(100) DEFAULT NULL,
  `f_dataRate` varchar(100) DEFAULT NULL,
  `f_equipmentDiscoveryId` varchar(100) DEFAULT NULL,
  `f_portConfiguration` varchar(100) DEFAULT NULL,
  `f_portVoltage` varchar(100) DEFAULT NULL,
  `f_sftpPassword` varchar(100) DEFAULT NULL,
  `f_sftpServerIpAddress` varchar(100) DEFAULT NULL,
  `f_sftpServerPath` varchar(100) DEFAULT NULL,
  `f_sftpUsername` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EquipmentDiscovery`
--

LOCK TABLES `t_EquipmentDiscovery` WRITE;
/*!40000 ALTER TABLE `t_EquipmentDiscovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EquipmentDiscovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EquipmentSupportFunction`
--

DROP TABLE IF EXISTS `t_EquipmentSupportFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EquipmentSupportFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_autoCreateExternalNodes` varchar(100) DEFAULT NULL,
  `f_autoCreateUnits` varchar(100) DEFAULT NULL,
  `f_equipmentSupportFunctionId` varchar(100) DEFAULT NULL,
  `f_release` varchar(100) DEFAULT NULL,
  `f_supportFunction` varchar(100) DEFAULT NULL,
  `f_supportSystemControl` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EquipmentSupportFunction`
--

LOCK TABLES `t_EquipmentSupportFunction` WRITE;
/*!40000 ALTER TABLE `t_EquipmentSupportFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EquipmentSupportFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EricssonFilter`
--

DROP TABLE IF EXISTS `t_EricssonFilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EricssonFilter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_LdapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_LdapId` varchar(100) DEFAULT NULL,
  `f_ericssonFilterId` varchar(100) DEFAULT NULL,
  `f_roleAliasesBaseDn` varchar(100) DEFAULT NULL,
  `f_targetBasedAccessControl` varchar(100) DEFAULT NULL,
  `f_version` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EricssonFilter`
--

LOCK TABLES `t_EricssonFilter` WRITE;
/*!40000 ALTER TABLE `t_EricssonFilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EricssonFilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EricssonLeanCarrierFunction`
--

DROP TABLE IF EXISTS `t_EricssonLeanCarrierFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EricssonLeanCarrierFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_disableElcOnVolte` varchar(100) DEFAULT NULL,
  `f_elcDrxOnDurationPostHeating` varchar(100) DEFAULT NULL,
  `f_elcDrxOnDurationPreHeating` varchar(100) DEFAULT NULL,
  `f_elcPdcchCrsMuting` varchar(100) DEFAULT NULL,
  `f_ericssonLeanCarrierFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EricssonLeanCarrierFunction`
--

LOCK TABLES `t_EricssonLeanCarrierFunction` WRITE;
/*!40000 ALTER TABLE `t_EricssonLeanCarrierFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EricssonLeanCarrierFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EthernetPort`
--

DROP TABLE IF EXISTS `t_EthernetPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EthernetPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_admOperatingMode` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_autoNegEnable` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_egressQosClassification` varchar(100) DEFAULT NULL,
  `f_egressQosMarking` varchar(100) DEFAULT NULL,
  `f_egressQosQueueMap` varchar(100) DEFAULT NULL,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_ethernetPortId` varchar(100) DEFAULT NULL,
  `f_holdDownTimer` varchar(100) DEFAULT NULL,
  `f_ingressQosMarking` varchar(100) DEFAULT NULL,
  `f_macAddress` varchar(100) DEFAULT NULL,
  `f_mtu` varchar(100) DEFAULT NULL,
  `f_operOperatingMode` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  `f_supplicant` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EthernetPort`
--

LOCK TABLES `t_EthernetPort` WRITE;
/*!40000 ALTER TABLE `t_EthernetPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EthernetPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Etws`
--

DROP TABLE IF EXISTS `t_Etws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Etws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_etwsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Etws`
--

LOCK TABLES `t_Etws` WRITE;
/*!40000 ALTER TABLE `t_Etws` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Etws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventCapabilities`
--

DROP TABLE IF EXISTS `t_EventCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_eventCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_maxNoOfJobs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventCapabilities`
--

LOCK TABLES `t_EventCapabilities` WRITE;
/*!40000 ALTER TABLE `t_EventCapabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventCapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventFilterType`
--

DROP TABLE IF EXISTS `t_EventFilterType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventFilterType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_eventFilterTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventFilterType`
--

LOCK TABLES `t_EventFilterType` WRITE;
/*!40000 ALTER TABLE `t_EventFilterType` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventFilterType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventGroup`
--

DROP TABLE IF EXISTS `t_EventGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_eventGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventGroup`
--

LOCK TABLES `t_EventGroup` WRITE;
/*!40000 ALTER TABLE `t_EventGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventJob`
--

DROP TABLE IF EXISTS `t_EventJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventJob` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_currentJobState` varchar(100) DEFAULT NULL,
  `f_description` varchar(100) DEFAULT NULL,
  `f_eventFilter` varchar(100) DEFAULT NULL,
  `f_eventGroupRef` varchar(255) DEFAULT NULL,
  `f_eventJobId` varchar(100) DEFAULT NULL,
  `f_eventTypeRef` text,
  `f_fileCompressionType` varchar(100) DEFAULT NULL,
  `f_fileOutputEnabled` varchar(100) DEFAULT NULL,
  `f_jobControl` varchar(100) DEFAULT NULL,
  `f_reportingPeriod` varchar(100) DEFAULT NULL,
  `f_requestedJobState` varchar(100) DEFAULT NULL,
  `f_streamCompressionType` varchar(100) DEFAULT NULL,
  `f_streamDestinationIpAddress` varchar(100) DEFAULT NULL,
  `f_streamDestinationPort` varchar(100) DEFAULT NULL,
  `f_streamOutputEnabled` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventJob`
--

LOCK TABLES `t_EventJob` WRITE;
/*!40000 ALTER TABLE `t_EventJob` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventJob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventProducer`
--

DROP TABLE IF EXISTS `t_EventProducer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventProducer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_eventProducerId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventProducer`
--

LOCK TABLES `t_EventProducer` WRITE;
/*!40000 ALTER TABLE `t_EventProducer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventProducer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_EventType`
--

DROP TABLE IF EXISTS `t_EventType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_EventType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_EventGroupId` varchar(100) DEFAULT NULL,
  `f_eventTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_EventType`
--

LOCK TABLES `t_EventType` WRITE;
/*!40000 ALTER TABLE `t_EventType` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_EventType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ExternalENodeBFunction`
--

DROP TABLE IF EXISTS `t_ExternalENodeBFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalENodeBFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_eNBId` varchar(100) DEFAULT NULL,
  `f_eNodeBPlmnId` varchar(100) DEFAULT NULL,
  `f_eSCellCapacityScaling` varchar(100) DEFAULT NULL,
  `f_eranLinkMaxRttDelay` varchar(100) DEFAULT NULL,
  `f_eranUlCompVlanPortRef` varchar(100) DEFAULT NULL,
  `f_eranVlanPortRef` varchar(100) DEFAULT NULL,
  `f_externalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_interENodeBCAInteractionMode` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_masterEnbFunctionId` varchar(100) DEFAULT NULL,
  `f_mfbiSupport` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_ulTrigHoSupport` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ExternalENodeBFunction`
--

LOCK TABLES `t_ExternalENodeBFunction` WRITE;
/*!40000 ALTER TABLE `t_ExternalENodeBFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ExternalENodeBFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ExternalEUtranCellFDD`
--

DROP TABLE IF EXISTS `t_ExternalEUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalEUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_ExternalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_activePlmnList` varchar(100) DEFAULT NULL,
  `f_activeServiceAreaId` varchar(100) DEFAULT NULL,
  `f_additionalFreqBandList` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_dlChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_eutranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_externalEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_freqBand` varchar(100) DEFAULT NULL,
  `f_isRemoveAllowed` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lbEUtranCellOffloadCapacity` varchar(100) DEFAULT NULL,
  `f_localCellId` varchar(100) DEFAULT NULL,
  `f_masterEUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_noOfTxAntennas` varchar(100) DEFAULT NULL,
  `f_pciConflict` varchar(100) DEFAULT NULL,
  `f_pciConflictCell` text,
  `f_pciDetectingCell` text,
  `f_physicalLayerCellId` varchar(100) DEFAULT NULL,
  `f_physicalLayerCellIdGroup` varchar(100) DEFAULT NULL,
  `f_physicalLayerSubCellId` varchar(100) DEFAULT NULL,
  `f_plmnListVerifiedByX2OrCgi` varchar(100) DEFAULT NULL,
  `f_remoteCellStateEranUlComp` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_tac` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_ulChannelBandwidth` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt1` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt2` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt3` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt4` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ExternalEUtranCellFDD`
--

LOCK TABLES `t_ExternalEUtranCellFDD` WRITE;
/*!40000 ALTER TABLE `t_ExternalEUtranCellFDD` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ExternalEUtranCellFDD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ExternalPower`
--

DROP TABLE IF EXISTS `t_ExternalPower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalPower` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentSupportFunctionId` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_externalPowerId` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ExternalPower`
--

LOCK TABLES `t_ExternalPower` WRITE;
/*!40000 ALTER TABLE `t_ExternalPower` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ExternalPower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ExternalUtranCellFDD`
--

DROP TABLE IF EXISTS `t_ExternalUtranCellFDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ExternalUtranCellFDD` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_UtraNetworkId` varchar(100) DEFAULT NULL,
  `f_UtranFrequencyId` varchar(100) DEFAULT NULL,
  `f_cellIdentity` varchar(100) DEFAULT NULL,
  `f_externalUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_isRemoveAllowed` varchar(100) DEFAULT NULL,
  `f_lac` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lbUtranCellOffloadCapacity` varchar(100) DEFAULT NULL,
  `f_masterUtranCellId` varchar(100) DEFAULT NULL,
  `f_physicalCellIdentity` varchar(100) DEFAULT NULL,
  `f_plmnIdentity` varchar(100) DEFAULT NULL,
  `f_rac` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_rimAssociationStatus` varchar(100) DEFAULT NULL,
  `f_rimCapable` varchar(100) DEFAULT NULL,
  `f_srvccCapability` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt1` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt2` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt3` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt4` varchar(100) DEFAULT NULL,
  `f_zzzTemporaryExt5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ExternalUtranCellFDD`
--

LOCK TABLES `t_ExternalUtranCellFDD` WRITE;
/*!40000 ALTER TABLE `t_ExternalUtranCellFDD` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ExternalUtranCellFDD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FanGroup`
--

DROP TABLE IF EXISTS `t_FanGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FanGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_CabinetId` varchar(100) DEFAULT NULL,
  `f_fanGroupId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FanGroup`
--

LOCK TABLES `t_FanGroup` WRITE;
/*!40000 ALTER TABLE `t_FanGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FanGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FeatureKey`
--

DROP TABLE IF EXISTS `t_FeatureKey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FeatureKey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_expiration` varchar(100) DEFAULT NULL,
  `f_featureKeyId` varchar(100) DEFAULT NULL,
  `f_keyId` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `f_productType` varchar(100) DEFAULT NULL,
  `f_shared` varchar(100) DEFAULT NULL,
  `f_state` varchar(255) DEFAULT NULL,
  `f_validFrom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FeatureKey`
--

LOCK TABLES `t_FeatureKey` WRITE;
/*!40000 ALTER TABLE `t_FeatureKey` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FeatureKey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FeatureState`
--

DROP TABLE IF EXISTS `t_FeatureState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FeatureState` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_description` varchar(100) DEFAULT NULL,
  `f_featureKey` varchar(255) DEFAULT NULL,
  `f_featureState` varchar(100) DEFAULT NULL,
  `f_featureStateId` varchar(100) DEFAULT NULL,
  `f_keyId` varchar(100) DEFAULT NULL,
  `f_licenseState` varchar(100) DEFAULT NULL,
  `f_serviceState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FeatureState`
--

LOCK TABLES `t_FeatureState` WRITE;
/*!40000 ALTER TABLE `t_FeatureState` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FeatureState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FieldReplaceableUnit`
--

DROP TABLE IF EXISTS `t_FieldReplaceableUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FieldReplaceableUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_fieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_hwTestResult` varchar(100) DEFAULT NULL,
  `f_isSharedWithExternalMe` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_positionCoordinates` varchar(100) DEFAULT NULL,
  `f_positionInformation` varchar(100) DEFAULT NULL,
  `f_positionRef` varchar(100) DEFAULT NULL,
  `f_productData` varchar(255) DEFAULT NULL,
  `f_supportUnitRef` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FieldReplaceableUnit`
--

LOCK TABLES `t_FieldReplaceableUnit` WRITE;
/*!40000 ALTER TABLE `t_FieldReplaceableUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FieldReplaceableUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FilePullCapabilities`
--

DROP TABLE IF EXISTS `t_FilePullCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FilePullCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_alignedReportingPeriod` varchar(100) DEFAULT NULL,
  `f_filePullCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_finalROP` varchar(100) DEFAULT NULL,
  `f_outputDirectory` varchar(100) DEFAULT NULL,
  `f_supportedCompressionTypes` varchar(100) DEFAULT NULL,
  `f_supportedReportingPeriods` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FilePullCapabilities`
--

LOCK TABLES `t_FilePullCapabilities` WRITE;
/*!40000 ALTER TABLE `t_FilePullCapabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FilePullCapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FileTPM`
--

DROP TABLE IF EXISTS `t_FileTPM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FileTPM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_fileTPMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FileTPM`
--

LOCK TABLES `t_FileTPM` WRITE;
/*!40000 ALTER TABLE `t_FileTPM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FileTPM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Filter`
--

DROP TABLE IF EXISTS `t_Filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Filter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_LdapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_LdapId` varchar(100) DEFAULT NULL,
  `f_filter` varchar(100) DEFAULT NULL,
  `f_filterId` varchar(100) DEFAULT NULL,
  `f_type` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Filter`
--

LOCK TABLES `t_Filter` WRITE;
/*!40000 ALTER TABLE `t_Filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FlexibleQoSFunction`
--

DROP TABLE IF EXISTS `t_FlexibleQoSFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FlexibleQoSFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_flexibleQoSFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FlexibleQoSFunction`
--

LOCK TABLES `t_FlexibleQoSFunction` WRITE;
/*!40000 ALTER TABLE `t_FlexibleQoSFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FlexibleQoSFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Fm`
--

DROP TABLE IF EXISTS `t_Fm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Fm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fmId` varchar(100) DEFAULT NULL,
  `f_heartbeatInterval` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Fm`
--

LOCK TABLES `t_Fm` WRITE;
/*!40000 ALTER TABLE `t_Fm` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Fm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FmAlarm`
--

DROP TABLE IF EXISTS `t_FmAlarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_FmId` varchar(100) DEFAULT NULL,
  `f_fmAlarmId` varchar(100) DEFAULT NULL,
  `f_originalAdditionalText` varchar(255) DEFAULT NULL,
  `f_originalEventTime` varchar(100) DEFAULT NULL,
  `f_originalSeverity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FmAlarm`
--

LOCK TABLES `t_FmAlarm` WRITE;
/*!40000 ALTER TABLE `t_FmAlarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FmAlarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FmAlarmModel`
--

DROP TABLE IF EXISTS `t_FmAlarmModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmModel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_FmId` varchar(100) DEFAULT NULL,
  `f_fmAlarmModelId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FmAlarmModel`
--

LOCK TABLES `t_FmAlarmModel` WRITE;
/*!40000 ALTER TABLE `t_FmAlarmModel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FmAlarmModel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FmAlarmSupervision`
--

DROP TABLE IF EXISTS `t_FmAlarmSupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmSupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_FmAlarmSupervisionId` varchar(100) DEFAULT NULL,
  `f_active` varchar(100) DEFAULT NULL,
  `f_automaticSynchronization` varchar(100) DEFAULT NULL,
  `f_failoverCount` varchar(100) DEFAULT NULL,
  `f_heartbeatTimeout` varchar(100) DEFAULT NULL,
  `f_heartbeatinterval` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FmAlarmSupervision`
--

LOCK TABLES `t_FmAlarmSupervision` WRITE;
/*!40000 ALTER TABLE `t_FmAlarmSupervision` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FmAlarmSupervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FmAlarmType`
--

DROP TABLE IF EXISTS `t_FmAlarmType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmAlarmType` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_FmId` varchar(100) DEFAULT NULL,
  `f_FmAlarmModelId` varchar(100) DEFAULT NULL,
  `f_configuredSeverity` varchar(100) DEFAULT NULL,
  `f_fmAlarmTypeId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FmAlarmType`
--

LOCK TABLES `t_FmAlarmType` WRITE;
/*!40000 ALTER TABLE `t_FmAlarmType` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FmAlarmType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FmFunction`
--

DROP TABLE IF EXISTS `t_FmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_FmFunctionId` varchar(100) DEFAULT NULL,
  `f_alarmSuppressedState` varchar(100) DEFAULT NULL,
  `f_currentServiceState` varchar(100) DEFAULT NULL,
  `f_lastUpdated` varchar(100) DEFAULT NULL,
  `f_lastUpdatedTimeStamp` varchar(100) DEFAULT NULL,
  `f_subscriptionState` varchar(100) DEFAULT NULL,
  `f_technicianPresentState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FmFunction`
--

LOCK TABLES `t_FmFunction` WRITE;
/*!40000 ALTER TABLE `t_FmFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FmFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FreqBandData`
--

DROP TABLE IF EXISTS `t_FreqBandData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FreqBandData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_RfPortId` varchar(100) DEFAULT NULL,
  `f_freqBandDataId` varchar(100) DEFAULT NULL,
  `f_vswrSupervisionActive` varchar(100) DEFAULT NULL,
  `f_vswrSupervisionSensitivity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FreqBandData`
--

LOCK TABLES `t_FreqBandData` WRITE;
/*!40000 ALTER TABLE `t_FreqBandData` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FreqBandData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FtpServer`
--

DROP TABLE IF EXISTS `t_FtpServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_FileTPMId` varchar(100) DEFAULT NULL,
  `f_ftpServerId` varchar(100) DEFAULT NULL,
  `f_idleTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FtpServer`
--

LOCK TABLES `t_FtpServer` WRITE;
/*!40000 ALTER TABLE `t_FtpServer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FtpServer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FtpTls`
--

DROP TABLE IF EXISTS `t_FtpTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_FileTPMId` varchar(100) DEFAULT NULL,
  `f_ftpTlsId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FtpTls`
--

LOCK TABLES `t_FtpTls` WRITE;
/*!40000 ALTER TABLE `t_FtpTls` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FtpTls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_FtpTlsServer`
--

DROP TABLE IF EXISTS `t_FtpTlsServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_FtpTlsServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_FileTPMId` varchar(100) DEFAULT NULL,
  `f_FtpServerId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_ftpTlsServerId` varchar(100) DEFAULT NULL,
  `f_maxDataPort` varchar(100) DEFAULT NULL,
  `f_minDataPort` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_FtpTlsServer`
--

LOCK TABLES `t_FtpTlsServer` WRITE;
/*!40000 ALTER TABLE `t_FtpTlsServer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_FtpTlsServer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_GeographicLocation`
--

DROP TABLE IF EXISTS `t_GeographicLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GeographicLocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_geographicLocationId` varchar(100) DEFAULT NULL,
  `f_ufLocation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_GeographicLocation`
--

LOCK TABLES `t_GeographicLocation` WRITE;
/*!40000 ALTER TABLE `t_GeographicLocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_GeographicLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_GeometricPoint`
--

DROP TABLE IF EXISTS `t_GeometricPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GeometricPoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_GeographicLocationId` varchar(100) DEFAULT NULL,
  `f_elevation` varchar(100) DEFAULT NULL,
  `f_geometricPointId` varchar(100) DEFAULT NULL,
  `f_latitude` varchar(100) DEFAULT NULL,
  `f_longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_GeometricPoint`
--

LOCK TABLES `t_GeometricPoint` WRITE;
/*!40000 ALTER TABLE `t_GeometricPoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_GeometricPoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_GracePeriod`
--

DROP TABLE IF EXISTS `t_GracePeriod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_GracePeriod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_CapacityStateId` varchar(100) DEFAULT NULL,
  `f_gracePeriodExpiration` varchar(100) DEFAULT NULL,
  `f_gracePeriodId` varchar(100) DEFAULT NULL,
  `f_gracePeriodState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_GracePeriod`
--

LOCK TABLES `t_GracePeriod` WRITE;
/*!40000 ALTER TABLE `t_GracePeriod` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_GracePeriod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HcJob`
--

DROP TABLE IF EXISTS `t_HcJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcJob` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_HealthCheckMId` varchar(100) DEFAULT NULL,
  `f_failedRules` text,
  `f_hcJobId` varchar(100) DEFAULT NULL,
  `f_inputParameters` varchar(100) DEFAULT NULL,
  `f_jobToTrigger` varchar(100) DEFAULT NULL,
  `f_lastRunTime` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_rulesCategories` varchar(100) DEFAULT NULL,
  `f_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HcJob`
--

LOCK TABLES `t_HcJob` WRITE;
/*!40000 ALTER TABLE `t_HcJob` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HcJob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HcRule`
--

DROP TABLE IF EXISTS `t_HcRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HcRule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_HealthCheckMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_categories` varchar(100) DEFAULT NULL,
  `f_hcRuleId` varchar(100) DEFAULT NULL,
  `f_inputParameters` varchar(100) DEFAULT NULL,
  `f_recommendedAction` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HcRule`
--

LOCK TABLES `t_HcRule` WRITE;
/*!40000 ALTER TABLE `t_HcRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HcRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HealthCheckM`
--

DROP TABLE IF EXISTS `t_HealthCheckM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HealthCheckM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_healthCheckMId` varchar(100) DEFAULT NULL,
  `f_lastExecutedJob` varchar(255) DEFAULT NULL,
  `f_lastStatus` varchar(100) DEFAULT NULL,
  `f_lastUpdateTime` varchar(100) DEFAULT NULL,
  `f_maxNoOfReportFiles` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HealthCheckM`
--

LOCK TABLES `t_HealthCheckM` WRITE;
/*!40000 ALTER TABLE `t_HealthCheckM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HealthCheckM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HttpM`
--

DROP TABLE IF EXISTS `t_HttpM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HttpM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_httpMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HttpM`
--

LOCK TABLES `t_HttpM` WRITE;
/*!40000 ALTER TABLE `t_HttpM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HttpM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Https`
--

DROP TABLE IF EXISTS `t_Https`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Https` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_HttpMId` varchar(100) DEFAULT NULL,
  `f_httpsId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Https`
--

LOCK TABLES `t_Https` WRITE;
/*!40000 ALTER TABLE `t_Https` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Https` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HwInventory`
--

DROP TABLE IF EXISTS `t_HwInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HwInventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_hwInventoryId` varchar(100) DEFAULT NULL,
  `f_timeOfLatestInvChange` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HwInventory`
--

LOCK TABLES `t_HwInventory` WRITE;
/*!40000 ALTER TABLE `t_HwInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HwInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_HwItem`
--

DROP TABLE IF EXISTS `t_HwItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_HwItem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_HwInventoryId` varchar(100) DEFAULT NULL,
  `f_additionalInformation` varchar(100) DEFAULT NULL,
  `f_dateOfLastService` varchar(100) DEFAULT NULL,
  `f_equipmentMoRef` varchar(255) DEFAULT NULL,
  `f_hwCapability` varchar(100) DEFAULT NULL,
  `f_hwItemId` varchar(100) DEFAULT NULL,
  `f_hwModel` varchar(100) DEFAULT NULL,
  `f_hwName` varchar(100) DEFAULT NULL,
  `f_hwType` varchar(100) DEFAULT NULL,
  `f_hwUnitLocation` varchar(100) DEFAULT NULL,
  `f_licMgmtMoRef` varchar(100) DEFAULT NULL,
  `f_manualDataEntry` varchar(100) DEFAULT NULL,
  `f_productData` varchar(255) DEFAULT NULL,
  `f_serialNumber` varchar(100) DEFAULT NULL,
  `f_swInvMoRef` varchar(100) DEFAULT NULL,
  `f_vendorName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_HwItem`
--

LOCK TABLES `t_HwItem` WRITE;
/*!40000 ALTER TABLE `t_HwItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_HwItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ikev2PolicyProfile`
--

DROP TABLE IF EXISTS `t_Ikev2PolicyProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ikev2PolicyProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_credential` varchar(100) DEFAULT NULL,
  `f_dpdTime` varchar(100) DEFAULT NULL,
  `f_ikeDscp` varchar(100) DEFAULT NULL,
  `f_ikeSaLifetime` varchar(100) DEFAULT NULL,
  `f_ikev2PolicyProfileId` varchar(100) DEFAULT NULL,
  `f_ikev2Proposal` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_trustCategory` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ikev2PolicyProfile`
--

LOCK TABLES `t_Ikev2PolicyProfile` WRITE;
/*!40000 ALTER TABLE `t_Ikev2PolicyProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ikev2PolicyProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ikev2Session`
--

DROP TABLE IF EXISTS `t_Ikev2Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ikev2Session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_IpsecTunnelId` varchar(100) DEFAULT NULL,
  `f_ikev2PolicyProfile` varchar(255) DEFAULT NULL,
  `f_ikev2SessionId` varchar(100) DEFAULT NULL,
  `f_localIdentityOrigin` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ikev2Session`
--

LOCK TABLES `t_Ikev2Session` WRITE;
/*!40000 ALTER TABLE `t_Ikev2Session` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ikev2Session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ImeisvTable`
--

DROP TABLE IF EXISTS `t_ImeisvTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ImeisvTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_imeisvTableId` varchar(100) DEFAULT NULL,
  `f_listOfFeaturesDefaultOff` varchar(100) DEFAULT NULL,
  `f_listOfFeaturesDefaultOn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ImeisvTable`
--

LOCK TABLES `t_ImeisvTable` WRITE;
/*!40000 ALTER TABLE `t_ImeisvTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ImeisvTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_InstantUplinkAccess`
--

DROP TABLE IF EXISTS `t_InstantUplinkAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InstantUplinkAccess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_instantUplinkAccessId` varchar(100) DEFAULT NULL,
  `f_iuaCellResourceLimit` varchar(100) DEFAULT NULL,
  `f_iuaCoscheduleDynamic` varchar(100) DEFAULT NULL,
  `f_iuaDeactPdcchMargin` varchar(100) DEFAULT NULL,
  `f_iuaDeactTimer` varchar(100) DEFAULT NULL,
  `f_iuaDuration` varchar(100) DEFAULT NULL,
  `f_iuaEnabled` varchar(100) DEFAULT NULL,
  `f_iuaInactivityTimer` varchar(100) DEFAULT NULL,
  `f_iuaIntervalFdd` varchar(100) DEFAULT NULL,
  `f_iuaIntervalTdd` varchar(100) DEFAULT NULL,
  `f_iuaLoadThreshold` varchar(100) DEFAULT NULL,
  `f_iuaSinrDeactHyst` varchar(100) DEFAULT NULL,
  `f_iuaSinrThreshold` varchar(100) DEFAULT NULL,
  `f_iuaTargetBufferEmptyTime` varchar(100) DEFAULT NULL,
  `f_iuaTargetBufferSize` varchar(100) DEFAULT NULL,
  `f_iuaUePrbLimit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_InstantUplinkAccess`
--

LOCK TABLES `t_InstantUplinkAccess` WRITE;
/*!40000 ALTER TABLE `t_InstantUplinkAccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_InstantUplinkAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_IntegrationUnlock`
--

DROP TABLE IF EXISTS `t_IntegrationUnlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IntegrationUnlock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_activationState` varchar(100) DEFAULT NULL,
  `f_activationsLeft` varchar(100) DEFAULT NULL,
  `f_expiration` varchar(100) DEFAULT NULL,
  `f_integrationUnlockId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_IntegrationUnlock`
--

LOCK TABLES `t_IntegrationUnlock` WRITE;
/*!40000 ALTER TABLE `t_IntegrationUnlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_IntegrationUnlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_InterfaceIPv4`
--

DROP TABLE IF EXISTS `t_InterfaceIPv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InterfaceIPv4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_aclEgress` varchar(100) DEFAULT NULL,
  `f_aclIngress` varchar(100) DEFAULT NULL,
  `f_arpTimeout` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_bfdProfile` varchar(100) DEFAULT NULL,
  `f_bfdStaticRoutes` varchar(100) DEFAULT NULL,
  `f_egressQosMarking` varchar(255) DEFAULT NULL,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_ingressQosMarking` varchar(100) DEFAULT NULL,
  `f_interfaceIPv4Id` varchar(100) DEFAULT NULL,
  `f_loopback` varchar(100) DEFAULT NULL,
  `f_mtu` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_pcpArp` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_routesHoldDownTimer` varchar(100) DEFAULT NULL,
  `f_routingPolicyIngress` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_InterfaceIPv4`
--

LOCK TABLES `t_InterfaceIPv4` WRITE;
/*!40000 ALTER TABLE `t_InterfaceIPv4` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_InterfaceIPv4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_InventoryFunction`
--

DROP TABLE IF EXISTS `t_InventoryFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InventoryFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_SHMFunctionId` varchar(100) DEFAULT NULL,
  `f_inventoryFunctionId` varchar(100) DEFAULT NULL,
  `f_lastSuccessfulSync` varchar(100) DEFAULT NULL,
  `f_syncStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_InventoryFunction`
--

LOCK TABLES `t_InventoryFunction` WRITE;
/*!40000 ALTER TABLE `t_InventoryFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_InventoryFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_InventorySupervision`
--

DROP TABLE IF EXISTS `t_InventorySupervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_InventorySupervision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_active` varchar(100) DEFAULT NULL,
  `f_doInventorySync` varchar(100) DEFAULT NULL,
  `f_inventorySupervisionId` varchar(100) DEFAULT NULL,
  `f_inventoryType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_InventorySupervision`
--

LOCK TABLES `t_InventorySupervision` WRITE;
/*!40000 ALTER TABLE `t_InventorySupervision` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_InventorySupervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_IpsecPolicy`
--

DROP TABLE IF EXISTS `t_IpsecPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecPolicy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_IpsecTunnelId` varchar(100) DEFAULT NULL,
  `f_antiReplayProtection` varchar(100) DEFAULT NULL,
  `f_ipsecPolicyId` varchar(100) DEFAULT NULL,
  `f_ipsecProposalProfile` varchar(255) DEFAULT NULL,
  `f_localTrafficSelector` varchar(100) DEFAULT NULL,
  `f_remoteTrafficSelector` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_IpsecPolicy`
--

LOCK TABLES `t_IpsecPolicy` WRITE;
/*!40000 ALTER TABLE `t_IpsecPolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_IpsecPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_IpsecProposalProfile`
--

DROP TABLE IF EXISTS `t_IpsecProposalProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecProposalProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_childSaLifetime` varchar(100) DEFAULT NULL,
  `f_ipsecProposal` varchar(100) DEFAULT NULL,
  `f_ipsecProposalProfileId` varchar(100) DEFAULT NULL,
  `f_pfs` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_IpsecProposalProfile`
--

LOCK TABLES `t_IpsecProposalProfile` WRITE;
/*!40000 ALTER TABLE `t_IpsecProposalProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_IpsecProposalProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_IpsecTunnel`
--

DROP TABLE IF EXISTS `t_IpsecTunnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IpsecTunnel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_ipsecTunnelId` varchar(100) DEFAULT NULL,
  `f_localAddress` varchar(255) DEFAULT NULL,
  `f_remoteAddress` varchar(255) DEFAULT NULL,
  `f_remoteAddressSecondary` varchar(255) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_IpsecTunnel`
--

LOCK TABLES `t_IpsecTunnel` WRITE;
/*!40000 ALTER TABLE `t_IpsecTunnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_IpsecTunnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_IuaProfile`
--

DROP TABLE IF EXISTS `t_IuaProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_IuaProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_iuaDeactTimer` varchar(100) DEFAULT NULL,
  `f_iuaDuration` varchar(100) DEFAULT NULL,
  `f_iuaInactivityTimer` varchar(100) DEFAULT NULL,
  `f_iuaIntervalFdd` varchar(100) DEFAULT NULL,
  `f_iuaIntervalTdd` varchar(100) DEFAULT NULL,
  `f_iuaProfileId` varchar(100) DEFAULT NULL,
  `f_iuaSinrDeactHyst` varchar(100) DEFAULT NULL,
  `f_iuaSinrThreshold` varchar(100) DEFAULT NULL,
  `f_iuaTargetBufferEmptyTime` varchar(100) DEFAULT NULL,
  `f_iuaTargetBufferSize` varchar(100) DEFAULT NULL,
  `f_iuaUePrbLimit` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_IuaProfile`
--

LOCK TABLES `t_IuaProfile` WRITE;
/*!40000 ALTER TABLE `t_IuaProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_IuaProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_KeyFileInformation`
--

DROP TABLE IF EXISTS `t_KeyFileInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_KeyFileInformation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_KeyFileManagementId` varchar(100) DEFAULT NULL,
  `f_installationTime` varchar(100) DEFAULT NULL,
  `f_keyFileInformationId` varchar(100) DEFAULT NULL,
  `f_locatable` varchar(100) DEFAULT NULL,
  `f_productType` varchar(100) DEFAULT NULL,
  `f_sequenceNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_KeyFileInformation`
--

LOCK TABLES `t_KeyFileInformation` WRITE;
/*!40000 ALTER TABLE `t_KeyFileInformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_KeyFileInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_KeyFileManagement`
--

DROP TABLE IF EXISTS `t_KeyFileManagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_KeyFileManagement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LmId` varchar(100) DEFAULT NULL,
  `f_keyFileManagementId` varchar(100) DEFAULT NULL,
  `f_reportProgress` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_KeyFileManagement`
--

LOCK TABLES `t_KeyFileManagement` WRITE;
/*!40000 ALTER TABLE `t_KeyFileManagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_KeyFileManagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ldap`
--

DROP TABLE IF EXISTS `t_Ldap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ldap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_LdapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_baseDn` varchar(100) DEFAULT NULL,
  `f_bindDn` varchar(100) DEFAULT NULL,
  `f_bindPassword` varchar(100) DEFAULT NULL,
  `f_fallbackLdapIpAddress` varchar(100) DEFAULT NULL,
  `f_ldapId` varchar(100) DEFAULT NULL,
  `f_ldapIpAddress` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_profileFilter` varchar(100) DEFAULT NULL,
  `f_serverPort` varchar(100) DEFAULT NULL,
  `f_tlsMode` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  `f_useReferrals` varchar(100) DEFAULT NULL,
  `f_useTls` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ldap`
--

LOCK TABLES `t_Ldap` WRITE;
/*!40000 ALTER TABLE `t_Ldap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ldap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LdapAuthenticationMethod`
--

DROP TABLE IF EXISTS `t_LdapAuthenticationMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LdapAuthenticationMethod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_ldapAuthenticationMethodId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LdapAuthenticationMethod`
--

LOCK TABLES `t_LdapAuthenticationMethod` WRITE;
/*!40000 ALTER TABLE `t_LdapAuthenticationMethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LdapAuthenticationMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LicenseSupport`
--

DROP TABLE IF EXISTS `t_LicenseSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LicenseSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_licenseAreaId` varchar(100) DEFAULT NULL,
  `f_licenseSupportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LicenseSupport`
--

LOCK TABLES `t_LicenseSupport` WRITE;
/*!40000 ALTER TABLE `t_LicenseSupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LicenseSupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Lm`
--

DROP TABLE IF EXISTS `t_Lm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Lm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_fingerprint` varchar(100) DEFAULT NULL,
  `f_fingerprintUpdateable` varchar(100) DEFAULT NULL,
  `f_lastInventoryChange` varchar(100) DEFAULT NULL,
  `f_lastLicenseInventoryRefresh` varchar(100) DEFAULT NULL,
  `f_lmId` varchar(100) DEFAULT NULL,
  `f_lmState` varchar(100) DEFAULT NULL,
  `f_referenceToLicenseServer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Lm`
--

LOCK TABLES `t_Lm` WRITE;
/*!40000 ALTER TABLE `t_Lm` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Lm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LoadBalancingFunction`
--

DROP TABLE IF EXISTS `t_LoadBalancingFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LoadBalancingFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_isUlEvalAllowedAtCaTrHo` varchar(100) DEFAULT NULL,
  `f_isUlEvalAllowedAtTpLbHo` varchar(100) DEFAULT NULL,
  `f_lbAllowedForEndcUe` varchar(100) DEFAULT NULL,
  `f_lbCaCapHysteresis` varchar(100) DEFAULT NULL,
  `f_lbCaThreshold` varchar(100) DEFAULT NULL,
  `f_lbCauseCodeS1SourceTriggersOffload` varchar(100) DEFAULT NULL,
  `f_lbCauseCodeS1TargetAcceptsOffload` varchar(100) DEFAULT NULL,
  `f_lbCauseCodeX2SourceTriggersOffload` varchar(100) DEFAULT NULL,
  `f_lbCauseCodeX2TargetAcceptsOffload` varchar(100) DEFAULT NULL,
  `f_lbCeiling` varchar(100) DEFAULT NULL,
  `f_lbDiffCaOffset` varchar(100) DEFAULT NULL,
  `f_lbEUtranOffloadBackoffTime` varchar(100) DEFAULT NULL,
  `f_lbHitRateEUtranAddThreshold` varchar(100) DEFAULT NULL,
  `f_lbHitRateEUtranMeasUeIntensity` varchar(100) DEFAULT NULL,
  `f_lbHitRateEUtranMeasUeThreshold` varchar(100) DEFAULT NULL,
  `f_lbHitRateEUtranRemoveThreshold` varchar(100) DEFAULT NULL,
  `f_lbHitRateUtranAddThreshold` varchar(100) DEFAULT NULL,
  `f_lbHitRateUtranMeasUeIntensity` varchar(100) DEFAULT NULL,
  `f_lbHitRateUtranMeasUeThreshold` varchar(100) DEFAULT NULL,
  `f_lbHitRateUtranRemoveThreshold` varchar(100) DEFAULT NULL,
  `f_lbMeasScalingLimit` varchar(100) DEFAULT NULL,
  `f_lbRateOffsetCoefficient` varchar(100) DEFAULT NULL,
  `f_lbRateOffsetLoadThreshold` varchar(100) DEFAULT NULL,
  `f_lbThreshold` varchar(100) DEFAULT NULL,
  `f_lbUeEvaluationTimer` varchar(100) DEFAULT NULL,
  `f_lbUtranOffloadBackoffTime` varchar(100) DEFAULT NULL,
  `f_loadBalancingFunctionId` varchar(100) DEFAULT NULL,
  `f_ocdMaxNoHighHitRateCells` varchar(100) DEFAULT NULL,
  `f_ocdMinHighHitThresh` varchar(100) DEFAULT NULL,
  `f_txPwrForOverlaidCellDetect` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LoadBalancingFunction`
--

LOCK TABLES `t_LoadBalancingFunction` WRITE;
/*!40000 ALTER TABLE `t_LoadBalancingFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LoadBalancingFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LocalAuthorizationMethod`
--

DROP TABLE IF EXISTS `t_LocalAuthorizationMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LocalAuthorizationMethod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_localAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LocalAuthorizationMethod`
--

LOCK TABLES `t_LocalAuthorizationMethod` WRITE;
/*!40000 ALTER TABLE `t_LocalAuthorizationMethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LocalAuthorizationMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Log`
--

DROP TABLE IF EXISTS `t_Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_LogMId` varchar(100) DEFAULT NULL,
  `f_logId` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_severityFilter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Log`
--

LOCK TABLES `t_Log` WRITE;
/*!40000 ALTER TABLE `t_Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LogM`
--

DROP TABLE IF EXISTS `t_LogM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LogM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_logMId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(100) DEFAULT NULL,
  `f_progressReport` text,
  `f_trustCategory` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LogM`
--

LOCK TABLES `t_LogM` WRITE;
/*!40000 ALTER TABLE `t_LogM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LogM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LoggedMdt`
--

DROP TABLE IF EXISTS `t_LoggedMdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LoggedMdt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_MdtConfigurationId` varchar(100) DEFAULT NULL,
  `f_areaScopeCgiList` varchar(100) DEFAULT NULL,
  `f_areaScopeTacList` varchar(100) DEFAULT NULL,
  `f_areaScopeType` varchar(100) DEFAULT NULL,
  `f_loggedMdtConfigEnabled` varchar(100) DEFAULT NULL,
  `f_loggedMdtGnssCheck` varchar(100) DEFAULT NULL,
  `f_loggedMdtId` varchar(100) DEFAULT NULL,
  `f_loggedMdtReportEnabled` varchar(100) DEFAULT NULL,
  `f_loggingDuration` varchar(100) DEFAULT NULL,
  `f_loggingInterval` varchar(100) DEFAULT NULL,
  `f_mdtPlmnList` varchar(100) DEFAULT NULL,
  `f_numberOfMdtConfigUes` varchar(100) DEFAULT NULL,
  `f_tceId` varchar(100) DEFAULT NULL,
  `f_traceId` varchar(100) DEFAULT NULL,
  `f_traceRecSessionReference` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LoggedMdt`
--

LOCK TABLES `t_LoggedMdt` WRITE;
/*!40000 ALTER TABLE `t_LoggedMdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LoggedMdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_LogicalChannelGroup`
--

DROP TABLE IF EXISTS `t_LogicalChannelGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_LogicalChannelGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_QciTableId` varchar(100) DEFAULT NULL,
  `f_logicalChannelGroupId` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_LogicalChannelGroup`
--

LOCK TABLES `t_LogicalChannelGroup` WRITE;
/*!40000 ALTER TABLE `t_LogicalChannelGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_LogicalChannelGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MACConfiguration`
--

DROP TABLE IF EXISTS `t_MACConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MACConfiguration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_RadioBearerTableId` varchar(100) DEFAULT NULL,
  `f_dlMaxHARQTx` varchar(100) DEFAULT NULL,
  `f_mACConfigurationId` varchar(100) DEFAULT NULL,
  `f_ulMaxHARQTx` varchar(100) DEFAULT NULL,
  `f_ulTtiBundlingMaxHARQTx` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MACConfiguration`
--

LOCK TABLES `t_MACConfiguration` WRITE;
/*!40000 ALTER TABLE `t_MACConfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MACConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MaintenanceUser`
--

DROP TABLE IF EXISTS `t_MaintenanceUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MaintenanceUser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_UserIdentityId` varchar(100) DEFAULT NULL,
  `f_maintenanceUserId` varchar(100) DEFAULT NULL,
  `f_password` varchar(100) DEFAULT NULL,
  `f_subjectName` varchar(100) DEFAULT NULL,
  `f_userName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MaintenanceUser`
--

LOCK TABLES `t_MaintenanceUser` WRITE;
/*!40000 ALTER TABLE `t_MaintenanceUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MaintenanceUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MaintenanceUserSecurity`
--

DROP TABLE IF EXISTS `t_MaintenanceUserSecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MaintenanceUserSecurity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_UserIdentityId` varchar(100) DEFAULT NULL,
  `f_maintenanceUserSecurityId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MaintenanceUserSecurity`
--

LOCK TABLES `t_MaintenanceUserSecurity` WRITE;
/*!40000 ALTER TABLE `t_MaintenanceUserSecurity` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MaintenanceUserSecurity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ManagedElement`
--

DROP TABLE IF EXISTS `t_ManagedElement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ManagedElement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_dnPrefix` varchar(100) DEFAULT NULL,
  `f_managedElementId` varchar(100) DEFAULT NULL,
  `f_managedElementType` varchar(100) DEFAULT NULL,
  `f_neType` varchar(100) DEFAULT NULL,
  `f_networkManagedElementId` varchar(100) DEFAULT NULL,
  `f_platformType` varchar(100) DEFAULT NULL,
  `f_release` varchar(100) DEFAULT NULL,
  `f_siteLocation` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ManagedElement`
--

LOCK TABLES `t_ManagedElement` WRITE;
/*!40000 ALTER TABLE `t_ManagedElement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ManagedElement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MdtConfiguration`
--

DROP TABLE IF EXISTS `t_MdtConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MdtConfiguration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrpMdt` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrqMdt` varchar(100) DEFAULT NULL,
  `f_hysteresisA2Mdt` varchar(100) DEFAULT NULL,
  `f_maxReportCellsA2Mdt` varchar(100) DEFAULT NULL,
  `f_mdtConfigurationId` varchar(100) DEFAULT NULL,
  `f_measGapAllowedMdt` varchar(100) DEFAULT NULL,
  `f_positioningMethod` varchar(100) DEFAULT NULL,
  `f_rcefReportEnabled` varchar(100) DEFAULT NULL,
  `f_reportAmountMdt` varchar(100) DEFAULT NULL,
  `f_reportIntervalMdt` varchar(100) DEFAULT NULL,
  `f_reportQuantityA2Mdt` varchar(100) DEFAULT NULL,
  `f_reportingTrigger` varchar(100) DEFAULT NULL,
  `f_rlfReportEnabled` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2Mdt` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA2Mdt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MdtConfiguration`
--

LOCK TABLES `t_MdtConfiguration` WRITE;
/*!40000 ALTER TABLE `t_MdtConfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MdtConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MeContext`
--

DROP TABLE IF EXISTS `t_MeContext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MeContext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_neType` varchar(100) DEFAULT NULL,
  `f_platformType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MeContext`
--

LOCK TABLES `t_MeContext` WRITE;
/*!40000 ALTER TABLE `t_MeContext` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MeContext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MimoSleepFunction`
--

DROP TABLE IF EXISTS `t_MimoSleepFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MimoSleepFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_mimoSleepFunctionId` varchar(100) DEFAULT NULL,
  `f_portMergingEnabled` varchar(100) DEFAULT NULL,
  `f_sleepEndTime` varchar(100) DEFAULT NULL,
  `f_sleepMode` varchar(100) DEFAULT NULL,
  `f_sleepPowerControl` varchar(100) DEFAULT NULL,
  `f_sleepStartTime` varchar(100) DEFAULT NULL,
  `f_sleepState` varchar(100) DEFAULT NULL,
  `f_switchDownMonitorDurTimer` varchar(100) DEFAULT NULL,
  `f_switchDownPrbThreshold` varchar(100) DEFAULT NULL,
  `f_switchDownRrcConnThreshold` varchar(100) DEFAULT NULL,
  `f_switchUpMonitorDurTimer` varchar(100) DEFAULT NULL,
  `f_switchUpPrbThreshold` varchar(100) DEFAULT NULL,
  `f_switchUpRrcConnThreshold` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MimoSleepFunction`
--

LOCK TABLES `t_MimoSleepFunction` WRITE;
/*!40000 ALTER TABLE `t_MimoSleepFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MimoSleepFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MpClusterHandling`
--

DROP TABLE IF EXISTS `t_MpClusterHandling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MpClusterHandling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_mpClusterHandlingId` varchar(100) DEFAULT NULL,
  `f_primaryCoreRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MpClusterHandling`
--

LOCK TABLES `t_MpClusterHandling` WRITE;
/*!40000 ALTER TABLE `t_MpClusterHandling` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MpClusterHandling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_MpProcessingResource`
--

DROP TABLE IF EXISTS `t_MpProcessingResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_MpProcessingResource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_mpProcessingResourceId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_MpProcessingResource`
--

LOCK TABLES `t_MpProcessingResource` WRITE;
/*!40000 ALTER TABLE `t_MpProcessingResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_MpProcessingResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NetconfSsh`
--

DROP TABLE IF EXISTS `t_NetconfSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_netconfSshId` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NetconfSsh`
--

LOCK TABLES `t_NetconfSsh` WRITE;
/*!40000 ALTER TABLE `t_NetconfSsh` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NetconfSsh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NetconfTls`
--

DROP TABLE IF EXISTS `t_NetconfTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_netconfTlsId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(255) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NetconfTls`
--

LOCK TABLES `t_NetconfTls` WRITE;
/*!40000 ALTER TABLE `t_NetconfTls` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NetconfTls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NetconfYangSsh`
--

DROP TABLE IF EXISTS `t_NetconfYangSsh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfYangSsh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_OnapSupportId` varchar(100) DEFAULT NULL,
  `f_netconfYangSshId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NetconfYangSsh`
--

LOCK TABLES `t_NetconfYangSsh` WRITE;
/*!40000 ALTER TABLE `t_NetconfYangSsh` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NetconfYangSsh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NetconfYangTls`
--

DROP TABLE IF EXISTS `t_NetconfYangTls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetconfYangTls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_OnapSupportId` varchar(100) DEFAULT NULL,
  `f_netconfYangTlsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NetconfYangTls`
--

LOCK TABLES `t_NetconfYangTls` WRITE;
/*!40000 ALTER TABLE `t_NetconfYangTls` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NetconfYangTls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NetworkElementSecurity`
--

DROP TABLE IF EXISTS `t_NetworkElementSecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NetworkElementSecurity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_SecurityFunctionId` varchar(100) DEFAULT NULL,
  `f_NetworkElementSecurityId` varchar(100) DEFAULT NULL,
  `f_algorithmAndKeySize` varchar(100) DEFAULT NULL,
  `f_enmSshPrivateKey` varchar(100) DEFAULT NULL,
  `f_enmSshPublicKey` varchar(100) DEFAULT NULL,
  `f_enrollmentMode` varchar(100) DEFAULT NULL,
  `f_ldapApplicationUserName` varchar(100) DEFAULT NULL,
  `f_ldapApplicationUserPassword` varchar(100) DEFAULT NULL,
  `f_normalUserName` varchar(100) DEFAULT NULL,
  `f_nwieaSecureUserName` varchar(100) DEFAULT NULL,
  `f_nwieaSecureUserPassword` varchar(100) DEFAULT NULL,
  `f_nwiebSecureUserName` varchar(100) DEFAULT NULL,
  `f_nwiebSecureUserPassword` varchar(100) DEFAULT NULL,
  `f_rootUserName` varchar(100) DEFAULT NULL,
  `f_secureUserName` varchar(100) DEFAULT NULL,
  `f_snmpAuthKey` varchar(100) DEFAULT NULL,
  `f_snmpAuthProtocol` varchar(100) DEFAULT NULL,
  `f_snmpPrivKey` varchar(100) DEFAULT NULL,
  `f_snmpPrivProtocol` varchar(100) DEFAULT NULL,
  `f_summaryFileHash` varchar(100) DEFAULT NULL,
  `f_targetGroups` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NetworkElementSecurity`
--

LOCK TABLES `t_NetworkElementSecurity` WRITE;
/*!40000 ALTER TABLE `t_NetworkElementSecurity` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NetworkElementSecurity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NextHop`
--

DROP TABLE IF EXISTS `t_NextHop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NextHop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_RouteTableIPv4StaticId` varchar(100) DEFAULT NULL,
  `f_DstId` varchar(100) DEFAULT NULL,
  `f_address` varchar(100) DEFAULT NULL,
  `f_adminDistance` varchar(100) DEFAULT NULL,
  `f_bfdMonitoring` varchar(100) DEFAULT NULL,
  `f_discard` varchar(100) DEFAULT NULL,
  `f_nextHopId` varchar(100) DEFAULT NULL,
  `f_reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NextHop`
--

LOCK TABLES `t_NextHop` WRITE;
/*!40000 ALTER TABLE `t_NextHop` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NextHop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NodeCredential`
--

DROP TABLE IF EXISTS `t_NodeCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeCredential` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_certificateContent` text,
  `f_certificateState` varchar(100) DEFAULT NULL,
  `f_enrollmentAuthority` varchar(255) DEFAULT NULL,
  `f_enrollmentProgress` text,
  `f_enrollmentServerGroup` varchar(255) DEFAULT NULL,
  `f_enrollmentTimer` varchar(100) DEFAULT NULL,
  `f_expiryAlarmThreshold` varchar(100) DEFAULT NULL,
  `f_keyInfo` varchar(100) DEFAULT NULL,
  `f_nodeCredentialId` varchar(100) DEFAULT NULL,
  `f_renewalMode` varchar(100) DEFAULT NULL,
  `f_subjectAltName` varchar(100) DEFAULT NULL,
  `f_subjectName` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NodeCredential`
--

LOCK TABLES `t_NodeCredential` WRITE;
/*!40000 ALTER TABLE `t_NodeCredential` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NodeCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NodeGroupSyncMember`
--

DROP TABLE IF EXISTS `t_NodeGroupSyncMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeGroupSyncMember` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_SynchronizationId` varchar(100) DEFAULT NULL,
  `f_RadioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_nodeGroupSyncMemberId` varchar(100) DEFAULT NULL,
  `f_selectionMode` varchar(100) DEFAULT NULL,
  `f_syncNodePriority` varchar(100) DEFAULT NULL,
  `f_syncRiPortCandidate` text,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NodeGroupSyncMember`
--

LOCK TABLES `t_NodeGroupSyncMember` WRITE;
/*!40000 ALTER TABLE `t_NodeGroupSyncMember` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NodeGroupSyncMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NodePerformance`
--

DROP TABLE IF EXISTS `t_NodePerformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodePerformance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_nodePerformanceId` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  `f_zzzTemporary8` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NodePerformance`
--

LOCK TABLES `t_NodePerformance` WRITE;
/*!40000 ALTER TABLE `t_NodePerformance` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NodePerformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NodeSupport`
--

DROP TABLE IF EXISTS `t_NodeSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NodeSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_nodeSupportId` varchar(100) DEFAULT NULL,
  `f_release` varchar(100) DEFAULT NULL,
  `f_supportFunction` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NodeSupport`
--

LOCK TABLES `t_NodeSupport` WRITE;
/*!40000 ALTER TABLE `t_NodeSupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NodeSupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NonPlannedPciDrxProfile`
--

DROP TABLE IF EXISTS `t_NonPlannedPciDrxProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NonPlannedPciDrxProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciDrxInactivityTimer` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciDrxProfileId` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciLongDrxCycle` varchar(100) DEFAULT NULL,
  `f_nonPlannedPciOnDurationTimer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NonPlannedPciDrxProfile`
--

LOCK TABLES `t_NonPlannedPciDrxProfile` WRITE;
/*!40000 ALTER TABLE `t_NonPlannedPciDrxProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NonPlannedPciDrxProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ntp`
--

DROP TABLE IF EXISTS `t_Ntp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ntp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_TimeMId` varchar(100) DEFAULT NULL,
  `f_ntpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ntp`
--

LOCK TABLES `t_Ntp` WRITE;
/*!40000 ALTER TABLE `t_Ntp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ntp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_NtpServer`
--

DROP TABLE IF EXISTS `t_NtpServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_NtpServer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_ntpServerId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_NtpServer`
--

LOCK TABLES `t_NtpServer` WRITE;
/*!40000 ALTER TABLE `t_NtpServer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_NtpServer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_OamAccessPoint`
--

DROP TABLE IF EXISTS `t_OamAccessPoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamAccessPoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_accessPoint` varchar(255) DEFAULT NULL,
  `f_oamAccessPointId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_OamAccessPoint`
--

LOCK TABLES `t_OamAccessPoint` WRITE;
/*!40000 ALTER TABLE `t_OamAccessPoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_OamAccessPoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_OamIpSupport`
--

DROP TABLE IF EXISTS `t_OamIpSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamIpSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_ipAddressChangeStatus` varchar(100) DEFAULT NULL,
  `f_oamIpSupportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_OamIpSupport`
--

LOCK TABLES `t_OamIpSupport` WRITE;
/*!40000 ALTER TABLE `t_OamIpSupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_OamIpSupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_OamTrafficClass`
--

DROP TABLE IF EXISTS `t_OamTrafficClass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OamTrafficClass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_dscp` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `f_oamTrafficClassId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_OamTrafficClass`
--

LOCK TABLES `t_OamTrafficClass` WRITE;
/*!40000 ALTER TABLE `t_OamTrafficClass` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_OamTrafficClass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_OnSiteActivities`
--

DROP TABLE IF EXISTS `t_OnSiteActivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OnSiteActivities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_onSiteActivitiesId` varchar(100) DEFAULT NULL,
  `f_technicianPresent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_OnSiteActivities`
--

LOCK TABLES `t_OnSiteActivities` WRITE;
/*!40000 ALTER TABLE `t_OnSiteActivities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_OnSiteActivities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_OnapSupport`
--

DROP TABLE IF EXISTS `t_OnapSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_OnapSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_onapSupportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_OnapSupport`
--

LOCK TABLES `t_OnapSupport` WRITE;
/*!40000 ALTER TABLE `t_OnapSupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_OnapSupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PMICScannerInfo`
--

DROP TABLE IF EXISTS `t_PMICScannerInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PMICScannerInfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_PMICScannerInfoId` varchar(100) DEFAULT NULL,
  `f_errorCode` varchar(100) DEFAULT NULL,
  `f_fileCollectionEnabled` varchar(100) DEFAULT NULL,
  `f_id` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `f_nodeName` varchar(100) DEFAULT NULL,
  `f_processType` varchar(100) DEFAULT NULL,
  `f_ropPeriod` varchar(100) DEFAULT NULL,
  `f_status` varchar(100) DEFAULT NULL,
  `f_subscriptionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PMICScannerInfo`
--

LOCK TABLES `t_PMICScannerInfo` WRITE;
/*!40000 ALTER TABLE `t_PMICScannerInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PMICScannerInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PacketCapture`
--

DROP TABLE IF EXISTS `t_PacketCapture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PacketCapture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_packetCaptureId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PacketCapture`
--

LOCK TABLES `t_PacketCapture` WRITE;
/*!40000 ALTER TABLE `t_PacketCapture` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PacketCapture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Paging`
--

DROP TABLE IF EXISTS `t_Paging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Paging` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_defaultPagingCycle` varchar(100) DEFAULT NULL,
  `f_defaultPagingCycleNbIot` varchar(100) DEFAULT NULL,
  `f_maxNoOfPagingRecords` varchar(100) DEFAULT NULL,
  `f_maxNoOfPagingRecordsNb` varchar(100) DEFAULT NULL,
  `f_nB` varchar(100) DEFAULT NULL,
  `f_nBBr` varchar(100) DEFAULT NULL,
  `f_nBNbIot` varchar(100) DEFAULT NULL,
  `f_noOfDefPagCyclPrim` varchar(100) DEFAULT NULL,
  `f_pagingDiscardTimerDrx` varchar(100) DEFAULT NULL,
  `f_pagingDiscardTimerDrxNb` varchar(100) DEFAULT NULL,
  `f_pagingDiscardTimerEdrx` varchar(100) DEFAULT NULL,
  `f_pagingDiscardTimerEdrxNb` varchar(100) DEFAULT NULL,
  `f_pagingId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Paging`
--

LOCK TABLES `t_Paging` WRITE;
/*!40000 ALTER TABLE `t_Paging` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Paging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ParameterChangeRequests`
--

DROP TABLE IF EXISTS `t_ParameterChangeRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ParameterChangeRequests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_latestUpdate` varchar(100) DEFAULT NULL,
  `f_parameterChangeRequestList` varchar(100) DEFAULT NULL,
  `f_parameterChangeRequestsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ParameterChangeRequests`
--

LOCK TABLES `t_ParameterChangeRequests` WRITE;
/*!40000 ALTER TABLE `t_ParameterChangeRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ParameterChangeRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PeerIPv4`
--

DROP TABLE IF EXISTS `t_PeerIPv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PeerIPv4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_address` varchar(100) DEFAULT NULL,
  `f_bfdProfile` varchar(100) DEFAULT NULL,
  `f_bfdStaticRoutes` varchar(100) DEFAULT NULL,
  `f_peerIPv4Id` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PeerIPv4`
--

LOCK TABLES `t_PeerIPv4` WRITE;
/*!40000 ALTER TABLE `t_PeerIPv4` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PeerIPv4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PlmnInfo`
--

DROP TABLE IF EXISTS `t_PlmnInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PlmnInfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_actualPlmn` varchar(100) DEFAULT NULL,
  `f_plmnInfoId` varchar(100) DEFAULT NULL,
  `f_plmnWhiteList` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PlmnInfo`
--

LOCK TABLES `t_PlmnInfo` WRITE;
/*!40000 ALTER TABLE `t_PlmnInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PlmnInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Pm`
--

DROP TABLE IF EXISTS `t_Pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Pm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Pm`
--

LOCK TABLES `t_Pm` WRITE;
/*!40000 ALTER TABLE `t_Pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmEventM`
--

DROP TABLE IF EXISTS `t_PmEventM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_pmEventMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmEventM`
--

LOCK TABLES `t_PmEventM` WRITE;
/*!40000 ALTER TABLE `t_PmEventM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmEventM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmEventService`
--

DROP TABLE IF EXISTS `t_PmEventService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmEventService` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cellTraceFileSize` varchar(100) DEFAULT NULL,
  `f_cellTraceHighPrioReserve` varchar(100) DEFAULT NULL,
  `f_cellTracePeriodicReport` varchar(100) DEFAULT NULL,
  `f_eventsExcludedFromUeTrace` varchar(100) DEFAULT NULL,
  `f_pmEventServiceId` varchar(100) DEFAULT NULL,
  `f_streamPortPmUeTrace` varchar(100) DEFAULT NULL,
  `f_streamStatusNotification` varchar(100) DEFAULT NULL,
  `f_streamStatusPmCellTrace` text,
  `f_streamStatusPmUeTrace` text,
  `f_totalCellTraceStorageSize` varchar(100) DEFAULT NULL,
  `f_totalEventStorageSize` varchar(100) DEFAULT NULL,
  `f_totalUeTraceStorageSize` varchar(100) DEFAULT NULL,
  `f_ueTrExcludeNonRacUeRefEvents` varchar(100) DEFAULT NULL,
  `f_ueTraceFileSize` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmEventService`
--

LOCK TABLES `t_PmEventService` WRITE;
/*!40000 ALTER TABLE `t_PmEventService` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmEventService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmFunction`
--

DROP TABLE IF EXISTS `t_PmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_PmFunctionId` varchar(100) DEFAULT NULL,
  `f_fileCollectionState` varchar(100) DEFAULT NULL,
  `f_neConfigurationManagerState` varchar(100) DEFAULT NULL,
  `f_pmEnabled` varchar(100) DEFAULT NULL,
  `f_scannerMasterState` varchar(100) DEFAULT NULL,
  `f_sourceDir` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmFunction`
--

LOCK TABLES `t_PmFunction` WRITE;
/*!40000 ALTER TABLE `t_PmFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmMeasurementCapabilities`
--

DROP TABLE IF EXISTS `t_PmMeasurementCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmMeasurementCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmId` varchar(100) DEFAULT NULL,
  `f_alignedReportingPeriod` varchar(100) DEFAULT NULL,
  `f_fileLocation` varchar(100) DEFAULT NULL,
  `f_fileRPSupported` varchar(100) DEFAULT NULL,
  `f_finalROP` varchar(100) DEFAULT NULL,
  `f_jobGroupingSupport` varchar(100) DEFAULT NULL,
  `f_jobPrioritizationSupport` varchar(100) DEFAULT NULL,
  `f_jobStartStopSupport` varchar(100) DEFAULT NULL,
  `f_maxNoOfJobs` varchar(100) DEFAULT NULL,
  `f_maxNoOfMeasurements` varchar(100) DEFAULT NULL,
  `f_maxNoOfPmFiles` varchar(100) DEFAULT NULL,
  `f_measurementJobSupport` varchar(100) DEFAULT NULL,
  `f_pmMeasurementCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_realTimeJobSupport` varchar(100) DEFAULT NULL,
  `f_ropFilenameTimestamp` varchar(100) DEFAULT NULL,
  `f_supportedCompressionTypes` varchar(100) DEFAULT NULL,
  `f_supportedMeasJobGps` varchar(100) DEFAULT NULL,
  `f_supportedRopPeriods` varchar(100) DEFAULT NULL,
  `f_supportedRtJobGps` varchar(100) DEFAULT NULL,
  `f_supportedThreshJobGps` varchar(100) DEFAULT NULL,
  `f_thresholdJobSupport` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmMeasurementCapabilities`
--

LOCK TABLES `t_PmMeasurementCapabilities` WRITE;
/*!40000 ALTER TABLE `t_PmMeasurementCapabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmMeasurementCapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmSupport`
--

DROP TABLE IF EXISTS `t_PmSupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmSupport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_pmSupportId` varchar(100) DEFAULT NULL,
  `f_ropFileHandling` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmSupport`
--

LOCK TABLES `t_PmSupport` WRITE;
/*!40000 ALTER TABLE `t_PmSupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmSupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PmUlInterferenceReport`
--

DROP TABLE IF EXISTS `t_PmUlInterferenceReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PmUlInterferenceReport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_SectorCarrierId` varchar(100) DEFAULT NULL,
  `f_pmUlInterferenceReportId` varchar(100) DEFAULT NULL,
  `f_rfBranchRxRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PmUlInterferenceReport`
--

LOCK TABLES `t_PmUlInterferenceReport` WRITE;
/*!40000 ALTER TABLE `t_PmUlInterferenceReport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PmUlInterferenceReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PreschedProfile`
--

DROP TABLE IF EXISTS `t_PreschedProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PreschedProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_preschedProfileId` varchar(100) DEFAULT NULL,
  `f_preschedulingDataSize` varchar(100) DEFAULT NULL,
  `f_preschedulingDuration` varchar(100) DEFAULT NULL,
  `f_preschedulingPeriod` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PreschedProfile`
--

LOCK TABLES `t_PreschedProfile` WRITE;
/*!40000 ALTER TABLE `t_PreschedProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PreschedProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PreschedulingProfile`
--

DROP TABLE IF EXISTS `t_PreschedulingProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PreschedulingProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_preschedulingDataSize` varchar(100) DEFAULT NULL,
  `f_preschedulingDuration` varchar(100) DEFAULT NULL,
  `f_preschedulingPeriod` varchar(100) DEFAULT NULL,
  `f_preschedulingProfileId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PreschedulingProfile`
--

LOCK TABLES `t_PreschedulingProfile` WRITE;
/*!40000 ALTER TABLE `t_PreschedulingProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PreschedulingProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PtmFunction`
--

DROP TABLE IF EXISTS `t_PtmFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PtmFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_ptmEnabled` varchar(100) DEFAULT NULL,
  `f_ptmFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PtmFunction`
--

LOCK TABLES `t_PtmFunction` WRITE;
/*!40000 ALTER TABLE `t_PtmFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PtmFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ptp`
--

DROP TABLE IF EXISTS `t_Ptp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ptp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_ptpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ptp`
--

LOCK TABLES `t_Ptp` WRITE;
/*!40000 ALTER TABLE `t_Ptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ptp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_PtpBcOcPort`
--

DROP TABLE IF EXISTS `t_PtpBcOcPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_PtpBcOcPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_PtpId` varchar(100) DEFAULT NULL,
  `f_BoundaryOrdinaryClockId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_announceMessageInterval` varchar(100) DEFAULT NULL,
  `f_associatedGrandmaster` varchar(100) DEFAULT NULL,
  `f_asymmetryCompensation` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_cachedIpAddress` varchar(100) DEFAULT NULL,
  `f_dscp` varchar(100) DEFAULT NULL,
  `f_durationField` varchar(100) DEFAULT NULL,
  `f_localPriority` varchar(100) DEFAULT NULL,
  `f_masterOnly` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_pBit` varchar(100) DEFAULT NULL,
  `f_ptpBcOcPortId` varchar(100) DEFAULT NULL,
  `f_ptpMulticastAddress` varchar(100) DEFAULT NULL,
  `f_ptpPathTimeError` varchar(100) DEFAULT NULL,
  `f_ptpPortStatus` varchar(100) DEFAULT NULL,
  `f_syncMessageInterval` varchar(100) DEFAULT NULL,
  `f_transportInterface` varchar(255) DEFAULT NULL,
  `f_transportVlan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_PtpBcOcPort`
--

LOCK TABLES `t_PtpBcOcPort` WRITE;
/*!40000 ALTER TABLE `t_PtpBcOcPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_PtpBcOcPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_QciProfilePredefined`
--

DROP TABLE IF EXISTS `t_QciProfilePredefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QciProfilePredefined` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_QciTableId` varchar(100) DEFAULT NULL,
  `f_absPrioOverride` varchar(100) DEFAULT NULL,
  `f_aqmMode` varchar(100) DEFAULT NULL,
  `f_bitRateRecommendationEnabled` varchar(100) DEFAULT NULL,
  `f_counterActiveMode` varchar(100) DEFAULT NULL,
  `f_dataFwdPerQciEnabled` varchar(100) DEFAULT NULL,
  `f_dlMaxHARQTxQci` varchar(100) DEFAULT NULL,
  `f_dlMaxWaitingTime` varchar(100) DEFAULT NULL,
  `f_dlMinBitRate` varchar(100) DEFAULT NULL,
  `f_dlResourceAllocationStrategy` varchar(100) DEFAULT NULL,
  `f_drxPriority` varchar(100) DEFAULT NULL,
  `f_drxProfileRef` varchar(100) DEFAULT NULL,
  `f_dscp` varchar(255) DEFAULT NULL,
  `f_endcProfileRef` varchar(255) DEFAULT NULL,
  `f_harqPriority` varchar(100) DEFAULT NULL,
  `f_inactivityTimerOffset` varchar(100) DEFAULT NULL,
  `f_lessMaxDelayThreshold` varchar(255) DEFAULT NULL,
  `f_logicalChannelGroupRef` text,
  `f_measReportConfigParams` text,
  `f_pdb` varchar(100) DEFAULT NULL,
  `f_pdbOffset` varchar(100) DEFAULT NULL,
  `f_pdcpSNLength` varchar(100) DEFAULT NULL,
  `f_priority` varchar(100) DEFAULT NULL,
  `f_priorityFraction` varchar(100) DEFAULT NULL,
  `f_qci` varchar(100) DEFAULT NULL,
  `f_qciACTuning` varchar(100) DEFAULT NULL,
  `f_qciProfilePredefinedId` varchar(100) DEFAULT NULL,
  `f_qciSubscriptionQuanta` varchar(100) DEFAULT NULL,
  `f_relativePriority` varchar(100) DEFAULT NULL,
  `f_resourceAllocationStrategy` varchar(100) DEFAULT NULL,
  `f_resourceType` varchar(100) DEFAULT NULL,
  `f_rlcMode` varchar(100) DEFAULT NULL,
  `f_rlcSNLength` varchar(100) DEFAULT NULL,
  `f_rlfPriority` varchar(100) DEFAULT NULL,
  `f_rlfProfileRef` varchar(100) DEFAULT NULL,
  `f_rohcEnabled` varchar(100) DEFAULT NULL,
  `f_schedulingAlgorithm` varchar(100) DEFAULT NULL,
  `f_serviceType` varchar(100) DEFAULT NULL,
  `f_srsAllocationStrategy` varchar(100) DEFAULT NULL,
  `f_tReorderingDl` varchar(100) DEFAULT NULL,
  `f_tReorderingUl` varchar(100) DEFAULT NULL,
  `f_timerPriority` varchar(100) DEFAULT NULL,
  `f_timerProfileRef` varchar(100) DEFAULT NULL,
  `f_ulMaxHARQTxQci` varchar(100) DEFAULT NULL,
  `f_ulMaxWaitingTime` varchar(100) DEFAULT NULL,
  `f_ulMinBitRate` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_QciProfilePredefined`
--

LOCK TABLES `t_QciProfilePredefined` WRITE;
/*!40000 ALTER TABLE `t_QciProfilePredefined` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_QciProfilePredefined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_QciTable`
--

DROP TABLE IF EXISTS `t_QciTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QciTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_qciTableId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_QciTable`
--

LOCK TABLES `t_QciTable` WRITE;
/*!40000 ALTER TABLE `t_QciTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_QciTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_QosProfiles`
--

DROP TABLE IF EXISTS `t_QosProfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_QosProfiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_qosProfilesId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_QosProfiles`
--

LOCK TABLES `t_QosProfiles` WRITE;
/*!40000 ALTER TABLE `t_QosProfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_QosProfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RadioBearerTable`
--

DROP TABLE IF EXISTS `t_RadioBearerTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioBearerTable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_radioBearerTableId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RadioBearerTable`
--

LOCK TABLES `t_RadioBearerTable` WRITE;
/*!40000 ALTER TABLE `t_RadioBearerTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RadioBearerTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RadioEquipmentClock`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_SynchronizationId` varchar(100) DEFAULT NULL,
  `f_bfnOffset` varchar(100) DEFAULT NULL,
  `f_freqDeviationThreshold` varchar(100) DEFAULT NULL,
  `f_minQualityLevel` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_selectionProcessMode` varchar(100) DEFAULT NULL,
  `f_timeHoldoverAlarmConfig` varchar(100) DEFAULT NULL,
  `f_timeSyncAssistanceState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RadioEquipmentClock`
--

LOCK TABLES `t_RadioEquipmentClock` WRITE;
/*!40000 ALTER TABLE `t_RadioEquipmentClock` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RadioEquipmentClock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RadioEquipmentClockReference`
--

DROP TABLE IF EXISTS `t_RadioEquipmentClockReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RadioEquipmentClockReference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_SynchronizationId` varchar(100) DEFAULT NULL,
  `f_RadioEquipmentClockId` varchar(100) DEFAULT NULL,
  `f_adminQualityLevel` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_encapsulation` varchar(255) DEFAULT NULL,
  `f_holdOffTime` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_priority` varchar(100) DEFAULT NULL,
  `f_radioEquipmentClockReferenceId` varchar(100) DEFAULT NULL,
  `f_receivedQualityLevel` varchar(100) DEFAULT NULL,
  `f_referenceStatus` varchar(100) DEFAULT NULL,
  `f_syncRefType` varchar(100) DEFAULT NULL,
  `f_useQLFrom` varchar(100) DEFAULT NULL,
  `f_waitToRestoreTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RadioEquipmentClockReference`
--

LOCK TABLES `t_RadioEquipmentClockReference` WRITE;
/*!40000 ALTER TABLE `t_RadioEquipmentClockReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RadioEquipmentClockReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Rcs`
--

DROP TABLE IF EXISTS `t_Rcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rcs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_rcsId` varchar(100) DEFAULT NULL,
  `f_rlcDlDeliveryFailureAction` varchar(100) DEFAULT NULL,
  `f_tInactivityTimer` varchar(100) DEFAULT NULL,
  `f_tInactivityTimerBr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Rcs`
--

LOCK TABLES `t_Rcs` WRITE;
/*!40000 ALTER TABLE `t_Rcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Rcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA1A2Br`
--

DROP TABLE IF EXISTS `t_ReportConfigA1A2Br`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1A2Br` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1a2UlIntraSearchIntraFThr` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2UlIntraFSearch` varchar(100) DEFAULT NULL,
  `f_reportConfigA1A2BrId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1UlIntraFSearch` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2UlIntraFSearch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA1A2Br`
--

LOCK TABLES `t_ReportConfigA1A2Br` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA1A2Br` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA1A2Br` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA1Prim`
--

DROP TABLE IF EXISTS `t_ReportConfigA1Prim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1Prim` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1ThrRsrpPrimOffsetCeABr` varchar(100) DEFAULT NULL,
  `f_a1ThresholdRsrpPrim` varchar(100) DEFAULT NULL,
  `f_a1ThresholdRsrqPrim` varchar(100) DEFAULT NULL,
  `f_hysteresisA1Prim` varchar(100) DEFAULT NULL,
  `f_reportConfigA1PrimId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1Prim` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA1Prim`
--

LOCK TABLES `t_ReportConfigA1Prim` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA1Prim` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA1Prim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA1Sec`
--

DROP TABLE IF EXISTS `t_ReportConfigA1Sec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA1Sec` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1ThrRsrpSecOffsetCeABr` varchar(100) DEFAULT NULL,
  `f_a1ThresholdRsrpSec` varchar(100) DEFAULT NULL,
  `f_a1ThresholdRsrqSec` varchar(100) DEFAULT NULL,
  `f_hysteresisA1Sec` varchar(100) DEFAULT NULL,
  `f_reportConfigA1SecId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1Sec` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA1Sec`
--

LOCK TABLES `t_ReportConfigA1Sec` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA1Sec` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA1Sec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA4`
--

DROP TABLE IF EXISTS `t_ReportConfigA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA4` varchar(100) DEFAULT NULL,
  `f_reportConfigA4Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA4` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA4`
--

LOCK TABLES `t_ReportConfigA4` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA4` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA5`
--

DROP TABLE IF EXISTS `t_ReportConfigA5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA5` varchar(100) DEFAULT NULL,
  `f_hysteresisA5RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigA5Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA5` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA5Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA5`
--

LOCK TABLES `t_ReportConfigA5` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA5` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA5Anr`
--

DROP TABLE IF EXISTS `t_ReportConfigA5Anr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5Anr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_ReportConfigA5Id` varchar(100) DEFAULT NULL,
  `f_a5Threshold1RsrpAnrDelta` varchar(100) DEFAULT NULL,
  `f_a5Threshold1RsrqAnrDelta` varchar(100) DEFAULT NULL,
  `f_a5Threshold2RsrpAnrDelta` varchar(100) DEFAULT NULL,
  `f_a5Threshold2RsrqAnrDelta` varchar(100) DEFAULT NULL,
  `f_hysteresisA5` varchar(100) DEFAULT NULL,
  `f_reportConfigA5AnrId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA5Anr`
--

LOCK TABLES `t_ReportConfigA5Anr` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA5Anr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA5Anr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA5DlComp`
--

DROP TABLE IF EXISTS `t_ReportConfigA5DlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5DlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigA5DlCompId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA5DlComp`
--

LOCK TABLES `t_ReportConfigA5DlComp` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA5DlComp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA5DlComp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA5SoftLock`
--

DROP TABLE IF EXISTS `t_ReportConfigA5SoftLock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5SoftLock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrp` varchar(100) DEFAULT NULL,
  `f_reportConfigA5SoftLockId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA5SoftLock`
--

LOCK TABLES `t_ReportConfigA5SoftLock` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA5SoftLock` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA5SoftLock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigA5UlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigA5UlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigA5UlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA5` varchar(100) DEFAULT NULL,
  `f_reportConfigA5UlTrigId` varchar(100) DEFAULT NULL,
  `f_reportIntervalA5` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigA5UlTrig`
--

LOCK TABLES `t_ReportConfigA5UlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigA5UlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigA5UlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB1GUtra`
--

DROP TABLE IF EXISTS `t_ReportConfigB1GUtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1GUtra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b1Threshold` varchar(100) DEFAULT NULL,
  `f_hysteresisB1` varchar(100) DEFAULT NULL,
  `f_reportConfigB1GUtraId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB1` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB1GUtra`
--

LOCK TABLES `t_ReportConfigB1GUtra` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB1GUtra` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB1GUtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB1Geran`
--

DROP TABLE IF EXISTS `t_ReportConfigB1Geran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1Geran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b1ThresholdGeran` varchar(100) DEFAULT NULL,
  `f_hysteresisB1` varchar(100) DEFAULT NULL,
  `f_reportConfigB1GeranId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB1Geran`
--

LOCK TABLES `t_ReportConfigB1Geran` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB1Geran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB1Geran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB1NR`
--

DROP TABLE IF EXISTS `t_ReportConfigB1NR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1NR` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b1Threshold` varchar(100) DEFAULT NULL,
  `f_hysteresisB1` varchar(100) DEFAULT NULL,
  `f_reportConfigB1NRId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB1` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB1NR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB1NR`
--

LOCK TABLES `t_ReportConfigB1NR` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB1NR` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB1NR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB1Utra`
--

DROP TABLE IF EXISTS `t_ReportConfigB1Utra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB1Utra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b1ThresholdEcNoUtra` varchar(100) DEFAULT NULL,
  `f_b1ThresholdRscpUtra` varchar(100) DEFAULT NULL,
  `f_hysteresisB1` varchar(100) DEFAULT NULL,
  `f_reportConfigB1UtraId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB1Utra`
--

LOCK TABLES `t_ReportConfigB1Utra` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB1Utra` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB1Utra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2Cdma2000`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Cdma2000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Cdma2000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_b2Threshold2Cdma2000` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigB2Cdma2000Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2Cdma2000`
--

LOCK TABLES `t_ReportConfigB2Cdma2000` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2Cdma2000` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2Cdma2000` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2Cdma20001xRtt`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Cdma20001xRtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Cdma20001xRtt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_b2Threshold2Cdma20001xRtt` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigB2Cdma20001xRttId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2Cdma20001xRtt`
--

LOCK TABLES `t_ReportConfigB2Cdma20001xRtt` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2Cdma20001xRtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2Cdma20001xRtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2CdmaRttUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2CdmaRttUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2CdmaRttUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2CdmaRttUlTrigId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2CdmaRttUlTrig`
--

LOCK TABLES `t_ReportConfigB2CdmaRttUlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2CdmaRttUlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2CdmaRttUlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2CdmaUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2CdmaUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2CdmaUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigB2CdmaUlTrigId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2CdmaUlTrig`
--

LOCK TABLES `t_ReportConfigB2CdmaUlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2CdmaUlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2CdmaUlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2Geran`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Geran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Geran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_b2Threshold2Geran` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigB2GeranId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2Geran`
--

LOCK TABLES `t_ReportConfigB2Geran` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2Geran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2Geran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2GeranUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2GeranUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2GeranUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold2Geran` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_reportConfigB2GeranUlTrigId` varchar(100) DEFAULT NULL,
  `f_reportIntervalB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2GeranUlTrig`
--

LOCK TABLES `t_ReportConfigB2GeranUlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2GeranUlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2GeranUlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2Utra`
--

DROP TABLE IF EXISTS `t_ReportConfigB2Utra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2Utra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_b2Threshold1Rsrq` varchar(100) DEFAULT NULL,
  `f_b2Threshold2EcNoUtra` varchar(100) DEFAULT NULL,
  `f_b2Threshold2RscpUtra` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_hysteresisB2RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigB2UtraId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2Utra`
--

LOCK TABLES `t_ReportConfigB2Utra` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2Utra` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2Utra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigB2UtraUlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigB2UtraUlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigB2UtraUlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_b2Threshold2EcNoUtra` varchar(100) DEFAULT NULL,
  `f_b2Threshold2RscpUtra` varchar(100) DEFAULT NULL,
  `f_hysteresisB2` varchar(100) DEFAULT NULL,
  `f_reportConfigB2UtraUlTrigId` varchar(100) DEFAULT NULL,
  `f_reportIntervalB2` varchar(100) DEFAULT NULL,
  `f_timeToTriggerB2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigB2UtraUlTrig`
--

LOCK TABLES `t_ReportConfigB2UtraUlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigB2UtraUlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigB2UtraUlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigCsfbCdma2000`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbCdma2000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbCdma2000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_hysteresis` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbCdma2000Id` varchar(100) DEFAULT NULL,
  `f_thresholdCdma20001xRtt` varchar(100) DEFAULT NULL,
  `f_timeToTrigger` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigCsfbCdma2000`
--

LOCK TABLES `t_ReportConfigCsfbCdma2000` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigCsfbCdma2000` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigCsfbCdma2000` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigCsfbGeran`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbGeran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbGeran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_hysteresis` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbGeranId` varchar(100) DEFAULT NULL,
  `f_thresholdGeran` varchar(100) DEFAULT NULL,
  `f_timeToTrigger` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigCsfbGeran`
--

LOCK TABLES `t_ReportConfigCsfbGeran` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigCsfbGeran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigCsfbGeran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigCsfbUtra`
--

DROP TABLE IF EXISTS `t_ReportConfigCsfbUtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsfbUtra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_hysteresis` varchar(100) DEFAULT NULL,
  `f_reportConfigCsfbUtraId` varchar(100) DEFAULT NULL,
  `f_thresholdEcNo` varchar(100) DEFAULT NULL,
  `f_thresholdRscp` varchar(100) DEFAULT NULL,
  `f_timeToTrigger` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigCsfbUtra`
--

LOCK TABLES `t_ReportConfigCsfbUtra` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigCsfbUtra` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigCsfbUtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigCsg`
--

DROP TABLE IF EXISTS `t_ReportConfigCsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigCsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5Thr1RsrpAltCsgOffset` varchar(100) DEFAULT NULL,
  `f_a5Thr2RsrpAltCsgOffset` varchar(100) DEFAULT NULL,
  `f_hysteresisA5AltCsg` varchar(100) DEFAULT NULL,
  `f_reportConfigCsgId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA5AltCsg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigCsg`
--

LOCK TABLES `t_ReportConfigCsg` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigCsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigCsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraBadCovPrim`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBadCovPrim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBadCovPrim` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a2ThrRsrpPrimOffsetCeABr` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrpPrim` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrqPrim` varchar(100) DEFAULT NULL,
  `f_hysteresisA2Prim` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBadCovPrimId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2Prim` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA2Prim` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraBadCovPrim`
--

LOCK TABLES `t_ReportConfigEUtraBadCovPrim` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBadCovPrim` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBadCovPrim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraBadCovSec`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBadCovSec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBadCovSec` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a2ThrRsrpSecOffsetCeABr` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrpSec` varchar(100) DEFAULT NULL,
  `f_a2ThresholdRsrqSec` varchar(100) DEFAULT NULL,
  `f_hysteresisA2Sec` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBadCovSecId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2Sec` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA2Sec` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraBadCovSec`
--

LOCK TABLES `t_ReportConfigEUtraBadCovSec` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBadCovSec` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBadCovSec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraBestCell`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBestCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBestCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a3offset` varchar(100) DEFAULT NULL,
  `f_hysteresisA3` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBestCellId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraBestCell`
--

LOCK TABLES `t_ReportConfigEUtraBestCell` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBestCell` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBestCell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraBestCellAnr`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraBestCellAnr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraBestCellAnr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_ReportConfigEUtraBestCellId` varchar(100) DEFAULT NULL,
  `f_a3offsetAnrDelta` varchar(100) DEFAULT NULL,
  `f_hysteresisA3` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraBestCellAnrId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraBestCellAnr`
--

LOCK TABLES `t_ReportConfigEUtraBestCellAnr` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBestCellAnr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraBestCellAnr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraIFA3UlTrig`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraIFA3UlTrig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraIFA3UlTrig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a3Offset` varchar(100) DEFAULT NULL,
  `f_hysteresisA3` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraIFA3UlTrigId` varchar(100) DEFAULT NULL,
  `f_reportIntervalA3` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraIFA3UlTrig`
--

LOCK TABLES `t_ReportConfigEUtraIFA3UlTrig` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraIFA3UlTrig` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraIFA3UlTrig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraIFBestCell`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraIFBestCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraIFBestCell` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a3RsrqOffset` varchar(100) DEFAULT NULL,
  `f_a3offset` varchar(100) DEFAULT NULL,
  `f_hysteresisA3` varchar(100) DEFAULT NULL,
  `f_hysteresisA3RsrqOffset` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraIFBestCellId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3Rsrq` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraIFBestCell`
--

LOCK TABLES `t_ReportConfigEUtraIFBestCell` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraIFBestCell` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraIFBestCell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraInterFreqLb`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraInterFreqLb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraInterFreqLb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5Threshold1Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrp` varchar(100) DEFAULT NULL,
  `f_a5Threshold2Rsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA5` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraInterFreqLbId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraInterFreqLb`
--

LOCK TABLES `t_ReportConfigEUtraInterFreqLb` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraInterFreqLb` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraInterFreqLb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigEUtraInterFreqMbms`
--

DROP TABLE IF EXISTS `t_ReportConfigEUtraInterFreqMbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigEUtraInterFreqMbms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a5ThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA5` varchar(100) DEFAULT NULL,
  `f_reportConfigEUtraInterFreqMbmsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigEUtraInterFreqMbms`
--

LOCK TABLES `t_ReportConfigEUtraInterFreqMbms` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigEUtraInterFreqMbms` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigEUtraInterFreqMbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigElcA1A2`
--

DROP TABLE IF EXISTS `t_ReportConfigElcA1A2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigElcA1A2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2Rsrp` varchar(100) DEFAULT NULL,
  `f_reportConfigElcA1A2Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigElcA1A2`
--

LOCK TABLES `t_ReportConfigElcA1A2` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigElcA1A2` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigElcA1A2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigInterEnbUlComp`
--

DROP TABLE IF EXISTS `t_ReportConfigInterEnbUlComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigInterEnbUlComp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a3Offset` varchar(100) DEFAULT NULL,
  `f_hysteresisA3` varchar(100) DEFAULT NULL,
  `f_reportConfigInterEnbUlCompId` varchar(100) DEFAULT NULL,
  `f_reportIntervalA3` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigInterEnbUlComp`
--

LOCK TABLES `t_ReportConfigInterEnbUlComp` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigInterEnbUlComp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigInterEnbUlComp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigInterRatLb`
--

DROP TABLE IF EXISTS `t_ReportConfigInterRatLb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigInterRatLb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_reportConfigInterRatLbId` varchar(100) DEFAULT NULL,
  `f_utranB1ThresholdEcNo` varchar(100) DEFAULT NULL,
  `f_utranB1ThresholdRscp` varchar(100) DEFAULT NULL,
  `f_utranHysteresisB1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigInterRatLb`
--

LOCK TABLES `t_ReportConfigInterRatLb` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigInterRatLb` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigInterRatLb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigSCellA1A2`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA1A2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA1A2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrpBidir` varchar(100) DEFAULT NULL,
  `f_a1a2ThresholdRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2Rsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2RsrpBidirectional` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2Rsrq` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA1A2Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA1A2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigSCellA1A2`
--

LOCK TABLES `t_ReportConfigSCellA1A2` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigSCellA1A2` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigSCellA1A2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigSCellA4`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_a4ThresholdRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA4` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA4Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA4` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigSCellA4`
--

LOCK TABLES `t_ReportConfigSCellA4` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigSCellA4` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigSCellA4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigSCellA6`
--

DROP TABLE IF EXISTS `t_ReportConfigSCellA6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSCellA6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a6offset` varchar(100) DEFAULT NULL,
  `f_hysteresisA6` varchar(100) DEFAULT NULL,
  `f_reportConfigSCellA6Id` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA6` varchar(100) DEFAULT NULL,
  `f_triggerQuantityA6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigSCellA6`
--

LOCK TABLES `t_ReportConfigSCellA6` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigSCellA6` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigSCellA6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ReportConfigSearch`
--

DROP TABLE IF EXISTS `t_ReportConfigSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ReportConfigSearch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UeMeasControlId` varchar(100) DEFAULT NULL,
  `f_a1a2SearchThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_a1a2SearchThresholdRsrq` varchar(100) DEFAULT NULL,
  `f_a1a2UlSearchThreshold` varchar(100) DEFAULT NULL,
  `f_a2CriticalOffsetPerPC` varchar(100) DEFAULT NULL,
  `f_a2CriticalThrQci1RsrpOffset` varchar(100) DEFAULT NULL,
  `f_a2CriticalThrQci1RsrqOffset` varchar(100) DEFAULT NULL,
  `f_a2CriticalThresholdRsrp` varchar(100) DEFAULT NULL,
  `f_a2CriticalThresholdRsrq` varchar(100) DEFAULT NULL,
  `f_a2OuterSearchThrRsrpOffset` varchar(100) DEFAULT NULL,
  `f_a2OuterSearchThrRsrqOffset` varchar(100) DEFAULT NULL,
  `f_a2UlCriticalThreshold` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2SearchRsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2SearchRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA1A2UlSearch` varchar(100) DEFAULT NULL,
  `f_hysteresisA2CriticalRsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA2CriticalRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA2OuterSearchRsrp` varchar(100) DEFAULT NULL,
  `f_hysteresisA2OuterSearchRsrq` varchar(100) DEFAULT NULL,
  `f_hysteresisA2UlCritical` varchar(100) DEFAULT NULL,
  `f_inhibitA2SearchConfig` varchar(100) DEFAULT NULL,
  `f_qciA1A2ThrOffsets` varchar(100) DEFAULT NULL,
  `f_qciA1A2UlThrOffsets` varchar(100) DEFAULT NULL,
  `f_reportConfigSearchId` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1Search` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1SearchRsrq` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA1UlSearch` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2Critical` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2CriticalRsrq` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2OutSearch` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2OutSearchRsrq` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2Search` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2SearchRsrq` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2UlCritical` varchar(100) DEFAULT NULL,
  `f_timeToTriggerA2UlSearch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ReportConfigSearch`
--

LOCK TABLES `t_ReportConfigSearch` WRITE;
/*!40000 ALTER TABLE `t_ReportConfigSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ReportConfigSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ResourcePartitions`
--

DROP TABLE IF EXISTS `t_ResourcePartitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ResourcePartitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_resourcePartitionsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ResourcePartitions`
--

LOCK TABLES `t_ResourcePartitions` WRITE;
/*!40000 ALTER TABLE `t_ResourcePartitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ResourcePartitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RetSubUnit`
--

DROP TABLE IF EXISTS `t_RetSubUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RetSubUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_AntennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_calibrationStatus` varchar(100) DEFAULT NULL,
  `f_electricalAntennaTilt` varchar(100) DEFAULT NULL,
  `f_iuantAntennaBearing` varchar(100) DEFAULT NULL,
  `f_iuantAntennaModelNumber` varchar(100) DEFAULT NULL,
  `f_iuantAntennaOperatingBand` varchar(100) DEFAULT NULL,
  `f_iuantAntennaOperatingGain` varchar(100) DEFAULT NULL,
  `f_iuantAntennaSerialNumber` varchar(100) DEFAULT NULL,
  `f_iuantBaseStationId` varchar(100) DEFAULT NULL,
  `f_iuantInstallationDate` varchar(100) DEFAULT NULL,
  `f_iuantInstallersId` varchar(100) DEFAULT NULL,
  `f_iuantSectorId` varchar(100) DEFAULT NULL,
  `f_maxTilt` varchar(100) DEFAULT NULL,
  `f_minTilt` varchar(100) DEFAULT NULL,
  `f_retSubUnitId` varchar(100) DEFAULT NULL,
  `f_subunitNumber` varchar(100) DEFAULT NULL,
  `f_tiltChangeStatus` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_verticalBeamWidthMode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RetSubUnit`
--

LOCK TABLES `t_RetSubUnit` WRITE;
/*!40000 ALTER TABLE `t_RetSubUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RetSubUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RfBranch`
--

DROP TABLE IF EXISTS `t_RfBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RfBranch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_auPortRef` varchar(255) DEFAULT NULL,
  `f_bandList` varchar(100) DEFAULT NULL,
  `f_dlAttenuation` varchar(100) DEFAULT NULL,
  `f_dlAttenuationPerFqRange` varchar(100) DEFAULT NULL,
  `f_dlTrafficDelay` varchar(100) DEFAULT NULL,
  `f_dlTrafficDelayPerFqRange` varchar(100) DEFAULT NULL,
  `f_rfBranchId` varchar(100) DEFAULT NULL,
  `f_rfPortRef` varchar(255) DEFAULT NULL,
  `f_tmaRef` varchar(255) DEFAULT NULL,
  `f_ulAttenuation` varchar(255) DEFAULT NULL,
  `f_ulAttenuationPerFqRange` varchar(100) DEFAULT NULL,
  `f_ulTrafficDelay` varchar(100) DEFAULT NULL,
  `f_ulTrafficDelayPerFqRange` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RfBranch`
--

LOCK TABLES `t_RfBranch` WRITE;
/*!40000 ALTER TABLE `t_RfBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RfBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RfPort`
--

DROP TABLE IF EXISTS `t_RfPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RfPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_antennaSupervisionActive` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_dlFrequencyRanges` varchar(100) DEFAULT NULL,
  `f_microSleepTxRadioCapability` varchar(100) DEFAULT NULL,
  `f_microSleepTxRadioStatus` varchar(100) DEFAULT NULL,
  `f_nodeUniqueRfPortId` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_rfPortId` varchar(100) DEFAULT NULL,
  `f_rlFreqSweepFailedReason` varchar(100) DEFAULT NULL,
  `f_rlFreqSweepStatus` varchar(100) DEFAULT NULL,
  `f_ulFrequencyRanges` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_vswrSupervisionActive` varchar(100) DEFAULT NULL,
  `f_vswrSupervisionSensitivity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RfPort`
--

LOCK TABLES `t_RfPort` WRITE;
/*!40000 ALTER TABLE `t_RfPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RfPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RiLink`
--

DROP TABLE IF EXISTS `t_RiLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RiLink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_fronthaulDeviceLineRate` varchar(100) DEFAULT NULL,
  `f_linkTag` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_riLinkId` varchar(100) DEFAULT NULL,
  `f_riPortRef1` varchar(255) DEFAULT NULL,
  `f_riPortRef2` varchar(255) DEFAULT NULL,
  `f_transportType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RiLink`
--

LOCK TABLES `t_RiLink` WRITE;
/*!40000 ALTER TABLE `t_RiLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RiLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RiPort`
--

DROP TABLE IF EXISTS `t_RiPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RiPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_channelRef` varchar(255) DEFAULT NULL,
  `f_preferredSfpProductNumber` varchar(100) DEFAULT NULL,
  `f_riPortId` varchar(255) DEFAULT NULL,
  `f_sfpModuleRef` varchar(255) DEFAULT NULL,
  `f_transmissionStandard` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RiPort`
--

LOCK TABLES `t_RiPort` WRITE;
/*!40000 ALTER TABLE `t_RiPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RiPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RlfProfile`
--

DROP TABLE IF EXISTS `t_RlfProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RlfProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_n310` varchar(100) DEFAULT NULL,
  `f_n311` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_rlfProfileId` varchar(100) DEFAULT NULL,
  `f_t301` varchar(100) DEFAULT NULL,
  `f_t310` varchar(100) DEFAULT NULL,
  `f_t311` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RlfProfile`
--

LOCK TABLES `t_RlfProfile` WRITE;
/*!40000 ALTER TABLE `t_RlfProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RlfProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Role`
--

DROP TABLE IF EXISTS `t_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_LocalAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_roleId` varchar(100) DEFAULT NULL,
  `f_roleName` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Role`
--

LOCK TABLES `t_Role` WRITE;
/*!40000 ALTER TABLE `t_Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_RouteTableIPv4Static`
--

DROP TABLE IF EXISTS `t_RouteTableIPv4Static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_RouteTableIPv4Static` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_RouterId` varchar(100) DEFAULT NULL,
  `f_routeTableIPv4StaticId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_RouteTableIPv4Static`
--

LOCK TABLES `t_RouteTableIPv4Static` WRITE;
/*!40000 ALTER TABLE `t_RouteTableIPv4Static` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_RouteTableIPv4Static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Router`
--

DROP TABLE IF EXISTS `t_Router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Router` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_hopLimit` varchar(100) DEFAULT NULL,
  `f_pathMtuExpiresIPv6` varchar(100) DEFAULT NULL,
  `f_routerId` varchar(100) DEFAULT NULL,
  `f_routingPolicyLocal` varchar(100) DEFAULT NULL,
  `f_ttl` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Router`
--

LOCK TABLES `t_Router` WRITE;
/*!40000 ALTER TABLE `t_Router` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Rrc`
--

DROP TABLE IF EXISTS `t_Rrc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rrc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_rrcId` varchar(100) DEFAULT NULL,
  `f_t300` varchar(100) DEFAULT NULL,
  `f_t300Br` varchar(100) DEFAULT NULL,
  `f_t300NbIot` varchar(100) DEFAULT NULL,
  `f_t301` varchar(100) DEFAULT NULL,
  `f_t301Br` varchar(100) DEFAULT NULL,
  `f_t301Nb` varchar(100) DEFAULT NULL,
  `f_t304` varchar(100) DEFAULT NULL,
  `f_t304Br` varchar(100) DEFAULT NULL,
  `f_t311` varchar(100) DEFAULT NULL,
  `f_t311Nb` varchar(100) DEFAULT NULL,
  `f_t320` varchar(100) DEFAULT NULL,
  `f_tRrcConnReest` varchar(100) DEFAULT NULL,
  `f_tRrcConnectionReconfiguration` varchar(100) DEFAULT NULL,
  `f_tWaitForRrcConnReest` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Rrc`
--

LOCK TABLES `t_Rrc` WRITE;
/*!40000 ALTER TABLE `t_Rrc` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Rrc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Rule`
--

DROP TABLE IF EXISTS `t_Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_LocalAuthorizationMethodId` varchar(100) DEFAULT NULL,
  `f_RoleId` varchar(100) DEFAULT NULL,
  `f_ruleId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Rule`
--

LOCK TABLES `t_Rule` WRITE;
/*!40000 ALTER TABLE `t_Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SHMFunction`
--

DROP TABLE IF EXISTS `t_SHMFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SHMFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_shmFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SHMFunction`
--

LOCK TABLES `t_SHMFunction` WRITE;
/*!40000 ALTER TABLE `t_SHMFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SHMFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Schema`
--

DROP TABLE IF EXISTS `t_Schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Schema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_baseModelIdentifier` varchar(100) DEFAULT NULL,
  `f_baseModelVersion` varchar(100) DEFAULT NULL,
  `f_identifier` varchar(100) DEFAULT NULL,
  `f_schemaId` varchar(100) DEFAULT NULL,
  `f_selectedModelOptions` varchar(100) DEFAULT NULL,
  `f_version` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Schema`
--

LOCK TABLES `t_Schema` WRITE;
/*!40000 ALTER TABLE `t_Schema` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SciProfile`
--

DROP TABLE IF EXISTS `t_SciProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SciProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_QciTableId` varchar(100) DEFAULT NULL,
  `f_absPrioOverride` varchar(100) DEFAULT NULL,
  `f_dlMaxWaitingTime` varchar(100) DEFAULT NULL,
  `f_dlMinBitRate` varchar(100) DEFAULT NULL,
  `f_dlRelativePriority` varchar(100) DEFAULT NULL,
  `f_dlResourceAllocationStrategy` varchar(100) DEFAULT NULL,
  `f_lessMaxDelayThreshold` varchar(100) DEFAULT NULL,
  `f_logicalChannelGroupRef` varchar(255) DEFAULT NULL,
  `f_pdb` varchar(100) DEFAULT NULL,
  `f_priority` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  `f_schedulingAlgorithm` varchar(100) DEFAULT NULL,
  `f_sci` varchar(100) DEFAULT NULL,
  `f_sciProfileId` varchar(100) DEFAULT NULL,
  `f_srsAllocationStrategy` varchar(100) DEFAULT NULL,
  `f_ulMaxWaitingTime` varchar(100) DEFAULT NULL,
  `f_ulMinBitRate` varchar(100) DEFAULT NULL,
  `f_ulRelativePriority` varchar(100) DEFAULT NULL,
  `f_ulResourceAllocationStrategy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SciProfile`
--

LOCK TABLES `t_SciProfile` WRITE;
/*!40000 ALTER TABLE `t_SciProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SciProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Sctp`
--

DROP TABLE IF EXISTS `t_Sctp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Sctp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_sctpId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Sctp`
--

LOCK TABLES `t_Sctp` WRITE;
/*!40000 ALTER TABLE `t_Sctp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Sctp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SctpAssociation`
--

DROP TABLE IF EXISTS `t_SctpAssociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpAssociation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_SctpEndpointId` varchar(100) DEFAULT NULL,
  `f_pmtudSctpPduSize` varchar(100) DEFAULT NULL,
  `f_sctpAssociationId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SctpAssociation`
--

LOCK TABLES `t_SctpAssociation` WRITE;
/*!40000 ALTER TABLE `t_SctpAssociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SctpAssociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SctpEndpoint`
--

DROP TABLE IF EXISTS `t_SctpEndpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpEndpoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_localIpAddress` varchar(255) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_portNumber` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  `f_sctpEndpointId` varchar(100) DEFAULT NULL,
  `f_sctpProfile` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SctpEndpoint`
--

LOCK TABLES `t_SctpEndpoint` WRITE;
/*!40000 ALTER TABLE `t_SctpEndpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SctpEndpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SctpProfile`
--

DROP TABLE IF EXISTS `t_SctpProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SctpProfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_alphaIndex` varchar(100) DEFAULT NULL,
  `f_assocMaxRtx` varchar(100) DEFAULT NULL,
  `f_betaIndex` varchar(100) DEFAULT NULL,
  `f_bundlingActivated` varchar(100) DEFAULT NULL,
  `f_bundlingAdaptiveActivated` varchar(100) DEFAULT NULL,
  `f_bundlingTimer` varchar(100) DEFAULT NULL,
  `f_cookieLife` varchar(100) DEFAULT NULL,
  `f_dscp` varchar(100) DEFAULT NULL,
  `f_hbMaxBurst` varchar(100) DEFAULT NULL,
  `f_heartbeatActivated` varchar(100) DEFAULT NULL,
  `f_heartbeatInterval` varchar(100) DEFAULT NULL,
  `f_incCookieLife` varchar(100) DEFAULT NULL,
  `f_initARWnd` varchar(100) DEFAULT NULL,
  `f_initRto` varchar(100) DEFAULT NULL,
  `f_initialHeartbeatInterval` varchar(100) DEFAULT NULL,
  `f_maxActivateThr` varchar(100) DEFAULT NULL,
  `f_maxBurst` varchar(100) DEFAULT NULL,
  `f_maxInStreams` varchar(100) DEFAULT NULL,
  `f_maxInitRt` varchar(100) DEFAULT NULL,
  `f_maxOutStreams` varchar(100) DEFAULT NULL,
  `f_maxRto` varchar(100) DEFAULT NULL,
  `f_maxSctpPduSize` varchar(100) DEFAULT NULL,
  `f_maxShutdownRt` varchar(100) DEFAULT NULL,
  `f_minActivateThr` varchar(100) DEFAULT NULL,
  `f_minRto` varchar(100) DEFAULT NULL,
  `f_noSwitchback` varchar(100) DEFAULT NULL,
  `f_pathMaxRtx` varchar(100) DEFAULT NULL,
  `f_primaryPathAvoidance` varchar(100) DEFAULT NULL,
  `f_primaryPathMaxRtx` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  `f_sackTimer` varchar(100) DEFAULT NULL,
  `f_sctpProfileId` varchar(100) DEFAULT NULL,
  `f_thrTransmitBuffer` varchar(100) DEFAULT NULL,
  `f_thrTransmitBufferCongCeased` varchar(100) DEFAULT NULL,
  `f_transmitBufferSize` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SctpProfile`
--

LOCK TABLES `t_SctpProfile` WRITE;
/*!40000 ALTER TABLE `t_SctpProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SctpProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SecM`
--

DROP TABLE IF EXISTS `t_SecM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_secMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SecM`
--

LOCK TABLES `t_SecM` WRITE;
/*!40000 ALTER TABLE `t_SecM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SecM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SectorCarrier`
--

DROP TABLE IF EXISTS `t_SectorCarrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SectorCarrier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_antCalModeTddAasDl` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_configuredMaxTxPower` varchar(100) DEFAULT NULL,
  `f_digitalTilt` varchar(100) DEFAULT NULL,
  `f_maximumTransmissionPower` varchar(100) DEFAULT NULL,
  `f_microSleepTxActivation` varchar(100) DEFAULT NULL,
  `f_noOfRxAntennas` varchar(100) DEFAULT NULL,
  `f_noOfTxAntennas` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_pimMitigAggressiveness` varchar(100) DEFAULT NULL,
  `f_pimMitigDlMutingFixed` varchar(100) DEFAULT NULL,
  `f_pimMitigDlMutingPerc` varchar(100) DEFAULT NULL,
  `f_pimMitigDlMutingPeriod` varchar(100) DEFAULT NULL,
  `f_pimMitigLevelThresh` varchar(100) DEFAULT NULL,
  `f_prsEnabled` varchar(100) DEFAULT NULL,
  `f_radioTransmitPerformanceMode` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_rfBranchRxRef` text,
  `f_rfBranchTxRef` text,
  `f_sectorCarrierId` varchar(100) DEFAULT NULL,
  `f_sectorFunctionRef` varchar(255) DEFAULT NULL,
  `f_sectorShape` varchar(100) DEFAULT NULL,
  `f_txPowerPersistentLock` varchar(100) DEFAULT NULL,
  `f_ulForcedTimingAdvanceCommand` varchar(100) DEFAULT NULL,
  `f_usedSectorShape` varchar(100) DEFAULT NULL,
  `f_virtualComChBeamfrmWtsAmplitude` varchar(100) DEFAULT NULL,
  `f_virtualComChBeamfrmWtsPhase` varchar(100) DEFAULT NULL,
  `f_virtualSector` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SectorCarrier`
--

LOCK TABLES `t_SectorCarrier` WRITE;
/*!40000 ALTER TABLE `t_SectorCarrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SectorCarrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SectorEquipmentFunction`
--

DROP TABLE IF EXISTS `t_SectorEquipmentFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SectorEquipmentFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_eUtranFqBands` text,
  `f_geranFqBands` varchar(100) DEFAULT NULL,
  `f_nRFqBands` text,
  `f_noiseFigure` varchar(100) DEFAULT NULL,
  `f_operationalState` text,
  `f_reservedBy` text,
  `f_rfBranchRef` text,
  `f_sectorEquipmentFunctionId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_utranFddFqBands` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SectorEquipmentFunction`
--

LOCK TABLES `t_SectorEquipmentFunction` WRITE;
/*!40000 ALTER TABLE `t_SectorEquipmentFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SectorEquipmentFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SecurityFunction`
--

DROP TABLE IF EXISTS `t_SecurityFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecurityFunction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_NetworkElementId` varchar(100) DEFAULT NULL,
  `f_securityFunctionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SecurityFunction`
--

LOCK TABLES `t_SecurityFunction` WRITE;
/*!40000 ALTER TABLE `t_SecurityFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SecurityFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SecurityHandling`
--

DROP TABLE IF EXISTS `t_SecurityHandling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SecurityHandling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_cipheringAlgoPrio` varchar(100) DEFAULT NULL,
  `f_countWrapSupervisionActive` varchar(100) DEFAULT NULL,
  `f_integrityProtectAlgoPrio` varchar(100) DEFAULT NULL,
  `f_rbIdSupervisionActive` varchar(100) DEFAULT NULL,
  `f_securityHandlingId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SecurityHandling`
--

LOCK TABLES `t_SecurityHandling` WRITE;
/*!40000 ALTER TABLE `t_SecurityHandling` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SecurityHandling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SfpChannel`
--

DROP TABLE IF EXISTS `t_SfpChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SfpChannel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_SfpModuleId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_sfpChannelId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SfpChannel`
--

LOCK TABLES `t_SfpChannel` WRITE;
/*!40000 ALTER TABLE `t_SfpChannel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SfpChannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SfpModule`
--

DROP TABLE IF EXISTS `t_SfpModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SfpModule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_sfpModuleId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SfpModule`
--

LOCK TABLES `t_SfpModule` WRITE;
/*!40000 ALTER TABLE `t_SfpModule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SfpModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SignalingRadioBearer`
--

DROP TABLE IF EXISTS `t_SignalingRadioBearer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SignalingRadioBearer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_RadioBearerTableId` varchar(100) DEFAULT NULL,
  `f_dlMaxRetxThreshold` varchar(100) DEFAULT NULL,
  `f_signalingRadioBearerId` varchar(100) DEFAULT NULL,
  `f_tPollRetransmitDl` varchar(100) DEFAULT NULL,
  `f_tPollRetransmitUl` varchar(100) DEFAULT NULL,
  `f_tReorderingDl` varchar(100) DEFAULT NULL,
  `f_tReorderingUl` varchar(100) DEFAULT NULL,
  `f_ulMaxRetxThreshold` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SignalingRadioBearer`
--

LOCK TABLES `t_SignalingRadioBearer` WRITE;
/*!40000 ALTER TABLE `t_SignalingRadioBearer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SignalingRadioBearer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Snmp`
--

DROP TABLE IF EXISTS `t_Snmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Snmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_agentAddress` varchar(100) DEFAULT NULL,
  `f_agentAddressDtls` varchar(100) DEFAULT NULL,
  `f_enableSourceCheckForV1V2C` varchar(100) DEFAULT NULL,
  `f_engineId` varchar(100) DEFAULT NULL,
  `f_nodeCredential` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_portDtls` varchar(100) DEFAULT NULL,
  `f_snmpId` varchar(100) DEFAULT NULL,
  `f_trustCategory` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Snmp`
--

LOCK TABLES `t_Snmp` WRITE;
/*!40000 ALTER TABLE `t_Snmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Snmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SnmpTargetV2C`
--

DROP TABLE IF EXISTS `t_SnmpTargetV2C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV2C` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_SnmpId` varchar(100) DEFAULT NULL,
  `f_address` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_community` varchar(100) DEFAULT NULL,
  `f_informRetryCount` varchar(100) DEFAULT NULL,
  `f_informTimeout` varchar(100) DEFAULT NULL,
  `f_isMibWritable` varchar(100) DEFAULT NULL,
  `f_networkPrefixLength` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_snmpTargetV2CId` varchar(100) DEFAULT NULL,
  `f_transportMethod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SnmpTargetV2C`
--

LOCK TABLES `t_SnmpTargetV2C` WRITE;
/*!40000 ALTER TABLE `t_SnmpTargetV2C` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SnmpTargetV2C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SnmpTargetV3`
--

DROP TABLE IF EXISTS `t_SnmpTargetV3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SnmpTargetV3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_SnmpId` varchar(100) DEFAULT NULL,
  `f_address` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_authKey` varchar(100) DEFAULT NULL,
  `f_authProtocol` varchar(100) DEFAULT NULL,
  `f_informRetryCount` varchar(100) DEFAULT NULL,
  `f_informTimeout` varchar(100) DEFAULT NULL,
  `f_isMibWritable` varchar(100) DEFAULT NULL,
  `f_port` varchar(100) DEFAULT NULL,
  `f_privKey` varchar(100) DEFAULT NULL,
  `f_privProtocol` varchar(100) DEFAULT NULL,
  `f_snmpSecurityLevel` varchar(100) DEFAULT NULL,
  `f_snmpTargetV3Id` varchar(100) DEFAULT NULL,
  `f_transportMethod` varchar(100) DEFAULT NULL,
  `f_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SnmpTargetV3`
--

LOCK TABLES `t_SnmpTargetV3` WRITE;
/*!40000 ALTER TABLE `t_SnmpTargetV3` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SnmpTargetV3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Ssh`
--

DROP TABLE IF EXISTS `t_Ssh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Ssh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_selectedCiphers` varchar(255) DEFAULT NULL,
  `f_selectedKeyExchanges` text,
  `f_selectedMacs` varchar(100) DEFAULT NULL,
  `f_sshId` varchar(100) DEFAULT NULL,
  `f_supportedCiphers` varchar(255) DEFAULT NULL,
  `f_supportedKeyExchanges` text,
  `f_supportedMacs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Ssh`
--

LOCK TABLES `t_Ssh` WRITE;
/*!40000 ALTER TABLE `t_Ssh` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Ssh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_StreamingCapabilities`
--

DROP TABLE IF EXISTS `t_StreamingCapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_StreamingCapabilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_PmEventMId` varchar(100) DEFAULT NULL,
  `f_EventProducerId` varchar(100) DEFAULT NULL,
  `f_streamCapabilitiesId` varchar(100) DEFAULT NULL,
  `f_supportedCompressionTypes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_StreamingCapabilities`
--

LOCK TABLES `t_StreamingCapabilities` WRITE;
/*!40000 ALTER TABLE `t_StreamingCapabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_StreamingCapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SupportUnit`
--

DROP TABLE IF EXISTS `t_SupportUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SupportUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_productData` varchar(255) DEFAULT NULL,
  `f_providedServices` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_supportUnitId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SupportUnit`
--

LOCK TABLES `t_SupportUnit` WRITE;
/*!40000 ALTER TABLE `t_SupportUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SupportUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SwInventory`
--

DROP TABLE IF EXISTS `t_SwInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwInventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_active` varchar(255) DEFAULT NULL,
  `f_swInventoryId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SwInventory`
--

LOCK TABLES `t_SwInventory` WRITE;
/*!40000 ALTER TABLE `t_SwInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SwInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SwItem`
--

DROP TABLE IF EXISTS `t_SwItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwItem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SwInventoryId` varchar(100) DEFAULT NULL,
  `f_additionalInfo` varchar(100) DEFAULT NULL,
  `f_administrativeData` text,
  `f_consistsOf` varchar(100) DEFAULT NULL,
  `f_swItemId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SwItem`
--

LOCK TABLES `t_SwItem` WRITE;
/*!40000 ALTER TABLE `t_SwItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SwItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SwM`
--

DROP TABLE IF EXISTS `t_SwM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_actionCapable` varchar(100) DEFAULT NULL,
  `f_actionCapableInfo` varchar(100) DEFAULT NULL,
  `f_defaultPassword` varchar(100) DEFAULT NULL,
  `f_defaultUri` varchar(100) DEFAULT NULL,
  `f_fallbackTimer` varchar(100) DEFAULT NULL,
  `f_localFileStorePath` varchar(100) DEFAULT NULL,
  `f_reportProgress` text,
  `f_swMId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SwM`
--

LOCK TABLES `t_SwM` WRITE;
/*!40000 ALTER TABLE `t_SwM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SwM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SwVersion`
--

DROP TABLE IF EXISTS `t_SwVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SwVersion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SwInventoryId` varchar(100) DEFAULT NULL,
  `f_administrativeData` varchar(255) DEFAULT NULL,
  `f_consistsOf` text,
  `f_swVersionId` varchar(100) DEFAULT NULL,
  `f_timeOfActivation` varchar(100) DEFAULT NULL,
  `f_timeOfDeactivation` varchar(100) DEFAULT NULL,
  `f_timeOfInstallation` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SwVersion`
--

LOCK TABLES `t_SwVersion` WRITE;
/*!40000 ALTER TABLE `t_SwVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SwVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SyncPort`
--

DROP TABLE IF EXISTS `t_SyncPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SyncPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(100) DEFAULT NULL,
  `f_syncPortId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SyncPort`
--

LOCK TABLES `t_SyncPort` WRITE;
/*!40000 ALTER TABLE `t_SyncPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SyncPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Synchronization`
--

DROP TABLE IF EXISTS `t_Synchronization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Synchronization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_fixedPosition` varchar(100) DEFAULT NULL,
  `f_synchronizationId` varchar(100) DEFAULT NULL,
  `f_telecomStandard` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Synchronization`
--

LOCK TABLES `t_Synchronization` WRITE;
/*!40000 ALTER TABLE `t_Synchronization` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Synchronization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SysM`
--

DROP TABLE IF EXISTS `t_SysM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SysM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_sysMId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SysM`
--

LOCK TABLES `t_SysM` WRITE;
/*!40000 ALTER TABLE `t_SysM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SysM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_SystemFunctions`
--

DROP TABLE IF EXISTS `t_SystemFunctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_SystemFunctions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_systemFunctionsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_SystemFunctions`
--

LOCK TABLES `t_SystemFunctions` WRITE;
/*!40000 ALTER TABLE `t_SystemFunctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_SystemFunctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TermPointToENB`
--

DROP TABLE IF EXISTS `t_TermPointToENB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToENB` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtraNetworkId` varchar(100) DEFAULT NULL,
  `f_ExternalENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_domainName` varchar(100) DEFAULT NULL,
  `f_eranUlCompSwCompatibility` varchar(100) DEFAULT NULL,
  `f_ipAddress` varchar(100) DEFAULT NULL,
  `f_ipv6Address` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_termPointToENBId` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_usedIpAddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TermPointToENB`
--

LOCK TABLES `t_TermPointToENB` WRITE;
/*!40000 ALTER TABLE `t_TermPointToENB` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TermPointToENB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TermPointToMme`
--

DROP TABLE IF EXISTS `t_TermPointToMme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToMme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_additionalCnRef` varchar(100) DEFAULT NULL,
  `f_administrativeState` varchar(100) DEFAULT NULL,
  `f_availabilityStatus` varchar(100) DEFAULT NULL,
  `f_dcnType` varchar(100) DEFAULT NULL,
  `f_domainName` varchar(100) DEFAULT NULL,
  `f_ipAddress1` varchar(100) DEFAULT NULL,
  `f_ipAddress2` varchar(100) DEFAULT NULL,
  `f_ipv6Address1` varchar(100) DEFAULT NULL,
  `f_ipv6Address2` varchar(100) DEFAULT NULL,
  `f_mmeCodeListLTERelated` varchar(100) DEFAULT NULL,
  `f_mmeCodeListOtherRATs` varchar(100) DEFAULT NULL,
  `f_mmeGIListLTERelated` varchar(100) DEFAULT NULL,
  `f_mmeName` varchar(100) DEFAULT NULL,
  `f_mmeSupportLegacyLte` varchar(100) DEFAULT NULL,
  `f_mmeSupportNbIoT` varchar(100) DEFAULT NULL,
  `f_operationalState` varchar(100) DEFAULT NULL,
  `f_relativeMmeCapacity` varchar(100) DEFAULT NULL,
  `f_servedPlmnListLTERelated` varchar(100) DEFAULT NULL,
  `f_servedPlmnListOtherRATs` varchar(100) DEFAULT NULL,
  `f_termPointToMmeId` varchar(100) DEFAULT NULL,
  `f_usedIpAddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TermPointToMme`
--

LOCK TABLES `t_TermPointToMme` WRITE;
/*!40000 ALTER TABLE `t_TermPointToMme` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TermPointToMme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TermPointToSGW`
--

DROP TABLE IF EXISTS `t_TermPointToSGW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TermPointToSGW` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_termPointToSGWId` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TermPointToSGW`
--

LOCK TABLES `t_TermPointToSGW` WRITE;
/*!40000 ALTER TABLE `t_TermPointToSGW` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TermPointToSGW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TimeM`
--

DROP TABLE IF EXISTS `t_TimeM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TimeM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_timeMId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TimeM`
--

LOCK TABLES `t_TimeM` WRITE;
/*!40000 ALTER TABLE `t_TimeM` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TimeM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TimeSettings`
--

DROP TABLE IF EXISTS `t_TimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TimeSettings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_NodeSupportId` varchar(100) DEFAULT NULL,
  `f_daylightSavingTimeEndDate` varchar(100) DEFAULT NULL,
  `f_daylightSavingTimeOffset` varchar(100) DEFAULT NULL,
  `f_daylightSavingTimeStartDate` varchar(100) DEFAULT NULL,
  `f_gpsToUtcLeapSeconds` varchar(100) DEFAULT NULL,
  `f_gpsToUtcLeapSecondsChangeDate` varchar(100) DEFAULT NULL,
  `f_timeOffset` varchar(100) DEFAULT NULL,
  `f_timeSettingsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TimeSettings`
--

LOCK TABLES `t_TimeSettings` WRITE;
/*!40000 ALTER TABLE `t_TimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Tls`
--

DROP TABLE IF EXISTS `t_Tls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Tls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_cipherFilter` varchar(100) DEFAULT NULL,
  `f_enabledCiphers` text,
  `f_supportedCiphers` text,
  `f_tlsId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Tls`
--

LOCK TABLES `t_Tls` WRITE;
/*!40000 ALTER TABLE `t_Tls` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Tls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TmaSubUnit`
--

DROP TABLE IF EXISTS `t_TmaSubUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TmaSubUnit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_AntennaUnitGroupId` varchar(100) DEFAULT NULL,
  `f_AntennaNearUnitId` varchar(100) DEFAULT NULL,
  `f_dlAttenuation` varchar(100) DEFAULT NULL,
  `f_dlTrafficDelay` varchar(100) DEFAULT NULL,
  `f_iuantAntennaBearing` varchar(100) DEFAULT NULL,
  `f_iuantAntennaInstalledMechanicalTilt` varchar(100) DEFAULT NULL,
  `f_iuantAntennaModelNumber` varchar(100) DEFAULT NULL,
  `f_iuantAntennaOperatingBand` varchar(100) DEFAULT NULL,
  `f_iuantAntennaOperatingGain` varchar(100) DEFAULT NULL,
  `f_iuantAntennaSerialNumber` varchar(100) DEFAULT NULL,
  `f_iuantBaseStationId` varchar(100) DEFAULT NULL,
  `f_iuantInstallationDate` varchar(100) DEFAULT NULL,
  `f_iuantInstallersId` varchar(100) DEFAULT NULL,
  `f_iuantSectorId` varchar(100) DEFAULT NULL,
  `f_iuantTmaSubunitFreqRangeRx` varchar(100) DEFAULT NULL,
  `f_iuantTmaSubunitFreqRangeTx` varchar(100) DEFAULT NULL,
  `f_iuantTmaSubunitGainRes` varchar(100) DEFAULT NULL,
  `f_iuantTmaSubunitMaxGain` varchar(100) DEFAULT NULL,
  `f_iuantTmaSubunitMinGain` varchar(100) DEFAULT NULL,
  `f_subunitNumber` varchar(100) DEFAULT NULL,
  `f_tmaSubUnitId` varchar(100) DEFAULT NULL,
  `f_tmaType` varchar(100) DEFAULT NULL,
  `f_tmfData` varchar(255) DEFAULT NULL,
  `f_ulGain` varchar(100) DEFAULT NULL,
  `f_ulTrafficDelay` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TmaSubUnit`
--

LOCK TABLES `t_TmaSubUnit` WRITE;
/*!40000 ALTER TABLE `t_TmaSubUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TmaSubUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TnPort`
--

DROP TABLE IF EXISTS `t_TnPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TnPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_EquipmentId` varchar(100) DEFAULT NULL,
  `f_FieldReplaceableUnitId` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_sfpModuleRef` varchar(255) DEFAULT NULL,
  `f_tnPortId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TnPort`
--

LOCK TABLES `t_TnPort` WRITE;
/*!40000 ALTER TABLE `t_TnPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TnPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TopologySchema`
--

DROP TABLE IF EXISTS `t_TopologySchema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TopologySchema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SysMId` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `f_topologySchemaId` varchar(100) DEFAULT NULL,
  `f_version` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TopologySchema`
--

LOCK TABLES `t_TopologySchema` WRITE;
/*!40000 ALTER TABLE `t_TopologySchema` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TopologySchema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_Transport`
--

DROP TABLE IF EXISTS `t_Transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_Transport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_transportId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_Transport`
--

LOCK TABLES `t_Transport` WRITE;
/*!40000 ALTER TABLE `t_Transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_Transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TrustCategory`
--

DROP TABLE IF EXISTS `t_TrustCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TrustCategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_crlCheck` varchar(100) DEFAULT NULL,
  `f_crlInterface` varchar(100) DEFAULT NULL,
  `f_trustCategoryId` varchar(100) DEFAULT NULL,
  `f_trustedCertificates` text,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TrustCategory`
--

LOCK TABLES `t_TrustCategory` WRITE;
/*!40000 ALTER TABLE `t_TrustCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TrustCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_TrustedCertificate`
--

DROP TABLE IF EXISTS `t_TrustedCertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_TrustedCertificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_certificateContent` text,
  `f_certificateState` varchar(100) DEFAULT NULL,
  `f_managedState` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_trustedCertificateId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_TrustedCertificate`
--

LOCK TABLES `t_TrustedCertificate` WRITE;
/*!40000 ALTER TABLE `t_TrustedCertificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_TrustedCertificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UeMeasControl`
--

DROP TABLE IF EXISTS `t_UeMeasControl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UeMeasControl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_a3MobilityTimerBr` varchar(100) DEFAULT NULL,
  `f_a3SuspendCsgTimer` varchar(100) DEFAULT NULL,
  `f_a5B2MobilityTimer` varchar(100) DEFAULT NULL,
  `f_a5MobilityTimerBr` varchar(100) DEFAULT NULL,
  `f_allowReleaseQci1` varchar(100) DEFAULT NULL,
  `f_bothA5RsrpRsrqCheck` varchar(100) DEFAULT NULL,
  `f_bothB1RscpEcnoCheck` varchar(100) DEFAULT NULL,
  `f_bothB2RscpEcnoCheck` varchar(100) DEFAULT NULL,
  `f_bothInterA3RsrpRsrqCheck` varchar(100) DEFAULT NULL,
  `f_bothIntraA3RsrpRsrqCheck` varchar(100) DEFAULT NULL,
  `f_checkA2SearchLevel` varchar(100) DEFAULT NULL,
  `f_csfbHoTargetSearchTimer` varchar(100) DEFAULT NULL,
  `f_excludeInterFreqAtCritical` varchar(100) DEFAULT NULL,
  `f_filterCoefficientEUtraNI` varchar(100) DEFAULT NULL,
  `f_filterCoefficientEUtraRsrp` varchar(100) DEFAULT NULL,
  `f_filterCoefficientEUtraRsrq` varchar(100) DEFAULT NULL,
  `f_filterCoefficientEUtraUlSinrMax` varchar(100) DEFAULT NULL,
  `f_filterCoefficientEcnoUtra` varchar(100) DEFAULT NULL,
  `f_filterCoefficientRscpUtra` varchar(100) DEFAULT NULL,
  `f_inhibitB2RsrqConfig` varchar(100) DEFAULT NULL,
  `f_intraFreqMeasModeBr` varchar(100) DEFAULT NULL,
  `f_lowPrioMeasThresh` varchar(100) DEFAULT NULL,
  `f_maxMeasCdma20001xRtt` varchar(100) DEFAULT NULL,
  `f_maxMeasCdma2000eHrpd` varchar(100) DEFAULT NULL,
  `f_maxMeasEUtraOther` varchar(100) DEFAULT NULL,
  `f_maxMeasGeran` varchar(100) DEFAULT NULL,
  `f_maxMeasInterFreqEUtra` varchar(100) DEFAULT NULL,
  `f_maxMeasNR` varchar(100) DEFAULT NULL,
  `f_maxMeasUtraFdd` varchar(100) DEFAULT NULL,
  `f_maxMeasUtraTdd` varchar(100) DEFAULT NULL,
  `f_maxNoMeasReportsInact` varchar(100) DEFAULT NULL,
  `f_maxUtranCellsToMeasure` varchar(100) DEFAULT NULL,
  `f_measQuantityUtraFDD` varchar(100) DEFAULT NULL,
  `f_nrB1MobiltyTimerLessTtt` varchar(100) DEFAULT NULL,
  `f_prioOffsetPerQci` varchar(100) DEFAULT NULL,
  `f_rwrToNRAllowed` varchar(100) DEFAULT NULL,
  `f_sMeasure` varchar(100) DEFAULT NULL,
  `f_searchEffortTime` varchar(100) DEFAULT NULL,
  `f_servOrPrioIFHoTimer` varchar(100) DEFAULT NULL,
  `f_targetA2UlSearchOffset` varchar(100) DEFAULT NULL,
  `f_ueMeasControlId` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActive` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveBr` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveCDMA2000` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveCDMA20001xRtt` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveGERAN` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveIF` varchar(100) DEFAULT NULL,
  `f_ueMeasurementsActiveUTRAN` varchar(100) DEFAULT NULL,
  `f_ulSinrOffset` varchar(100) DEFAULT NULL,
  `f_waitForResumeNRMeas` varchar(100) DEFAULT NULL,
  `f_waitForStartNRMeas` varchar(100) DEFAULT NULL,
  `f_zzzTemporary1` varchar(100) DEFAULT NULL,
  `f_zzzTemporary10` varchar(100) DEFAULT NULL,
  `f_zzzTemporary11` varchar(100) DEFAULT NULL,
  `f_zzzTemporary12` varchar(100) DEFAULT NULL,
  `f_zzzTemporary13` varchar(100) DEFAULT NULL,
  `f_zzzTemporary14` varchar(100) DEFAULT NULL,
  `f_zzzTemporary15` varchar(100) DEFAULT NULL,
  `f_zzzTemporary16` varchar(100) DEFAULT NULL,
  `f_zzzTemporary17` varchar(100) DEFAULT NULL,
  `f_zzzTemporary18` varchar(100) DEFAULT NULL,
  `f_zzzTemporary2` varchar(100) DEFAULT NULL,
  `f_zzzTemporary21` varchar(100) DEFAULT NULL,
  `f_zzzTemporary22` varchar(100) DEFAULT NULL,
  `f_zzzTemporary23` varchar(100) DEFAULT NULL,
  `f_zzzTemporary24` varchar(100) DEFAULT NULL,
  `f_zzzTemporary25` varchar(100) DEFAULT NULL,
  `f_zzzTemporary26` varchar(100) DEFAULT NULL,
  `f_zzzTemporary27` varchar(100) DEFAULT NULL,
  `f_zzzTemporary3` varchar(100) DEFAULT NULL,
  `f_zzzTemporary4` varchar(100) DEFAULT NULL,
  `f_zzzTemporary5` varchar(100) DEFAULT NULL,
  `f_zzzTemporary6` varchar(100) DEFAULT NULL,
  `f_zzzTemporary7` varchar(100) DEFAULT NULL,
  `f_zzzTemporary8` varchar(100) DEFAULT NULL,
  `f_zzzTemporary9` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UeMeasControl`
--

LOCK TABLES `t_UeMeasControl` WRITE;
/*!40000 ALTER TABLE `t_UeMeasControl` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UeMeasControl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UpgradePackage`
--

DROP TABLE IF EXISTS `t_UpgradePackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UpgradePackage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SwMId` varchar(100) DEFAULT NULL,
  `f_activationStep` varchar(100) DEFAULT NULL,
  `f_administrativeData` varchar(255) DEFAULT NULL,
  `f_created` varchar(100) DEFAULT NULL,
  `f_ignoreBreakPoints` varchar(100) DEFAULT NULL,
  `f_password` varchar(100) DEFAULT NULL,
  `f_reportProgress` text,
  `f_state` varchar(100) DEFAULT NULL,
  `f_upgradePackageId` varchar(100) DEFAULT NULL,
  `f_uri` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UpgradePackage`
--

LOCK TABLES `t_UpgradePackage` WRITE;
/*!40000 ALTER TABLE `t_UpgradePackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UpgradePackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UserIdentity`
--

DROP TABLE IF EXISTS `t_UserIdentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UserIdentity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_UserManagementId` varchar(100) DEFAULT NULL,
  `f_userIdentityId` varchar(100) DEFAULT NULL,
  `f_userName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UserIdentity`
--

LOCK TABLES `t_UserIdentity` WRITE;
/*!40000 ALTER TABLE `t_UserIdentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UserIdentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UserManagement`
--

DROP TABLE IF EXISTS `t_UserManagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UserManagement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_legalNotice` varchar(100) DEFAULT NULL,
  `f_loginFailureDelay` varchar(100) DEFAULT NULL,
  `f_targetType` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_userManagementId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UserManagement`
--

LOCK TABLES `t_UserManagement` WRITE;
/*!40000 ALTER TABLE `t_UserManagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UserManagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UtraNetwork`
--

DROP TABLE IF EXISTS `t_UtraNetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtraNetwork` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_utraNetworkId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UtraNetwork`
--

LOCK TABLES `t_UtraNetwork` WRITE;
/*!40000 ALTER TABLE `t_UtraNetwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UtraNetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UtranCellRelation`
--

DROP TABLE IF EXISTS `t_UtranCellRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranCellRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_UtranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_coverageIndicator` varchar(100) DEFAULT NULL,
  `f_createdBy` varchar(100) DEFAULT NULL,
  `f_externalUtranCellFDDRef` varchar(255) DEFAULT NULL,
  `f_isHoAllowed` varchar(100) DEFAULT NULL,
  `f_isRemoveAllowed` varchar(100) DEFAULT NULL,
  `f_lastModification` varchar(100) DEFAULT NULL,
  `f_lbBnrAllowed` varchar(100) DEFAULT NULL,
  `f_lbCovIndicated` varchar(100) DEFAULT NULL,
  `f_loadBalancing` varchar(100) DEFAULT NULL,
  `f_mobilityStatus` varchar(100) DEFAULT NULL,
  `f_timeOfCreation` varchar(100) DEFAULT NULL,
  `f_timeOfLastModification` varchar(100) DEFAULT NULL,
  `f_utranCellRelationId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UtranCellRelation`
--

LOCK TABLES `t_UtranCellRelation` WRITE;
/*!40000 ALTER TABLE `t_UtranCellRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UtranCellRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UtranFreqRelation`
--

DROP TABLE IF EXISTS `t_UtranFreqRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranFreqRelation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_EUtranCellFDDId` varchar(100) DEFAULT NULL,
  `f_allowedPlmnList` varchar(100) DEFAULT NULL,
  `f_altCsfbTargetPrio` varchar(100) DEFAULT NULL,
  `f_altCsfbTargetPrioEc` varchar(100) DEFAULT NULL,
  `f_anrMeasOn` varchar(100) DEFAULT NULL,
  `f_atoAllowed` varchar(100) DEFAULT NULL,
  `f_b2Thr1RsrpUtraFreqOffset` varchar(100) DEFAULT NULL,
  `f_b2Thr1RsrqUtraFreqOffset` varchar(100) DEFAULT NULL,
  `f_b2Thr2EcNoUtraFreqOffset` varchar(100) DEFAULT NULL,
  `f_b2Thr2RscpUtraFreqOffset` varchar(100) DEFAULT NULL,
  `f_b2UtranOffsetPerPC` varchar(100) DEFAULT NULL,
  `f_cellReselectionPriority` varchar(100) DEFAULT NULL,
  `f_connectedModeMobilityPrio` varchar(100) DEFAULT NULL,
  `f_csFallbackPrio` varchar(100) DEFAULT NULL,
  `f_csFallbackPrioEC` varchar(100) DEFAULT NULL,
  `f_lbBnrPolicy` varchar(100) DEFAULT NULL,
  `f_maxNrUtranCellRelations` varchar(100) DEFAULT NULL,
  `f_mobilityAction` varchar(100) DEFAULT NULL,
  `f_mobilityActionCsfb` varchar(100) DEFAULT NULL,
  `f_pMaxUtra` varchar(100) DEFAULT NULL,
  `f_qOffsetFreq` varchar(100) DEFAULT NULL,
  `f_qQualMin` varchar(100) DEFAULT NULL,
  `f_qRxLevMin` varchar(100) DEFAULT NULL,
  `f_threshXHigh` varchar(100) DEFAULT NULL,
  `f_threshXHighQ` varchar(100) DEFAULT NULL,
  `f_threshXLow` varchar(100) DEFAULT NULL,
  `f_threshXLowQ` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_utranFreqRelationId` varchar(100) DEFAULT NULL,
  `f_utranFreqToQciProfileRelation` varchar(100) DEFAULT NULL,
  `f_utranFrequencyRef` varchar(255) DEFAULT NULL,
  `f_voicePrio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UtranFreqRelation`
--

LOCK TABLES `t_UtranFreqRelation` WRITE;
/*!40000 ALTER TABLE `t_UtranFreqRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UtranFreqRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_UtranFrequency`
--

DROP TABLE IF EXISTS `t_UtranFrequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_UtranFrequency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_ENodeBFunctionId` varchar(100) DEFAULT NULL,
  `f_UtraNetworkId` varchar(100) DEFAULT NULL,
  `f_arfcnValueUtranDl` varchar(100) DEFAULT NULL,
  `f_reservedBy` text,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_utranFrequencyId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_UtranFrequency`
--

LOCK TABLES `t_UtranFrequency` WRITE;
/*!40000 ALTER TABLE `t_UtranFrequency` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_UtranFrequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_VendorCredential`
--

DROP TABLE IF EXISTS `t_VendorCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_VendorCredential` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_SystemFunctionsId` varchar(100) DEFAULT NULL,
  `f_SecMId` varchar(100) DEFAULT NULL,
  `f_CertMId` varchar(100) DEFAULT NULL,
  `f_certificateContent` text,
  `f_certificateState` varchar(100) DEFAULT NULL,
  `f_vendorCredentialId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_VendorCredential`
--

LOCK TABLES `t_VendorCredential` WRITE;
/*!40000 ALTER TABLE `t_VendorCredential` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_VendorCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_VlanPort`
--

DROP TABLE IF EXISTS `t_VlanPort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_VlanPort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_SubNetworkId` varchar(100) DEFAULT NULL,
  `f_MeContextId` varchar(100) DEFAULT NULL,
  `f_ManagedElementId` varchar(100) DEFAULT NULL,
  `f_TransportId` varchar(100) DEFAULT NULL,
  `f_egressQosClassification` varchar(100) DEFAULT NULL,
  `f_egressQosMarking` varchar(100) DEFAULT NULL,
  `f_egressQosQueueMap` varchar(100) DEFAULT NULL,
  `f_encapsulation` varchar(100) DEFAULT NULL,
  `f_ingressQosMarking` varchar(100) DEFAULT NULL,
  `f_isTagged` varchar(100) DEFAULT NULL,
  `f_lowLatencySwitching` varchar(100) DEFAULT NULL,
  `f_reservedBy` varchar(255) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_vlanId` varchar(100) DEFAULT NULL,
  `f_vlanPortId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_VlanPort`
--

LOCK TABLES `t_VlanPort` WRITE;
/*!40000 ALTER TABLE `t_VlanPort` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_VlanPort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_etworkElement`
--

DROP TABLE IF EXISTS `t_etworkElement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_etworkElement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `f_controllingBsc` varchar(100) DEFAULT NULL,
  `f_controllingRnc` varchar(100) DEFAULT NULL,
  `f_failedSoftwareSyncsCount` varchar(100) DEFAULT NULL,
  `f_lastSuccessfulSoftwareSync` varchar(100) DEFAULT NULL,
  `f_managedBy` varchar(100) DEFAULT NULL,
  `f_managementState` varchar(100) DEFAULT NULL,
  `f_neProductVersion` varchar(100) DEFAULT NULL,
  `f_neType` varchar(100) DEFAULT NULL,
  `f_networkElementId` varchar(100) DEFAULT NULL,
  `f_nodeModelIdentity` varchar(100) DEFAULT NULL,
  `f_ossModelIdentity` varchar(100) DEFAULT NULL,
  `f_ossPrefix` varchar(100) DEFAULT NULL,
  `f_platformType` varchar(100) DEFAULT NULL,
  `f_release` varchar(100) DEFAULT NULL,
  `f_softwareSyncStatus` varchar(100) DEFAULT NULL,
  `f_technologyDomain` varchar(100) DEFAULT NULL,
  `f_timeZone` varchar(100) DEFAULT NULL,
  `f_userLabel` varchar(100) DEFAULT NULL,
  `f_utcOffset` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85434 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_etworkElement`
--

LOCK TABLES `t_etworkElement` WRITE;
/*!40000 ALTER TABLE `t_etworkElement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_etworkElement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-15 22:18:35
