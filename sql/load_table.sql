TRUNCATE TABLE energy RESTART IDENTITY;

\copy energy ( Country, Year, EnergyType, ProductionGWh, InstalledCapacityMW, InvestmentsUSD, Population, GDP, EnergyConsumption, EnergyExports, EnergyImports, CO2Emissions, RenewableEnergyJobs, GovernmentPolicies, RnDExpenditure, RenewableEnergyTargets, AverageAnnualTemperature, AnnualRainfall, SolarIrradiance, WindSpeed, HydroPotential, GeothermalPotential, BiomassAvailability, EnergyStorageCapacity, GridIntegrationCapability, ElectricityPrices, EnergySubsidies, InternationalAidForRenewables, PublicAwareness, EnergyEfficiencyPrograms, UrbanizationRate, IndustrializationRate, EnergyMarketLiberalization, RenewableEnergyPatents, EducationalLevel, TechnologyTransferAgreements, RenewableEnergyEducationPrograms, LocalManufacturingCapacity, ImportTariffsonEnergyEquipment, ExportIncentivesForEnergyEquipment, NaturalDisasters, PoliticalStability, CorruptionPerceptionIndex, RegulatoryQuality, RuleOfLaw, ControlOfCorruption, EconomicFreedomIndex, EaseOFDoingBusiness, InnovationIndex, NumberOfResearchInstitutions, NumberOFRenewableEnergyConferences, NumberOfRenewableEnergyPublications, EnergySectorWorkforce, ProportionOfEnergyFromRenewables, PublicPrivatePartnershipsInEnergy, RegionalRenewableEnergyCooperation ) FROM pstdin WITH (FORMAT TEXT, DELIMITER ',', NULL '');

VACUUM energy;

SELECT count(1) FROM energy;
