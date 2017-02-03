# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 1) do

  create_table "Admit_Diagnosis", primary_key: "SS_Admit_Diagnosis_ID", force: :cascade do |t|
    t.integer "SS_Event_Admission_ID",            null: false
    t.varchar "AdmitDiag",             limit: 20
    t.varchar "Diagnosis",             limit: 50
    t.index ["SS_Event_Admission_ID"], name: "SS_Event_Admission_ID"
  end

  create_table "Admit_Discharge", primary_key: "SS_Admit_Discharge_ID", force: :cascade do |t|
    t.integer "SS_Event_Admission_ID",            null: false
    t.varchar "DischargeDiag",         limit: 50
    t.varchar "DischargeDiagCode",     limit: 10
    t.index ["SS_Event_Admission_ID"], name: "SS_Event_Admission_ID"
  end

  create_table "Admit_Discharge_Meds", primary_key: "SS_Admit_Discharge_Meds_ID", force: :cascade do |t|
    t.integer "SS_Event_Admission_ID",            null: false
    t.varchar "Medication",            limit: 50
    t.varchar "Dose",                  limit: 20
    t.varchar "Units",                 limit: 20
    t.varchar "MedsCategory",          limit: 50
    t.index ["SS_Event_Admission_ID"], name: "SS_Event_Admission_ID"
  end

  create_table "Admit_Extension", primary_key: "SS_Event_Admission_ID", force: :cascade do |t|
  end

  create_table "Admit_Orders", primary_key: "SS_Admit_Orders_ID", force: :cascade do |t|
    t.integer  "SS_Event_Admission_ID",              null: false
    t.varchar  "OrderNumber",            limit: 20
    t.datetime "DateOfOrder"
    t.datetime "TimeOfOrder"
    t.varchar  "OrderServiceCode",       limit: 20
    t.varchar  "OrdServDesc",            limit: 50
    t.varchar  "OrderMD",                limit: 40
    t.varchar  "OrderMDNum",             limit: 50
    t.varchar  "OrderStatus",            limit: 30
    t.datetime "DateOfStartPerf"
    t.datetime "TimeOfStartPerf"
    t.datetime "DateOfStopResult"
    t.datetime "TimeOfStopResult"
    t.varchar  "ModbyMD",                limit: 40
    t.varchar  "ModByMDNum",             limit: 20
    t.varchar  "OrdEnteredBy",           limit: 40
    t.varchar  "OrdEnteredByNum",        limit: 20
    t.varchar  "OrdVerifyMD",            limit: 40
    t.varchar  "OrdVerifyMDNum",         limit: 20
    t.varchar  "ServiceDept",            limit: 12
    t.varchar  "Priority",               limit: 20
    t.varchar  "ClinInfo",               limit: 80
    t.real     "NumOccur"
    t.real     "Frequency"
    t.varchar  "FrequencyUnits",         limit: 12
    t.varchar  "FrequencyText",          limit: 20
    t.varchar  "DiagnosticServSectID",   limit: 10
    t.varchar  "DiagnosticServSectDesc", limit: 120
    t.varchar  "UniversalServiceID",     limit: 60
    t.varchar  "Accession_Number",       limit: 20
    t.varchar  "StudyInstanceUID",       limit: 255
    t.varchar  "SOPInstanceUID",         limit: 255
    t.varchar  "Modality",               limit: 25
    t.index ["SS_Event_Admission_ID"], name: "SS_Event_Admission_ID"
  end

  create_table "CardiacStudies_CPT_Codes", primary_key: "SS_CardStudies_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_CardStudies_ID"
    t.varchar "CPT_Code",                limit: 20
    t.varchar "CPT_Desc",                limit: 255
    t.index ["SS_Event_CardStudies_ID"], name: "SS_Event_ECG_ID"
  end

  create_table "CardiacStudies_Extension", primary_key: "SS_Event_CardStudies_ID", force: :cascade do |t|
  end

  create_table "CardiacStudies_ICD9_Codes", primary_key: "SS_CardStudies_ICD9_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_CardStudies_ID"
    t.varchar "ICD9_Code",               limit: 20
    t.varchar "ICD9_Desc",               limit: 255
    t.index ["SS_Event_CardStudies_ID"], name: "SS_Event_ECG_ID"
  end

  create_table "CardiacStudies_Images", primary_key: "SS_CardStudies_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_CardStudies_ID",             null: false
    t.varchar  "SS_SettingsKeyName",      limit: 50
    t.varchar  "Filename",                limit: 255
    t.varchar  "ImagingDevice",           limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",               limit: 30
    t.varchar  "Caption",                 limit: 255
    t.varchar  "Media_UID",               limit: 50
    t.varchar  "Location",                limit: 50
    t.varchar  "Status",                  limit: 50
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.integer  "ExcludeFromReport",       limit: 2
    t.index ["SS_Event_CardStudies_ID"], name: "SS_Event_ECG_ID"
  end

  create_table "CathCoronaryArteries", primary_key: "SSCathCoronaryArteriesID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",            null: false
    t.varchar "VesselName",       limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "CathCoronaryArteryDetails", primary_key: "SSCathCoronaryArteryDetailsID", force: :cascade do |t|
    t.integer "SSCathCoronaryArteriesID",             null: false
    t.varchar "VesselDescription",        limit: 255
    t.index ["SSCathCoronaryArteriesID"], name: "SSCathCoronaryArteriesID"
  end

  create_table "CathCoronaryView", primary_key: "SSSegmentID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",            null: false
    t.integer "SSViewID"
    t.varchar "View_Field",       limit: 50
    t.varchar "Segment",          limit: 50
    t.index ["SSViewID"], name: "SSViewID"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID", unique: true
  end

  create_table "CathVessels", primary_key: "SSCathVesselID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                    null: false
    t.varchar    "VesselSegment",    limit: 80
    t.text_basic "SSVascularData",   limit: 2147483647
    t.varchar    "VesselAlias",      limit: 80
    t.varchar    "Location",         limit: 50
    t.varchar    "VesselType",       limit: 50
    t.varchar    "VesselName",       limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "CathVessels_Details", primary_key: "SS_CathVessels_Details_ID", force: :cascade do |t|
    t.integer "SSCathVesselID",                    null: false
    t.varchar "CollateralDescription", limit: 255
    t.index ["SSCathVesselID"], name: "SSCathVesselID"
    t.index ["SS_CathVessels_Details_ID"], name: "SSGraftDetailsID", unique: true
  end

  create_table "Cath_ACC", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.integer "RightHeartCathProcedure",     limit: 2
    t.integer "LeftHeartCathProcedure",      limit: 2
    t.integer "PCIProcedure",                limit: 2
    t.integer "EFMeasured",                  limit: 2
    t.integer "ProcedureDiagnostic",         limit: 2
    t.integer "ProcedureOtherInConjunction", limit: 2
    t.integer "IABPInserted",                limit: 2
    t.real    "LabCreatininePre"
    t.real    "LabCreatininePost"
  end

  create_table "Cath_ACCAdmit", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.integer "DiabetesHistory", limit: 2
  end

  create_table "Cath_ACT", primary_key: "SS_ACT_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID", null: false
    t.datetime "Time_Field"
    t.float    "NumSecondsToClot"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_AdditionalFindings_SNLog", primary_key: "SS_Cath_AdditionalFindings_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Admit_Diagnosis", primary_key: "SS_Cath_Admit_Diagnosis_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",                   null: false
    t.varchar "AdmittingDiagnosis",     limit: 255
    t.varchar "AdmittingICD9Code",      limit: 20
    t.varchar "PostProcedureDiagnosis", limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Aldrete", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.float "PreActivity"
    t.float "PreAirwayControl"
    t.float "PreConsciousness"
    t.float "PreSkinColor"
    t.float "PreTotalScore"
    t.float "PostActivity"
    t.float "PostAirwayControl"
    t.float "PostConsciousness"
    t.float "PostSkinColor"
    t.float "PostTotalScore"
    t.float "PreCirculation"
    t.float "PostCirculation"
  end

  create_table "Cath_Aortography_SNLog", primary_key: "SS_Cath_Aortography_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_CPT_Codes", primary_key: "SS_Cath_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",             null: false
    t.varchar "CPT_Code",         limit: 20
    t.varchar "Description",      limit: 255
    t.index ["CPT_Code"], name: "CPT_Code"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Complications", primary_key: "SS_Cath_Complication_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",                 null: false
    t.varchar  "Complication",          limit: 60
    t.varchar  "Complication_Severity", limit: 50
    t.datetime "Complication_Time"
    t.datetime "Complication_Date"
    t.varchar  "Location",              limit: 50
    t.varchar  "CompProcedure",         limit: 25
    t.integer  "SSTouch"
    t.varchar  "Workflow",              limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Contrast", primary_key: "SS_Cath_Contrast_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",            null: false
    t.varchar "Medication",       limit: 50
    t.float   "Dose"
    t.varchar "Units",            limit: 50
    t.varchar "ProcedurePhase",   limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_CoronaryVessels", primary_key: "SS_Cath_CoronaryVessel_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID"
    t.varchar "Vessel",           limit: 50
    t.index ["SS_Cath_CoronaryVessel_ID"], name: "SSCathCoroAteriesID"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_DICOM_Studies", primary_key: "SS_Cath_DICOM_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",              null: false
    t.varchar  "DICOM_UID",         limit: 100
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",  limit: 80
    t.integer  "ExcludeFromReport", limit: 2
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_DiagRecommendations_SNLog", primary_key: "SS_Cath_DiagRecom_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_DiagnosticSummary_SNLog", primary_key: "SS_Cath_DiagSummary_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.text_basic "NoteRtf",          limit: 2147483647
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Equipment", primary_key: "SS_Cath_Equipment_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",                                         null: false
    t.integer  "SS_Item_ID"
    t.integer  "Quantity_Used",       limit: 2
    t.money    "Item_Cost",                       precision: 19, scale: 4
    t.money    "Item_Charge",                     precision: 19, scale: 4
    t.varchar  "Serial_Number",       limit: 40
    t.datetime "Expiration_Date"
    t.varchar  "Lot",                 limit: 40
    t.varchar  "Room",                limit: 50
    t.varchar  "Vendor",              limit: 255
    t.varchar  "Item",                limit: 255
    t.varchar  "Group_Field",         limit: 40
    t.varchar  "Subgroup",            limit: 40
    t.float    "Export_Flag"
    t.varchar  "Item_Code",           limit: 25
    t.varchar  "Barcode",             limit: 80
    t.integer  "ACCExistingDeviceID"
    t.varchar  "DeviceIDGuid",        limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
    t.index ["SS_Item_ID"], name: "SS_Item_ID"
  end

  create_table "Cath_Extension", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
  end

  create_table "Cath_GraftNotes_SNLog", primary_key: "SS_Cath_Graft_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_HemoComments_SNLog", primary_key: "SS_Cath_HemoComments_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Images", primary_key: "SS_Cath_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",                  null: false
    t.varchar  "Filename",              limit: 255
    t.varchar  "ImagingDevice",         limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",             limit: 30
    t.varchar  "Caption",               limit: 255
    t.varchar  "Media_UID",             limit: 50
    t.varchar  "Location",              limit: 50
    t.varchar  "SS_SettingsKeyName",    limit: 50
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.varchar  "Status",                limit: 50
    t.varchar  "StudyInstanceUID",      limit: 255
    t.integer  "CaptureMask"
    t.integer  "ExcludeFromReport",     limit: 2
    t.index ["Media_UID"], name: "Media_UID"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Indications", primary_key: "SS_Cath_Indications_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",                 null: false
    t.varchar "Indications",          limit: 100
    t.varchar "Level_Field",          limit: 50
    t.varchar "IndicationsProcedure", limit: 50
    t.integer "SSTouch"
    t.varchar "Workflow",             limit: 255
    t.varchar "Procedures",           limit: 50
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Intervention", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.varchar    "Standby_Surgeon",            limit: 40
    t.varchar    "Standby_Tier",               limit: 40
    t.varchar    "Staged_Procedure",           limit: 40
    t.integer    "Number_Lesions_Attempted",   limit: 2
    t.integer    "Revascularization_Complete", limit: 2
    t.varchar    "Thrombolysis",               limit: 40
    t.varchar    "Thrombolysis_Route",         limit: 40
    t.float      "Thrombolysis_Total_Dose"
    t.varchar    "Result",                     limit: 40
    t.integer    "DVI",                        limit: 2
    t.integer    "TEC",                        limit: 2
    t.integer    "Excimer_Laser",              limit: 2
    t.integer    "Angioscopy",                 limit: 2
    t.text_basic "Other_Device",               limit: 2147483647
    t.integer    "Number_Stents",              limit: 2
    t.integer    "Bail_Out",                   limit: 2
    t.float      "NumberVesselsSuccessful"
    t.float      "NumberLesionsSuccessful"
    t.integer    "Balloon",                    limit: 2
    t.integer    "Rotablator",                 limit: 2
    t.integer    "Stent",                      limit: 2
    t.integer    "IVUS",                       limit: 2
    t.integer    "Double_Wires",               limit: 2
    t.integer    "AllGraftableVesselsAttempt", limit: 2
    t.integer    "NumberArteriesAttempted",    limit: 2
    t.integer    "NumberMajorArteriesAttempt", limit: 2
  end

  create_table "Cath_LVComments_SNLog", primary_key: "SS_Cath_LVComments_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Log", primary_key: "SS_Cath_Log_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                    null: false
    t.datetime   "Date_Field"
    t.datetime   "Time_Field"
    t.text_basic "Note",             limit: 2147483647
    t.integer    "Lesion",           limit: 2
    t.integer    "Extra_Note",       limit: 2
    t.varchar    "EnteredBy",        limit: 20
    t.varchar    "Category",         limit: 50
    t.index ["SS_Event_Cath_ID", "SS_Cath_Log_ID"], name: "SS_Event_Cath_ID2"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Medications", primary_key: "SS_Cath_Medication_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",                                      null: false
    t.varchar  "Medication",       limit: 100
    t.float    "Dose"
    t.varchar  "Route",            limit: 20
    t.varchar  "Method",           limit: 20
    t.varchar  "Units",            limit: 20
    t.money    "Cost",                         precision: 19, scale: 4
    t.varchar  "MedsTiming",       limit: 25
    t.integer  "SSTouch"
    t.varchar  "Location",         limit: 255
    t.datetime "StartTime"
    t.datetime "StopTime"
    t.float    "TotalDose"
    t.varchar  "GivenBy",          limit: 40
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_PostProcDiag", primary_key: "SS_Cath_PostProcDiag_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID"
    t.varchar "Indications",          limit: 255
    t.varchar "IndicationsProcedure", limit: 50
    t.varchar "Level_Field",          limit: 50
    t.varchar "Procedures",           limit: 50
    t.varchar "Workflow",             limit: 50
    t.integer "SSTouch"
    t.index ["SSTouch"], name: "SSTouch"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Procedures", primary_key: "SS_Cath_Procedure_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",             null: false
    t.varchar "Procedure_Name",   limit: 255
    t.varchar "Procedure_Group",  limit: 50
    t.varchar "Duration",         limit: 20
    t.integer "SSTouch"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Pulses", primary_key: "SS_Cath_Pulses_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",            null: false
    t.varchar "SiteOfPulse",      limit: 50
    t.varchar "PrePulse",         limit: 10
    t.varchar "PostPulse",        limit: 10
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Recommendations_SNLog", primary_key: "SS_Cath_Recom_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Registry_Common", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.varchar "CHFClass", limit: 10
  end

  create_table "Cath_Registry_Common_2", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.varchar "ACCEFMethod", limit: 25
    t.real    "HeightIN"
    t.real    "WeightLBS"
    t.real    "BMI"
  end

  create_table "Cath_Staff", primary_key: "SS_Cath_Staff_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",            null: false
    t.varchar  "CathStaffName",    limit: 50
    t.varchar  "CathStaffTitle",   limit: 50
    t.varchar  "BillingNumber",    limit: 25
    t.datetime "Date_In"
    t.datetime "Time_In"
    t.datetime "Time_Out"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Summary_SNLog", primary_key: "SS_Cath_Summary_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.text_basic "NoteRtf",          limit: 2147483647
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_Vascular_SNLog", primary_key: "SS_Cath_Vascular_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Cath_VitalSigns", primary_key: "SS_Cath_VitalSigns_ID", force: :cascade do |t|
    t.integer  "SS_Event_Cath_ID",                 null: false
    t.datetime "TimeOfMeasurement"
    t.real     "Apnea"
    t.real     "ASA"
    t.real     "BPDiastolic"
    t.real     "BPSystolic"
    t.real     "ExpiredEtCO2"
    t.real     "HeartRate"
    t.real     "O2Saturation"
    t.real     "RamseyScore"
    t.real     "RespirationRate"
    t.real     "Temperature"
    t.varchar  "LevelOfConsciousness", limit: 100
    t.varchar  "Comment",              limit: 40
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "ConnectInfo", primary_key: "ID", force: :cascade do |t|
    t.varchar "Server",      limit: 30
    t.varchar "SQLDatabase", limit: 50
    t.varchar "SQLLogin",    limit: 50
    t.varchar "SQLPassword", limit: 50
    t.integer "Connection",  limit: 2
    t.varchar "AccessMDB",   limit: 100
    t.varchar "AccessLogin", limit: 50
    t.varchar "AccessPwd",   limit: 50
  end

  create_table "CoronaryTreeBranches", primary_key: "SSBranchID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID",            null: false
    t.varchar "Branch",           limit: 50
    t.index ["Branch"], name: "Branch"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "DD_Insurance", primary_key: "Carrier_Name", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar    "Address1", limit: 50
    t.varchar    "Address2", limit: 50
    t.varchar    "Address3", limit: 50
    t.varchar    "City",     limit: 25
    t.varchar    "State",    limit: 25
    t.varchar    "Country",  limit: 30
    t.varchar    "Zip_Code", limit: 8
    t.varchar    "Phone1",   limit: 15
    t.varchar    "Phone2",   limit: 15
    t.text_basic "Comments", limit: 2147483647
  end

  create_table "DD_Physician_Lookup", primary_key: "SS_DD_Physician_ID", force: :cascade do |t|
    t.varchar    "Name",                    limit: 40
    t.varchar    "AlternateName",           limit: 50
    t.varchar    "Initials",                limit: 10
    t.varchar    "UPIN",                    limit: 20
    t.varchar    "NPI",                     limit: 10
    t.varchar    "ProviderID",              limit: 60
    t.varchar    "UserName",                limit: 20
    t.varchar    "Last_Name",               limit: 50
    t.varchar    "First_Name",              limit: 50
    t.varchar    "Middle_Name",             limit: 40
    t.varchar    "Suffix",                  limit: 20
    t.varchar    "Title",                   limit: 20
    t.varchar    "SSN",                     limit: 15
    t.varchar    "Gender",                  limit: 15
    t.datetime   "DateOfBirth"
    t.varchar    "Specialty",               limit: 30
    t.varchar    "Role",                    limit: 50
    t.varchar    "StaffType",               limit: 30
    t.varchar    "Organization",            limit: 30
    t.varchar    "Department",              limit: 30
    t.varchar    "PractitionerGroup",       limit: 25
    t.varchar    "Address1",                limit: 120
    t.varchar    "Address2",                limit: 80
    t.varchar    "Address3",                limit: 80
    t.varchar    "Address4",                limit: 80
    t.varchar    "City",                    limit: 35
    t.varchar    "State",                   limit: 25
    t.varchar    "County",                  limit: 25
    t.varchar    "Country",                 limit: 40
    t.varchar    "ZipCode",                 limit: 10
    t.varchar    "Phone1",                  limit: 25
    t.varchar    "Phone2",                  limit: 25
    t.varchar    "Fax",                     limit: 15
    t.varchar    "Pager",                   limit: 15
    t.varchar    "Cell_Phone",              limit: 15
    t.varchar    "Home_Phone",              limit: 15
    t.varchar    "EmailAddress",            limit: 40
    t.boolean    "Active",                                     null: false
    t.datetime   "ActiveDate"
    t.datetime   "InactiveDate"
    t.datetime   "LastTransactionDateTime"
    t.text_basic "Comments",                limit: 2147483647
    t.varchar    "TIN",                     limit: 20
  end

  create_table "DD_Physician_Numbers", primary_key: "SS_DD_Physician_Numbers_ID", force: :cascade do |t|
    t.integer "SS_DD_Physician_ID"
    t.varchar "IDType",             limit: 50
    t.varchar "IDNumber",           limit: 30
    t.index ["SS_DD_Physician_ID"], name: "SS_DD_Physician_ID"
  end

  create_table "DD_Physician_Roles", primary_key: "SS_DD_Physician_Roles_ID", force: :cascade do |t|
    t.integer "SS_DD_Physician_ID"
    t.varchar "Role",               limit: 50
    t.varchar "DestinationTable",   limit: 50
    t.varchar "DestinationField",   limit: 50
    t.varchar "Facility",           limit: 30
    t.index ["SS_DD_Physician_ID"], name: "SS_DD_Physician_ID"
  end

  create_table "DD_Staff", primary_key: "Staff_Name", id: :varchar, limit: 40, force: :cascade do |t|
    t.integer    "SS_DD_Staff_ID",                            null: false
    t.varchar    "Specialty_Type",         limit: 30
    t.varchar    "UPIN_Number",            limit: 20
    t.varchar    "Office_Address1",        limit: 50
    t.varchar    "Office_Address2",        limit: 50
    t.varchar    "Office_Address3",        limit: 50
    t.varchar    "Office_City",            limit: 25
    t.varchar    "Office_State",           limit: 25
    t.varchar    "Office_County_Province", limit: 25
    t.varchar    "Office_Country",         limit: 40
    t.varchar    "Office_Zip_Code",        limit: 20
    t.varchar    "Office_Phone1",          limit: 25
    t.varchar    "Office_Phone2",          limit: 25
    t.varchar    "Pager",                  limit: 15
    t.varchar    "Cell_Phone",             limit: 15
    t.varchar    "Home_Phone",             limit: 15
    t.text_basic "Comments",               limit: 2147483647
    t.varchar    "Office_Fax",             limit: 15
    t.varchar    "Staff_Type",             limit: 50
    t.varchar    "Staff_Credentials",      limit: 20
    t.varchar    "SocialSecurityNumber",   limit: 15
    t.varchar    "Gender",                 limit: 50
    t.varchar    "Initials",               limit: 50
    t.varchar    "CCUserID",               limit: 50
    t.index ["SS_DD_Staff_ID"], name: "SS_DD_Staff_ID"
  end

  create_table "DICOMImages", primary_key: "SSDICOMImageID", force: :cascade do |t|
    t.varchar  "ImageUID",               limit: 100, null: false
    t.integer  "SSDICOMSeriesID",                    null: false
    t.integer  "ImageNumber"
    t.integer  "NumberOfFrames"
    t.integer  "Rows"
    t.integer  "Columns"
    t.varchar  "StageName",              limit: 64
    t.varchar  "ViewName",               limit: 64
    t.integer  "StageNumber"
    t.datetime "ImageDate"
    t.datetime "ImageTime"
    t.integer  "CineRate"
    t.float    "WindowWidth"
    t.float    "WindowLevel"
    t.integer  "ImageType"
    t.float    "PixelSpacing"
    t.float    "ImagerPixelSpacing"
    t.datetime "ModifiedDate"
    t.bigint   "ImageSize"
    t.integer  "ModifiedCount"
    t.integer  "ImageStatus"
    t.varchar  "ImageComments",          limit: 255
    t.datetime "CreatedDate"
    t.integer  "ViewNumber"
    t.varchar  "SOPClassUID",            limit: 64,  null: false
    t.varchar  "OriginalTransferSyntax", limit: 64,  null: false
    t.integer  "BitsAllocated"
    t.integer  "VolumeManagementFlag"
    t.integer  "InstanceCompressed"
    t.integer  "AlternateLoop"
    t.varchar  "OriginalFileName",       limit: 64
    t.varchar  "OriginalVolume",         limit: 255
    t.varchar  "CompressedVolume",       limit: 255
    t.varchar  "SubFolder",              limit: 255
    t.varchar  "Masks",                  limit: 255
    t.index ["CompressedVolume"], name: "IX_CompressedVolume"
    t.index ["ImageStatus"], name: "IX_ImageStatus"
    t.index ["ImageUID"], name: "IX_DICOMImages", unique: true
    t.index ["InstanceCompressed"], name: "IX_InstanceCompressed"
    t.index ["SSDICOMSeriesID"], name: "IX_SSDICOMSeriesID"
    t.index ["VolumeManagementFlag"], name: "IX_VolumeManagementFlag"
  end

  create_table "DICOMSeries", primary_key: "SSDICOMSeriesID", force: :cascade do |t|
    t.varchar  "SeriesUID",                       limit: 100, null: false
    t.integer  "SSDICOMStudyID",                              null: false
    t.integer  "SeriesNumber"
    t.datetime "SeriesDate"
    t.datetime "SeriesTime"
    t.varchar  "OperatorName",                    limit: 128
    t.varchar  "ProtocolName",                    limit: 64
    t.varchar  "Description",                     limit: 64
    t.integer  "SeriesStatus"
    t.integer  "ImageCount"
    t.varchar  "Modality",                        limit: 20
    t.datetime "ModifiedDate"
    t.datetime "CreatedDate"
    t.integer  "ModifiedCount"
    t.varchar  "OperatorFirstName",               limit: 64
    t.varchar  "OperatorLastName",                limit: 64
    t.varchar  "OperatorMiddleName",              limit: 64
    t.varchar  "OperatorPrefix",                  limit: 20
    t.varchar  "OperatorSuffix",                  limit: 20
    t.integer  "NumberofStages"
    t.integer  "NumberofViewsinStage"
    t.varchar  "PerfPhysicianName",               limit: 128
    t.varchar  "PerfPhyLastName",                 limit: 64
    t.varchar  "PerfPhyFirstName",                limit: 64
    t.varchar  "PerfPhyMiddleName",               limit: 64
    t.varchar  "PerfPhyPrefix",                   limit: 20
    t.varchar  "PerfPhySuffix",                   limit: 20
    t.varchar  "RequestedProcedureID",            limit: 16
    t.varchar  "ScheduledProcedureStepID",        limit: 16
    t.datetime "ScheduledProcedureStartDate"
    t.datetime "ScheduledProcedureStartTime"
    t.datetime "PerformedProcedureStepStartDate"
    t.datetime "PerformedProcedureStepStartTime"
    t.index ["SSDICOMStudyID", "SSDICOMSeriesID"], name: "_LX_DICOMSeries_DICOMStudiesEvent"
    t.index ["SSDICOMStudyID"], name: "IX_SSDICOMStudyID"
    t.index ["SeriesUID"], name: "IX_DICOMSeries", unique: true
  end

  create_table "DICOMStudies", primary_key: "SSDICOMStudyID", force: :cascade do |t|
    t.varchar  "StudyUID",         limit: 100,                              null: false
    t.integer  "SS_Patient_ID"
    t.varchar  "AccessionNumber",  limit: 64
    t.datetime "StudyDate"
    t.varchar  "Description",      limit: 64
    t.float    "Height"
    t.float    "Weight"
    t.varchar  "RefPhysicianName", limit: 128
    t.varchar  "RefPhyLastName",   limit: 64
    t.varchar  "RefPhyFirstName",  limit: 64
    t.varchar  "RefPhyMiddleName", limit: 64
    t.varchar  "RefPhyPrefix",     limit: 20
    t.varchar  "RefPhySuffix",     limit: 20
    t.varchar  "Modality",         limit: 20
    t.integer  "StudyStatus"
    t.varchar  "SourceAE",         limit: 16
    t.integer  "ImageCount"
    t.bigint   "StudySize"
    t.varchar  "InstitutionName",  limit: 100
    t.datetime "ModifiedDate"
    t.datetime "StudyTime"
    t.varchar  "StudyID",          limit: 64
    t.datetime "CreatedDate"
    t.integer  "ModifiedCount"
    t.varchar  "DestinationAE",    limit: 16
    t.varchar  "RetrievalType",    limit: 16
    t.datetime "LastAccessedDate",             default: -> { "getdate()" }
    t.integer  "AlternateLoop"
    t.varchar  "StudyType",        limit: 50
    t.varchar  "Masks",            limit: 255
    t.index ["LastAccessedDate"], name: "IX_LastAccessedDate"
    t.index ["RetrievalType"], name: "IX_RetrievalType"
    t.index ["SSDICOMStudyID", "SS_Patient_ID", "StudyDate"], name: "_LX_DICOMStudies_DICOMStudiesEvent"
    t.index ["SS_Patient_ID"], name: "IX_SS_Patient_ID"
    t.index ["StudyDate"], name: "IX_StudyDate"
    t.index ["StudyUID"], name: "IX_DicomStudies_1", unique: true
  end

  create_table "DICOMStudies_DICOM_Studies", primary_key: "SS_DICOMStudies_DICOM_Studies_ID", force: :cascade do |t|
    t.integer  "SSDICOMStudyID",                 null: false
    t.varchar  "DICOM_UID",          limit: 100
    t.varchar  "FileName",           limit: 255
    t.varchar  "SS_SettingsKeyName", limit: 50
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",   limit: 80
    t.index ["DICOM_UID"], name: "DICOM_UID"
    t.index ["SSDICOMStudyID"], name: "SS_Event_Cath_ID"
  end

  create_table "DICOMStudyEvent", primary_key: "SSDICOMStudyEventID", force: :cascade do |t|
    t.varchar "StudyUID",         limit: 100
    t.integer "SSEventID"
    t.varchar "EventTable",       limit: 30
    t.varchar "SSEventFieldName", limit: 60
    t.integer "SSDICOMStudyID",               null: false
    t.index ["EventTable", "SSEventID", "StudyUID"], name: "lx_DicomStudyEvent_Unique", unique: true
    t.index ["SSDICOMStudyID"], name: "SSDICOMStudyID"
  end

  create_table "Demographics", primary_key: "SS_Patient_ID", force: :cascade do |t|
    t.integer    "SS_Parent_ID"
    t.varchar    "Last_Name",                  limit: 64
    t.varchar    "First_Name",                 limit: 64
    t.varchar    "Middle_Name",                limit: 64
    t.varchar    "Patient_ID",                 limit: 100
    t.integer    "SSTouch"
    t.datetime   "Date_of_Registration"
    t.varchar    "Address",                    limit: 120
    t.varchar    "Address2",                   limit: 120
    t.varchar    "City",                       limit: 25
    t.varchar    "State_Province",             limit: 25
    t.varchar    "County",                     limit: 40
    t.varchar    "Country",                    limit: 25
    t.varchar    "Phone",                      limit: 25
    t.varchar    "HomePhone2",                 limit: 25
    t.varchar    "Pager",                      limit: 25
    t.varchar    "Language",                   limit: 30
    t.varchar    "Education",                  limit: 25
    t.varchar    "Social_Security_Number",     limit: 15
    t.varchar    "Account_Number",             limit: 25
    t.varchar    "Gender",                     limit: 7
    t.datetime   "Date_of_Birth"
    t.varchar    "Race",                       limit: 40
    t.text_basic "Note",                       limit: 2147483647
    t.varchar    "Zip_Code",                   limit: 20
    t.varchar    "Religious_Affiliation",      limit: 50
    t.varchar    "Report_Status",              limit: 25
    t.varchar    "Emergency_Contact",          limit: 50
    t.varchar    "Emergency_Relation",         limit: 40
    t.varchar    "Emergency_Phone_Day",        limit: 25
    t.varchar    "Emergency_Phone_Night",      limit: 25
    t.varchar    "Marital_Status",             limit: 15
    t.varchar    "Work_Status",                limit: 40
    t.varchar    "Occupation",                 limit: 30
    t.varchar    "Employer",                   limit: 40
    t.varchar    "Work_Phone",                 limit: 25
    t.varchar    "Work_Hours",                 limit: 30
    t.varchar    "PlaceOfBirth",               limit: 50
    t.varchar    "Industry",                   limit: 50
    t.integer    "Insurance",                  limit: 2
    t.varchar    "EmailAddress",               limit: 50
    t.datetime   "DateOfDeath"
    t.varchar    "Disabled",                   limit: 30
    t.varchar    "PrimaryResidence",           limit: 50
    t.varchar    "OtherResidence",             limit: 100
    t.varchar    "AlternateReside",            limit: 50
    t.varchar    "OtherAltReside",             limit: 100
    t.varchar    "AltEmergContact",            limit: 50
    t.varchar    "AltEmergRelation",           limit: 40
    t.varchar    "AltEmergPhoneDay",           limit: 25
    t.varchar    "AltEmergPhoneNight",         limit: 25
    t.text_basic "ContactInstruct",            limit: 2147483647
    t.varchar    "ResponsibleForCare",         limit: 50
    t.varchar    "OtherRespForCare",           limit: 100
    t.integer    "PowOfAttny",                 limit: 2
    t.datetime   "PowOfAttryUpdated"
    t.varchar    "PowOfAttnyName",             limit: 100
    t.varchar    "PowOfAttnyPhone",            limit: 25
    t.integer    "AdvDir",                     limit: 2
    t.datetime   "AdvDirUpdated"
    t.varchar    "AdvDirName",                 limit: 100
    t.varchar    "AdvDirPhone",                limit: 25
    t.integer    "Conservator",                limit: 2
    t.datetime   "ConservatorUpdated"
    t.varchar    "ConservatorName",            limit: 100
    t.varchar    "ConservatorPhone",           limit: 25
    t.varchar    "AltAddress",                 limit: 120
    t.varchar    "AltAddress2",                limit: 120
    t.varchar    "AltCity",                    limit: 25
    t.varchar    "AltState_Providence",        limit: 50
    t.varchar    "AltZip_Code",                limit: 20
    t.varchar    "AltCounty",                  limit: 25
    t.varchar    "AltCountry",                 limit: 25
    t.varchar    "AltPhone",                   limit: 25
    t.varchar    "AltPhone2",                  limit: 25
    t.varchar    "AltEmailAddress",            limit: 50
    t.varchar    "AltPager",                   limit: 25
    t.text_basic "SSDashboardData",            limit: 2147483647
    t.text_basic "SSCoronaryAnatomyData",      limit: 2147483647
    t.varchar    "PatientMismatchDescription", limit: 255
    t.varchar    "PatientFullName",            limit: 100
    t.varchar    "PatientPrefix",              limit: 20
    t.varchar    "PatientSuffix",              limit: 20
    t.index ["Last_Name", "First_Name"], name: "PatientName"
    t.index ["Patient_ID"], name: "Patient_ID"
    t.index ["SS_Patient_ID", "Last_Name", "First_Name", "Middle_Name", "Patient_ID", "Gender"], name: "_LX_Demographics_DICOMStudiesEvent"
  end

  create_table "DemographicsDevices", primary_key: "SSDemographicsDeviceID", force: :cascade do |t|
    t.integer    "SSDemographicsLesionID",                    null: false
    t.varchar    "PrevTreatDate",          limit: 50
    t.text_basic "SSVascularData",         limit: 2147483647
    t.varchar    "Device_Type",            limit: 40
    t.index ["SSDemographicsLesionID"], name: "SSDemographicsLesionID"
  end

  create_table "DemographicsLesions", primary_key: "SSDemographicsLesionID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                  null: false
    t.varchar    "VesselSegment",               limit: 80
    t.text_basic "SSVascularData",              limit: 2147483647
    t.integer    "PreStenosis",                 limit: 2
    t.integer    "PostStenosis",                limit: 2
    t.integer    "Length",                      limit: 2
    t.varchar    "LocationWithinSegment",       limit: 40
    t.integer    "Intervention",                limit: 2
    t.varchar    "LocationWithinNativeSegment", limit: 40
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Demographics_Allergy", primary_key: "SS_Demographics_Allergy_ID", force: :cascade do |t|
    t.integer  "SS_Patient_ID"
    t.varchar  "AllergyType",             limit: 50
    t.varchar  "Severity",                limit: 50
    t.varchar  "Description",             limit: 50
    t.datetime "DateOfLastAllergyReport"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Demographics_Extension", primary_key: "SS_Patient_ID", force: :cascade do |t|
  end

  create_table "Demographics_MD", primary_key: "SS_Demo_MD_ID", force: :cascade do |t|
    t.integer "SS_Patient_ID"
    t.varchar "Physician_Status", limit: 50
    t.varchar "Physician_Name",   limit: 50
    t.varchar "UPIN_Number",      limit: 50
    t.varchar "PracticeNumber",   limit: 50
    t.varchar "Specialty",        limit: 40
    t.varchar "Phone",            limit: 25
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Demographics_NextOfKin", primary_key: "SS_Demo_NextOfKin_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "NameOfContact", limit: 100
    t.varchar    "Relationship",  limit: 30
    t.varchar    "MainPhone",     limit: 25
    t.varchar    "MobilePhone",   limit: 25
    t.text_basic "Comments",      limit: 2147483647
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Demographics_Payor", primary_key: "SS_Demo_Payor_ID", force: :cascade do |t|
    t.integer  "SS_Patient_ID"
    t.varchar  "Carrier_Status",         limit: 20
    t.varchar  "Carrier_Name",           limit: 40
    t.varchar  "Group_Number",           limit: 15
    t.varchar  "Policy_Number",          limit: 50
    t.datetime "Expiration_Date"
    t.datetime "Date_Most_Recent_Check"
    t.index ["Carrier_Name"], name: "Carrier_Name"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Diagnostic_Cath", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.varchar    "Anterobasal_Motion",       limit: 40
    t.varchar    "Anterolateral_Motion",     limit: 40
    t.varchar    "Apical_Motion",            limit: 40
    t.varchar    "Diaphragmatic_Motion",     limit: 40
    t.varchar    "Posterobasal_Motion",      limit: 40
    t.varchar    "Basal_Septal_Motion",      limit: 40
    t.varchar    "Apical_Septal_Motion",     limit: 40
    t.varchar    "Posterolateral_Motion",    limit: 40
    t.varchar    "Inferior_Lateral_Motion",  limit: 40
    t.varchar    "Superior_Lateral_Motion",  limit: 40
    t.text_basic "Ventriculography_Remarks", limit: 2147483647
    t.varchar    "Mitral_Regurgitation",     limit: 40
    t.varchar    "Mitral_Stenosis",          limit: 40
    t.varchar    "Aorta",                    limit: 40
    t.varchar    "Aortic_Valve",             limit: 40
    t.varchar    "Aortic_Regurgitation",     limit: 40
    t.varchar    "Aortic_Stenosis",          limit: 40
    t.float      "Ejection_Fraction"
    t.varchar    "Mitral_Valve",             limit: 40
    t.varchar    "ChamberSize",              limit: 50
    t.varchar    "OverallContractility",     limit: 50
    t.varchar    "VSD",                      limit: 50
    t.text_basic "Aortogram",                limit: 2147483647
    t.text_basic "OtherDiagnosticProc",      limit: 2147483647
    t.varchar    "TricuspidStenosis",        limit: 40
    t.varchar    "TricuspidRegurgitation",   limit: 10
    t.varchar    "PulmonicStenosis",         limit: 40
    t.varchar    "PulmonicRegurgitation",    limit: 10
    t.integer    "ValveDisease",             limit: 2
    t.integer    "PulmonaryHypertension",    limit: 2
    t.integer    "Mitral_Prolapse",          limit: 2
    t.integer    "EFQuantative",             limit: 2
  end

  create_table "Doc_Policy", primary_key: "Doc_Policy_ID", force: :cascade do |t|
    t.varchar "Event",     limit: 50
    t.varchar "Doc_Type",  limit: 50
    t.integer "isEnabled", limit: 2
    t.integer "isPrimary", limit: 2
    t.index ["Event", "Doc_Type"], name: "EventDoc_Type", unique: true
  end

  create_table "EchoASE_AV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "NLStructureFxn",          limit: 2
    t.integer    "NotWellVisualized",       limit: 2
    t.varchar    "Structure",               limit: 50
    t.integer    "RapheRCC",                limit: 2
    t.integer    "RapheLCC",                limit: 2
    t.integer    "RapheNCC",                limit: 2
    t.varchar    "Calcification",           limit: 50
    t.varchar    "Thickening",              limit: 50
    t.varchar    "ThickeningType",          limit: 50
    t.integer    "ThickenedRCC",            limit: 2
    t.integer    "ThickenedLCC",            limit: 2
    t.integer    "ThickenedNCC",            limit: 2
    t.varchar    "ThickExcursion",          limit: 50
    t.integer    "PerforationLocRCC",       limit: 2
    t.integer    "PerforationLocLCC",       limit: 2
    t.integer    "PerforationLocNCC",       limit: 2
    t.integer    "PerforationLocAnnulus",   limit: 2
    t.real       "PerfDim1"
    t.real       "PerfDim2"
    t.varchar    "CuspSeparation",          limit: 50
    t.varchar    "Prolapse",                limit: 50
    t.varchar    "MassSize",                limit: 50
    t.integer    "MassLocRCC",              limit: 2
    t.integer    "MassLocLCC",              limit: 2
    t.integer    "MassLocNCC",              limit: 2
    t.real       "MassDim1"
    t.real       "MassDim2"
    t.varchar    "MassEtiology",            limit: 75
    t.varchar    "StenosisSeverity",        limit: 50
    t.varchar    "PeakVelocityView",        limit: 50
    t.varchar    "Regurgitation",           limit: 50
    t.integer    "HolodiastFlowRevDescAo",  limit: 2
    t.integer    "HolodiastFlowRevAbdAo",   limit: 2
    t.varchar    "ProsthType",              limit: 50
    t.varchar    "ProsthManufacturer",      limit: 50
    t.integer    "ProsthSize",              limit: 2
    t.integer    "NativePulmonic",          limit: 2
    t.varchar    "ProsthFxn",               limit: 50
    t.integer    "AbnProsthRocking",        limit: 2
    t.integer    "AbnProsthVeg",            limit: 2
    t.integer    "AbnProsthThrombusMass",   limit: 2
    t.integer    "AbnProsthDehiscence",     limit: 2
    t.integer    "AbnProsthStenosis",       limit: 2
    t.integer    "AbnProsthAbscess",        limit: 2
    t.integer    "AbnProsthPannus",         limit: 2
    t.integer    "AbnProsthFistula",        limit: 2
    t.integer    "AbnProsthFracturePerf",   limit: 2
    t.varchar    "ProstheticRegurgitation", limit: 50
    t.varchar    "AbscessSize",             limit: 50
    t.integer    "AbscessLocRCC",           limit: 2
    t.integer    "AbscessLocLCC",           limit: 2
    t.integer    "AbscessLocNCC",           limit: 2
    t.integer    "AbscessLocAnnulus",       limit: 2
    t.real       "AbscessDim1"
    t.real       "AbscessDim2"
    t.text_basic "Findings",                limit: 2147483647
    t.text_basic "Comments",                limit: 2147483647
    t.integer    "ProbableNlStructureFxn",  limit: 2
    t.integer    "MassLocAoV",              limit: 2
    t.integer    "MassLocAoVAnnulus",       limit: 2
    t.integer    "MassLocAoVProsthesis",    limit: 2
    t.varchar    "MassMobility",            limit: 25
    t.integer    "PHTHide",                 limit: 2
    t.integer    "FibrocalcifLeaflets",     limit: 2
    t.integer    "FibrocalcifWall",         limit: 2
    t.varchar    "RegurgJetDirection",      limit: 50
  end

  create_table "EchoASE_GreatVessels", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "AortaNormal",                  limit: 2
    t.varchar    "DilatedAnnulus",               limit: 255
    t.varchar    "DilatedSinuses",               limit: 255
    t.varchar    "DilatedSTRidge",               limit: 255
    t.varchar    "DilatedAscAorta",              limit: 255
    t.varchar    "DilatedArch",                  limit: 255
    t.varchar    "DilatedDescAorta",             limit: 255
    t.varchar    "DilatedAbdAorta",              limit: 255
    t.varchar    "AoDissection",                 limit: 50
    t.integer    "DissectionLocAscAorta",        limit: 2
    t.integer    "DissectionLocArch",            limit: 2
    t.integer    "DissectionLocDescAorta",       limit: 2
    t.integer    "DissectionLocAbdominal",       limit: 2
    t.varchar    "DissectionClassification",     limit: 50
    t.varchar    "AoIntramuralHematoma",         limit: 50
    t.integer    "HemtomaLocAnnulus",            limit: 2
    t.integer    "HemtomaLocSinuses",            limit: 2
    t.integer    "HemtomaLocSTRidge",            limit: 2
    t.integer    "HemtomaLocAscAorta",           limit: 2
    t.integer    "HemtomaLocArch",               limit: 2
    t.integer    "HemtomaLocDescAorta",          limit: 2
    t.integer    "HemtomaLocAbdominal",          limit: 2
    t.integer    "FalseLumenThrombus",           limit: 2
    t.integer    "FalseLumenCompSVC",            limit: 2
    t.integer    "FalseLumenCompTrueLumen",      limit: 2
    t.varchar    "PlaqueSize",                   limit: 50
    t.integer    "PlaqueLocAnnulus",             limit: 2
    t.integer    "PlaqueLocSinuses",             limit: 2
    t.integer    "PlaqueLocSTRidge",             limit: 2
    t.integer    "PlaqueLocAscAorta",            limit: 2
    t.integer    "PlaqueLocArch",                limit: 2
    t.integer    "PlaqueLocDescAorta",           limit: 2
    t.integer    "PlaqueLocAbdominal",           limit: 2
    t.varchar    "PlaqueMobility",               limit: 25
    t.integer    "PlaqueAppearLayered",          limit: 2
    t.integer    "PlaqueAppearProtruding",       limit: 2
    t.integer    "PlaqueAppearMultilobular",     limit: 2
    t.integer    "PlaqueAppearEcholucentCenter", limit: 2
    t.real       "PlaqueDimension1"
    t.real       "PlaqueDimension2"
    t.varchar    "AorticGraft",                  limit: 50
    t.integer    "GraftLocAscAorta",             limit: 2
    t.integer    "GraftLocArch",                 limit: 2
    t.integer    "GraftLocDescAorta",            limit: 2
    t.integer    "GraftLocAbdominal",            limit: 2
    t.varchar    "PenetratingUlcer",             limit: 50
    t.varchar    "PenetratingUlcerLocation",     limit: 75
    t.varchar    "Coarctation",                  limit: 100
    t.varchar    "CoarctationLocation",          limit: 50
    t.varchar    "Transposition",                limit: 50
    t.integer    "PANormal",                     limit: 2
    t.varchar    "PASize",                       limit: 50
    t.varchar    "Thrombus",                     limit: 100
    t.varchar    "ThrombusLoc",                  limit: 50
    t.varchar    "Mass",                         limit: 100
    t.varchar    "MassLoc",                      limit: 50
    t.varchar    "StenosisSeverity",             limit: 100
    t.integer    "StenosisLocMPA",               limit: 2
    t.integer    "StenosisLocLPA",               limit: 2
    t.integer    "StenosisLocRPA",               limit: 2
    t.varchar    "PDA",                          limit: 50
    t.text_basic "Comments",                     limit: 2147483647
    t.text_basic "Findings",                     limit: 2147483647
    t.integer    "PlaqueAppearUlcerated",        limit: 2
    t.integer    "GraftLocAorticRoot",           limit: 2
    t.integer    "DissectionRoot",               limit: 2
    t.integer    "FalseLumenPresent",            limit: 2
    t.integer    "InclDilatedAnnulusDim",        limit: 2
    t.integer    "InclDilatedSinusesDim",        limit: 2
    t.integer    "InclDilatedSTRidgeDim",        limit: 2
    t.integer    "InclDilatedAscAortaDim",       limit: 2
    t.integer    "InclDilatedArchDim",           limit: 2
    t.integer    "InclDilatedDescAortaDim",      limit: 2
    t.integer    "InclDilatedAbdAortaDim",       limit: 2
    t.integer    "CoarctHide",                   limit: 2
    t.integer    "PAMeanPressHide",              limit: 2
    t.integer    "NmlAorticAnnulus",             limit: 2
    t.integer    "NmlSinus",                     limit: 2
    t.integer    "NmlSTRidge",                   limit: 2
    t.integer    "NmlAscAorta",                  limit: 2
    t.integer    "NmlAorticArch",                limit: 2
    t.integer    "NmlDescAorta",                 limit: 2
    t.integer    "NmlAbdominalAorta",            limit: 2
    t.integer    "PAPkGradHide",                 limit: 2
    t.integer    "AortaNWV",                     limit: 2
    t.integer    "PulmArteryNWV",                limit: 2
  end

  create_table "EchoASE_LA", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "CavitySize",                  limit: 50
    t.varchar    "Catheter",                    limit: 50
    t.varchar    "LAVolMethod",                 limit: 50
    t.varchar    "BiatrialCavitySize",          limit: 50
    t.varchar    "RtoLShunting",                limit: 50
    t.varchar    "PFOResting",                  limit: 50
    t.varchar    "PFOWithValvsalva",            limit: 50
    t.varchar    "PFODetectionMethod",          limit: 50
    t.integer    "NoPFO",                       limit: 2
    t.varchar    "PFOShunt",                    limit: 50
    t.integer    "ShuntReversal",               limit: 2
    t.varchar    "ClosureDevice",               limit: 75
    t.varchar    "ClosurePatch",                limit: 75
    t.integer    "NoASD",                       limit: 2
    t.varchar    "ASDPrimum",                   limit: 50
    t.varchar    "ASDSecundum",                 limit: 50
    t.varchar    "ASDSinusVenosus",             limit: 50
    t.varchar    "ASDShunt",                    limit: 50
    t.real       "QPQS"
    t.varchar    "EchoContrastDegree",          limit: 50
    t.integer    "SECLocLACavity",              limit: 2
    t.integer    "SECLocLAAppendage",           limit: 2
    t.real       "ThrombusDimension1"
    t.real       "ThrombusDimension2"
    t.varchar    "Mass",                        limit: 50
    t.varchar    "MassMobility",                limit: 50
    t.varchar    "MassLocation",                limit: 50
    t.varchar    "MassAttachementSite",         limit: 50
    t.integer    "MassShapeFlat",               limit: 2
    t.integer    "MassShapeProtruding",         limit: 2
    t.integer    "MassShapePapillary",          limit: 2
    t.integer    "MassShapePedunculated",       limit: 2
    t.integer    "MassShapeSpherical",          limit: 2
    t.integer    "MassShapeRegular",            limit: 2
    t.integer    "MassShapeIrregular",          limit: 2
    t.integer    "MassShapeMultilobular",       limit: 2
    t.integer    "MassShapeFrondlike",          limit: 2
    t.integer    "MassShapeInfiltrating",       limit: 2
    t.varchar    "MassShapeOther",              limit: 255
    t.integer    "MassTextureSolid",            limit: 2
    t.integer    "MassTextureLayered",          limit: 2
    t.integer    "MassTextureHypoechoic",       limit: 2
    t.integer    "MassTextureEchogenic",        limit: 2
    t.integer    "MassTextureCalcified",        limit: 2
    t.varchar    "MassType",                    limit: 50
    t.real       "MassDimension1"
    t.real       "MassDimension2"
    t.integer    "Cortriatriatum",              limit: 2
    t.integer    "HypoplasticLeftAtrium",       limit: 2
    t.text_basic "Findings",                    limit: 2147483647
    t.text_basic "Comments",                    limit: 2147483647
    t.varchar    "MassThrombus",                limit: 25
    t.varchar    "NoPFODetection",              limit: 50
    t.integer    "NoMassThrombus",              limit: 2
    t.integer    "SECLocRACavity",              limit: 2
    t.varchar    "RAPress",                     limit: 50
    t.real       "LAVolumeBPindex"
    t.integer    "QPQSHide",                    limit: 2
    t.integer    "LAIDs2DHide",                 limit: 2
    t.integer    "LAVolumeSimpBiPlaneHide",     limit: 2
    t.integer    "LipomatousSeptalHypertrophy", limit: 2
    t.varchar    "mobileAS",                    limit: 100
    t.integer    "NoLAAThrombus",               limit: 2
    t.varchar    "LAA",                         limit: 100
    t.integer    "IAS_NoASD",                   limit: 2
    t.integer    "IAS_NoASDPFO",                limit: 2
    t.integer    "IAS_PFO",                     limit: 2
    t.integer    "IAS_Aneurysm",                limit: 2
    t.integer    "IAS_AneurysmLt",              limit: 2
    t.integer    "IAS_AneurysmNoASD",           limit: 2
    t.integer    "IAS_AneurysmWithASD",         limit: 2
    t.integer    "IAS_LipomatousHypertrophy",   limit: 2
    t.integer    "IAS_Dumbell",                 limit: 2
    t.integer    "IAS_AneurysmRt",              limit: 2
    t.varchar    "IAS",                         limit: 100
    t.integer    "IASDumbell",                  limit: 2
  end

  create_table "EchoASE_LV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "NmlSizeFxn",                        limit: 50
    t.varchar    "CavitySize",                        limit: 50
    t.varchar    "GlobalFX",                          limit: 50
    t.varchar    "EFRange",                           limit: 25
    t.varchar    "EstimatedEF",                       limit: 50
    t.varchar    "EFMethod",                          limit: 25
    t.integer    "SeptalMotionRVVO",                  limit: 2
    t.integer    "SeptalMotionPostOP",                limit: 2
    t.integer    "SeptalMotionLBBB",                  limit: 2
    t.integer    "SeptalMotionRVPacemaker",           limit: 2
    t.integer    "SeptalMotionPreexcitation",         limit: 2
    t.integer    "SeptalMotionFlattenedDiastole",     limit: 2
    t.integer    "SeptalMotionFlattenedSystole",      limit: 2
    t.integer    "SeptalMotionFlattenedSystAndDiast", limit: 2
    t.integer    "SeptalMotionBounce",                limit: 2
    t.integer    "SeptalMotionRespChange",            limit: 2
    t.varchar    "SeptalMotionOther",                 limit: 255
    t.integer    "NoLVH",                             limit: 2
    t.varchar    "ConcentricLVH",                     limit: 25
    t.varchar    "EccentricLVH",                      limit: 25
    t.varchar    "MassQualitative",                   limit: 50
    t.varchar    "DiastolicFillingPattern",           limit: 50
    t.varchar    "DiastolicFillingPressure",          limit: 50
    t.varchar    "GradeofDysfunction",                limit: 50
    t.varchar    "AsymLVHAnterior",                   limit: 50
    t.varchar    "AsymLVHPosterior",                  limit: 50
    t.varchar    "AsymLVHInferior",                   limit: 50
    t.varchar    "AsymLVHSeptal",                     limit: 50
    t.varchar    "AsymLVHLateral",                    limit: 50
    t.varchar    "AsymLVHApical",                     limit: 50
    t.varchar    "AsymLVHBasal",                      limit: 50
    t.real       "ThrombusDimension1"
    t.real       "ThrombusDimension2"
    t.varchar    "MIAnterior",                        limit: 50
    t.varchar    "MIPosterior",                       limit: 50
    t.varchar    "MIInferior",                        limit: 50
    t.varchar    "MILateral",                         limit: 50
    t.varchar    "MIAnteroseptal",                    limit: 50
    t.varchar    "MIApical",                          limit: 50
    t.varchar    "MIAnteroapical",                    limit: 50
    t.varchar    "MIPosterolateral",                  limit: 50
    t.varchar    "MIOtherDescription",                limit: 255
    t.varchar    "Mass",                              limit: 50
    t.varchar    "MassMobility",                      limit: 50
    t.varchar    "MassLocation",                      limit: 50
    t.integer    "MassShapeFlat",                     limit: 2
    t.integer    "MassShapeProtruding",               limit: 2
    t.integer    "MassShapePapillary",                limit: 2
    t.integer    "MassShapePedunculated",             limit: 2
    t.integer    "MassShapeSpherical",                limit: 2
    t.integer    "MassShapeRegular",                  limit: 2
    t.integer    "MassShapeIrregular",                limit: 2
    t.integer    "MassShapeMultilobular",             limit: 2
    t.integer    "MassShapeFrondlike",                limit: 2
    t.integer    "MassShapeInfiltrating",             limit: 2
    t.varchar    "MassShapeOther",                    limit: 255
    t.integer    "MassTextureSolid",                  limit: 2
    t.integer    "MassTextureLayered",                limit: 2
    t.integer    "MassTextureHypoechoic",             limit: 2
    t.integer    "MassTextureEchogenic",              limit: 2
    t.integer    "MassTextureCalcified",              limit: 2
    t.real       "MassDimension1"
    t.real       "MassDimension2"
    t.integer    "AneurysmAnterior",                  limit: 2
    t.integer    "AneurysmPosterior",                 limit: 2
    t.integer    "AneurysmInferior",                  limit: 2
    t.integer    "AneurysmSeptal",                    limit: 2
    t.integer    "AneurysmLateral",                   limit: 2
    t.integer    "AneurysmApical",                    limit: 2
    t.integer    "AneurysmBasalSeptum",               limit: 2
    t.varchar    "AneurysmOther",                     limit: 100
    t.integer    "PseudoAneurysmAnterior",            limit: 2
    t.integer    "PseudoAneurysmPosterior",           limit: 2
    t.integer    "PseudoAneurysmInferior",            limit: 2
    t.integer    "PseudoAneurysmSeptal",              limit: 2
    t.integer    "PseudoAneurysmLateral",             limit: 2
    t.integer    "PseudoAneurysmApical",              limit: 2
    t.integer    "PseudoAneurysmBasalSeptum",         limit: 2
    t.varchar    "PseudoAneurysmOther",               limit: 100
    t.integer    "NoVSD",                             limit: 2
    t.varchar    "VSDMembranous",                     limit: 50
    t.varchar    "VSDInfundibular",                   limit: 50
    t.varchar    "VSDInlet",                          limit: 50
    t.varchar    "VSDMuscular",                       limit: 50
    t.varchar    "VSDShunt",                          limit: 50
    t.varchar    "VSDType",                           limit: 50
    t.real       "VSDMuscularDim1"
    t.real       "VSDMuscularDim2"
    t.real       "VSDMembranousDim1"
    t.real       "VSDMembranousDim2"
    t.real       "VSDInfundibularDim1"
    t.real       "VSDInfundibularDim2"
    t.real       "VSDInletDim1"
    t.real       "VSDInletDim2"
    t.varchar    "VSDOther",                          limit: 200
    t.varchar    "LVADInflowCannula",                 limit: 25
    t.varchar    "LVADLocation",                      limit: 50
    t.varchar    "LVADInflowVelocities",              limit: 50
    t.real       "LVADPkInflowVel"
    t.varchar    "LVADMassThrombus",                  limit: 25
    t.varchar    "LVADAVOpening",                     limit: 25
    t.varchar    "LVADOutflowVelocities",             limit: 50
    t.real       "LVADPkOutflowVel"
    t.real       "LVADRPMFrom"
    t.real       "LVADRPMTo"
    t.varchar    "RVAD",                              limit: 25
    t.text_basic "LVADComments",                      limit: 2147483647
    t.text_basic "Findings",                          limit: 2147483647
    t.text_basic "Comments",                          limit: 2147483647
    t.varchar    "RegionalWallMotionAbn",             limit: 25
    t.varchar    "ObstructionLV",                     limit: 75
    t.varchar    "ObstructionLVOT",                   limit: 75
    t.varchar    "ObstructionMidVentricular",         limit: 75
    t.varchar    "SAM",                               limit: 75
    t.integer    "HypertrophicCM",                    limit: 2
    t.varchar    "DiastolicFunction",                 limit: 75
    t.varchar    "EePrime",                           limit: 100
    t.varchar    "MassThrombus",                      limit: 25
    t.varchar    "LACannula",                         limit: 25
    t.varchar    "RACannula",                         limit: 25
    t.varchar    "LVDecompression",                   limit: 25
    t.integer    "LVUnderfilled",                     limit: 2
    t.varchar    "LVADDevice",                        limit: 25
    t.varchar    "GlobalHypokinesis",                 limit: 50
    t.integer    "EFHide",                            limit: 2
    t.integer    "LVIndexHide",                       limit: 2
    t.integer    "LVMassHide",                        limit: 2
    t.integer    "LVOTHide",                          limit: 2
    t.integer    "QPQSHide",                          limit: 2
    t.varchar    "LVWallThickness",                   limit: 50
    t.integer    "Asynchrony",                        limit: 2
    t.integer    "Amyloidosis",                       limit: 2
  end

  create_table "EchoASE_MV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "NLStructureFxn",                limit: 2
    t.integer    "NWV",                           limit: 2
    t.varchar    "Structure",                     limit: 50
    t.varchar    "MVPLeafletAnterior",            limit: 200
    t.varchar    "MVPLeafletPosterior",           limit: 50
    t.varchar    "MobilityAnterior",              limit: 50
    t.varchar    "MobilityPosterior",             limit: 50
    t.varchar    "FlailLeafSegAnt",               limit: 50
    t.varchar    "FlailLeafSegPost",              limit: 50
    t.varchar    "StenosisSeverity",              limit: 50
    t.integer    "Commissurotomy",                limit: 2
    t.integer    "RegurgUnknown",                 limit: 2
    t.varchar    "Regurgitation",                 limit: 50
    t.varchar    "JetDirection",                  limit: 150
    t.varchar    "DiastolicMR",                   limit: 25
    t.varchar    "PulmVenFlow",                   limit: 75
    t.varchar    "AnnularDilatation",             limit: 50
    t.varchar    "ChordalCalcificationSeverity",  limit: 50
    t.integer    "RuptureAnterior",               limit: 2
    t.integer    "RupturePosterior",              limit: 2
    t.varchar    "MassSize",                      limit: 50
    t.integer    "MassLocationAnt",               limit: 2
    t.integer    "MassLocationPost",              limit: 2
    t.varchar    "MassType",                      limit: 75
    t.real       "MassDimension1"
    t.real       "MassDimension2"
    t.integer    "PerforationAnt",                limit: 2
    t.integer    "PerforationPost",               limit: 2
    t.integer    "ElongationAnterior",            limit: 2
    t.integer    "ElongationPosterior",           limit: 2
    t.varchar    "AbscessSeverity",               limit: 50
    t.integer    "AbscessLocAnt",                 limit: 2
    t.integer    "AbscessLocPost",                limit: 2
    t.integer    "AbscessLocAnn",                 limit: 2
    t.integer    "AbscessLocIntraFibrosa",        limit: 2
    t.real       "AbscessDim1"
    t.real       "AbscessDim2"
    t.varchar    "VegetationSize",                limit: 50
    t.varchar    "VegetationMobility",            limit: 50
    t.integer    "VegLeafletAnterior",            limit: 2
    t.integer    "VegLeafletPosterior",           limit: 2
    t.varchar    "VegetationType",                limit: 75
    t.real       "VegDimAnt1"
    t.real       "VegDimAnt2"
    t.real       "VegDimPost1"
    t.real       "VegDimPost2"
    t.text_basic "VegetationComments",            limit: 2147483647
    t.varchar    "CleftSeverity",                 limit: 50
    t.integer    "CleftLocAnt",                   limit: 2
    t.integer    "CleftLocPost",                  limit: 2
    t.varchar    "ProsthManufacturer",            limit: 200
    t.varchar    "ProsthType",                    limit: 75
    t.integer    "ProsthSize",                    limit: 2
    t.varchar    "ProsthFxn",                     limit: 50
    t.integer    "AbnProsthRocking",              limit: 2
    t.integer    "AbnProsthVeg",                  limit: 2
    t.integer    "AbnProsthThromMass",            limit: 2
    t.integer    "AbnProsthDehiscence",           limit: 2
    t.integer    "AbnProsthStenosis",             limit: 2
    t.integer    "AbnProsthAbscess",              limit: 2
    t.integer    "AbnProsthPannus",               limit: 2
    t.integer    "AbnProsthFistula",              limit: 2
    t.integer    "AbnProsthFractPerf",            limit: 2
    t.varchar    "ProstheticRegurgitation",       limit: 50
    t.text_basic "ProstheticComments",            limit: 2147483647
    t.integer    "AnnularRing",                   limit: 2
    t.text_basic "Comments",                      limit: 2147483647
    t.text_basic "Findings",                      limit: 2147483647
    t.integer    "NLStructureFxnProbable",        limit: 2
    t.varchar    "ThickenedSevPosterior",         limit: 50
    t.varchar    "ThickenedSevAnterior",          limit: 50
    t.varchar    "MACAnterior",                   limit: 50
    t.varchar    "MACPosterior",                  limit: 50
    t.varchar    "MACAnnular",                    limit: 50
    t.integer    "NoMVP",                         limit: 2
    t.varchar    "MVPSeverityAnterior",           limit: 50
    t.varchar    "MVPSeverityPosterior",          limit: 50
    t.varchar    "FlailLeafSev",                  limit: 50
    t.integer    "ChordalElongationNone",         limit: 2
    t.integer    "ChordalElongationAnterior",     limit: 2
    t.integer    "ChordalElongationPosterior",    limit: 2
    t.integer    "ChordalShorteningNone",         limit: 2
    t.integer    "ChordalShorteningAnterior",     limit: 2
    t.integer    "ChordalShorteningPosterior",    limit: 2
    t.integer    "ChordalCalcificationNone",      limit: 2
    t.integer    "ChordalCalcificationAnterior",  limit: 2
    t.integer    "ChordalCalcificationPosterior", limit: 2
    t.integer    "ChordalRuptureNone",            limit: 2
    t.integer    "ChordalRuptureAnterior",        limit: 2
    t.integer    "ChordalRupturePosterior",       limit: 2
    t.integer    "ChordalFusionNone",             limit: 2
    t.integer    "ChordalFusionAnterior",         limit: 2
    t.integer    "ChordalFusionPosterior",        limit: 2
    t.integer    "SubvalvularCalcification",      limit: 2
    t.integer    "SubvalvularThickening",         limit: 2
    t.integer    "ElongationNone",                limit: 2
    t.varchar    "SAM",                           limit: 75
    t.integer    "MassLocationSubvalvular",       limit: 2
    t.varchar    "Gradients",                     limit: 75
    t.integer    "VegMitralValve",                limit: 2
    t.integer    "MVAPHTHide",                    limit: 2
    t.integer    "MnGradHide",                    limit: 2
    t.integer    "MRFractionHide",                limit: 2
    t.integer    "EROHide",                       limit: 2
    t.integer    "MRVolHide",                     limit: 2
    t.integer    "AnnA4CHide",                    limit: 2
    t.integer    "ProlapseNotExcluded",           limit: 2
  end

  create_table "EchoASE_Measurements", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float   "AorticValveAreaIndex"
    t.float   "LVOTSystArea2D"
    t.float   "AVDiamVenaCont"
    t.float   "RVTAPSE_MM"
    t.float   "RVFAC_2D"
    t.float   "RVTEIIndex"
    t.float   "TVAnnLatSVel_TDI"
    t.float   "TVAnnLatEVel_TDI"
    t.float   "RVEtoEPrime"
    t.float   "LAVolSystA_L"
    t.float   "LAVolDiastA_L"
    t.float   "RADimMed_Lat"
    t.float   "RAVolSystA_L"
    t.float   "RAVolDiastA_L"
    t.float   "RAVolumeSimpBiPlane"
    t.float   "MRJetArea_LAArea"
    t.float   "MVDiamVenaCont"
    t.float   "MVAnnDiamA4C"
    t.float   "SystFractionHepVein"
    t.float   "PVR"
    t.float   "LVOTSAREA2D"
    t.float   "EtoEPrime"
    t.float   "PADiastPress"
    t.float   "SinusOfValsalvaDiam_2D"
    t.float   "STRidgeDiam_2D"
    t.float   "AbdominalAoDiam_2D"
    t.float   "CoarctPkGrad"
    t.float   "PAPkGrad"
    t.float   "PAMeanPress"
    t.float   "PulmArtSystPress"
    t.float   "PulmArtMeanPress"
    t.float   "AIJetToLVOTRatio"
    t.float   "AIAliasingVelocity"
    t.float   "AoVERO_PISA"
    t.float   "MRAliasingVelocity"
    t.float   "MRRadius_PISA"
    t.float   "MVDecelSlop"
    t.float   "LPADiam_2D"
    t.float   "MPADiam_2D"
    t.float   "RPADiam_2D"
    t.float   "ASDPkVel"
    t.float   "VSDPkVel"
    t.float   "PDAVel"
    t.float   "MVAPlanimetry_2D"
    t.float   "MVAPHT_Dopp"
    t.float   "MVAContinuity_Dopp"
    t.float   "MRVolume_PISA"
    t.float   "MRVolume_Dopp"
    t.float   "AVAPlanimetry_2D"
    t.float   "AVAContinuityVTI_Dopp"
    t.float   "AIDecelSlope"
    t.float   "LAVolIndexMMod"
    t.float   "MVHeartRate"
    t.float   "LVOutflowGradientValsalva"
    t.integer "LAVolumeBPindex"
    t.integer "RAVolumeBPindex"
    t.float   "RAAreaDiast_2D"
    t.integer "DoppAorticPeakVelocity_chk", limit: 2
    t.integer "DoppAorticPeakEstGrad_chk",  limit: 2
    t.integer "DoppAorticMeanEstGrad_chk",  limit: 2
    t.integer "AVAContinuityVTI_chk",       limit: 2
    t.integer "AorticValveAreaIndex_chk",   limit: 2
    t.float   "AorticCuspSepMM"
    t.float   "MVVTI"
    t.float   "AIJetWidth"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID", unique: true
  end

  create_table "EchoASE_Medications", primary_key: "SS_EchoASE_Medications_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Medication",       limit: 75
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_PV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "StructureFxn",                   limit: 75
    t.varchar    "ThickenedSeverity",              limit: 50
    t.varchar    "Excursion",                      limit: 50
    t.varchar    "Doming",                         limit: 50
    t.varchar    "VegetationSize",                 limit: 50
    t.varchar    "VegetationMobility",             limit: 50
    t.varchar    "AnnularDilatation",              limit: 50
    t.varchar    "ProsthType",                     limit: 75
    t.varchar    "ProsthManufacturer",             limit: 200
    t.integer    "ProsthSize",                     limit: 2
    t.integer    "AbnProsthRocking",               limit: 2
    t.integer    "AbnProsthVeg",                   limit: 2
    t.integer    "AbnProsthThrom",                 limit: 2
    t.integer    "AbnProsthDehiscence",            limit: 2
    t.integer    "AbnProsthStenosis",              limit: 2
    t.integer    "AbnProsthAbscess",               limit: 2
    t.integer    "AbnProsthPossPannus",            limit: 2
    t.integer    "AbnProsthPannus",                limit: 2
    t.integer    "AbnProsthFistula",               limit: 2
    t.integer    "AbnProsthFract",                 limit: 2
    t.varchar    "ProstheticRegurgitation",        limit: 50
    t.integer    "RegurgUnknown",                  limit: 2
    t.varchar    "Regurgitation",                  limit: 50
    t.varchar    "JetDirection",                   limit: 150
    t.varchar    "StenosisSeverity",               limit: 50
    t.varchar    "StenosisLocation",               limit: 50
    t.integer    "Bicuspid",                       limit: 2
    t.integer    "Dysplastic",                     limit: 2
    t.integer    "AbsentLeaflets",                 limit: 2
    t.text_basic "Comments",                       limit: 2147483647
    t.text_basic "Findings",                       limit: 2147483647
    t.varchar    "ProsthFxn",                      limit: 50
    t.real       "VegDim1"
    t.real       "VegDim2"
    t.integer    "NWVProsthValve",                 limit: 2
    t.varchar    "Gradients",                      limit: 75
    t.varchar    "MassEtiology",                   limit: 75
    t.integer    "IncludePKPVGradInReport",        limit: 2
    t.integer    "PulmonaryAnnulusDiameter2D_chk", limit: 2
    t.integer    "DoppPulmonicPressHalfTime_chk",  limit: 2
  end

  create_table "EchoASE_Pericardium", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "Structure",                  limit: 75
    t.varchar    "ThickeningCalcification",    limit: 75
    t.varchar    "CystMass",                   limit: 100
    t.real       "CystMassDim1"
    t.real       "CystMassDim2"
    t.varchar    "PericardialEffusion",        limit: 25
    t.varchar    "PericardialEffusionContent", limit: 50
    t.varchar    "PleuralEffusion",            limit: 50
    t.varchar    "AscitesSeverity",            limit: 50
    t.varchar    "Tamponade",                  limit: 75
    t.varchar    "Constriction",               limit: 75
    t.varchar    "EffusoConstrictive",         limit: 75
    t.varchar    "SeptalBounce",               limit: 25
    t.integer    "RespVarPresentMV",           limit: 2
    t.integer    "RespVarPresentTV",           limit: 2
    t.integer    "RespVarPresentAV",           limit: 2
    t.integer    "RespVarPresentPV",           limit: 2
    t.integer    "RespVarPresentHepV",         limit: 2
    t.integer    "RespVarPresentIVCSVC",       limit: 2
    t.integer    "RespVarAbsentMV",            limit: 2
    t.integer    "RespVarAbsentTV",            limit: 2
    t.integer    "RespVarAbsentAV",            limit: 2
    t.integer    "RespVarAbsentPV",            limit: 2
    t.integer    "RespVarAbsentHepV",          limit: 2
    t.integer    "RespVarAbsentIVCSVC",        limit: 2
    t.integer    "InversionPresentLV",         limit: 2
    t.integer    "InversionPresentLA",         limit: 2
    t.integer    "InversionPresentRV",         limit: 2
    t.integer    "InversionPresentRA",         limit: 2
    t.integer    "InversionAbsentLV",          limit: 2
    t.integer    "InversionAbsentLA",          limit: 2
    t.integer    "InversionAbsentRV",          limit: 2
    t.integer    "InversionAbsentRA",          limit: 2
    t.varchar    "HepaticVeinDoppler",         limit: 75
    t.varchar    "EPrimeGreaterThanEight",     limit: 50
    t.text_basic "Comments",                   limit: 2147483647
    t.text_basic "Findings",                   limit: 2147483647
    t.integer    "PericardialEffCircum",       limit: 2
    t.integer    "PericardialEffLV",           limit: 2
    t.integer    "PericardialEffLA",           limit: 2
    t.integer    "PericardialEffRV",           limit: 2
    t.integer    "PericardialEffRA",           limit: 2
    t.varchar    "DilatedIVC",                 limit: 25
    t.varchar    "PleuralEffusionRight",       limit: 50
    t.varchar    "PleuralEffusionLeft",        limit: 50
    t.varchar    "PleuralEffusionBiLat",       limit: 50
    t.integer    "TamponadeCorrelation",       limit: 2
    t.integer    "NoPleuralEffusion",          limit: 2
    t.integer    "AdiposeEffusion",            limit: 2
    t.integer    "PromFatPad",                 limit: 2
    t.varchar    "PericardialEffLoc",          limit: 25
    t.integer    "NoPericardialEffusion",      limit: 2
  end

  create_table "EchoASE_RA", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "CavitySize",            limit: 50
    t.varchar    "RAVolMethod",           limit: 50
    t.varchar    "Catheter",              limit: 50
    t.integer    "Pacer",                 limit: 2
    t.integer    "IASBowedLeft",          limit: 2
    t.integer    "IASBowedRight",         limit: 2
    t.integer    "DilatedCorSinus",       limit: 2
    t.integer    "DilatedHepaticVeins",   limit: 2
    t.integer    "DilatedIVC",            limit: 2
    t.varchar    "EchoContrastDegree",    limit: 50
    t.integer    "SECLocRACavity",        limit: 2
    t.integer    "SECLocRAAppendage",     limit: 2
    t.real       "ThrombusDimension1"
    t.real       "Thrombusdimension2"
    t.varchar    "Mass",                  limit: 50
    t.varchar    "MassMobility",          limit: 50
    t.varchar    "MassLocation",          limit: 50
    t.integer    "MassShapeFlat",         limit: 2
    t.integer    "MassShapeProtruding",   limit: 2
    t.integer    "MassShapePapillary",    limit: 2
    t.integer    "MassShapePedunculated", limit: 2
    t.integer    "MassShapeSpherical",    limit: 2
    t.integer    "MassShapeRegular",      limit: 2
    t.integer    "MassShapeIrregular",    limit: 2
    t.integer    "MassShapeMultilobular", limit: 2
    t.integer    "MassShapeFrondlike",    limit: 2
    t.integer    "MassShapeInfiltrating", limit: 2
    t.varchar    "MassShapeOther",        limit: 200
    t.integer    "MassTextureSolid",      limit: 2
    t.integer    "MassTexturelayered",    limit: 2
    t.integer    "MassTextureHypoechoic", limit: 2
    t.integer    "MassTextureEchogenic",  limit: 2
    t.integer    "MassTextureCalcified",  limit: 2
    t.varchar    "MassType",              limit: 50
    t.real       "MassDimension1"
    t.real       "Massdimension2"
    t.integer    "EustachianValve",       limit: 2
    t.integer    "ChiariNetwork",         limit: 2
    t.text_basic "Findings",              limit: 2147483647
    t.text_basic "Comments",              limit: 2147483647
    t.real       "RAVolumeBPindex"
    t.integer    "SmallIVC",              limit: 2
    t.integer    "NoMassThrombus",        limit: 2
    t.varchar    "MassThrombus",          limit: 25
    t.integer    "RADimMed_LatHide",      limit: 2
    t.integer    "RAAreaDiast_2DHide",    limit: 2
  end

  create_table "EchoASE_RV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "NmlSizeFxn",               limit: 50
    t.varchar    "CavitySize",               limit: 50
    t.varchar    "GlobalFX",                 limit: 50
    t.varchar    "WallThicknessQualitative", limit: 50
    t.varchar    "WallMotionGlobal",         limit: 50
    t.varchar    "WallMotionAnterior",       limit: 50
    t.varchar    "WallMotionInferior",       limit: 50
    t.varchar    "WallMotionLateral",        limit: 50
    t.varchar    "WallMotionApex",           limit: 50
    t.integer    "CorPulmonale",             limit: 2
    t.integer    "Infarction",               limit: 2
    t.integer    "Dysplasia",                limit: 2
    t.integer    "DoubleChamber",            limit: 2
    t.varchar    "ObstructionType",          limit: 25
    t.varchar    "ObstructionSeverity",      limit: 25
    t.varchar    "Pacer",                    limit: 25
    t.text_basic "Findings",                 limit: 2147483647
    t.text_basic "Comments",                 limit: 2147483647
    t.varchar    "MassThrombus",             limit: 25
    t.varchar    "Mass",                     limit: 50
    t.varchar    "MassMobility",             limit: 50
    t.varchar    "MassLocation",             limit: 50
    t.integer    "MassShapeFlat",            limit: 2
    t.integer    "MassShapeProtruding",      limit: 2
    t.integer    "MassShapePapillary",       limit: 2
    t.integer    "MassShapePedunculated",    limit: 2
    t.integer    "MassShapeSpherical",       limit: 2
    t.integer    "MassShapeRegular",         limit: 2
    t.integer    "MassShapeIrregular",       limit: 2
    t.integer    "MassShapeMultilobular",    limit: 2
    t.integer    "MassShapeFrondlike",       limit: 2
    t.integer    "MassShapeInfiltrating",    limit: 2
    t.varchar    "MassShapeOther",           limit: 200
    t.integer    "MassTextureSolid",         limit: 2
    t.integer    "MassTextureLayered",       limit: 2
    t.integer    "MassTextureHypoechoic",    limit: 2
    t.integer    "MassTextureEchogenic",     limit: 2
    t.integer    "MassTextureCalcified",     limit: 2
    t.real       "MassDimension1"
    t.real       "MassDimension2"
    t.real       "ThrombusDimension1"
    t.real       "ThrombusDimension2"
    t.integer    "PkPVVelHide",              limit: 2
    t.integer    "RVStructures_ICDWire",     limit: 2
    t.integer    "RVStructures_PromModBand", limit: 2
    t.integer    "RVStructures_PICCLine",    limit: 2
    t.integer    "RVStructures_Pacer",       limit: 2
  end

  create_table "EchoASE_StressBaselineECG", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "NmlBaselineECG",         limit: 2
    t.integer    "NSR",                    limit: 2
    t.integer    "SinusNonSpecSTChanges",  limit: 2
    t.integer    "EarlyRepol",             limit: 2
    t.integer    "PoorRwaveProg",          limit: 2
    t.integer    "SinusBrady",             limit: 2
    t.integer    "SinusTach",              limit: 2
    t.integer    "Afib",                   limit: 2
    t.integer    "AtrialPacing",           limit: 2
    t.integer    "VentPacing",             limit: 2
    t.integer    "PacedRhythm",            limit: 2
    t.integer    "JunctionalRhythm",       limit: 2
    t.integer    "EctopicAtrialRhythm",    limit: 2
    t.integer    "MultifocalAtrialRhythm", limit: 2
    t.integer    "LVH",                    limit: 2
    t.integer    "Cond_1stDegAVB",         limit: 2
    t.integer    "Cond_2ndDegAVBType1",    limit: 2
    t.integer    "Cond_2ndDegAVBType2",    limit: 2
    t.integer    "Cond_2ndDegAVBUnk",      limit: 2
    t.integer    "Cond_3rdDegAVB",         limit: 2
    t.integer    "Cond_IVCD",              limit: 2
    t.integer    "Cond_LBBB",              limit: 2
    t.integer    "Cond_IncompLBBB",        limit: 2
    t.integer    "Cond_RBBB",              limit: 2
    t.integer    "Cond_IncompRBBB",        limit: 2
    t.integer    "Cond_LAFB",              limit: 2
    t.integer    "Cond_LAD",               limit: 2
    t.integer    "Cond_RAD",               limit: 2
    t.integer    "Cond_LPFB",              limit: 2
    t.integer    "Cond_WPW",               limit: 2
    t.integer    "Cond_NonSpecQRSWide",    limit: 2
    t.integer    "AtrARR_OccPAC",          limit: 2
    t.integer    "AtrARR_FreqPAC",         limit: 2
    t.integer    "AtrARR_AtrialCouplet",   limit: 2
    t.integer    "AtrARR_AtrialTriplets",  limit: 2
    t.integer    "AtrARR_NonSustSVT",      limit: 2
    t.integer    "VentARR_OccPVC",         limit: 2
    t.integer    "VentARR_FreqPVC",        limit: 2
    t.integer    "VentARR_OccCouplets",    limit: 2
    t.integer    "VentARR_FreqCouplets",   limit: 2
    t.integer    "VentARR_OccTriplets",    limit: 2
    t.integer    "VentARR_FreqTriplets",   limit: 2
    t.integer    "VentARR_NonSustVT",      limit: 2
    t.integer    "TWaveAnterior",          limit: 2
    t.integer    "TWaveInferior",          limit: 2
    t.integer    "TWaveAnteroseptal",      limit: 2
    t.integer    "TWaveLateral",           limit: 2
    t.integer    "TWaveAnterolateral",     limit: 2
    t.integer    "TWaveAnteroapical",      limit: 2
    t.integer    "TWaveHighLateral",       limit: 2
    t.integer    "QwaveAnterior",          limit: 2
    t.integer    "QwaveInferior",          limit: 2
    t.integer    "QwaveAnteroseptal",      limit: 2
    t.integer    "QwaveLateral",           limit: 2
    t.integer    "QwaveAnterolateral",     limit: 2
    t.integer    "QwaveAnteroapical",      limit: 2
    t.integer    "QwaveHighLateral",       limit: 2
    t.text_basic "Comments",               limit: 2147483647
    t.integer    "AtrARR_RunsAFib",        limit: 2
  end

  create_table "EchoASE_StressBaselineST", primary_key: "SS_EchoASE_StressBaselineST_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "ChangeType",         limit: 50
    t.varchar "MaxShift",           limit: 25
    t.varchar "Location",           limit: 50
    t.varchar "Config",             limit: 50
    t.integer "STLoc_Anterior",     limit: 2
    t.integer "STLoc_Inferior",     limit: 2
    t.integer "STLoc_AntSeptal",    limit: 2
    t.integer "STLoc_Lateral",      limit: 2
    t.integer "STLoc_AntLateral",   limit: 2
    t.integer "STLoc_Anteroapical", limit: 2
    t.integer "STLoc_HighLateral",  limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_StressMIFindings", primary_key: "SS_EchoASE_StressMIFindings_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "IschmiaInfarctLocation",    limit: 25
    t.varchar "IschmiaInfarctFindings",    limit: 50
    t.varchar "IschmiaInfarctExtent",      limit: 25
    t.varchar "IschemiaInfarctCoronaries", limit: 75
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_StressRecoveryECG", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer "Cond_1stDegAVB",        limit: 2
    t.integer "Cond_2ndDegAVBType1",   limit: 2
    t.integer "Cond_2ndDegAVBType2",   limit: 2
    t.integer "Cond_2ndDegAVBUnk",     limit: 2
    t.integer "Cond_3rdDegAVB",        limit: 2
    t.integer "Cond_IVCD",             limit: 2
    t.integer "Cond_LBBB",             limit: 2
    t.integer "Cond_IncompLBBB",       limit: 2
    t.integer "Cond_RBBB",             limit: 2
    t.integer "Cond_IncompRBBB",       limit: 2
    t.integer "Cond_LAFB",             limit: 2
    t.integer "Cond_LAD",              limit: 2
    t.integer "Cond_RAD",              limit: 2
    t.integer "Cond_LPFB",             limit: 2
    t.integer "Cond_WPW",              limit: 2
    t.integer "Cond_NonSpecQRSWide",   limit: 2
    t.integer "AtrARR_OccPAC",         limit: 2
    t.integer "AtrARR_FreqPAC",        limit: 2
    t.integer "AtrARR_AtrialCouplet",  limit: 2
    t.integer "AtrARR_AtrialTriplets", limit: 2
    t.integer "AtrARR_NonSustSVT",     limit: 2
    t.integer "AtrARR_RunsAFib",       limit: 2
    t.integer "VentARR_OccPVC",        limit: 2
    t.integer "VentARR_FreqPVC",       limit: 2
    t.integer "VentARR_OccCouplets",   limit: 2
    t.integer "VentARR_FreqCouplets",  limit: 2
    t.integer "VentARR_OccTriplets",   limit: 2
    t.integer "VentARR_FreqTriplets",  limit: 2
    t.integer "VentARR_NonSustVT",     limit: 2
  end

  create_table "EchoASE_StressRecoveryST", primary_key: "SS_EchoASE_StressRecoveryST_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "ChangeType",         limit: 50
    t.varchar "MaxShift",           limit: 25
    t.varchar "Location",           limit: 50
    t.varchar "Config",             limit: 50
    t.integer "STLoc_Anterior",     limit: 2
    t.integer "STLoc_Inferior",     limit: 2
    t.integer "STLoc_AntSeptal",    limit: 2
    t.integer "STLoc_Lateral",      limit: 2
    t.integer "STLoc_AntLateral",   limit: 2
    t.integer "STLoc_Anteroapical", limit: 2
    t.integer "STLoc_HighLateral",  limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_StressTestECG", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "Cond_1stDegAVB",        limit: 2
    t.integer    "Cond_2ndDegAVBType1",   limit: 2
    t.integer    "Cond_2ndDegAVBType2",   limit: 2
    t.integer    "Cond_2ndDegAVBUnk",     limit: 2
    t.integer    "Cond_3rdDegAVB",        limit: 2
    t.integer    "Cond_IVCD",             limit: 2
    t.integer    "Cond_LBBB",             limit: 2
    t.integer    "Cond_IncompLBBB",       limit: 2
    t.integer    "Cond_RBBB",             limit: 2
    t.integer    "Cond_IncompRBBB",       limit: 2
    t.integer    "Cond_LAFB",             limit: 2
    t.integer    "Cond_LAD",              limit: 2
    t.integer    "Cond_RAD",              limit: 2
    t.integer    "Cond_LPFB",             limit: 2
    t.integer    "Cond_WPW",              limit: 2
    t.integer    "Cond_NonSpecQRSWide",   limit: 2
    t.integer    "AtrARR_OccPAC",         limit: 2
    t.integer    "AtrARR_FreqPAC",        limit: 2
    t.integer    "AtrARR_AtrialCouplet",  limit: 2
    t.integer    "AtrARR_AtrialTriplets", limit: 2
    t.integer    "AtrARR_NonSustSVT",     limit: 2
    t.integer    "AtrARR_RunsAFib",       limit: 2
    t.integer    "VentARR_OccPVC",        limit: 2
    t.integer    "VentARR_FreqPVC",       limit: 2
    t.integer    "VentARR_OccCouplets",   limit: 2
    t.integer    "VentARR_FreqCouplets",  limit: 2
    t.integer    "VentARR_OccTriplets",   limit: 2
    t.integer    "VentARR_FreqTriplets",  limit: 2
    t.integer    "VentARR_NonSustVT",     limit: 2
    t.varchar    "NmlStressECG",          limit: 50
    t.integer    "Artifact",              limit: 2
    t.integer    "LeadsOff",              limit: 2
    t.text_basic "RECComments",           limit: 2147483647
  end

  create_table "EchoASE_StressTestFindings", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "ReturnToNml",                                limit: 50
    t.integer    "WorseBeforeNml",                             limit: 2
    t.integer    "DukeScore",                                  limit: 2
    t.varchar    "DukeRisk",                                   limit: 25
    t.varchar    "ExerciseCapacity",                           limit: 25
    t.varchar    "BPResponseToStress",                         limit: 25
    t.varchar    "HRResponseToStress",                         limit: 25
    t.varchar    "BL_LVFunction",                              limit: 50
    t.varchar    "BL_EFRange",                                 limit: 25
    t.varchar    "BL_WallMotion",                              limit: 50
    t.varchar    "LVSize",                                     limit: 50
    t.varchar    "EFChange",                                   limit: 50
    t.varchar    "EFRange",                                    limit: 25
    t.varchar    "WallMotion",                                 limit: 50
    t.integer    "NoAbnValve",                                 limit: 2
    t.float      "RVSPStressPeak"
    t.float      "MnMVGradStress"
    t.float      "MnAVGradStress"
    t.float      "AoVPkVelStress"
    t.text_basic "EchoComments",                               limit: 2147483647
    t.varchar    "StudyQuality",                               limit: 100
    t.varchar    "Contrast",                                   limit: 25
    t.integer    "PTMonitored",                                limit: 2
    t.varchar    "BetaBlockersHeldGiven",                      limit: 50
    t.integer    "CompNone",                                   limit: 2
    t.integer    "CompBackPain",                               limit: 2
    t.integer    "CompAllergic",                               limit: 2
    t.varchar    "ComparisonStudy",                            limit: 200
    t.datetime   "PriorStudyDate"
    t.text_basic "ComparisonComments",                         limit: 2147483647
    t.text_basic "SummaryComments",                            limit: 2147483647
    t.integer    "ECGInterpOnly",                              limit: 2
    t.varchar    "EchoResult",                                 limit: 25
    t.varchar    "NonDiagnosticReason",                        limit: 50
    t.integer    "NoIschemia",                                 limit: 2
    t.varchar    "ReducedSensitivity",                         limit: 100
    t.integer    "EchoInterpOnly",                             limit: 2
    t.integer    "NormalStressECG",                            limit: 2
    t.integer    "NonDiagBelowTargHR",                         limit: 2
    t.integer    "NonDiagAbnBaselineECG",                      limit: 2
    t.integer    "NonDiagPacedRhythm",                         limit: 2
    t.integer    "NonDiagLBBB",                                limit: 2
    t.integer    "NonDiagLVH",                                 limit: 2
    t.integer    "AbnormalECG",                                limit: 2
    t.integer    "StressECGUninterpretable",                   limit: 2
    t.integer    "StressECGNoProArrhythmia",                   limit: 2
    t.integer    "SymptomsCP",                                 limit: 2
    t.integer    "SymptomsIncreasedCP",                        limit: 2
    t.integer    "SymptomsAtypCP",                             limit: 2
    t.integer    "SymptomsCPNoChange",                         limit: 2
    t.integer    "SymptomsAngina",                             limit: 2
    t.integer    "SymptomsDyspnea",                            limit: 2
    t.integer    "SymptomsFatigue",                            limit: 2
    t.integer    "SymptomsFlushing",                           limit: 2
    t.integer    "SymptomsDizziness",                          limit: 2
    t.integer    "SymptomsNausea",                             limit: 2
    t.integer    "SymptomsHeadache",                           limit: 2
    t.integer    "SymptomsKneePain",                           limit: 2
    t.integer    "SymptomsHipPain",                            limit: 2
    t.integer    "SymptomsClaudication",                       limit: 2
    t.integer    "RecommendExeNuclear",                        limit: 2
    t.integer    "RecommendAdenosineNuclear",                  limit: 2
    t.integer    "RecommendCoronaryAngio",                     limit: 2
    t.integer    "RecommendCardiacCTAngio",                    limit: 2
    t.integer    "RecommendCardiacConsult",                    limit: 2
    t.integer    "RecommendDobStressEcho",                     limit: 2
    t.integer    "RecommendStressWContrast",                   limit: 2
    t.integer    "DiscussedWPatient",                          limit: 2
    t.integer    "DiscussedWRefMD",                            limit: 2
    t.text_basic "Findings",                                   limit: 2147483647
    t.varchar    "MedicationsHeldGiven",                       limit: 50
    t.text_basic "StressBaselineFindings",                     limit: 2147483647
    t.text_basic "StressRecoveryFindings",                     limit: 2147483647
    t.text_basic "StressSummaryFindings",                      limit: 2147483647
    t.text_basic "StressProtocolFindings",                     limit: 2147483647
    t.text_basic "PharmStressProtocolFindings",                limit: 2147483647
    t.text_basic "StressConclusions",                          limit: 2147483647
    t.text_basic "ReportFindings",                             limit: 2147483647
    t.text_basic "StressECGInterpretationFindings",            limit: 2147483647
    t.text_basic "StressEchoInterpretationFindings",           limit: 2147483647
    t.text_basic "StressAdditionalEchoInterpretationFindings", limit: 2147483647
    t.integer    "SymptomsNOCP",                               limit: 2
    t.text_basic "ECGInterpComments",                          limit: 2147483647
    t.varchar    "RVSP",                                       limit: 75
    t.varchar    "PulmHtn",                                    limit: 50
    t.integer    "CritRsltsDiscussedWRefMD",                   limit: 2
    t.float      "STReturnToNmlMin"
    t.integer    "DoppTricuspidEstRVSysPress_chk",             limit: 2
    t.integer    "RVSPStressPeak_chk",                         limit: 2
    t.integer    "DoppMitralMeanEstGrad_chk",                  limit: 2
    t.integer    "MnMVGradStress_chk",                         limit: 2
    t.integer    "MnAVGradStress_chk",                         limit: 2
    t.integer    "AoVPkVelStress_chk",                         limit: 2
    t.integer    "DoppAorticPeakVelocity_chk",                 limit: 2
    t.integer    "DoppAorticMeanEstGrad_chk",                  limit: 2
  end

  create_table "EchoASE_StressTestST", primary_key: "SS_EchoASE_StressTestST_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "ChangeType",         limit: 50
    t.varchar "MaxShift",           limit: 25
    t.varchar "Location",           limit: 50
    t.varchar "Config",             limit: 50
    t.integer "STLoc_Anterior",     limit: 2
    t.integer "STLoc_Inferior",     limit: 2
    t.integer "STLoc_AntSeptal",    limit: 2
    t.integer "STLoc_Lateral",      limit: 2
    t.integer "STLoc_AntLateral",   limit: 2
    t.integer "STLoc_Anteroapical", limit: 2
    t.integer "STLoc_HighLateral",  limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_Summary", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "NmlEcho",                        limit: 2
    t.integer    "NoValvePathology",               limit: 2
    t.integer    "NoCardiacSOE",                   limit: 2
    t.integer    "Hypertensive",                   limit: 2
    t.varchar    "StudyQuality",                   limit: 25
    t.varchar    "StudyQualityContrast",           limit: 25
    t.integer    "RecommendConsult",               limit: 2
    t.integer    "DiscussedWithPt",                limit: 2
    t.integer    "DiscussedWithRefMD",             limit: 2
    t.integer    "AdmitToHospital",                limit: 2
    t.varchar    "LVOContrastWithComplications",   limit: 25
    t.integer    "PtMonitored",                    limit: 2
    t.varchar    "RecommendTEE",                   limit: 75
    t.varchar    "ComparisonStudy",                limit: 200
    t.datetime   "PriorStudyDate"
    t.integer    "TEEConsentObtained",             limit: 2
    t.varchar    "Overcrowding",                   limit: 75
    t.varchar    "TEEProbePassed",                 limit: 75
    t.varchar    "TEEProbeNotPassed",              limit: 100
    t.integer    "NmlTEE",                         limit: 2
    t.varchar    "TEETechnique",                   limit: 75
    t.real       "Versed"
    t.real       "Fentanyl"
    t.integer    "ContrastInFuture",               limit: 2
    t.integer    "BubbleStudyForRVSP",             limit: 2
    t.integer    "BubbleStudyForShunt",            limit: 2
    t.integer    "BubbleStudyForLtSVC",            limit: 2
    t.text_basic "Comments",                       limit: 2147483647
    t.text_basic "Findings",                       limit: 2147483647
    t.integer    "StudyQualityGood",               limit: 2
    t.integer    "StudyQualityFair",               limit: 2
    t.text_basic "ComparisonComments",             limit: 2147483647
    t.integer    "StudyQualityTechDiff",           limit: 2
    t.integer    "StudyQualityPoorDesContrast",    limit: 2
    t.integer    "StudyQualityPoorApical",         limit: 2
    t.integer    "PtOnVent",                       limit: 2
    t.integer    "PtSupine",                       limit: 2
    t.integer    "BodyHabitus",                    limit: 2
    t.integer    "PostOpBandage",                  limit: 2
    t.varchar    "ContrastUsed",                   limit: 50
    t.varchar    "ContrastNotUsed",                limit: 50
    t.integer    "NoClots",                        limit: 2
    t.integer    "NoShunts",                       limit: 2
    t.integer    "NoVegetations",                  limit: 2
    t.text_basic "FindingsTech",                   limit: 2147483647
    t.text_basic "CommentsTech",                   limit: 2147483647
    t.text_basic "StudyComparisonFindings",        limit: 2147483647
    t.text_basic "PriorStudyComments",             limit: 2147483647
    t.text_basic "BaselineFindings",               limit: 2147483647
    t.integer    "CritRsltsDiscussedWRefMD",       limit: 2
    t.integer    "LimitedBy_UnableToTolerateTest", limit: 2
    t.integer    "LimitedBy_Bandages",             limit: 2
    t.integer    "LimitedBy_BodyHabitus",          limit: 2
    t.integer    "LimitedBy_PortableExam",         limit: 2
    t.integer    "LimitedBy_ChestTubes",           limit: 2
    t.integer    "LimitedBy_LungArtifact",         limit: 2
    t.integer    "LimitedBy_Ventilator",           limit: 2
    t.integer    "LimitedBy_ExternalPacerWires",   limit: 2
    t.integer    "LimitedBy_Uncooperative",        limit: 2
    t.text_basic "RecommendationsFindings",        limit: 2147483647
  end

  create_table "EchoASE_TEESummary", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "TEEConsentObtained",          limit: 2
    t.integer    "IntraoperativeTEE",           limit: 2
    t.integer    "InterpOnly",                  limit: 2
    t.varchar    "Overcrowding",                limit: 75
    t.varchar    "TEEProbePassed",              limit: 75
    t.varchar    "TEEProbeNotPassed",           limit: 100
    t.varchar    "TEETechnique",                limit: 75
    t.real       "Versed"
    t.real       "Fentanyl"
    t.varchar    "TEELVOContrastComplications", limit: 25
    t.integer    "TEEPtMonitored",              limit: 2
    t.varchar    "TEEComparisonStudy",          limit: 200
    t.text_basic "TEEComparisonComments",       limit: 2147483647
    t.integer    "TEENmlEcho",                  limit: 2
    t.integer    "TEENoValvePathology",         limit: 2
    t.integer    "TEENoCardiacSOE",             limit: 2
    t.integer    "TEENoClot",                   limit: 2
    t.integer    "TEEHypertensive",             limit: 2
    t.integer    "TEERecommendConsult",         limit: 2
    t.integer    "TEERecommendCVTS",            limit: 2
    t.integer    "TEEDiscussedWithPt",          limit: 2
    t.integer    "TEEDiscussedWithRefMD",       limit: 2
    t.integer    "TEEAdmitToHospital",          limit: 2
    t.text_basic "TEEComments",                 limit: 2147483647
    t.text_basic "Findings",                    limit: 2147483647
    t.datetime   "PriorStudyDate"
    t.integer    "BenzocaineSpray",             limit: 2
    t.integer    "ViscousLidocaine",            limit: 2
    t.integer    "CritRsltsDiscussedWRefMD",    limit: 2
    t.integer    "InadequateDoppler",           limit: 2
    t.varchar    "TEEProbeType",                limit: 100
    t.varchar    "TEEProbeType2",               limit: 100
  end

  create_table "EchoASE_TEE_Meds", primary_key: "SS_EchoASE_TEE_Meds_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Medication",       limit: 255
    t.float   "Amount"
    t.varchar "Units",            limit: 255
  end

  create_table "EchoASE_TV", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "StructureFxn",            limit: 75
    t.varchar    "MobilityAnterior",        limit: 50
    t.varchar    "MobilityPosterior",       limit: 50
    t.varchar    "MobilitySeptal",          limit: 50
    t.varchar    "RupturedChordae",         limit: 50
    t.integer    "RuptureAnterior",         limit: 2
    t.integer    "RupturePosterior",        limit: 2
    t.integer    "RuptureSeptal",           limit: 2
    t.varchar    "VegetationSize",          limit: 50
    t.varchar    "VegetationMobility",      limit: 50
    t.integer    "VegLeafletAnterior",      limit: 2
    t.integer    "VegLeafletPosterior",     limit: 2
    t.integer    "VegLeafletSeptal",        limit: 2
    t.varchar    "VegetationType",          limit: 50
    t.real       "VegDimAnt1"
    t.real       "VegDimAnt2"
    t.real       "VegDimPost1"
    t.real       "VegDimPost2"
    t.real       "VegDimSeptal1"
    t.real       "VegDimSeptal2"
    t.varchar    "AnnularDilatation",       limit: 50
    t.varchar    "ProsthManufacturer",      limit: 200
    t.varchar    "ProsthType",              limit: 75
    t.integer    "ProsthSize",              limit: 2
    t.integer    "AbnProsthRocking",        limit: 2
    t.integer    "AbnProsthVeg",            limit: 2
    t.integer    "AbnProsthThrom",          limit: 2
    t.integer    "AbnProsthDehiscence",     limit: 2
    t.integer    "AbnProsthStenosis",       limit: 2
    t.integer    "AbnProsthRegurg",         limit: 2
    t.integer    "AbnProsthRegurgPhys",     limit: 2
    t.integer    "AbnProsthRegurgPros",     limit: 2
    t.integer    "AbnProsthRegurgPeri",     limit: 2
    t.integer    "AbnProsthAbscess",        limit: 2
    t.integer    "AbnProsthPossPannus",     limit: 2
    t.integer    "AbnProsthPannus",         limit: 2
    t.integer    "AbnProsthFistula",        limit: 2
    t.integer    "AbnProsthFract",          limit: 2
    t.integer    "NWVProsthValve",          limit: 2
    t.varchar    "Gradients",               limit: 75
    t.varchar    "ProstheticRegurgitation", limit: 50
    t.integer    "AnnularRing",             limit: 2
    t.integer    "RegurgUnknown",           limit: 2
    t.varchar    "Regurgitation",           limit: 50
    t.varchar    "JetDirection",            limit: 150
    t.varchar    "Stenosis",                limit: 50
    t.integer    "EbsteinsAnom",            limit: 2
    t.integer    "TricuspidAtresia",        limit: 2
    t.integer    "Carcinoid",               limit: 2
    t.varchar    "RVSP",                    limit: 75
    t.varchar    "PASP",                    limit: 25
    t.varchar    "RAPress",                 limit: 50
    t.varchar    "PulmHtn",                 limit: 50
    t.text_basic "Comments",                limit: 2147483647
    t.text_basic "Findings",                limit: 2147483647
    t.varchar    "ThickenedSevAnt",         limit: 50
    t.varchar    "ThickenedSevPost",        limit: 50
    t.varchar    "ThickenedSevSeptal",      limit: 50
    t.integer    "NoProlapse",              limit: 2
    t.varchar    "TVPSeverityPost",         limit: 50
    t.varchar    "TVPSeveritySeptal",       limit: 50
    t.varchar    "ProsthFxn",               limit: 25
    t.varchar    "TVPSeverityAnt",          limit: 50
    t.varchar    "HepVeinFlow",             limit: 75
    t.varchar    "VegEtiology",             limit: 75
    t.integer    "InclMnGrad",              limit: 2
    t.integer    "InclPASP",                limit: 2
    t.integer    "InclRVSP",                limit: 2
    t.integer    "InclTVA",                 limit: 2
    t.integer    "ProlapseNotExcluded",     limit: 2
  end

  create_table "EchoASE_TechFindings", primary_key: "SS_EchoASE_TechFindings_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "TableName",        limit: 50
    t.varchar "FieldName",        limit: 50
    t.varchar "FieldValue",       limit: 255
    t.varchar "Field_Type",       limit: 20
    t.integer "Field_Type_Code",  limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "EchoASE_Venous", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "IVCSize",                     limit: 50
    t.varchar    "IVCRespiratoryVariation",     limit: 50
    t.varchar    "IVCFlow",                     limit: 50
    t.varchar    "IVCThrombus",                 limit: 50
    t.real       "IVCThrombusDim1"
    t.real       "IVCThrombusDim2"
    t.varchar    "IVCMass",                     limit: 50
    t.real       "IVCMassDim1"
    t.real       "IVCMassDim2"
    t.varchar    "HepVeinSize",                 limit: 50
    t.varchar    "HepVeinRespiratoryVariation", limit: 50
    t.varchar    "HepVeinFlow",                 limit: 50
    t.varchar    "HepVeinThrombus",             limit: 50
    t.real       "HepVeinThrombusDim1"
    t.real       "HepVeinThrombusDim2"
    t.varchar    "HepVeinMass",                 limit: 50
    t.real       "HepVeinMassDim1"
    t.real       "HepVeinMassDim2"
    t.varchar    "LeftSidedSVC",                limit: 50
    t.integer    "LeftSidedSVCConfirmed",       limit: 2
    t.varchar    "DilatedCoroSinus",            limit: 50
    t.integer    "SuggestHighRAP",              limit: 2
    t.integer    "SizeAllPulmVein",             limit: 2
    t.integer    "SizeLLPV",                    limit: 2
    t.integer    "SizeLUPV",                    limit: 2
    t.integer    "SizeRLPV",                    limit: 2
    t.integer    "SizeRUPV",                    limit: 2
    t.integer    "NWVAllPulmVein",              limit: 2
    t.varchar    "PulmVeinSize",                limit: 50
    t.integer    "NWVLLPV",                     limit: 2
    t.integer    "NWVLUPV",                     limit: 2
    t.integer    "NWVRLPV",                     limit: 2
    t.integer    "NWVRUPV",                     limit: 2
    t.integer    "NmlFlowAllPulmVein",          limit: 2
    t.integer    "NmlFlowLLPV",                 limit: 2
    t.integer    "NmlFlowLUPV",                 limit: 2
    t.integer    "NmlFlowRLPV",                 limit: 2
    t.integer    "NmlFlowRUPV",                 limit: 2
    t.integer    "BluntedFlowAllPulmVein",      limit: 2
    t.integer    "BluntedFlowLLPV",             limit: 2
    t.integer    "BluntedFlowLUPV",             limit: 2
    t.integer    "BluntedFlowRLPV",             limit: 2
    t.integer    "BluntedFlowRUPV",             limit: 2
    t.integer    "SystRevAllPulmVein",          limit: 2
    t.integer    "SystRevLLPV",                 limit: 2
    t.integer    "SystRevLUPV",                 limit: 2
    t.integer    "SystRevRLPV",                 limit: 2
    t.integer    "SystRevRUPV",                 limit: 2
    t.varchar    "PulmVeinThrombus",            limit: 50
    t.real       "PulmVeinThrombusDim1"
    t.real       "PulmVeinThrombusDim2"
    t.integer    "MassLocLLPV",                 limit: 2
    t.integer    "MassLocLUPV",                 limit: 2
    t.integer    "MassLocRLPV",                 limit: 2
    t.integer    "MassLocRUPV",                 limit: 2
    t.varchar    "PulmVeinMass",                limit: 50
    t.real       "PulmVeinMassDim1"
    t.real       "PulmVeinMassDim2"
    t.varchar    "LeftPAPVR",                   limit: 50
    t.varchar    "RightPAPVR",                  limit: 50
    t.varchar    "PulmVenousHypoplasia",        limit: 50
    t.varchar    "AzygousIVC",                  limit: 50
    t.text_basic "Comments",                    limit: 2147483647
    t.text_basic "Findings",                    limit: 2147483647
    t.integer    "IVC_NWV",                     limit: 2
    t.integer    "HepVein_NWV",                 limit: 2
    t.integer    "DilatedCorSinus",             limit: 2
  end

  create_table "Echo_Adv01", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "Cath",                        limit: 2
    t.integer    "Nuclear",                     limit: 2
    t.text_basic "Summary",                     limit: 2147483647
    t.text_basic "CD_WallMotionFindings",       limit: 2147483647
    t.text_basic "SurgeryFindings",             limit: 2147483647
    t.float      "PreProcPhysioLVEFPercent"
    t.float      "RestEjectionFraction"
    t.float      "StressEjectionFraction"
    t.integer    "InterpCards",                 limit: 2
    t.integer    "PerformSonog",                limit: 2
    t.integer    "StressECGID"
    t.integer    "CathID"
    t.integer    "NuclearID"
    t.integer    "SurgeryID"
    t.integer    "SurgicalIntervention",        limit: 2
    t.varchar    "InterpretingGroup",           limit: 50
    t.varchar    "WMWorkflow",                  limit: 50
    t.varchar    "WMState",                     limit: 50
    t.varchar    "WMWorkflowDisplay",           limit: 50
    t.varchar    "WMStateDisplay",              limit: 50
    t.text_basic "PrevComments",                limit: 2147483647
    t.datetime   "DateOfPreviousCath"
    t.datetime   "DateOfPreviousSurgery"
    t.datetime   "DateOfPreviousNuclear"
    t.text_basic "CathConclusions",             limit: 2147483647
    t.text_basic "NuclearConclusions",          limit: 2147483647
    t.integer    "ResearchStudy",               limit: 2
    t.integer    "SonographerFinalized",        limit: 2
    t.text_basic "SonographerAddendum",         limit: 2147483647
    t.integer    "TeachingCase",                limit: 2
    t.integer    "MarkforPeerReview",           limit: 2
    t.integer    "PeerReviewDone",              limit: 2
    t.varchar    "PeerReviewAgreeDisagree",     limit: 15
    t.text_basic "PeerReviewComments",          limit: 2147483647
    t.integer    "MarkforPeerReviewTech",       limit: 2
    t.integer    "PeerReviewDoneTech",          limit: 2
    t.varchar    "PeerReviewAgreeDisagreeTech", limit: 15
    t.text_basic "PeerReviewCommentsTech",      limit: 2147483647
    t.varchar    "PeerReviewStudyQuality",      limit: 25
    t.varchar    "ReasonForStudy",              limit: 50
    t.datetime   "TestCompleteDate"
    t.datetime   "TestCompleteTime"
    t.varchar    "CriticalResultsCalledTo",     limit: 100
    t.datetime   "CriticalResultsCalledDate"
    t.datetime   "CriticalResultsCalledTime"
    t.varchar    "CriticalResultsReportedBy",   limit: 100
  end

  create_table "Echo_AllMeasurements", primary_key: "SS_Echo_AllMeasurements_ID", force: :cascade do |t|
    t.integer    "SS_Event_Echo_ID",                            null: false
    t.varchar    "StudyInstanceUID",         limit: 64,         null: false
    t.varchar    "SRInstanceUID",            limit: 64
    t.varchar    "MeasurementName",          limit: 50
    t.integer    "SSDICOMSRMappingID"
    t.float      "Value"
    t.varchar    "Units",                    limit: 50
    t.float      "DisplayValue"
    t.varchar    "DisplayUnit",              limit: 50
    t.varchar    "StringValue",              limit: 200
    t.varchar    "MeasurementType",          limit: 50
    t.varchar    "Derivation",               limit: 100
    t.integer    "CurrentlySelected",        limit: 2
    t.varchar    "SelectionStatus",          limit: 50
    t.varchar    "ReferencedSOPInstanceUID", limit: 64
    t.integer    "ReferencedFrame"
    t.varchar    "Creator",                  limit: 50
    t.datetime   "ModifiedDate"
    t.varchar    "DrawingKey",               limit: 200
    t.integer    "Flags"
    t.text_basic "Description",              limit: 2147483647
    t.index ["DrawingKey"], name: "DrawingKey"
    t.index ["MeasurementName"], name: "LX_MeasurementName"
    t.index ["SS_Event_Echo_ID"], name: "LX_SS_Event_Echo_ID"
  end

  create_table "Echo_Assessment", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer  "AirwayAssessPerform",     limit: 2
    t.datetime "FormalProcTime"
    t.integer  "FormalProcTimeOut",       limit: 2
    t.integer  "HxSedationCompObtained",  limit: 2
    t.integer  "InformedConsentObtained", limit: 2
    t.varchar  "PharmAgent",              limit: 50
    t.varchar  "PhysicianPerforming",     limit: 50
    t.varchar  "ProbePassed",             limit: 50
    t.real     "TtlStressTime"
  end

  create_table "Echo_CDComplications", primary_key: "SS_Echo_CDComplication_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Complication",     limit: 55
    t.varchar "Result",           limit: 50
    t.varchar "Notes",            limit: 255
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_CDContrast", primary_key: "SS_Echo_CDContrast_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID"
    t.datetime "TimeAdministered"
    t.varchar  "ContrastType",     limit: 20
    t.float    "ContrastAmount"
    t.varchar  "Units",            limit: 12
    t.float    "TotalDose"
    t.varchar  "Notes",            limit: 255
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_CDStress_Recovery", primary_key: "SS_Echo_CDStressRecovery_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "ExStressRecoveryStage",      limit: 50
    t.varchar "ExStressRecoveryTime",       limit: 50
    t.varchar "ExStressRecoveryHR",         limit: 50
    t.varchar "ExStressRecoveryBPs",        limit: 50
    t.varchar "ExStressRecoveryBPd",        limit: 50
    t.varchar "ExStressRecoverySymptom",    limit: 250
    t.varchar "ExStressRecoveryArrhythmia", limit: 50
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_CPT_Codes", primary_key: "SS_Echo_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "CPT_Code",         limit: 20
    t.varchar "CPT_Desc",         limit: 250
    t.money   "CPTCharge",                    precision: 19, scale: 4
    t.index ["CPT_Code"], name: "CPT_Code"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Conclusions_SNLog", primary_key: "SS_Echo_Conclusions_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Echo_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.text_basic "TextField",        limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "NoteRtf",          limit: 2147483647
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_DICOM_Studies", primary_key: "SS_Echo_DICOM_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID",               null: false
    t.varchar  "DICOM_UID",          limit: 100
    t.varchar  "FileName",           limit: 255
    t.varchar  "SS_SettingsKeyName", limit: 50
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",   limit: 80
    t.integer  "ExcludeFromReport",  limit: 2
    t.index ["DICOM_UID"], name: "DICOM_UID"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Echo_Extension", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Findings_SNLog", primary_key: "SS_Echo_Findings_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Echo_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.text_basic "TextField",        limit: 2147483647
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.integer    "BulletSequence"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Hemo", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float "AV_Gradient"
    t.float "MV_Gradient"
    t.float "TV_Gradient"
    t.float "PV_Gradient"
    t.float "AV_Area"
    t.float "MV_Area"
    t.float "TV_Area"
    t.float "PV_Area"
    t.float "Shunts"
    t.float "Left_to_Right_Shunt"
    t.float "Right_to_Left_Shunt"
    t.float "Pulmonary_AV_O2_Diff"
    t.float "Systemic_AV_O2_Difference"
    t.float "QP_QS"
  end

  create_table "Echo_History", primary_key: "SS_Echo_History_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "History",          limit: 50
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_ICD9_Codes", primary_key: "SS_Echo_ICD9_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "ICD9_Code",        limit: 20
    t.varchar "ICD9_Desc",        limit: 255
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Image_Drawings", primary_key: "SS_Echo_Image_Drawings_ID", force: :cascade do |t|
    t.integer    "SS_Event_Echo_ID",                    null: false
    t.varchar    "StudyUID",         limit: 100,        null: false
    t.varchar    "ImageUID",         limit: 100,        null: false
    t.integer    "FrameNumber",                         null: false
    t.varchar    "DrawingKey",       limit: 200,        null: false
    t.varchar    "DrawingType",      limit: 100,        null: false
    t.text_basic "Drawing",          limit: 2147483647, null: false
    t.index ["DrawingKey"], name: "IX_Echo_Image_Drawings_Key", unique: true
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "Echo_Images", primary_key: "SS_Echo_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID"
    t.varchar  "Filename",              limit: 255
    t.varchar  "ImagingDevice",         limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",             limit: 30
    t.varchar  "Caption",               limit: 255
    t.varchar  "Media_UID",             limit: 50
    t.varchar  "Location",              limit: 50
    t.varchar  "SS_SettingsKeyName",    limit: 50
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.varchar  "Status",                limit: 50
    t.varchar  "StudyInstanceUID",      limit: 255
    t.integer  "CaptureMask"
    t.integer  "ExcludeFromReport",     limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Indications", primary_key: "SS_Echo_Indications_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Indications",      limit: 100
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Log", primary_key: "SS_Echo_Log_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID",             null: false
    t.datetime "Date_Field"
    t.datetime "Time_Field"
    t.varchar  "Note",             limit: 255
    t.integer  "Extra_Note",       limit: 2
    t.varchar  "EnteredBy",        limit: 50
    t.index ["SS_Event_Echo_ID", "SS_Echo_Log_ID"], name: "SS_Event_Cath_ID2"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Echo_MeasAddDetails", primary_key: "SS_Echo_MeasAddDetails_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Description",      limit: 255
    t.varchar "Location",         limit: 255
    t.float   "Diameter"
    t.float   "PeakVelocity"
    t.varchar "Notes",            limit: 255
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Measurements", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float   "DoppAorticPeakVelocity"
    t.float   "DoppAorticMeanVelocity"
    t.float   "DoppAorticPeakEstGrad"
    t.float   "DoppAorticMeanEstGrad"
    t.float   "DoppAorticPressHalfTime"
    t.float   "DoppAorticCrossSecArea"
    t.varchar "DoppAorticCrossSectMethod",      limit: 25
    t.float   "DoppAorticRAPressureEst"
    t.float   "DoppAorticEstRVSysPress"
    t.float   "DoppMitralPeakVelocity"
    t.float   "DoppMitralMeanVelocity"
    t.float   "DoppMitralPeakEstGrad"
    t.float   "DoppMitralMeanEstGrad"
    t.float   "DoppMitralPressHalfTime"
    t.float   "DoppMitralCrossSecArea"
    t.varchar "DoppMitralCrossSectMethod",      limit: 25
    t.float   "DoppMitralRAPressureEst"
    t.float   "DoppMitralEstRVSysPress"
    t.float   "DoppTricuspidPeakVelocity"
    t.float   "DoppTricuspidMeanVelocity"
    t.float   "DoppTricuspidPeakEstGrad"
    t.float   "DoppTricuspidMeanEstGrad"
    t.float   "DoppTricuspidPressHalfTime"
    t.float   "DoppTricuspidCrossSecArea"
    t.varchar "DoppTricuspidCrossSectMethod",   limit: 25
    t.float   "DoppTricuspidRAPressureEst"
    t.float   "DoppTricuspidEstRVSysPress"
    t.float   "DoppPulmonicPeakVelocity"
    t.float   "DoppPulmonicMeanVelocity"
    t.float   "DoppPulmonicPeakEstGrad"
    t.float   "DoppPulmonicMeanEstGrad"
    t.float   "DoppPulmonicPressHalfTime"
    t.float   "DoppPulmonicCrossSecArea"
    t.varchar "DoppPulmonicCrossSectMethod",    limit: 25
    t.float   "DoppPulmonicRAPressureEst"
    t.float   "DoppPulmonicEstRVSysPress"
    t.float   "MitralInflowIVRT"
    t.float   "MitralInflowDecelerationTime"
    t.float   "MitralInflowAccelerationTime"
    t.float   "MitralInflowAWaveDuration"
    t.float   "MitralInflowPeakE"
    t.float   "MitralInflowEWaveVelocity"
    t.float   "MitralInflowEWaveVelocityVar"
    t.float   "MitralInflowEARatio"
    t.float   "LeftVentOutflowGradient"
    t.float   "LeftVentOutflowVelocity"
    t.float   "LeftVentOutflowValsalva"
    t.float   "LeftVentOutflowAmylNitrite"
    t.float   "PulmonVeinFlowSWave"
    t.float   "PulmonVeinFlowDWave"
    t.float   "PulmonVeinFlowAWave"
    t.float   "PulmonVeinFlowSDRatio"
    t.float   "OutflowInflowTVI"
    t.float   "OutflowInflowStrokeVolume"
    t.float   "OutflowInflowRegurgVolume"
    t.float   "OutflowInflowRegurgFraction"
    t.float   "OutflowInflowCardiacOutput"
    t.float   "ValvuInsuffDPDT"
    t.float   "ValvuInsuffTVI"
    t.float   "ValvuInsuffPeakVelocity"
    t.float   "ValvuInsuffDecelerationTime"
    t.float   "LVIDd2D"
    t.float   "LVIDdMMode"
    t.float   "LVIDs2D"
    t.float   "LVIDsMMode"
    t.float   "VST2d"
    t.float   "VSTMMode"
    t.float   "FractionalShortening2D"
    t.float   "FractionalShorteningMMode"
    t.float   "LVEjectionFraction2D"
    t.float   "LVEjectionFractionMMode"
    t.float   "BPWallStress2D"
    t.float   "BPWallStressMMode"
    t.float   "LVIDdInd2D"
    t.float   "LVIDdlndMMode"
    t.float   "IVSd2D"
    t.float   "IVSdMMOde"
    t.float   "LVPWd2D"
    t.float   "LVPWdMMode"
    t.float   "LVOTDiameter2D"
    t.float   "LVOTDiameterMMode"
    t.float   "RVIDd2D"
    t.float   "RVIDdMMode"
    t.float   "RVIDdInd2D"
    t.float   "RVIDdlndMMode"
    t.float   "LAIDs2D"
    t.float   "LAIDsMMode"
    t.float   "LAIDsInd2D"
    t.float   "LAIDsIndMMode"
    t.float   "AoRIDd2D"
    t.float   "AoRIDdMMode"
    t.float   "AoVCusp2D"
    t.float   "AoVCuspMMode"
    t.float   "MitralAnnulusDiameter2D"
    t.float   "MitralAnnulusDiameterMMode"
    t.float   "TricuspidAnnulusDiameter2D"
    t.float   "TricuspidAnnulusDiameterMMode"
    t.float   "RVOTDiameter2D"
    t.float   "RVOTDiameterMMode"
    t.float   "LVMass2D"
    t.float   "LVMassMMode"
    t.float   "LVMassIndex2D"
    t.float   "LVMassIndexMMode"
    t.float   "DoppEffectiveOrificeAreaTric"
    t.float   "DoppEffectiveOrificeAreaPulm"
    t.float   "DoppEffectiveOrificeAreaAo"
    t.float   "DoppEffectiveOrificeAreaMV"
    t.integer "EstPASystolic"
    t.integer "PressureTime"
    t.integer "LVOTMeanGradient"
    t.float   "LVOTDiameter"
    t.float   "LVIVSSysThickness"
    t.float   "LVEjectionFractionPostStress"
    t.integer "ProstheticAO",                   limit: 2
    t.integer "ProstheticMV",                   limit: 2
    t.integer "ProstheticTric",                 limit: 2
    t.integer "ProstheticPulm",                 limit: 2
    t.float   "EHRLVvolumediastole"
    t.float   "EHRStrokeVolume"
    t.float   "EHRLVvolumesysstole"
    t.float   "LAVolume"
    t.float   "LVEFModSim4C"
    t.float   "LVEFModSimp2C"
    t.float   "AssumRAPressure"
    t.float   "IVSs2D"
    t.float   "LVPWSMMode"
    t.float   "LVPWs2D"
    t.float   "AorticAnnulusDiameterMMode"
    t.float   "AorticAnnulusDiameter2D"
    t.float   "PulmonaryAnnulusDiameterMMode"
    t.float   "PulmonaryAnnulusDiameter2D"
    t.float   "LVEFModSim4C2D"
    t.float   "LVEFModSimp2C2D"
    t.float   "LVvolumesystole"
    t.float   "LVvolumediastole"
    t.float   "EHRSStrokeVolume"
    t.float   "DoppDSAOPeakVelocity"
    t.float   "DoppDSAOMeanVelocity"
    t.float   "DoppDSAOPeakEstGrad"
    t.float   "DoppDSAOMeanEstGrad"
    t.float   "MitralInflowPeakA"
    t.float   "LeftVentOutflowGradientPeak"
    t.float   "LeftVentOutflowGradientMean"
    t.float   "EHRSStrokeVolumeMMode"
    t.float   "EHRSStrokeVolume2D"
    t.float   "LVvolumeDiastoleMMode"
    t.float   "LVvolumeDiastole2d"
    t.float   "LVVolumeSystoleMMode"
    t.float   "LVvolumesystole2d"
    t.float   "LVEjecFracPostStrsMMode"
    t.float   "LVEjecFracPostStrsVolume"
    t.float   "VST"
    t.float   "BPWallStress"
    t.float   "LVIDdInd"
    t.float   "RVIDdInd"
    t.float   "LAIDsInd"
    t.float   "AoVCusp"
    t.float   "LVMass"
    t.float   "LVMassIndex"
    t.float   "LAVMMode"
    t.float   "LAV2d"
    t.float   "RVAWdMMode"
    t.float   "RVAWd2D"
    t.float   "RVIDsMMode"
    t.float   "RVIDs2D"
    t.float   "MitralEFSlopeMMode"
    t.float   "MitralEPtSeptalSep"
    t.float   "LVEFModSimpBiPlane"
    t.float   "LAVolumeSimpBiPlane"
    t.float   "MitralInflowAWaveVelocity"
    t.float   "MitralEPrimeLateralVelocity"
    t.float   "MitralEPrimeMedialVelocity"
    t.float   "MitralInflowEEPrimeLatRatio"
    t.float   "MitralInflowEEPrimeMedialRatio"
    t.float   "MitralAPrimeLateralVelocity"
    t.float   "MitralAPrimeMedialVelocity"
    t.float   "MitralEPrimeAPrimeRatio"
    t.float   "MitralInflowAWaveVelocityVar"
    t.float   "MitralEPrimeVelocityVar"
    t.float   "MitralAPrimeVelocityVar"
    t.float   "DoppAorticPeakVelocityVar"
    t.float   "DoppMitralRegurgPeakVelocity"
    t.float   "DoppMitralRegurgMeanVelocity"
    t.float   "DoppMitralRegurgPeakGradient"
    t.float   "DoppMitralRegurgMeanGradient"
    t.float   "DoppMitralRegurgDPDT"
    t.float   "PulmonVeinFlowAWaveDur"
    t.float   "LeftVentOutflowVelocityM"
    t.float   "DoppAorticRegurgPeakVelocity"
    t.float   "DoppAorticRegurgVolume"
    t.float   "DoppAorticRegurgDecelTime"
    t.float   "DoppAorticRegurgEndDiastolic"
    t.float   "DoppAorticRegurgFraction"
    t.float   "DoppAorticRegurgVolumePISA"
    t.float   "DoppTVRegurgVelocity"
    t.float   "DoppTVRegurgPeakGradient"
    t.float   "DoppTricuspidRegurgDPDT"
    t.float   "DoppPulmonicRegurgPeakVelocity"
    t.float   "DoppPulmonicRegurgPeakEstGrad"
    t.float   "DoppPulmonicRegurgDecelSlope"
    t.float   "DoppPulmonicRegurgDecelTime"
    t.float   "DoppPulmonicRegurgPHT"
    t.float   "DoppAorticAscPeakVelocity"
    t.float   "DoppAorticAscMeanVelocity"
    t.float   "DoppAorticAscPeakEstGrad"
    t.float   "DoppAorticAscMeanEstGrad"
    t.float   "AorticAscDiameter2D"
    t.float   "AorticArchDiameter2D"
    t.float   "DoppAorticArchPeakVelocity"
    t.float   "AorticDescDiameter2D"
    t.float   "RVOTStrokeVolumeMMode"
    t.float   "RVOTStrokeVolume2D"
    t.float   "RVOTStrokeVolumeDopp"
    t.float   "OutflowInflowCardiacIndexMMode"
    t.float   "OutflowInflowCardiacIndex2D"
    t.float   "OutflowInflowCardiacIndexDopp"
    t.float   "DoppMitralVTI"
    t.float   "DoppAorticVTI"
    t.float   "DoppAorticRegurgVTI"
    t.float   "DoppTricuspidVTI"
    t.float   "DoppTricuspidRegurgVTI"
    t.float   "DoppPulmonicVTI"
    t.float   "DoppPulmonicRegurgVTI"
    t.float   "QP_QS"
    t.float   "OutflowInflowStrokeVolumeMMode"
    t.float   "OutflowInflowStrokeVolume2D"
    t.float   "OutflowInflowStrokeVolumeDopp"
    t.float   "DoppMitralRegurgVTI"
    t.float   "LeftVentOutflowVTI"
    t.float   "IVCDiameterExpiration2D"
    t.float   "IVCDiameterExpirationMMode"
    t.float   "IVCDiameterExpirationDopp"
    t.float   "IVCDiameterInspiration2D"
    t.float   "IVCDiameterInspirationMMode"
    t.float   "IVCDiameterInspirationDopp"
    t.float   "AorticCrossSecAreaIndex"
    t.float   "MitralCrossSecAreaIndex"
    t.float   "AorticCrossSecAreaMean"
    t.float   "MitralCrossSecAreaMean"
    t.float   "DoppPulmonicRegurgEndDiastolic"
    t.integer "LVEFMMode_Hide",                 limit: 2
    t.float   "LVDAMOD4C"
    t.float   "LVDAZ"
    t.float   "LVDLMOD4C"
    t.float   "LVDPDT"
    t.float   "LVETMM"
    t.float   "LVIVRT"
    t.float   "LVDVMOD4C"
    t.float   "LVOTA"
    t.float   "PVAT"
    t.float   "LVSVMOD4C"
  end

  create_table "Echo_MeasurementsAI", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float "AIAccelS"
    t.float "AIAccelT"
    t.float "AIEDV"
    t.float "AIFlowAPISA"
    t.float "AIInstFlowPISA"
    t.float "AIJetWA3C"
    t.float "AIJetWA4C"
    t.float "AIJetWPLAX"
    t.float "AIMeanG"
    t.float "AIMnV"
    t.float "AIPeakG"
    t.float "AIPHT"
    t.float "AIPISA"
    t.float "AIPISARad"
    t.float "AoAbdDiamDist"
    t.float "AoAbdDiamMid"
    t.float "AoAbdDiamProx"
    t.float "AoAbdDiamPSV"
    t.float "AoAnnsPLAX"
    t.float "AoAscMeanGrad"
    t.float "AoAscPeakGrad"
    t.float "AoAscPeakVel"
    t.float "AoIsthmus2D"
    t.float "AoSTJuncs"
    t.float "AoThoracicMeanGrad"
    t.float "AoThoracicPeakGrad"
    t.float "AoThoracicPeakVel"
    t.float "ASDDIAM2D"
    t.float "ASDMAJAXIS2D"
    t.float "ASDMeanGrad"
    t.float "ASDMeanVel"
    t.float "ASDPeakGrad"
    t.float "ASDPeakVel"
    t.float "ASDMINAXIS2D"
    t.float "ASDVTI"
    t.float "AVAccelS"
    t.float "AVAccelT"
    t.float "AVAContMeanV"
    t.float "AVAContPeakV"
    t.float "AVAnnDiam2DA"
    t.float "AVAPISA"
    t.float "AVDecT"
    t.float "AVET"
    t.float "AVETMM"
    t.float "AVHR"
    t.float "AVRegFraDP"
    t.float "AVRGFRACPISAD"
    t.float "AVRWAVCTDP"
    t.float "AVRWAVOTDP"
    t.float "AVSI"
    t.float "AVSV"
    t.float "CIRCDiam"
    t.float "CoarctDiam2D"
    t.float "DTMRVD"
    t.float "HVeinADur"
    t.float "HVeinARevsVel"
    t.float "HVeinPkVd"
    t.float "HVeinPkVs"
    t.float "HVeinSDRatio"
    t.float "IVCARevsVel"
    t.float "IVCDiam"
    t.float "IVCdPeakVel"
    t.float "IVCPeakGrad"
    t.float "IVCSDVelRatio"
    t.float "IVCsPeakVel"
    t.float "IVSLVPWRat2D"
    t.float "IVSLVPWRatMM"
    t.float "IVSPerThick2D"
    t.float "IVSPerThickMM"
    t.float "IVSsMM"
  end

  create_table "Echo_MeasurementsJL", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float "IVCDiam"
    t.float "IVCdPeakVel"
    t.float "IVCPeakGrad"
    t.float "IVCSDVelRatio"
    t.float "IVCsPeakVel"
    t.float "IVSLVPWRat2D"
    t.float "IVSLVPWRatMM"
    t.float "IVSPerThick2D"
    t.float "IVSPerThickMM"
    t.float "IVSsMM"
    t.float "LAA2D"
    t.float "LAAd2DA2C"
    t.float "LAAd2DA4C"
    t.float "LAAORat2D"
    t.float "LAAORatMM"
    t.float "LAAs2DA2C"
    t.float "LAAs2DA4C"
    t.float "LAAs2DModA2C"
    t.float "LAAs2DModA4C"
    t.float "LADDiam"
    t.float "LAEDV2DA2CMOD"
    t.float "LAEDV2DA4CMOD"
    t.float "LAEDV2DALA2C"
    t.float "LAEDV2DALA4C"
    t.float "LAEDV2DALBP"
    t.float "LAESV2DA2CMOD"
    t.float "LAESV2DA2CMODInd"
    t.float "LAESV2DA4CMOD"
    t.float "LAESV2DA4CMODInd"
    t.float "LAESV2DALA2C"
    t.float "LAESV2DALA4C"
    t.float "LAESV2DALBP"
    t.float "LAESV2DBPMODInd"
    t.float "LAmajd2DA2C"
    t.float "LAmajd2DA4C"
    t.float "LAmajs2DA2C"
    t.float "LAmajs2DA4C"
    t.float "LAmajs2DMODA2C"
    t.float "LAmajs2DMODA4C"
    t.float "LMAAccelT"
    t.float "LMADecT"
    t.float "LMALTimeToETDI"
    t.float "LMALVIVCT"
    t.float "LMALVIVRT"
    t.float "LMALVPkTVa"
    t.float "LMALVPkTVs"
    t.float "LMCADiam"
    t.float "LVAd2DA2C"
    t.float "LVAd2DA2DQSAM"
    t.float "LVAd2DA4C"
    t.float "LVAd2DaCMQSAX"
    t.float "LVAd2DSPE"
    t.float "LVAdA2C2D"
    t.float "LVAdA4C2D"
    t.float "LVAdPSAX2D"
    t.float "LVAs2DA2C"
    t.float "LVAs2DA4C"
    t.float "LVAs2DSPE"
    t.float "LVAsA2C2D"
    t.float "LVAsA4C2D"
    t.float "LVAsPSAX2D"
    t.float "LVCI2DC"
    t.float "LVCI2DSPE"
    t.float "LVCI2DT"
    t.float "LVCIMMC"
    t.float "LVCIMMT"
    t.float "LVCIMODA2C"
    t.float "LVCIMODA4C"
    t.float "LVCIMODBP"
    t.float "LVCO2DC"
    t.float "LVCO2DSPE"
    t.float "LVCO2DT"
    t.float "LVCOALA2C"
    t.float "LVCOALA4C"
    t.float "LVCOALBP"
    t.float "LVCOBUL"
    t.float "LVCOMMC"
    t.float "LVCOMMT"
    t.float "LVCOMODA2C"
    t.float "LVCOMODA4C"
    t.float "LVCOMODBP"
    t.float "LVEDV"
    t.float "LVEDV2DA2C"
    t.float "LVEDV2DA4C"
    t.float "LVEDV2DALA2C"
    t.float "LVEDV2DALA4C"
    t.float "LVEDV2DALBP"
    t.float "LVEDV2DBP"
    t.float "LVEDV2DBul"
    t.float "LVEDV2DC"
    t.float "LVEDV2DSPE"
    t.float "LVEDV2DT"
    t.float "LVEDV3DQ"
    t.float "LVEDVA2DQ"
    t.float "LVEDVA2DQA2C"
    t.float "LVEDVA2DQA4C"
    t.float "LVEDVACMQ"
    t.float "LVEDVACMQA2C"
    t.float "LVEDVACMQA4C"
    t.float "LVEDVMMC"
    t.float "LVEF"
    t.float "LVEF2DA2DQ"
    t.float "LVEF2DA2DQA2C"
    t.float "LVEF2DA2DQA4C"
    t.float "LVEF2DACMQ"
    t.float "LVEF2DACMQA2C"
    t.float "LVEF2DACMQA4C"
    t.float "LVEF2DALA2C"
    t.float "LVEF2DALA4C"
    t.float "LVEF2DALBP"
    t.float "LVEF2DC"
    t.float "LVEF2DSPE"
    t.float "LVEF2DT"
    t.float "LVEF3DQ"
    t.float "LVEFDumes"
    t.float "LVEFMMC"
    t.float "LVEpiAdPSAX2D"
    t.float "LVEpiAsPSAX2D"
    t.float "LVESA2DA2DQSAM"
    t.float "LVESA2DaCMQSAX"
    t.float "LVESV"
    t.float "LVESV2DA2C"
    t.float "LVESV2DA4C"
    t.float "LVESV2DALA2C"
    t.float "LVESV2DALA4C"
    t.float "LVESV2DALBP"
    t.float "LVESV2DBP"
    t.float "LVESV2DC"
    t.float "LVESV2DSPE"
    t.float "LVESV2DT"
    t.float "LVESV3DQ"
    t.float "LVESVA2DQ"
    t.float "LVESVA2DQA2C"
    t.float "LVESVA2DQA4C"
    t.float "LVESVACMQ"
    t.float "LVESVACMQA2C"
    t.float "LVESVACMQA4C"
    t.float "LVESVMMC"
    t.float "LVFAC2DA2C"
    t.float "LVFAC2DA2DQSAM"
    t.float "LVFAC2DA4C"
    t.float "LVFAC2DaCMQSAX"
    t.float "LVFAC2DMODA2C"
    t.float "LVFAC2DMODA4C"
    t.float "LVFS2DC"
    t.float "LVFS2DT"
    t.float "LVFSMMC"
    t.float "LVFSMMT"
    t.float "LVHR"
    t.float "LVIVCT"
    t.float "LVIVRTMM"
    t.float "LVmajd"
    t.float "LVmajd2D"
    t.float "LVmajd2DA2C"
    t.float "LVmajd2DA4C"
    t.float "LVmajd2DMODA2C"
    t.float "LVmajd2DMODA4C"
    t.float "LVmajd2DSPE"
    t.float "LVmajs2D"
    t.float "LVmajs2DA2C"
    t.float "LVmajs2DA4C"
    t.float "LVmajs2DMODA2C"
    t.float "LVmajs2DMODA4C"
    t.float "LVmajs2DSPE"
    t.float "LVMass2DASE"
    t.float "LVMass2DASEInd"
    t.float "LVMassd2D"
    t.float "LVMassd2DAL"
    t.float "LVMassd2DALInd"
    t.float "LVMassd2DASE"
    t.float "LVMassd2DASEInd"
    t.float "LVMassd2DPenn"
    t.float "LVMassd2DPennInd"
    t.float "LVMassdInd"
    t.float "LVMassdMMASE"
    t.float "LVMassdMMASEInd"
    t.float "LVMassdMMC"
    t.float "LVMassdMMCInd"
    t.float "LVMassdMMPenn"
    t.float "LVMassdMMPennInd"
    t.float "LVMassMMASE"
    t.float "LVMassMMASECorr"
    t.float "LVMassMMASEInd"
    t.float "LVMass2D"
    t.float "LVMass2DASECorr"
    t.float "LVMass2DInd"
    t.float "LVMasss2D"
    t.float "LVMasss2DAL"
    t.float "LVMasssMM"
    t.float "LVMWT2D"
    t.float "LVOTAccelS"
    t.float "LVOTAccelT"
    t.float "LVOTAliasVelPISA"
    t.float "LVOTCO"
    t.float "LVOTInstFlowPISA"
    t.float "LVOTPISA"
    t.float "LVOTPISARad"
    t.float "LVOTSI2D"
    t.float "LVOTSID"
    t.float "LVOTSIMM"
    t.float "LVOTSV"
    t.float "LVOTSV2D"
    t.float "LVOTSVMM"
    t.float "LVPWPT2D"
    t.float "LVPWPTMM"
    t.float "LVPWsMM"
    t.float "LVRRInterval3D"
    t.float "LVSI2DCube"
    t.float "LVSI2DSPE"
    t.float "LVSI2DT"
    t.float "LVSIALA2C"
    t.float "LVSIALA4C"
    t.float "LVSIALBP"
    t.float "LVSIMMCube"
    t.float "LVSIMMT"
    t.float "LVSIMODA2C"
    t.float "LVSIMODA4C"
    t.float "LVSIMODBP"
    t.float "LVSV2DC"
    t.float "LVSV2DSPE"
    t.float "LVSV2DT"
    t.float "LVSV3DQ"
    t.float "LVSVALA2C"
    t.float "LVSVALA4C"
    t.float "LVSVALBP"
    t.float "LVSVMMC"
    t.float "LVSVMODA2C"
    t.float "LVSVMODA4C"
    t.float "LVSVMODBP"
    t.float "LVSysPressAVStenosis"
    t.float "LVPEPMM"
    t.float "LVPEPETRatio"
    t.float "LVTEIP"
  end

  create_table "Echo_MeasurementsMZ", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float "MALatAVTITDI"
    t.float "MALatEVTITDI"
    t.float "MAMedAVTITDI"
    t.float "MAMedEVTITDI"
    t.float "MALatTimeToSTDI"
    t.float "MVAnnMedTimeToSTDI"
    t.float "MMAAccelT"
    t.float "MMADecT"
    t.float "MMAEATDI"
    t.float "MMALVAPkTVa"
    t.float "MMALVAPkTVe"
    t.float "MMALVIVCT"
    t.float "MMALVIVRT"
    t.float "MMALVPkTVs"
    t.float "MPAAccelT"
    t.float "MRAccelS"
    t.float "MRFlowAPISA"
    t.float "MRInstFlow"
    t.float "MRJetAd2DA2C"
    t.float "MRJetAd2DA4C"
    t.float "MRJetAs2DA2C"
    t.float "MRJetAs2DA4C"
    t.float "MRMnV"
    t.float "MRPISA"
    t.float "MRPkPG"
    t.float "MRPkV"
    t.float "MRRad"
    t.float "MRSV"
    t.float "MRVolPISA"
    t.float "MVAccelS"
    t.float "MVAccelT"
    t.float "MVALatEATDI"
    t.float "MVAliasVel"
    t.float "MVAnnArea3DMVQ"
    t.float "MVAnnCirc2DMVQ"
    t.float "MVAnnCirc3DMVQ"
    t.float "MVAnnd2D"
    t.float "MVAnndA2C"
    t.float "MVAnndPLAX"
    t.float "MVAnnDT"
    t.float "MVAnnEllipse2DMVQ"
    t.float "MVAnnHeight2DMVQ"
    t.float "MVAnnHtDiamRatioMVQ"
    t.float "MVAnnMedTimeToETDI"
    t.float "MVAnnsA2C"
    t.float "MVAnnsA4C"
    t.float "MVAnnsPLAX"
    t.float "MVAnnVTI"
    t.float "MVAntLeafAngle2DMVQ"
    t.float "MVAoAnnMVPlanAng2DMVQ"
    t.float "MVAPDiam2DMVQ"
    t.float "MVAPISA"
    t.float "MVCDIFunAngle"
    t.float "MVCO"
    t.float "MVEESeparationMM"
    t.float "MVDEExcMMode"
    t.float "MVDESlopeMM"
    t.float "MVEATDRat"
    t.float "MVHR"
    t.float "MVInstFlow"
    t.float "MVLeafArea3DMVQ"
    t.float "MVNonPlaneAng2DMVQ"
    t.float "MVPHt2DMVQ"
    t.float "MVPHTPkV"
    t.float "MVPISA"
    t.float "MVPISARad"
    t.float "MVPkEVal"
    t.float "MVPostLeafAngle2DMVQ"
    t.float "MVPVol2DMVQ"
    t.float "MVRegFraPISADP"
    t.float "MVSI"
    t.float "MVSV"
    t.float "MVTentHt2DMVQ"
    t.float "MVTentVol2DMVQ"
    t.float "MVTMADLt2Da2DQA4C"
    t.float "MVTMADLt2DaCMQA4C"
    t.float "MVTMADMLR2Da2DQA4C"
    t.float "MVTMADMLR2DaCMQA4C"
    t.float "MVTMADMLRNml2Da2DQA4C"
    t.float "MVTMADMLRNml2DaCMQA4C"
    t.float "MVTMADRt2Da2DQA4C"
    t.float "MVTMADRt2DaCMQA4C"
    t.float "MVACIntervalMM"
    t.float "PAdPres"
    t.float "PALPkVel"
    t.float "PALPkGrad"
    t.float "PALMnGrad"
    t.float "PALMnVel"
    t.float "PALPADiam"
    t.float "PALPADiamd"
    t.float "PALPADiams"
    t.float "PALTDiam2DA"
    t.float "PAMainArea2D"
    t.float "PAMainDiam2DA"
    t.float "PAMainMnGrad"
    t.float "PAMainPkGrad"
    t.float "PAMainVel"
    t.float "PAMD"
    t.float "PAMPADiamd"
    t.float "PAMPADiams"
    t.float "PARMnGrad"
    t.float "PARPADiamd"
    t.float "PARPADiams"
    t.float "PARPkGrad"
    t.float "PARPKVel"
    t.float "PaRtDiam2DA"
    t.float "PatDiasBPEcho"
    t.float "PatSysBPEcho"
    t.float "PDADIAM2D"
    t.float "PDAdPkVel"
    t.float "PDASPkVel"
    t.float "PIDecSlope"
    t.float "PIDiasGrad"
    t.float "PIEDV"
    t.float "PIPHT"
    t.float "PulVLLADur"
    t.float "PulVLUADur"
    t.float "PulVRLADur"
    t.float "PulVRUADur"
    t.float "PulVRUPkSVel"
    t.float "PulVRUSDRatio"
    t.float "PVAccelS"
    t.float "PVACtVTI"
    t.float "PVAPHT"
    t.float "PVAPISA"
    t.float "PVAPkV"
    t.float "PVAPlan"
    t.float "PVeinADur"
    t.float "PVeinARevsVel"
    t.float "PVeinPkVd"
    t.float "PVeinPkVs"
    t.float "PVETMM"
    t.float "PVHR"
    t.float "PVRegVTI"
    t.float "PVVTI"
    t.float "PVAWaveAmpMM"
    t.float "PVBCSlopeMM"
    t.float "PVLateDiastSlopeMM"
    t.float "QWaveToPVCloseTime"
    t.float "QWaveToTVOpenTime"
    t.float "RAAs2DA4C"
    t.float "RADiam2D"
    t.float "RAEDV2DA4CMOD"
    t.float "RAEDV2DALA4C"
    t.float "RAESV2DA4CMOD"
    t.float "RAESV2DALA4C"
    t.float "RAMaj2DA4C"
    t.float "RAmajd2DA4C"
    t.float "RAmajs2DA4C"
    t.float "RAMin2DA4C"
    t.float "RAmind2DA4C"
    t.float "RCADiam"
    t.float "RSVCADur"
    t.float "RSVCARevsVel"
    t.float "RSVCDiam2D"
    t.float "RSVCdVel"
    t.float "RSVCSDRatio"
    t.float "RSVCsVel"
    t.float "RVEDV"
    t.float "RVEF"
    t.float "RVESV"
    t.float "RVETMM"
    t.float "RVHR"
    t.float "RVAWsMM"
    t.float "RVIDdLVIDd2DRatio"
    t.float "RVMajAxis2DA4C"
    t.float "RVMinAxis2DA4C"
    t.float "RVOTA"
    t.float "RVOTAccelS"
    t.float "RVOTAliasVel"
    t.float "RVOTCO"
    t.float "RVOTD2D"
    t.float "RVOTInstFlow"
    t.float "RVOTMeanG"
    t.float "RVOTMnV"
    t.float "RVOTPeakG"
    t.float "RVOTPISA"
    t.float "RVOTPISARad"
    t.float "RVOTPkV"
    t.float "RVOTSI"
    t.float "RVOTVTI"
    t.float "RVSPVSD"
    t.float "RVPEPMM"
    t.float "RVPEPETRatio"
    t.float "RVTEIP"
    t.float "TRAliasVel"
    t.float "TRFlowAPISA"
    t.float "TRInstFlow"
    t.float "TRMeanG"
    t.float "TRMnV"
    t.float "TRPISA"
    t.float "TRVTI"
    t.float "TVA"
    t.float "TVAccelS"
    t.float "TVAccelT"
    t.float "TVADur"
    t.float "TVAliasVel"
    t.float "TVANNDIAM2D"
    t.float "TVAPHT"
    t.float "TVAPISA"
    t.float "TVAPlan"
    t.float "TVCDIFunAngle"
    t.float "TVDEExcMMode"
    t.float "TVDESlopeMM"
    t.float "TVEARatio"
    t.float "TVEFSlopeMM"
    t.float "TVEROPISA"
    t.float "TVHR"
    t.float "TVInstFlow"
    t.float "TVPISA"
    t.float "TVPISARad"
    t.float "TVPkVAWave"
    t.float "TVPkVEWave"
    t.float "TVRegFraDP"
    t.float "TVSV"
    t.float "TVVTI"
    t.float "TVACIntervalMM"
    t.float "VCFcMM"
    t.float "VSDPeakG"
    t.float "VSDPkV"
  end

  create_table "Echo_Measurements_Extension", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.float "AbdAorAccI"
    t.float "AbdAorAccT"
    t.float "AbdAorAccV"
    t.float "AbdAorASten"
    t.float "AbdAorDecT"
    t.float "AbdAorInA"
    t.float "AbdAorOutA"
    t.float "AbdAorTAMV"
    t.float "LBracD"
    t.float "LDRadSV"
    t.float "RBracMV"
    t.float "RBracSV"
    t.float "RBracTAMV"
    t.float "RComIDV"
    t.float "RComISV"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID", unique: true
  end

  create_table "Echo_MiscData", primary_key: "SS_Echo_MiscData_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID",             null: false
    t.varchar "ItemName",         limit: 80
    t.varchar "ItemAbbreviation", limit: 40
    t.varchar "ItemValue",        limit: 255
    t.varchar "ItemUnits",        limit: 20
    t.varchar "ItemComputation",  limit: 20
    t.float   "ItemStdDev"
    t.integer "AddToReport",      limit: 2
    t.index ["ItemStdDev"], name: "Media_UID"
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Echo_Stress", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "Device",                         limit: 30
    t.integer    "MedsPersantine",                 limit: 2
    t.float      "MedsPersantineDose"
    t.integer    "MedsThallium",                   limit: 2
    t.float      "MedsThalliumDose"
    t.integer    "MedsAminophylline",              limit: 2
    t.float      "MedsAminophyllineDose"
    t.integer    "MedsDobutamine",                 limit: 2
    t.float      "MedsDobutamineDose"
    t.integer    "MedsAtropine",                   limit: 2
    t.float      "MedsAtropineDose"
    t.integer    "MedsCardiolite",                 limit: 2
    t.float      "MedsCardioliteDose"
    t.integer    "MedsTenormin",                   limit: 2
    t.float      "MedsTenorminDose"
    t.integer    "MedsLopressor",                  limit: 2
    t.float      "MedsLopressorDose"
    t.varchar    "Protocol",                       limit: 25
    t.text_basic "MedsCurrent",                    limit: 2147483647
    t.varchar    "TestInfoExerciseTolerance",      limit: 5
    t.float      "TestInfoTotalExerciseTime"
    t.float      "TestInfoMaxPredictedHR"
    t.float      "TestInfoPercentMaxHRAchieved"
    t.float      "TestInfoPeakHeartRate"
    t.float      "TestInfoRestingBPSystolic"
    t.float      "TestInfoRestingBPDiastolic"
    t.float      "TestInfoPeakBPSystolic"
    t.float      "TestInfoPeakDiastolic"
    t.varchar    "TestInfoArrhythmias",            limit: 30
    t.float      "TestInfoMaxSTElevation"
    t.varchar    "TestInfoMaxSTElevLeads",         limit: 20
    t.integer    "TestInfoDiagnosedIschemia",      limit: 2
    t.float      "TestInfoMaxSTDepression"
    t.varchar    "TestInfoMaxSTDepLeads",          limit: 20
    t.float      "TestInfoIschemiaHR"
    t.float      "TestInfoMaxMETS"
    t.float      "TestInfoTerminatedMinute"
    t.varchar    "TestInfoTerminatedStage",        limit: 5
    t.varchar    "TestInfoRestingECG",             limit: 20
    t.varchar    "TestInfoReasonForEnding",        limit: 100
    t.varchar    "TestInfoSymptomsDuringTest",     limit: 100
    t.varchar    "TestInfoResult",                 limit: 10
    t.varchar    "TestInfoComplications",          limit: 30
    t.text_basic "InterpretationResting",          limit: 2147483647
    t.text_basic "InterpretationStress",           limit: 2147483647
    t.text_basic "InterpretationPostExercise",     limit: 2147483647
    t.text_basic "Conclusions",                    limit: 2147483647
    t.float      "PtDataPriorStudy"
    t.datetime   "PtDataPriorStudyDate"
    t.varchar    "PtDataSymptoms",                 limit: 30
    t.datetime   "DateOfStressEcho"
    t.varchar    "Physician",                      limit: 30
    t.varchar    "Assistant",                      limit: 30
    t.varchar    "EchoTech",                       limit: 30
    t.varchar    "CVTech",                         limit: 30
    t.float      "PreScreenSupineHR"
    t.float      "PreScreenStandingHR"
    t.integer    "RestECGLeadNorm",                limit: 2
    t.integer    "RestECGLeadAbn",                 limit: 2
    t.integer    "RestECGLeadAbnLVH",              limit: 2
    t.integer    "RestECGLeadAnteriorMI",          limit: 2
    t.integer    "RestECGLeadAnteroseptalMI",      limit: 2
    t.integer    "RestECGLeadInferiorMI",          limit: 2
    t.integer    "RestECGLeadLateralMI",           limit: 2
    t.integer    "RestECGLeadPosteriorMI",         limit: 2
    t.integer    "RestECGLeadLBBB",                limit: 2
    t.integer    "RestECGLeadRBBB",                limit: 2
    t.integer    "RestECGLeadLeftAxisDev",         limit: 2
    t.integer    "RestECGLeadRightAxisDev",        limit: 2
    t.integer    "RestECGLeadNonSpecSTT",          limit: 2
    t.integer    "RestECGLeadSTTDigoxin",          limit: 2
    t.integer    "RestECGRhythmNormal",            limit: 2
    t.integer    "RestECGRhythmAbn",               limit: 2
    t.integer    "RestECGRhythmAtrialFib",         limit: 2
    t.integer    "RestECGRhythmAtrialTachy",       limit: 2
    t.integer    "RestECGRhythmNSRRarePVC",        limit: 2
    t.integer    "RestECGRhythmNSROccasPVC",       limit: 2
    t.integer    "RestECGRhythmNSRFreqPVC",        limit: 2
    t.integer    "RestECGRhythmMultiPVC",          limit: 2
    t.integer    "RestECGRhythmSinusArrhy",        limit: 2
    t.integer    "RestECGRhythmVentCouplets",      limit: 2
    t.varchar    "OverallLVFunction",              limit: 25
    t.integer    "ModeTreadmill",                  limit: 2
    t.float      "ModeTreadmillMPH"
    t.float      "ModeTreadmillGrade"
    t.float      "ModeTreadmillPeakSpeed"
    t.float      "ModeTreadmillElevation"
    t.float      "ModeTreadmillWatts"
    t.float      "ModeTreadmillMETS"
    t.integer    "ModeBicycle",                    limit: 2
    t.float      "ModeBicycleMPH"
    t.float      "ModeBicycleGrade"
    t.float      "ModeBicyclePeakSpeed"
    t.float      "ModeBicycleElevation"
    t.float      "ModeBicycleWatts"
    t.float      "ModeBicycleMETS"
    t.integer    "ModePharm",                      limit: 2
    t.varchar    "ModePharmDrug",                  limit: 20
    t.varchar    "StressProtocol",                 limit: 30
    t.integer    "StressStopArrhythmia",           limit: 2
    t.integer    "StressStopSOB",                  limit: 2
    t.integer    "StressStopChestPain",            limit: 2
    t.integer    "StressStopSTTChange",            limit: 2
    t.integer    "StressStopDizziness",            limit: 2
    t.integer    "StressStopSyncope",              limit: 2
    t.integer    "StressStopFatigue",              limit: 2
    t.integer    "StressStopLegClaud",             limit: 2
    t.integer    "StressStopTargetHR",             limit: 2
    t.float      "ResultsMPHR85"
    t.float      "ResultsMPHR70"
    t.text_basic "ResultsPeakHR",                  limit: 2147483647
    t.text_basic "ResultsPeakBPSys",               limit: 2147483647
    t.float      "ResultsRatePressProduct"
    t.float      "ResultsECG_STT_Changes"
    t.float      "ResultsECGRhythmsChanges"
    t.integer    "ResultsLVNormal",                limit: 2
    t.integer    "ResultsLVAbnormal",              limit: 2
    t.integer    "ResultsLVAbnormalThick",         limit: 2
    t.integer    "ResultsLVNormalThick",           limit: 2
    t.integer    "ResultsLVNormalContract",        limit: 2
    t.integer    "ResultsLVAbnormalContract",      limit: 2
    t.integer    "ResultsLVWallMotionAbn",         limit: 2
    t.integer    "ResultsLVWallMotionNormal",      limit: 2
    t.integer    "ResultsLVIschemia",              limit: 2
    t.integer    "ResultsLVHypertrophy",           limit: 2
    t.varchar    "ResultsLVHypertrophyDegree",     limit: 15
    t.integer    "ResultsLV_Volume",               limit: 2
    t.varchar    "ResultsLV_VolumeDegree",         limit: 20
    t.varchar    "ResultsLVChamberSize",           limit: 25
    t.integer    "ResultsValveNormal",             limit: 2
    t.integer    "ResultsValveAbnormal",           limit: 2
    t.integer    "ResultsValveThicken",            limit: 2
    t.varchar    "ResultsValveThickenLocation",    limit: 20
    t.integer    "ResultsValveLeaflet",            limit: 2
    t.varchar    "ResultsValveLeafletLocation",    limit: 20
    t.integer    "ResultsValveProlapse",           limit: 2
    t.varchar    "ResultsValveProlapseLocation",   limit: 20
    t.integer    "ResultsValvePapillaryDysfun",    limit: 2
    t.varchar    "ResultsValvePapillaryLocation",  limit: 20
    t.integer    "SymptomsAtypChestPain",          limit: 2
    t.integer    "SymptomsChestPainRest",          limit: 2
    t.integer    "SymptomsChestPainExert",         limit: 2
    t.integer    "SymptomsChestPainSOB",           limit: 2
    t.integer    "SymptomsClaudication",           limit: 2
    t.integer    "SymptomsDizziness",              limit: 2
    t.integer    "SymptomsFatigue",                limit: 2
    t.integer    "SymptomsFatigueWeakness",        limit: 2
    t.integer    "SymptomsPalpitations",           limit: 2
    t.integer    "SymptomsPreOpAssess",            limit: 2
    t.integer    "SymptomsSOB",                    limit: 2
    t.integer    "SymptomsSyncope",                limit: 2
    t.integer    "SymptomsNone",                   limit: 2
    t.integer    "RiskDiabetes",                   limit: 2
    t.integer    "RiskFamilyHistory",              limit: 2
    t.integer    "RiskHighBP",                     limit: 2
    t.integer    "RiskSOB",                        limit: 2
    t.integer    "RiskCAD",                        limit: 2
    t.integer    "RiskLipids",                     limit: 2
    t.integer    "RiskObese",                      limit: 2
    t.integer    "RiskPV",                         limit: 2
    t.integer    "RiskPriorMI",                    limit: 2
    t.integer    "RiskSedentary",                  limit: 2
    t.integer    "RiskSmoking",                    limit: 2
    t.integer    "IndicationArrhythmia",           limit: 2
    t.integer    "IndicationCABG",                 limit: 2
    t.integer    "IndicationPostCABG",             limit: 2
    t.integer    "IndicationChestPain",            limit: 2
    t.integer    "IndicationCHF",                  limit: 2
    t.integer    "IndicationCVEvaluation",         limit: 2
    t.integer    "IndicationHyperchol",            limit: 2
    t.integer    "IndicationPreOpAssess",          limit: 2
    t.integer    "IndicationPreExercise",          limit: 2
    t.integer    "IndicationPostCardio",           limit: 2
    t.integer    "IndicationPostPTCA",             limit: 2
    t.integer    "IndicationCAD",                  limit: 2
    t.integer    "IndicationEarlySPMI",            limit: 2
    t.integer    "IndicationSPMI",                 limit: 2
    t.integer    "IndicationFamilyHxCHD",          limit: 2
    t.integer    "IndicationSyncope",              limit: 2
    t.integer    "IndicationWorkAssessment",       limit: 2
    t.integer    "RestResultsLVNormal",            limit: 2
    t.integer    "RestResultsLVAbn",               limit: 2
    t.integer    "RestResultsLVEnlarge",           limit: 2
    t.varchar    "RestResultsLVEnlargeDegree",     limit: 20
    t.integer    "RestResultsLVHypertropy",        limit: 2
    t.integer    "RestResultLVHypokinesis",        limit: 2
    t.varchar    "RestResultLVHypokinesisDegree",  limit: 20
    t.integer    "RestResultContraction",          limit: 2
    t.varchar    "RestResultContractionDegree",    limit: 20
    t.integer    "RestResultValveNormal",          limit: 2
    t.integer    "RestResultValveAbn",             limit: 2
    t.integer    "RestResultValveThick",           limit: 2
    t.varchar    "RestResultValveThickLocation",   limit: 10
    t.integer    "RestResultValveLeaflet",         limit: 2
    t.integer    "RestResultValveProlapse",        limit: 2
    t.integer    "RestResultValvePapillary",       limit: 2
    t.varchar    "RestResultValvePapillaryLoc",    limit: 10
    t.varchar    "RestResultsLVHypertrophyDeg",    limit: 20
    t.varchar    "RestResultValveLeafletLoc",      limit: 10
    t.varchar    "RestResultValveProlapseLoc",     limit: 10
    t.varchar    "StressECGLeads",                 limit: 10
    t.float      "PredictedHR85Percent"
    t.integer    "StressPkSystolicBP",             limit: 2
    t.integer    "StressPkDiastolicBP",            limit: 2
    t.integer    "TtlStressMinutes",               limit: 2
    t.integer    "TtlStressSeconds",               limit: 2
    t.integer    "RatePressureProduct",            limit: 2
    t.integer    "StressBicycleWATTS",             limit: 2
    t.varchar    "BetaBlockersHeldGiven",          limit: 50
    t.varchar    "TestInfoTerminatedStage_DSE",    limit: 5
    t.float      "MaxDobutamineDose"
    t.float      "MaxAtropineDose"
    t.float      "MaxMetoprololDose"
    t.varchar    "MedicationsHeldGiven",           limit: 25
    t.varchar    "InfusionStopped_Dyspnea",        limit: 50
    t.varchar    "PharmProtocol",                  limit: 50
    t.varchar    "InfusionStopped_Syncope",        limit: 50
    t.varchar    "InfusionStopped_Flushing",       limit: 50
    t.varchar    "InfusionStopped_Nausea",         limit: 50
    t.varchar    "InfusionStopped_Dizziness",      limit: 50
    t.varchar    "InfusionStopped_ChestPain",      limit: 50
    t.varchar    "InfusionStopped_ECGChanges",     limit: 50
    t.varchar    "InfusionStopped_PatientRequest", limit: 50
    t.varchar    "InfusionStopped_TargetHR",       limit: 50
    t.varchar    "InfusionStopped_Hypotension",    limit: 50
    t.varchar    "InfusionStopped_Hypertension",   limit: 50
    t.varchar    "InfusionStopped_Arrhythmia",     limit: 50
    t.varchar    "InfusionStopped_EndProtocol",    limit: 50
    t.varchar    "StressStopped_Dyspnea",          limit: 50
    t.varchar    "StressStopped_Claudication",     limit: 50
    t.varchar    "StressStopped_Syncope",          limit: 50
    t.varchar    "StressStopped_Flushing",         limit: 50
    t.varchar    "StressStopped_Nausea",           limit: 50
    t.varchar    "StressStopped_Dizziness",        limit: 50
    t.varchar    "StressStopped_Fatigue",          limit: 50
    t.varchar    "StressStopped_ChestPain",        limit: 50
    t.varchar    "StressStopped_ECGChanges",       limit: 50
    t.varchar    "StressStopped_PatientRequest",   limit: 50
    t.varchar    "StressStopped_TargetHR",         limit: 50
    t.varchar    "StressStopped_Hypotension",      limit: 50
    t.varchar    "StressStopped_Hypertension",     limit: 50
    t.varchar    "StressStopped_Arrhythmia",       limit: 50
    t.varchar    "StressStopped_EndProtocol",      limit: 50
    t.integer    "TestInfoPeakO2Sat",              limit: 2
    t.integer    "TestInfoPostO2",                 limit: 2
  end

  create_table "Echo_Stress_Exercise", primary_key: "SS_Echo_Stress_Exercise_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "Stage",                  limit: 10
    t.float   "Grade"
    t.float   "METS"
    t.varchar "TotalTime",              limit: 50
    t.float   "HR"
    t.float   "BPSystolic"
    t.float   "BPDiastolic"
    t.float   "MaxSTChangeV1_V3"
    t.float   "MaxSTChangeV4_V6"
    t.float   "MaxSTChange23F"
    t.float   "MaxSTChangeAVL"
    t.varchar "Symptom",                limit: 50
    t.varchar "Arrhythmia",             limit: 50
    t.varchar "EchoStressSpeed",        limit: 50
    t.float   "ExTotalTime"
    t.varchar "Arrhythmias",            limit: 25
    t.integer "StageTime",              limit: 2
    t.varchar "ArrhythmiaDuringStress", limit: 100
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Stress_ID"
  end

  create_table "Echo_Stress_Meds", primary_key: "SS_Echo_Stress_Meds_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID"
    t.varchar  "Medications",          limit: 50
    t.varchar  "Dose",                 limit: 10
    t.varchar  "DurationOnMedication", limit: 50
    t.datetime "CD_MedTime"
    t.varchar  "CD_MedName",           limit: 255
    t.float    "CD_MedDose"
    t.varchar  "CD_MedUnits",          limit: 12
    t.varchar  "CD_MedRoute",          limit: 20
    t.float    "CD_MedTotalDose"
    t.varchar  "Arrhythmias",          limit: 25
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Stress_Pharm", primary_key: "SS_Echo_Stress_Pharm_ID", force: :cascade do |t|
    t.integer  "SS_Event_Echo_ID"
    t.varchar  "Stage",                       limit: 50
    t.datetime "TimeOfStressPharm"
    t.varchar  "Drug",                        limit: 30
    t.varchar  "Dose",                        limit: 50
    t.float    "HR"
    t.float    "BPSystolic"
    t.float    "BPDiastolic"
    t.float    "STLevel"
    t.varchar  "Comments",                    limit: 50
    t.varchar  "Time",                        limit: 5
    t.float    "Atropine"
    t.float    "Metoprolol"
    t.varchar  "PharmSymptoms",               limit: 50
    t.varchar  "PharmArrhythmiaDuringStress", limit: 100
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Echo_Valve", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "AVStatus",                      limit: 10
    t.integer    "AVAssessProlapse",              limit: 2
    t.text_basic "AVAssessPickList",              limit: 2147483647
    t.varchar    "AVAssessThickening",            limit: 10
    t.integer    "AVAssessMass",                  limit: 2
    t.integer    "AVAssessMassMobile",            limit: 2
    t.integer    "AVAssessIfMassMobile",          limit: 2
    t.integer    "AVAssessIfMassSessile",         limit: 2
    t.integer    "AVAssessIfMassPedunculated",    limit: 2
    t.varchar    "AVAssessVegetation",            limit: 20
    t.float      "AVAssessVegetationSize"
    t.varchar    "AVAssessOLMotion",              limit: 25
    t.varchar    "AVAssessRCLeaflet",             limit: 25
    t.varchar    "AVAssessLCLeaflet",             limit: 25
    t.varchar    "AVAssessNCLeaflet",             limit: 25
    t.integer    "AVAssessFusion",                limit: 2
    t.integer    "AVAssesBicuspid",               limit: 2
    t.integer    "AVAssessStenoticValve",         limit: 2
    t.integer    "AVAssessNotWellVisualized",     limit: 2
    t.integer    "AVAssessOther",                 limit: 2
    t.varchar    "AVAssessOtherDetail",           limit: 25
    t.integer    "AVAssessVegetationRuleOut",     limit: 2
    t.integer    "AVAssessTumorRuleOut",          limit: 2
    t.integer    "AVAssessMyxoma",                limit: 2
    t.varchar    "AVDoppAssessAorticStenosis",    limit: 10
    t.varchar    "AVDoppAssessAorticRegurg",      limit: 10
    t.varchar    "AVProsthesis",                  limit: 20
    t.varchar    "AVProsthesisType",              limit: 15
    t.varchar    "AVProsthesisStructure",         limit: 20
    t.integer    "AVProsthesisDLMotion",          limit: 2
    t.integer    "AVProsthesisRocks",             limit: 2
    t.integer    "AVProsthesisFLeaflet",          limit: 2
    t.varchar    "ARStatus",                      limit: 10
    t.text_basic "ARPickList",                    limit: 2147483647
    t.integer    "ARDilationAorticRoot",          limit: 2
    t.float      "ARAorticRootDilationCM"
    t.integer    "ARProtruding",                  limit: 2
    t.integer    "ARDilationSinusValsalva",       limit: 2
    t.float      "ARDilationSinusValsalvaCM"
    t.integer    "ARDilationProximalAorta",       limit: 2
    t.float      "ARDilationProximalAortaCM"
    t.integer    "ARCalcification",               limit: 2
    t.integer    "ARNotWellVisualized",           limit: 2
    t.varchar    "MVStatus",                      limit: 10
    t.text_basic "MVAssessPickList",              limit: 2147483647
    t.integer    "MVAssessFlailLeafletAnt",       limit: 2
    t.integer    "MVAssessFlailLeafletPost",      limit: 2
    t.integer    "MVAssessThickenedCompatible",   limit: 2
    t.integer    "MVAssessPattern",               limit: 2
    t.integer    "MVAssessIncreased",             limit: 2
    t.integer    "MVAssessPapillary",             limit: 2
    t.integer    "MVAssessNotWellVisualized",     limit: 2
    t.integer    "MVAssessRheumatic",             limit: 2
    t.integer    "MVAssessOther",                 limit: 2
    t.varchar    "MVAssessOtherDetail",           limit: 25
    t.varchar    "MVAssessThickened",             limit: 10
    t.integer    "MVAssessMitralValve",           limit: 2
    t.varchar    "MVAssessVegetation",            limit: 15
    t.float      "MVAssessVegetationSize"
    t.integer    "MVAssessMass",                  limit: 2
    t.integer    "MVAssessMassVegetation",        limit: 2
    t.integer    "MVAssessMassTumor",             limit: 2
    t.integer    "MVAssessMassMyxoma",            limit: 2
    t.integer    "MVAssessOutflowTractSystolic",  limit: 2
    t.integer    "MVAssessIfMassMobile",          limit: 2
    t.integer    "MVAssessIfMassSessile",         limit: 2
    t.integer    "MVAssessIfMassPedunculated",    limit: 2
    t.varchar    "MVProsthesisProsthesis",        limit: 20
    t.integer    "MVProsthesisRocks",             limit: 2
    t.integer    "MVProsthesisFlail",             limit: 2
    t.varchar    "MVProsthesisStenosis",          limit: 10
    t.varchar    "MVRegurgitation",               limit: 10
    t.float      "MVDiastolePeakVelocity"
    t.float      "MVGradientsMean"
    t.float      "MVSystolePeakVelocity"
    t.float      "MVGradientsPeak"
    t.float      "MVValveAreaPressureHalftime"
    t.float      "MVValveAreaPressure2D"
    t.varchar    "TVStatus",                      limit: 10
    t.text_basic "TVAssessPickList",              limit: 2147483647
    t.integer    "TVAssessThickenedCompatible",   limit: 2
    t.varchar    "TVAssessThickenedDegree",       limit: 10
    t.integer    "TVAssessCalcified",             limit: 2
    t.integer    "TVAssessEbsteinAnomaly",        limit: 2
    t.integer    "TVAssessNotWellVisualized",     limit: 2
    t.integer    "TVAssessOther",                 limit: 2
    t.varchar    "TVAssessOtherDetail",           limit: 25
    t.integer    "TVAssessFlailLeaflet",          limit: 2
    t.integer    "TVAssessTricuspidValveMass",    limit: 2
    t.varchar    "TVAssessVegetation",            limit: 10
    t.float      "TVAssessVegetationSize"
    t.integer    "TVAssessMassMobile",            limit: 2
    t.integer    "TVAssessMassSessile",           limit: 2
    t.integer    "TVAssessMassPedunculated",      limit: 2
    t.varchar    "TVAssessProsthesis",            limit: 15
    t.varchar    "TVAssessProsthesisType",        limit: 20
    t.integer    "TVAssessVegetationRuleOut",     limit: 2
    t.integer    "TVAssessTumorRuleOut",          limit: 2
    t.integer    "TVAssessMyxoma",                limit: 2
    t.varchar    "DoppAssessTricuspidSten",       limit: 10
    t.varchar    "DoppAssessTricuspidRegurg",     limit: 10
    t.varchar    "TVProsthesisStructure",         limit: 15
    t.integer    "TVProsthesisRocks",             limit: 2
    t.integer    "TVProsthesisFlail",             limit: 2
    t.varchar    "TVProsthesisStenosis",          limit: 10
    t.varchar    "TVProsthesisRegurgitation",     limit: 10
    t.varchar    "PVStatus",                      limit: 10
    t.text_basic "PVAssessPickList",              limit: 2147483647
    t.integer    "PVAssessDomes",                 limit: 2
    t.integer    "PVAssessNotWellVisualized",     limit: 2
    t.integer    "PVAssessOther",                 limit: 2
    t.varchar    "PVAssessOtherDetail",           limit: 25
    t.integer    "PVAssessPulmonicValveProlapse", limit: 2
    t.integer    "PVAssessPulmonicValveMass",     limit: 2
    t.varchar    "PVAssessVegetation",            limit: 10
    t.float      "PVAssessVegetationSize"
    t.integer    "PVAccessMassMobile",            limit: 2
    t.integer    "PVAccessMassSessile",           limit: 2
    t.integer    "PvAccessMassPedunculated",      limit: 2
    t.integer    "PVAssessVegetationRuleOut",     limit: 2
    t.integer    "PVAssessTumorRuleOut",          limit: 2
    t.integer    "PVAssessMyxoma",                limit: 2
    t.varchar    "DoppAssessPulmonStenosis",      limit: 10
    t.varchar    "DoppAssessPulmonRegurg",        limit: 10
    t.varchar    "PVAssessProsthesis",            limit: 15
    t.varchar    "PVAssessProsthesisType",        limit: 20
    t.varchar    "PVProsthesisStructure",         limit: 15
    t.integer    "PVProsthesisRocks",             limit: 2
    t.integer    "PVProsthesisFlail",             limit: 2
    t.varchar    "PVProsthesisStenosis",          limit: 10
    t.varchar    "PVProsthesisRegurgitation",     limit: 10
    t.varchar    "DoppAssessMitralStenosis",      limit: 10
    t.varchar    "DoppAssessMitralRegurg",        limit: 10
    t.varchar    "DoppAssessMitral_InflowPat",    limit: 35
    t.varchar    "TEE_ARProtrudeAthType",         limit: 10
    t.float      "TEE_ARProtrudeAtheromaCM"
    t.integer    "TEE_ARAneurysm",                limit: 2
    t.text_basic "TEE_ARNotes",                   limit: 2147483647
    t.varchar    "TEE_AscAortaStatus",            limit: 10
    t.integer    "TEE_AscAortaDilation",          limit: 2
    t.float      "TEE_AscAortaDilationCM"
    t.integer    "TEE_AscAortaProtrudeAtheroma",  limit: 2
    t.integer    "TEE_AscAortaAtherDisease",      limit: 2
    t.text_basic "TEE_AscAortaNotes",             limit: 2147483647
    t.varchar    "TEE_TransArchStatus",           limit: 10
    t.integer    "TEE_TransArchDilation",         limit: 2
    t.float      "TEE_TransArchDilationCM"
    t.integer    "TEE_TransArchProtrudeAtheroma", limit: 2
    t.integer    "TEE_TransArchAtheroDisease",    limit: 2
    t.integer    "TEE_TransArchSpontEcho",        limit: 2
    t.text_basic "TEE_TransArchNotes",            limit: 2147483647
    t.varchar    "TEE_DescAortaStatus",           limit: 10
    t.integer    "TEE_DescAortaDilation",         limit: 2
    t.float      "TEE_DescAortaDilationCM"
    t.integer    "TEE_DescAortaProtrudeAtheroma", limit: 2
    t.integer    "TEE_DescAortaAtheroDisease",    limit: 2
    t.integer    "TEE_DescAortaSpontEcho",        limit: 2
    t.text_basic "TEE_DescAortaNotes",            limit: 2147483647
    t.varchar    "CongenitalDefect",              limit: 10
    t.varchar    "MVAssessAnnularCalcification",  limit: 10
    t.integer    "MVProsthesisDecreasedCusp",     limit: 2
    t.integer    "TVAssessPapMuscleDys",          limit: 2
    t.integer    "PVAssessPrematureDiastOpen",    limit: 2
    t.integer    "PVAssessSubPVStenosis",         limit: 2
    t.integer    "PVAssessIncreasedPAPressure",   limit: 2
    t.float      "TEE_AscAortaProtrudeAthCM"
    t.varchar    "TEE_AAProtrudeAtheromaMobile",  limit: 10
    t.varchar    "TEE_AscAortaAtherDis",          limit: 15
    t.integer    "TEE_AscAortaSpontEchoTrans",    limit: 2
    t.float      "TEE_TransArchProtrudeAthCM"
    t.varchar    "TEE_DescAortaProtAthMob1",      limit: 10
    t.varchar    "TEE_TransArchAtheroDiseaseMMS", limit: 15
    t.float      "TEE_DescAortaProtrudeAthCM"
    t.varchar    "TEE_DescAortaProtAthMob2",      limit: 10
    t.varchar    "TEE_DescAortaAtheroDiseaseMMS", limit: 15
    t.integer    "TVAssessRheumaticTV",           limit: 2
    t.integer    "TVAssessTVProlapse",            limit: 2
    t.integer    "TVProsthesisDecreasedCusp",     limit: 2
    t.integer    "PVAssessCongentialMalf",        limit: 2
    t.integer    "PVProsthesisDecreasedCusp",     limit: 2
    t.varchar    "AVProsthesisStenosis",          limit: 10
    t.varchar    "AVProsthesisRegurgitation",     limit: 10
    t.varchar    "AVProsthesisTissueType",        limit: 25
    t.varchar    "AVProsthesisTiltingDiscType",   limit: 25
    t.varchar    "MVProsthesisType",              limit: 20
    t.varchar    "MVProsthesisStructure",         limit: 25
    t.varchar    "MVProsthesisTissueType",        limit: 25
    t.varchar    "MVProsthesisTiltingDiscType",   limit: 25
    t.varchar    "TVProsthesisTissueType",        limit: 25
    t.varchar    "TVProsthesisTiltingDiscType",   limit: 25
    t.varchar    "PVProsthesisTissueType",        limit: 25
    t.varchar    "PVProsthesisTiltingDiscType",   limit: 25
  end

  create_table "Echo_WallMotion", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.varchar    "StressRestLongAxisMidAnt",       limit: 20
    t.varchar    "StressRestLongAxisBasalAnt",     limit: 20
    t.varchar    "StressRestLongAxisMidPost",      limit: 20
    t.varchar    "StressRestLongAxisBasalPost",    limit: 20
    t.varchar    "StressRestShortAxisMidAnt",      limit: 20
    t.varchar    "StressRestShortAxisMidLateral",  limit: 20
    t.varchar    "StressRestShortAxisMidPost",     limit: 20
    t.varchar    "StressRestShortAxisMidSeptal",   limit: 20
    t.varchar    "StressRestApical4ApSeptal",      limit: 20
    t.varchar    "StressRestApical4ApLateral",     limit: 20
    t.varchar    "StressRestApical4MidLateral",    limit: 20
    t.varchar    "StressRestApical4BasalLateral",  limit: 20
    t.varchar    "StressRestApical4BasalSeptal",   limit: 20
    t.varchar    "StressRestApical4MidSeptal",     limit: 20
    t.varchar    "StressRestApical2ApInferior",    limit: 20
    t.varchar    "StressRestApical2ApAnterior",    limit: 20
    t.varchar    "StressRestApical2MidAnt",        limit: 20
    t.varchar    "StressRestApical2BasalAnt",      limit: 20
    t.varchar    "StressRestApical2BasalInferio",  limit: 20
    t.varchar    "StressRestApical2MidInferior",   limit: 20
    t.varchar    "StressExerLongAxisMidAnt",       limit: 20
    t.varchar    "StressExerLongAxisBasalAnt",     limit: 20
    t.varchar    "StressExerLongAxisMidPost",      limit: 20
    t.varchar    "StressExerLongAxisBasalPost",    limit: 20
    t.varchar    "StressExerShortAxisMidAnt",      limit: 20
    t.varchar    "StressExerShortAxisMidLateral",  limit: 20
    t.varchar    "StressExerShortAxisMidPost",     limit: 20
    t.varchar    "StressExerShortAxisMidSeptal",   limit: 20
    t.varchar    "StressExerApical4ApSeptal",      limit: 20
    t.varchar    "StressExerApical4ApLateral",     limit: 20
    t.varchar    "StressExerApical4MidLateral",    limit: 20
    t.varchar    "StressExerApical4BasalLateral",  limit: 20
    t.varchar    "StressExerApical4BasalSeptal",   limit: 20
    t.varchar    "StressExerApical4MidSeptal",     limit: 20
    t.varchar    "StressExerApical2ApInferior",    limit: 20
    t.varchar    "StressExerApical2ApAnterior",    limit: 20
    t.varchar    "StressExerApical2MidAnt",        limit: 20
    t.varchar    "StressExerApical2BasalAnt",      limit: 20
    t.varchar    "StressExerApical2BasalInferio",  limit: 20
    t.varchar    "StressExerApical2MidInferior",   limit: 20
    t.varchar    "StressExerShortAxisMidAntSept",  limit: 20
    t.varchar    "StressRestShortAxisMidAntSept",  limit: 20
    t.varchar    "StressRestShortAxisMidInf",      limit: 20
    t.varchar    "StressExerShortAxisMidInf",      limit: 20
    t.varchar    "RestEchoParaLongMidAnt",         limit: 20
    t.varchar    "RestEchoParaLongBasalAnt",       limit: 20
    t.varchar    "RestEchoParaLongMidPost",        limit: 20
    t.varchar    "RestEchoParaLongBasalPost",      limit: 20
    t.varchar    "RestEchoParaShortMidAntSept",    limit: 20
    t.varchar    "RestEchoParaShortMidAnt",        limit: 20
    t.varchar    "RestEchoParaShortMidLateral",    limit: 20
    t.varchar    "RestEchoParaShortMidPost",       limit: 20
    t.varchar    "RestEchoParaShortMidInferior",   limit: 20
    t.varchar    "RestEchoParaShortMidSeptal",     limit: 20
    t.varchar    "RestEchoAp4ApicalSeptal",        limit: 20
    t.varchar    "RestEchoAp4ApicalLateral",       limit: 20
    t.varchar    "RestEchoAp4MidLateral",          limit: 20
    t.varchar    "RestEchoAp4BasalLateral",        limit: 20
    t.varchar    "RestEchoAp4BasalSeptal",         limit: 20
    t.varchar    "RestEchoAp4MidSeptal",           limit: 20
    t.varchar    "RestEchoAp2ApicalInferior",      limit: 20
    t.varchar    "RestEchoAp2ApicalAnterior",      limit: 20
    t.varchar    "RestEchoAp2MidAnterior",         limit: 50
    t.varchar    "RestEchoAp2BasalAnterior",       limit: 20
    t.varchar    "RestEchoAp2BasalInferior",       limit: 20
    t.varchar    "RestEchoAp2MidInferior",         limit: 20
    t.integer    "RestScoreCount",                 limit: 2
    t.integer    "RestScoreTotal",                 limit: 2
    t.real       "RestScoreIndex"
    t.integer    "StressScoreCount",               limit: 2
    t.integer    "StressScoreTotal",               limit: 2
    t.real       "StressScoreIndex"
    t.integer    "PSLowDoseScoreCount",            limit: 2
    t.integer    "PSLowDoseScoreTotal",            limit: 2
    t.real       "PSLowDoseScoreIndex"
    t.integer    "PSPeakDoseScoreCount",           limit: 2
    t.integer    "PSPeakDoseScoreTotal",           limit: 2
    t.real       "PSPeakDoseScoreIndex"
    t.text_basic "WallMotionFindings",             limit: 2147483647
    t.varchar    "PSLowDoseAp2ApicalAnterior",     limit: 20
    t.varchar    "PSLowDoseAp2ApicalInferior",     limit: 20
    t.varchar    "PSLowDoseAp2BasalAnterior",      limit: 20
    t.varchar    "PSLowDoseAp2BasalInferior",      limit: 20
    t.varchar    "PSLowDoseAp2MidAnterior",        limit: 20
    t.varchar    "PSLowDoseAp2MidInferior",        limit: 20
    t.varchar    "PSLowDoseAp4ApicalLateral",      limit: 20
    t.varchar    "PSLowDoseAp4ApicalSeptal",       limit: 20
    t.varchar    "PSLowDoseAp4BasalLateral",       limit: 20
    t.varchar    "PSLowDoseAp4BasalSeptal",        limit: 20
    t.varchar    "PSLowDoseAp4MidLateral",         limit: 20
    t.varchar    "PSLowDoseAp4MidSeptal",          limit: 20
    t.varchar    "PSLowDoseParaLongBasalAntSept",  limit: 20
    t.varchar    "PSLowDoseParaLongBasalPost",     limit: 20
    t.varchar    "PSLowDoseParaLongMidAntSept",    limit: 20
    t.varchar    "PSLowDoseParaLongMidPost",       limit: 20
    t.varchar    "PSPeakDoseAp2ApicalAnterior",    limit: 20
    t.varchar    "PSPeakDoseAp2ApicalInferior",    limit: 20
    t.varchar    "PSPeakDoseAp2BasalAnterior",     limit: 20
    t.varchar    "PSPeakDoseAp2BasalInferior",     limit: 20
    t.varchar    "PSPeakDoseAp2MidAnterior",       limit: 20
    t.varchar    "PSPeakDoseAp2MidInferior",       limit: 20
    t.varchar    "PSPeakDoseAp4ApicalLateral",     limit: 20
    t.varchar    "PSPeakDoseAp4ApicalSeptal",      limit: 20
    t.varchar    "PSPeakDoseAp4BasalLateral",      limit: 20
    t.varchar    "PSPeakDoseAp4BasalSeptal",       limit: 20
    t.varchar    "PSPeakDoseAp4MidLateral",        limit: 20
    t.varchar    "PSPeakDoseAp4MidSeptal",         limit: 20
    t.varchar    "PSPeakDoseParaLongBasalAntSept", limit: 20
    t.varchar    "PSPeakDoseParaLongBasalPost",    limit: 20
    t.varchar    "PSPeakDoseParaLongMidAntSept",   limit: 20
    t.varchar    "PSPeakDoseParaLongMidPost",      limit: 20
    t.varchar    "StressRecAp2Apex",               limit: 20
    t.varchar    "RestEchoAp2Apex",                limit: 20
    t.varchar    "StressExerApical2Apex",          limit: 20
    t.real       "StressRecoveryScoreIndex"
    t.integer    "StressRecoveryScoreTotal",       limit: 2
    t.integer    "StressRecoveryScoreCount",       limit: 2
    t.varchar    "StressRecAp2ApicalInferior",     limit: 20
    t.varchar    "StressRecAp2MidInferior",        limit: 20
    t.varchar    "StressRecAp2BasalInferior",      limit: 20
    t.varchar    "StressRecAp2ApicalAnterior",     limit: 20
    t.varchar    "StressRecAp2MidAnterior",        limit: 20
    t.varchar    "StressRecAp2BasalAnterior",      limit: 20
    t.varchar    "StressRecAp4ApicalSeptal",       limit: 20
    t.varchar    "StressRecAp4MidSeptal",          limit: 20
    t.varchar    "StressRecAp4BasalSeptal",        limit: 20
    t.varchar    "StressRecAp4ApicalLateral",      limit: 20
    t.varchar    "StressRecAp4MidLateral",         limit: 20
    t.varchar    "StressRecAp4BasalLateral",       limit: 20
    t.varchar    "StressRecLongAxisMidAntSept",    limit: 20
    t.varchar    "StressRecLongAxisBasalAntSept",  limit: 20
    t.varchar    "StressRecLongAxisMidPost",       limit: 20
    t.varchar    "StressRecLongAxisBasalPost",     limit: 20
    t.varchar    "PSLowDoseAp2Apex",               limit: 20
    t.varchar    "PSPeakDoseAp2Apex",              limit: 20
    t.varchar    "PSMidDoseAp2ApicalInferior",     limit: 20
    t.varchar    "PSMidDoseAp2MidInferior",        limit: 20
    t.varchar    "PSMidDoseAp2BasalInferior",      limit: 20
    t.varchar    "PSMidDoseAp2ApicalAnterior",     limit: 20
    t.varchar    "PSMidDoseAp2MidAnterior",        limit: 20
    t.varchar    "PSMidDoseAp2BasalAnterior",      limit: 20
    t.varchar    "PSMidDoseAp4ApicalSeptal",       limit: 20
    t.varchar    "PSMidDoseAp4MidSeptal",          limit: 20
    t.varchar    "PSMidDoseAp4BasalSeptal",        limit: 20
    t.varchar    "PSMidDoseAp4ApicalLateral",      limit: 20
    t.varchar    "PSMidDoseAp4MidLateral",         limit: 20
    t.varchar    "PSMidDoseAp4BasalLateral",       limit: 20
    t.varchar    "PSMidDoseParaLongBasalAntSept",  limit: 20
    t.varchar    "PSMidDoseParaLongBasalPost",     limit: 20
    t.varchar    "PSMidDoseParaLongMidAntSept",    limit: 20
    t.varchar    "PSMidDoseParaLongMidPost",       limit: 20
    t.integer    "PSMidDoseScoreCount",            limit: 2
    t.integer    "PSMidDoseScoreTotal",            limit: 2
    t.real       "PSMidDoseScoreIndex"
    t.varchar    "PSMidDoseAp2Apex",               limit: 20
    t.real       "PSRecoveryScoreIndex"
    t.integer    "PSRecoveryScoreTotal",           limit: 2
    t.integer    "PSRecoveryScoreCount",           limit: 2
    t.varchar    "PSRecAp2ApicalInferior",         limit: 20
    t.varchar    "PSRecAp2MidInferior",            limit: 20
    t.varchar    "PSRecAp2BasalInferior",          limit: 20
    t.varchar    "PSRecAp2ApicalAnterior",         limit: 20
    t.varchar    "PSRecAp2MidAnterior",            limit: 20
    t.varchar    "PSRecAp2BasalAnterior",          limit: 20
    t.varchar    "PSRecAp4ApicalSeptal",           limit: 20
    t.varchar    "PSRecAp4MidSeptal",              limit: 20
    t.varchar    "PSRecAp4BasalSeptal",            limit: 20
    t.varchar    "PSRecAp4ApicalLateral",          limit: 20
    t.varchar    "PSRecAp4MidLateral",             limit: 20
    t.varchar    "PSRecAp4BasalLateral",           limit: 20
    t.varchar    "PSRecLongAxisMidAntSept",        limit: 20
    t.varchar    "PSRecLongAxisBasalAntSept",      limit: 20
    t.varchar    "PSRecLongAxisMidPost",           limit: 20
    t.varchar    "PSRecLongAxisBasalPost",         limit: 20
    t.varchar    "PSRecAp2Apex",                   limit: 20
    t.real       "TEEScoreIndex"
    t.integer    "TEEScoreTotal",                  limit: 2
    t.integer    "TEEScoreCount",                  limit: 2
    t.varchar    "TEEAp2ApicalInferior",           limit: 20
    t.varchar    "TEEAp2MidInferior",              limit: 20
    t.varchar    "TEEAp2BasalInferior",            limit: 20
    t.varchar    "TEEAp2ApicalAnterior",           limit: 20
    t.varchar    "TEEAp2MidAnterior",              limit: 20
    t.varchar    "TEEAp2BasalAnterior",            limit: 20
    t.varchar    "TEEAp4ApicalSeptal",             limit: 20
    t.varchar    "TEEAp4MidSeptal",                limit: 20
    t.varchar    "TEEAp4BasalSeptal",              limit: 20
    t.varchar    "TEEAp4ApicalLateral",            limit: 20
    t.varchar    "TEEAp4MidLateral",               limit: 20
    t.varchar    "TEEAp4BasalLateral",             limit: 20
    t.varchar    "TEELongAxisMidAntSept",          limit: 20
    t.varchar    "TEELongAxisBasalAntSept",        limit: 20
    t.varchar    "TEELongAxisMidPost",             limit: 20
    t.varchar    "TEELongAxisBasalPost",           limit: 20
    t.varchar    "TEEAp2Apex",                     limit: 20
    t.integer    "ShowDiagrams",                   limit: 2
    t.varchar    "RestEchoAp4Apex",                limit: 20
    t.varchar    "StressExerApical4Apex",          limit: 20
    t.varchar    "StressRecAp4Apex",               limit: 20
    t.varchar    "PSLowDoseAp4Apex",               limit: 20
    t.varchar    "PSMidDoseAp4Apex",               limit: 20
    t.varchar    "PSPeakDoseAp4Apex",              limit: 20
    t.varchar    "PSRecAp4Apex",                   limit: 20
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Event_Admission", primary_key: "SS_Event_Admission_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                null: false
    t.varchar    "Account_Number",            limit: 20
    t.varchar    "Order_Number",              limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "Report_Status",             limit: 25
    t.varchar    "AdmissionType",             limit: 25
    t.varchar    "AdmitSource",               limit: 40
    t.text_basic "AdmissionReason",           limit: 2147483647
    t.varchar    "AdmitDiagCode",             limit: 50
    t.varchar    "Diagnosis",                 limit: 50
    t.varchar    "PatientClass",              limit: 20
    t.varchar    "AdmitLocation",             limit: 30
    t.varchar    "RoomBedNumber",             limit: 12
    t.varchar    "HospitalService",           limit: 25
    t.real       "Height"
    t.real       "Weight"
    t.real       "BSA"
    t.varchar    "OtherPrec",                 limit: 50
    t.varchar    "RefMD",                     limit: 50
    t.varchar    "RefMDNum",                  limit: 20
    t.varchar    "AdmittMD",                  limit: 50
    t.varchar    "AdmittMDNum",               limit: 20
    t.varchar    "AttendMD",                  limit: 50
    t.varchar    "AttendMDNum",               limit: 20
    t.text_basic "AdmittNote",                limit: 2147483647
    t.varchar    "AdmitDoc",                  limit: 50
    t.varchar    "ReasonAdmit",               limit: 50
    t.varchar    "RefHosp",                   limit: 50
    t.datetime   "DateOfDischarge"
    t.datetime   "TimeOfDischarge"
    t.varchar    "DischargeDisposition",      limit: 50
    t.varchar    "DischargeDRG",              limit: 10
    t.varchar    "TransferLoc",               limit: 50
    t.text_basic "DischargeNote",             limit: 2147483647
    t.varchar    "Inpatient_Case_Type",       limit: 20
    t.varchar    "Admit_Diagnosis",           limit: 50
    t.varchar    "Infectious_Warning",        limit: 50
    t.varchar    "Old_Medical_Record_Number", limit: 30
    t.varchar    "AdmitStatus",               limit: 40
    t.varchar    "AdmitFacility",             limit: 25
    t.varchar    "PatientType",               limit: 40
    t.varchar    "AlternateNumber",           limit: 25
    t.integer    "NumberProceduresPerformed", limit: 2
    t.integer    "MultipleProcSameLesion",    limit: 2
    t.datetime   "DateOfCABGThisAdmit"
    t.varchar    "CABGThisAdmitUrgency",      limit: 10
    t.integer    "NoFuncLim",                 limit: 2
    t.integer    "WheelStretch",              limit: 2
    t.integer    "Disoriented",               limit: 2
    t.integer    "HearingImp",                limit: 2
    t.integer    "NonEng",                    limit: 2
    t.integer    "OxTher",                    limit: 2
    t.integer    "Amputee",                   limit: 2
    t.integer    "Paraplegic",                limit: 2
    t.integer    "AntiResPrec",               limit: 2
    t.integer    "EntericPrec",               limit: 2
    t.integer    "PregWomPrec",               limit: 2
    t.integer    "SecExcPrec",                limit: 2
    t.integer    "WoundSkinPrec",             limit: 2
    t.integer    "Transferred",               limit: 2
    t.integer    "CABGThisAdmit",             limit: 2
    t.integer    "AmbAssDev",                 limit: 2
    t.integer    "VisionImp",                 limit: 2
    t.integer    "FuncLevUnk",                limit: 2
    t.integer    "Mastectomy",                limit: 2
    t.integer    "BloodNedPrec",              limit: 2
    t.integer    "RespIso",                   limit: 2
    t.integer    "ComNonResp",                limit: 2
    t.integer    "SpecEquip",                 limit: 2
    t.integer    "NeutropenicPrec",           limit: 2
    t.integer    "SpeechImp",                 limit: 2
    t.integer    "StrictIso",                 limit: 2
    t.integer    "Pregnant",                  limit: 2
    t.integer    "SSLock",                    limit: 2
    t.varchar    "SSCaseNumber",              limit: 30
    t.integer    "SSTouch"
    t.real       "HeightIn"
    t.real       "WeightLbs"
    t.real       "Age"
    t.real       "BMI"
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_CardiacStudies", primary_key: "SS_Event_CardStudies_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Account_Number",   limit: 20
    t.varchar    "Order_Number",     limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "StudyLocation",    limit: 50
    t.varchar    "StudyType",        limit: 50
    t.varchar    "OrderingMD",       limit: 50
    t.varchar    "PerformingMD",     limit: 50
    t.varchar    "ReadingMD",        limit: 50
    t.text_basic "StudyResults",     limit: 2147483647
    t.varchar    "SSCaseNumber",     limit: 30
    t.integer    "SSTouch"
    t.integer    "SSLock",           limit: 2
    t.real       "HeightIn"
    t.real       "HeightCm"
    t.real       "WeightLbs"
    t.real       "WeightKg"
    t.real       "Age"
    t.real       "BSA"
    t.real       "BMI"
    t.varchar    "Accession_Number", limit: 20
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Cath", primary_key: "SS_Event_Cath_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                                             null: false
    t.varchar    "SSCaseNumber",                  limit: 30
    t.integer    "SSTouch"
    t.integer    "SSLesionBMP_ID"
    t.varchar    "Account_Number",                limit: 25
    t.varchar    "Order_Number",                  limit: 25
    t.varchar    "Cath_Number",                   limit: 25
    t.varchar    "Cine_Number",                   limit: 30
    t.datetime   "Date_of_Cath"
    t.float      "Age_at_Cath"
    t.varchar    "Cath_Attending",                limit: 40
    t.varchar    "CathAttending2nd",              limit: 40
    t.varchar    "Cath_Fellow",                   limit: 40
    t.varchar    "ReferringMD2nd",                limit: 30
    t.varchar    "Nurse",                         limit: 40
    t.varchar    "Circulator",                    limit: 40
    t.varchar    "Monitor",                       limit: 40
    t.varchar    "Scrub",                         limit: 40
    t.varchar    "Xray_Tech",                     limit: 40
    t.varchar    "Referring_MD",                  limit: 40
    t.varchar    "Hospital",                      limit: 40
    t.real       "Fluoro_Time"
    t.varchar    "Scheduling_Type",               limit: 10
    t.varchar    "Origin",                        limit: 30
    t.varchar    "Destination",                   limit: 30
    t.real       "HeightCM"
    t.real       "WeightKG"
    t.float      "BSA"
    t.integer    "Pre_Heart_Rate",                limit: 2
    t.varchar    "Anesthetic",                    limit: 50
    t.varchar    "Anticoagulant_Type",            limit: 10
    t.float      "Initial_Anticoagulant_Dose"
    t.float      "Total_Anticoagulant_Dose"
    t.varchar    "Sheath_Status",                 limit: 255
    t.varchar    "Condition_at_Discharge",        limit: 20
    t.varchar    "CABG",                          limit: 25
    t.varchar    "Cath_Result",                   limit: 10
    t.integer    "NumberVesselsDiseased",         limit: 2
    t.text_basic "Admitting_Diagnoses",           limit: 2147483647
    t.text_basic "Indications",                   limit: 2147483647
    t.text_basic "Technique",                     limit: 2147483647
    t.text_basic "Summary",                       limit: 2147483647
    t.text_basic "Recommendations",               limit: 2147483647
    t.money      "Procedure_Cost",                                   precision: 19, scale: 4
    t.money      "Charge",                                           precision: 19, scale: 4
    t.money      "Reimbursement",                                    precision: 19, scale: 4
    t.text_basic "LeftMainNotes",                 limit: 2147483647
    t.text_basic "LADNotes",                      limit: 2147483647
    t.text_basic "CircumflexNotes",               limit: 2147483647
    t.text_basic "RCANotes",                      limit: 2147483647
    t.text_basic "GraftsNotes",                   limit: 2147483647
    t.varchar    "CoronaryDominance",             limit: 15
    t.varchar    "DRG",                           limit: 50
    t.integer    "Pre_Oximetry",                  limit: 2
    t.integer    "Post_Heart_Rate",               limit: 2
    t.integer    "Post_Oximetry",                 limit: 2
    t.varchar    "EventIDPtHospitalRoomNum",      limit: 20
    t.datetime   "PreProcCheckNPODate"
    t.datetime   "PreProcCheckNPOTime"
    t.datetime   "PreProcCheckVoidedTime"
    t.varchar    "PreProcCheckHPDoneBy",          limit: 20
    t.datetime   "PreProcCheckHPDoneDate"
    t.datetime   "PreProcCheckHPDoneTime"
    t.varchar    "ContrastAgent",                 limit: 15
    t.varchar    "PostProcInfoIABPInserted",      limit: 30
    t.varchar    "PostProcInfoBloodProducts",     limit: 15
    t.float      "ProcOutcomesDiseasedLesions"
    t.varchar    "ProcOutcomesTIMIFlow",          limit: 5
    t.float      "ProcOutcomesLMStenosis"
    t.float      "ProcOutcomesLADStenosis"
    t.float      "ProcOutcomesRCAStenosis"
    t.float      "ProcOutcomesCIRCStenosis"
    t.float      "ProcOutcomesLADDistStenosis"
    t.varchar    "CardiopulmonarySupport",        limit: 20
    t.integer    "Inpatient_Status",              limit: 2
    t.integer    "PreProcCheckIDBand",            limit: 2
    t.integer    "PreProcCheckInstruction",       limit: 2
    t.integer    "PreProcCheckPrep",              limit: 2
    t.integer    "PreProcCheckMedRecords",        limit: 2
    t.integer    "PreProcCheckConsentSigned",     limit: 2
    t.integer    "PostProcInfoLeftVentAssist",    limit: 2
    t.integer    "ProcOutcomesCAD",               limit: 2
    t.integer    "ProcOutcomesQuantAngio",        limit: 2
    t.integer    "PreProcCheckNPO",               limit: 2
    t.integer    "PreProcCheckVoided",            limit: 2
    t.integer    "PreProcCheckHPChart",           limit: 2
    t.integer    "PreProcCheckPreTestingDone",    limit: 2
    t.varchar    "PreProcPhysioLVEFMethod",       limit: 10
    t.real       "PreProcPhysioLVEFPercent"
    t.varchar    "PreProcPhysioVentFunction",     limit: 20
    t.integer    "PostBPDiastolic",               limit: 2
    t.integer    "PostBPSystolic",                limit: 2
    t.integer    "PostProcInfoTotalUnitsTrans",   limit: 2
    t.integer    "PreBPDiastolic",                limit: 2
    t.integer    "PreBPSystolic",                 limit: 2
    t.datetime   "Room_Ready"
    t.datetime   "Scheduled_Start"
    t.datetime   "Patient_in_Room"
    t.datetime   "MD_Called"
    t.datetime   "MD_Arrived"
    t.datetime   "Case_Start"
    t.datetime   "Case_End"
    t.datetime   "Stick_Time"
    t.float      "Turnaround_Time"
    t.varchar    "Room",                          limit: 20
    t.varchar    "ReasonDelay",                   limit: 20
    t.varchar    "ReasonDelay2nd",                limit: 20
    t.varchar    "ReasonDelayOther",              limit: 255
    t.datetime   "PatientOutOfRoom"
    t.datetime   "PatientReady"
    t.datetime   "PatientReceived"
    t.datetime   "PriorCaseComplete"
    t.varchar    "Sequence",                      limit: 10
    t.integer    "SSLock",                        limit: 2
    t.text_basic "SSLesionFindings",              limit: 2147483647
    t.text_basic "SSLesionFindingsShadow",        limit: 2147483647
    t.text_basic "AddLesionFindings",             limit: 2147483647
    t.real       "DiagnosticTime"
    t.real       "InterventionTime"
    t.text_basic "AddDiagnosticFindings",         limit: 2147483647
    t.text_basic "DiagnosticSummary",             limit: 2147483647
    t.text_basic "InterventionalSummary",         limit: 2147483647
    t.text_basic "DiagnosticRecommendations",     limit: 2147483647
    t.text_basic "InterventionalRecommendations", limit: 2147483647
    t.text_basic "DiagnosticLesionFindings",      limit: 2147483647
    t.text_basic "DiagnosticTechnique",           limit: 2147483647
    t.integer    "DiagnosticContrast",            limit: 2
    t.integer    "InterventionContrast",          limit: 2
    t.integer    "ContrastVolume",                limit: 2
    t.text_basic "HiddenVasculars",               limit: 2147483647
    t.datetime   "EpisodeArrivalDate"
    t.integer    "Hypotension",                   limit: 2
    t.integer    "Anemia",                        limit: 2
    t.float      "eGFR"
    t.integer    "CINRiskScore",                  limit: 2
    t.real       "RiskofCINPercentage"
    t.real       "MaxDyeLoad"
    t.real       "Creatinine_Clearance"
    t.integer    "TraceabletoIDMS",               limit: 2
    t.text_basic "Findings",                      limit: 2147483647
    t.text_basic "Procedures",                    limit: 2147483647
    t.text_basic "AortographyNotes",              limit: 2147483647
    t.text_basic "VascularNotes",                 limit: 2147483647
    t.text_basic "GraftNotes",                    limit: 2147483647
    t.text_basic "DiagnosticFindings",            limit: 2147483647
    t.text_basic "HemoSummary",                   limit: 2147483647
    t.varchar    "EstimatedBloodLoss",            limit: 25
    t.varchar    "Location",                      limit: 50
    t.varchar    "ReferMD_PhysicianID",           limit: 50
    t.varchar    "ReferMD2_PhysicianID",          limit: 50
    t.text_basic "Add_Comments",                  limit: 2147483647
    t.varchar    "Accession_Number",              limit: 20
    t.varchar    "ProcedureType",                 limit: 255
    t.index ["Date_of_Cath"], name: "Date_of_Cath"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Echo", primary_key: "SS_Event_Echo_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Account_Number",                limit: 20
    t.varchar    "Order_Number",                  limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTimeStart"
    t.datetime   "EventTimeStop"
    t.varchar    "EchoTapeNumber",                limit: 25
    t.varchar    "EchoTapeCounter",               limit: 15
    t.varchar    "EchoSonographer",               limit: 50
    t.varchar    "EchoProcedureRoomNum",          limit: 15
    t.varchar    "PtDataMedicalRecordNo",         limit: 15
    t.varchar    "PtDataCaseNo",                  limit: 15
    t.varchar    "PtDataRoomNo",                  limit: 10
    t.varchar    "PtDataReferringMD",             limit: 50
    t.varchar    "PtDataInterpretingMD",          limit: 50
    t.real       "BaselineHeight"
    t.real       "BaselineWeight"
    t.float      "BaselineHeartRate"
    t.datetime   "BaselineDateOfBirth"
    t.real       "BaselineAge"
    t.float      "BaselineBSA"
    t.float      "BaselineBPSystolicResting"
    t.float      "BaselineBPDiastolicResting"
    t.varchar    "BaselineRhythm",                limit: 20
    t.integer    "AdmissionOutpatient",           limit: 2
    t.integer    "AdmissionInpatient",            limit: 2
    t.integer    "AdmissionPreviousStudy",        limit: 2
    t.datetime   "AdmissionPreviousStudyDate"
    t.varchar    "AdmissionSchedulingType",       limit: 10
    t.varchar    "AdmissionReportStatus",         limit: 12
    t.integer    "IndicationsCAD",                limit: 2
    t.integer    "IndicationsValvularDisease",    limit: 2
    t.integer    "IndicationsCongenital",         limit: 2
    t.integer    "IndicationsRuleOutMI",          limit: 2
    t.integer    "IndicationsCardiomyopathy",     limit: 2
    t.integer    "IndicationsPericarditis",       limit: 2
    t.integer    "IndicationsCongHeartFail",      limit: 2
    t.integer    "IndicationsRuleOutSrcEmb",      limit: 2
    t.integer    "IndicationsHypertension",       limit: 2
    t.integer    "IndicationsArrhythmia",         limit: 2
    t.integer    "IndicationsHxCVA",              limit: 2
    t.integer    "IndicationsSyncope",            limit: 2
    t.integer    "IndicationsPulmonaryEmbolus",   limit: 2
    t.integer    "IndicationsEvalLVFunction",     limit: 2
    t.integer    "IndicationsEvalRVFunction",     limit: 2
    t.integer    "IndicationsEvalChamberSize",    limit: 2
    t.integer    "IndicationsCompareStudy",       limit: 2
    t.integer    "IndicationsMurmur",             limit: 2
    t.integer    "IndicationsEvalAorticValve",    limit: 2
    t.integer    "IndicationsEvalMitralValve",    limit: 2
    t.integer    "IndicationsEvalTricuspidValve", limit: 2
    t.integer    "IndicationsEvalPulmonicValve",  limit: 2
    t.integer    "IndicationsUnknown",            limit: 2
    t.integer    "IndicationsOtherYN",            limit: 2
    t.varchar    "IndicationsOther",              limit: 30
    t.integer    "TEEIndicationAortic",           limit: 2
    t.integer    "TEEIndicationPeri",             limit: 2
    t.integer    "TEEIndicationVegetation",       limit: 2
    t.varchar    "LeftVentStatus",                limit: 10
    t.text_basic "LeftVentPickList",              limit: 2147483647
    t.varchar    "LeftVentChamberSize",           limit: 20
    t.varchar    "LeftVentGlobalHypokinesis",     limit: 11
    t.integer    "LeftVentHypertrophy",           limit: 2
    t.varchar    "LeftVentHypertrophySize",       limit: 10
    t.varchar    "LeftVentContractionPattern",    limit: 12
    t.varchar    "LeftVentMass",                  limit: 10
    t.integer    "LeftVentMassROVegetation",      limit: 2
    t.integer    "LeftVentMassMobile",            limit: 2
    t.integer    "LeftVentMassSessile",           limit: 2
    t.integer    "LeftVentMassROTumor",           limit: 2
    t.integer    "LeftVentMassROMyxoma",          limit: 2
    t.integer    "LeftVentMassPedunculated",      limit: 2
    t.varchar    "LeftVentThrombus",              limit: 15
    t.varchar    "LeftVentCardio",                limit: 28
    t.varchar    "LeftVentSeptumDefect",          limit: 15
    t.integer    "LeftVentFalseTendons",          limit: 2
    t.integer    "LeftVentSpontanEcho",           limit: 2
    t.varchar    "RightVentStatus",               limit: 8
    t.text_basic "RightVentPickList",             limit: 2147483647
    t.varchar    "RightVentChamberSize",          limit: 20
    t.integer    "RightVentCatheter",             limit: 2
    t.varchar    "RightVentCatheterType",         limit: 20
    t.integer    "RightVentVolumeOverload",       limit: 2
    t.varchar    "RightVentFreeWall",             limit: 20
    t.integer    "RightVentHypertrophy",          limit: 2
    t.varchar    "RightVentHypertrophySize",      limit: 10
    t.varchar    "RightVentContractionPattern",   limit: 12
    t.varchar    "RightVentMass",                 limit: 8
    t.integer    "RightVentMassROVegetation",     limit: 2
    t.integer    "RightVentMassMobile",           limit: 2
    t.integer    "RightVentMassSessile",          limit: 2
    t.integer    "RightVentMassROTumor",          limit: 2
    t.integer    "RightVentMassROMyxoma",         limit: 2
    t.integer    "RightVentMassPedunculated",     limit: 2
    t.varchar    "RightVentThrombus",             limit: 15
    t.varchar    "LeftAtriumStatus",              limit: 8
    t.text_basic "LeftAtriumPickList",            limit: 2147483647
    t.varchar    "LeftAtriumChamberSize",         limit: 20
    t.varchar    "LeftAtriumMass",                limit: 8
    t.integer    "LeftAtriumMassROVegetation",    limit: 2
    t.integer    "LeftAtriumMassMobile",          limit: 2
    t.integer    "LeftAtriumMassSessile",         limit: 2
    t.integer    "LeftAtriumMassROTumor",         limit: 2
    t.integer    "LeftAtriumMassROMyxoma",        limit: 2
    t.integer    "LeftAtriumMassPedunculated",    limit: 2
    t.integer    "LeftAtriumMassLAAppend",        limit: 2
    t.varchar    "LeftAtriumThrombus",            limit: 15
    t.integer    "LeftAtriumBiatrialEnlarge",     limit: 2
    t.varchar    "LeftAtriumBiatrialEnlargeSize", limit: 10
    t.integer    "LeftAtriumSpontanEcho",         limit: 2
    t.varchar    "RightAtriumStatus",             limit: 10
    t.text_basic "RightAtriumPickList",           limit: 2147483647
    t.varchar    "RightAtriumChamberSize",        limit: 20
    t.integer    "RightAtriumCatheter",           limit: 2
    t.varchar    "RightAtriumCatheterType",       limit: 20
    t.integer    "RightAtriumChiariNetwork",      limit: 2
    t.varchar    "RightAtriumMass",               limit: 10
    t.integer    "RightAtriumMassROVegetation",   limit: 2
    t.integer    "RightAtriumMassMobile",         limit: 2
    t.integer    "RightAtriumMassSessile",        limit: 2
    t.integer    "RightAtriumMassROTumor",        limit: 2
    t.integer    "RightAtriumMassROMyxoma",       limit: 2
    t.integer    "RightAtriumMassPedunculated",   limit: 2
    t.varchar    "RightAtriumThrombus",           limit: 15
    t.integer    "RightAtriumSeptalDefect",       limit: 2
    t.varchar    "RightAtriumSeptalDefectDesc",   limit: 20
    t.integer    "RightAtriumBiatrialEnlarge",    limit: 2
    t.integer    "RightAtriumDiastolicCollapse",  limit: 2
    t.integer    "RightAtriumLipomatHypertroph",  limit: 2
    t.varchar    "RightAtriumInferiorVenaCava",   limit: 35
    t.varchar    "PericardiumStatus",             limit: 10
    t.text_basic "PericardiumPicklist",           limit: 2147483647
    t.integer    "PericardiumThickened",          limit: 2
    t.integer    "PericardiumROCalcification",    limit: 2
    t.integer    "PericardiumEffusion",           limit: 2
    t.varchar    "PericardiumEffusionDesc",       limit: 10
    t.integer    "PericardiumEffusLocCircum",     limit: 2
    t.integer    "PericardiumEffusLocLateral",    limit: 2
    t.integer    "PericardiumEffusLocLoculated",  limit: 2
    t.integer    "PericardiumEffusLocAnterior",   limit: 2
    t.integer    "PericardiumEffusLocPosterior",  limit: 2
    t.integer    "PericardiumEffusLocMedial",     limit: 2
    t.integer    "PericardiumEffusLocApical",     limit: 2
    t.integer    "PericardiumEffusLocInferior",   limit: 2
    t.integer    "PericardiumFindTamponade",      limit: 2
    t.integer    "PericardiumConstriction",       limit: 2
    t.integer    "PericardiumPleuralEffusion",    limit: 2
    t.integer    "PericardiumEpicardialFatPad",   limit: 2
    t.integer    "ConHeartDefectVSD",             limit: 2
    t.integer    "ConHeartDefectASD",             limit: 2
    t.integer    "ConHeartDefectVentAbnorm",      limit: 2
    t.integer    "ConHeartDefectSingleVent",      limit: 2
    t.integer    "ConHeartDefectHypoRV",          limit: 2
    t.integer    "ConHeartDefectOutflowCham",     limit: 2
    t.integer    "ConHeartDefectVentInversion",   limit: 2
    t.integer    "ConHeartDefectRudSeptum",       limit: 2
    t.integer    "ConHeartDefectVentMalpos",      limit: 2
    t.integer    "ConHeartDefectHypoLV",          limit: 2
    t.integer    "ConHeartDefectGreatVesNorm",    limit: 2
    t.integer    "ConHeartDefectL_Transpos",      limit: 2
    t.integer    "ConHeartDefectR_Transpos",      limit: 2
    t.integer    "ConHeartDefectHypoPulArtery",   limit: 2
    t.integer    "ConHeartDefectAorticAtresia",   limit: 2
    t.integer    "ConHeartDefectVertical",        limit: 2
    t.integer    "ConHeartDefectPulAtresia",      limit: 2
    t.integer    "ConHeartDefectTruncus",         limit: 2
    t.integer    "ConHeartDefectAPWindow",        limit: 2
    t.integer    "ConHeartDefectHypoAorta",       limit: 2
    t.integer    "ConHeartDefectPatDuctus",       limit: 2
    t.varchar    "ConHeartShuntFlow",             limit: 10
    t.integer    "ConHeartDoubleOutletRV",        limit: 2
    t.integer    "ConHeartDoubleOutletLV",        limit: 2
    t.integer    "ConHeartOverridingAorta",       limit: 2
    t.integer    "ConHeartOverridingPA",          limit: 2
    t.integer    "ConHeartTetralogyFallot",       limit: 2
    t.integer    "ConHeartPostOp",                limit: 2
    t.integer    "ConHeartMustard",               limit: 2
    t.integer    "ConHeartASDRepair",             limit: 2
    t.integer    "ConHeartSenning",               limit: 2
    t.integer    "ConHeartTETRepair",             limit: 2
    t.integer    "ConHeartJatene",                limit: 2
    t.integer    "ConHeartValvuloplasty",         limit: 2
    t.integer    "ConHeartAPShunt",               limit: 2
    t.integer    "ConHeartVSDRepair",             limit: 2
    t.integer    "ConHeartOther",                 limit: 2
    t.varchar    "ConHeartCardiacPosition",       limit: 15
    t.varchar    "ConHeartAtrialSitus",           limit: 8
    t.varchar    "ConHeartAVValves",              limit: 10
    t.integer    "ConHeartEbsteinAnomoly",        limit: 2
    t.integer    "ConHeartCarcinoidDisease",      limit: 2
    t.text_basic "Conclusions",                   limit: 2147483647
    t.text_basic "Comments",                      limit: 2147483647
    t.varchar    "SummaryFindings",               limit: 10
    t.varchar    "QualityOfStudy",                limit: 100
    t.integer    "TEE_ComplicationsEsophRup",     limit: 2
    t.integer    "TEE_ComplicationsVocalPara",    limit: 2
    t.integer    "TEE_ComplicationsDrugReact",    limit: 2
    t.integer    "TEE_ComplicationsAspiration",   limit: 2
    t.integer    "TEE_ComplicationsInfection",    limit: 2
    t.integer    "TEE_ComplicationsOther",        limit: 2
    t.text_basic "TEE_ComplicationsOtherText",    limit: 2147483647
    t.varchar    "TEE_ConsciousSedation",         limit: 25
    t.varchar    "TEE_AnatomicExtent",            limit: 10
    t.varchar    "TEE_Probe",                     limit: 10
    t.varchar    "TEE_Limitation",                limit: 30
    t.integer    "TEE_Contrast",                  limit: 2
    t.varchar    "PericardiumPleuralEffusionAmt", limit: 10
    t.integer    "IndicationsEvalProsthValve",    limit: 2
    t.varchar    "RABiatrialEnlargeSize",         limit: 10
    t.varchar    "ProcedureType",                 limit: 50
    t.varchar    "SSCaseNumber",                  limit: 30
    t.integer    "SSTouch"
    t.integer    "SSLock",                        limit: 2
    t.float      "SedationAmount"
    t.varchar    "TopAnesthetic",                 limit: 50
    t.varchar    "UltrasoundEquip",               limit: 50
    t.varchar    "ASAClass",                      limit: 32
    t.varchar    "PhysicianOrdering",             limit: 50
    t.varchar    "PtDataRN",                      limit: 50
    t.varchar    "PtDataNursePrac",               limit: 50
    t.varchar    "PtDataPhyAsst",                 limit: 50
    t.varchar    "History",                       limit: 50
    t.integer    "TargetHRAchieved",              limit: 2
    t.real       "BaselineHeightIn"
    t.real       "BaselineWeightLb"
    t.varchar    "StudyDescription",              limit: 150
    t.integer    "BaselineQA",                    limit: 2
    t.integer    "AfterHrs",                      limit: 2
    t.varchar    "PtDataPerformingFellowMD",      limit: 50
    t.varchar    "PtDataInterpretingFellowMD",    limit: 50
    t.varchar    "PtDataOtherMD",                 limit: 50
    t.varchar    "OPClinic",                      limit: 50
    t.varchar    "OutreachClinic",                limit: 50
    t.varchar    "Portable",                      limit: 50
    t.varchar    "EchoLab",                       limit: 50
    t.integer    "LVDysfunction",                 limit: 2
    t.integer    "PositiveSE",                    limit: 2
    t.integer    "AorStenosis",                   limit: 2
    t.integer    "PositiveTEE",                   limit: 2
    t.varchar    "EchoLocation",                  limit: 100
    t.float      "BaselineBMI"
    t.varchar    "StudyExtent",                   limit: 50
    t.datetime   "PtArrivalTime"
    t.varchar    "WallMotionScoringModel",        limit: 255
    t.text_basic "Findings",                      limit: 2147483647
    t.varchar    "Hospital",                      limit: 150
    t.text_basic "FindingsTech",                  limit: 2147483647
    t.text_basic "FindingsHistory",               limit: 2147483647
    t.varchar    "Accession_Number",              limit: 20
    t.integer    "ReadyForBilling",               limit: 2
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Followup", primary_key: "SS_Event_Followup_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                 null: false
    t.varchar    "Account_Number",             limit: 12
    t.varchar    "Order_Number",               limit: 50
    t.datetime   "EventTime"
    t.varchar    "ContactType",                limit: 30
    t.varchar    "HospName",                   limit: 30
    t.varchar    "HospCity",                   limit: 30
    t.varchar    "HospState",                  limit: 25
    t.datetime   "DateOfHospitalizationDC"
    t.varchar    "DeptClinic",                 limit: 50
    t.varchar    "FUPersonnel",                limit: 50
    t.varchar    "FUPurpose",                  limit: 50
    t.datetime   "DateOfHospitalizationAdmit"
    t.varchar    "HospitalizationRecentName",  limit: 50
    t.varchar    "HospitalizationRecentCity",  limit: 50
    t.varchar    "HospitalizationRecentState", limit: 50
    t.varchar    "HospReasonNonCardiac",       limit: 50
    t.varchar    "HospResonCardiac",           limit: 50
    t.text_basic "HospitalizationNotes",       limit: 2147483647
    t.datetime   "DateOfCardiacEvent"
    t.varchar    "CPRLocation",                limit: 50
    t.varchar    "CCS",                        limit: 50
    t.float      "MIAcuteMaxSTDep"
    t.datetime   "EventDate"
    t.float      "Height"
    t.float      "Weight"
    t.float      "BSA"
    t.float      "BPSys"
    t.float      "BPDia"
    t.float      "HeartRate"
    t.float      "Temperature"
    t.integer    "Smoking",                    limit: 2
    t.float      "FUSmokingPPD"
    t.text_basic "PatientStatus",              limit: 2147483647
    t.text_basic "Observations",               limit: 2147483647
    t.text_basic "Assesment",                  limit: 2147483647
    t.text_basic "Plan_Field",                 limit: 2147483647
    t.varchar    "NYHA",                       limit: 50
    t.varchar    "CHFSeverity",                limit: 50
    t.text_basic "CHFSymptoms",                limit: 2147483647
    t.varchar    "CHFRecentPattern",           limit: 50
    t.varchar    "AnginaPriorType",            limit: 50
    t.varchar    "ChestPainStatus",            limit: 50
    t.varchar    "AnginaCurrentType",          limit: 50
    t.varchar    "AnginaWithin24Hrs",          limit: 50
    t.varchar    "AtrialFibType",              limit: 50
    t.varchar    "AVBlockType",                limit: 50
    t.varchar    "CompleteHeartBlockType",     limit: 50
    t.varchar    "VentricTachyType",           limit: 50
    t.varchar    "ArrhythmiaOther",            limit: 50
    t.datetime   "DateOfCABGLast"
    t.text_basic "FUNotes",                    limit: 2147483647
    t.integer    "HospitalizationRecent",      limit: 2
    t.integer    "CardiacEvent",               limit: 2
    t.integer    "CardiacEventWitnessed",      limit: 2
    t.integer    "Angina",                     limit: 2
    t.integer    "MIAcute",                    limit: 2
    t.integer    "MIAcuteMaxSTDepLead1",       limit: 2
    t.integer    "MIAcuteMaxSTDepLead3",       limit: 2
    t.integer    "MIAcuteMaxSTDepAVL",         limit: 2
    t.integer    "MIAcuteMaxSTDepV1",          limit: 2
    t.integer    "MIAcuteMaxSTDepV3",          limit: 2
    t.integer    "MIAcuteMaxSTDepV5",          limit: 2
    t.integer    "CHF",                        limit: 2
    t.integer    "Arrhythmia",                 limit: 2
    t.integer    "ValvularAbn",                limit: 2
    t.integer    "CoronaryBypass",             limit: 2
    t.integer    "CHFPriorHosp",               limit: 2
    t.integer    "AnginaPriorNoc",             limit: 2
    t.integer    "AnginaCurrentCresc",         limit: 2
    t.integer    "AnginaCurrentPostInfarct",   limit: 2
    t.integer    "AtrialFib",                  limit: 2
    t.integer    "AVBlock",                    limit: 2
    t.integer    "CompleteHeartBlock",         limit: 2
    t.integer    "VentricTachy",               limit: 2
    t.integer    "VentricTachySustained",      limit: 2
    t.integer    "Asystole",                   limit: 2
    t.integer    "PTCA",                       limit: 2
    t.integer    "CPRAdministered",            limit: 2
    t.integer    "MIAcuteMaxSTDepLead2",       limit: 2
    t.integer    "MIAcuteMaxSTDepAVF",         limit: 2
    t.integer    "MIAcuteMaxSTDepV4",          limit: 2
    t.integer    "IschemicEvents",             limit: 2
    t.integer    "CardCath",                   limit: 2
    t.integer    "CHFPriorTherapy",            limit: 2
    t.integer    "AnginaPriorPostInfarct",     limit: 2
    t.integer    "AnginaCurrentNoc",           limit: 2
    t.integer    "VentricFib",                 limit: 2
    t.integer    "AnginaPriorCresc",           limit: 2
    t.integer    "MIAcuteMaxSTDepAVR",         limit: 2
    t.integer    "MIAcuteMaxSTDepV6",          limit: 2
    t.integer    "ImplantableDevices",         limit: 2
    t.integer    "MIAcuteMaxSTDepV2",          limit: 2
    t.integer    "SSLock",                     limit: 2
    t.varchar    "SSCaseNumber",               limit: 30
    t.integer    "SSTouch"
    t.real       "HeightIn"
    t.real       "WeightLbs"
    t.real       "BMI"
    t.real       "Age"
    t.real       "TemperatureF"
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_History", primary_key: "SS_Event_History_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                   null: false
    t.float      "WeightLossAmount"
    t.varchar    "Menopause",                    limit: 25
    t.varchar    "Oopherectomy",                 limit: 25
    t.float      "AgeAtMenopauseOopherectomy"
    t.varchar    "ASA",                          limit: 5
    t.varchar    "DiabType",                     limit: 20
    t.integer    "DiabDiet",                     limit: 2
    t.integer    "DiabInsulin",                  limit: 2
    t.varchar    "DiabTxOther",                  limit: 30
    t.integer    "DiabCompPerVasc",              limit: 2
    t.integer    "DiabCompRenal",                limit: 2
    t.text_basic "DiabCompOther",                limit: 2147483647
    t.varchar    "SmokingOccupExposureDesc",     limit: 50
    t.varchar    "SmokeHistory",                 limit: 50
    t.datetime   "DateOfSmokeQuit"
    t.varchar    "SmokeQuantity",                limit: 15
    t.varchar    "SmokePackYears",               limit: 12
    t.float      "SmokePPD"
    t.integer    "ETOH",                         limit: 2
    t.varchar    "AlcoholNum",                   limit: 25
    t.varchar    "DrugAbuseType",                limit: 30
    t.varchar    "DrugAbuseFreq",                limit: 50
    t.varchar    "DrugAbuseTiming",              limit: 20
    t.varchar    "PeriVascDiseaseType",          limit: 35
    t.integer    "PreviousDVT",                  limit: 2
    t.varchar    "LocationDVT",                  limit: 50
    t.datetime   "DateOfDVT"
    t.varchar    "LocationVaricoseVein",         limit: 50
    t.varchar    "VenousUlcer",                  limit: 50
    t.varchar    "LocationVenousUlcer",          limit: 50
    t.varchar    "CarotidNonInv",                limit: 30
    t.datetime   "DateOfCarotidNonInv"
    t.float      "LICA"
    t.float      "RICA"
    t.varchar    "CVTotalNum",                   limit: 10
    t.datetime   "DateOfCVARecent"
    t.varchar    "CVARecentTiming",              limit: 40
    t.varchar    "CVALocus",                     limit: 12
    t.varchar    "CVACause",                     limit: 30
    t.varchar    "TIARecent",                    limit: 40
    t.datetime   "DateOfTIARecent"
    t.varchar    "TIALocus",                     limit: 12
    t.varchar    "TIACause",                     limit: 30
    t.text_basic "CVNotes",                      limit: 2147483647
    t.varchar    "CancerStatus",                 limit: 30
    t.varchar    "CancerLocus",                  limit: 30
    t.varchar    "CancerTiming",                 limit: 30
    t.integer    "WeightLoss",                   limit: 2
    t.integer    "SigNonCoronaryCardiacDis",     limit: 2
    t.integer    "MorbObese",                    limit: 2
    t.integer    "DiabetesNoControl",            limit: 2
    t.integer    "DiabOralAgents",               limit: 2
    t.integer    "DiabTxUnknown",                limit: 2
    t.integer    "DiabCompNeuro",                limit: 2
    t.integer    "DiabCompOpth",                 limit: 2
    t.integer    "SmokingOccupExposure",         limit: 2
    t.integer    "SmokelessTobac",               limit: 2
    t.integer    "DrugAbuse",                    limit: 2
    t.integer    "DVT",                          limit: 2
    t.integer    "VaricoseVein",                 limit: 2
    t.integer    "PeriEmbol",                    limit: 2
    t.integer    "CVNeuroDeficit",               limit: 2
    t.integer    "Cancer",                       limit: 2
    t.float      "Cholesterol"
    t.integer    "HyperChol",                    limit: 2
    t.float      "HighSerumCholestLevel"
    t.integer    "Hypertrig",                    limit: 2
    t.integer    "Hyperlipidemia",               limit: 2
    t.integer    "COPD",                         limit: 2
    t.integer    "VentilatorDependant",          limit: 2
    t.integer    "PulmEmbol",                    limit: 2
    t.integer    "COPDTherapy",                  limit: 2
    t.integer    "BronchoDilator",               limit: 2
    t.integer    "PulmonaryVentSupport",         limit: 2
    t.integer    "PulmonaryCyanosis",            limit: 2
    t.integer    "PulmonaryHypoxicSpells",       limit: 2
    t.varchar    "COPDTherapyType",              limit: 30
    t.varchar    "RenalDialysisRecent",          limit: 50
    t.float      "Creatinine"
    t.float      "HighSerumCreatinineLevel"
    t.integer    "RenalFailure",                 limit: 2
    t.integer    "RenalDialysis",                limit: 2
    t.varchar    "Account_Number",               limit: 20
    t.varchar    "Order_Number",                 limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "ClinicianHistory",             limit: 50
    t.varchar    "LocationHistory",              limit: 50
    t.text_basic "PatientHistory",               limit: 2147483647
    t.integer    "CancerSickleCellLeukemia",     limit: 2
    t.varchar    "LocationSuperficialPhlebitis", limit: 50
    t.integer    "PrevSuperficialPhlebitis",     limit: 2
    t.integer    "SSLock",                       limit: 2
    t.varchar    "SSCaseNumber",                 limit: 30
    t.integer    "SSTouch"
    t.real       "HeightIn"
    t.real       "HeightCm"
    t.real       "WeightLbs"
    t.real       "WeightKg"
    t.real       "BSA"
    t.real       "BMI"
    t.real       "Age"
    t.integer    "Asthma",                       limit: 2
    t.integer    "Glaucoma",                     limit: 2
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Laboratory", primary_key: "SS_Patient_ID", force: :cascade do |t|
    t.varchar    "Blood_Type",   limit: 10
    t.text_basic "Lab_Notes",    limit: 2147483647
    t.integer    "SSLock",       limit: 2
    t.varchar    "SSCaseNumber", limit: 30
    t.integer    "SSTouch"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID", unique: true
  end

  create_table "Event_Medications", primary_key: "SS_Patient_ID", force: :cascade do |t|
    t.varchar    "Allergies",    limit: 150
    t.text_basic "Meds_Notes",   limit: 2147483647
    t.integer    "SSLock",       limit: 2
    t.varchar    "SSCaseNumber", limit: 30
    t.integer    "SSTouch"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID", unique: true
  end

  create_table "Event_Mortality", primary_key: "SS_Event_Mortality_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                  null: false
    t.varchar    "Account_Number",              limit: 12
    t.varchar    "Order_Number",                limit: 50
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "LocationCity",                limit: 50
    t.varchar    "LocationState",               limit: 10
    t.varchar    "LocationZip",                 limit: 12
    t.varchar    "DeathLocation",               limit: 50
    t.varchar    "DeathInHospital",             limit: 50
    t.varchar    "PrimaryCause",                limit: 50
    t.varchar    "CancerLocalSite",             limit: 50
    t.varchar    "AutopsyPerformed",            limit: 10
    t.varchar    "AutopsyNumber",               limit: 20
    t.varchar    "AutopsyType",                 limit: 15
    t.varchar    "AutopsyLimitedSite",          limit: 50
    t.text_basic "AutopsySummary",              limit: 2147483647
    t.varchar    "TransplantStage",             limit: 25
    t.varchar    "TransplantNotReceivedDesc",   limit: 100
    t.varchar    "TransplantGraftStatus",       limit: 20
    t.varchar    "TransplantOutOfHospital",     limit: 20
    t.integer    "TransplantNumber",            limit: 2
    t.varchar    "MDPronouncing",               limit: 50
    t.integer    "LocationUnknown",             limit: 2
    t.integer    "CancerLocal",                 limit: 2
    t.integer    "TransplantReceived",          limit: 2
    t.integer    "TransplantGraftFunction",     limit: 2
    t.integer    "TransplantGraftComplication", limit: 2
    t.integer    "SSLock",                      limit: 2
    t.varchar    "SSCaseNumber",                limit: 30
    t.integer    "SSTouch"
    t.real       "Age"
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Nuclear", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Account_Number",                       limit: 20
    t.varchar    "Order_Number",                         limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTimeStart"
    t.datetime   "EventTimeStop"
    t.float      "PILength"
    t.varchar    "PIReferringMD",                        limit: 30
    t.varchar    "PIMDClassification",                   limit: 15
    t.varchar    "PIMDPerformingStudy",                  limit: 30
    t.varchar    "PIMDReadingStudy",                     limit: 30
    t.varchar    "PIPrimaryAssistant",                   limit: 30
    t.varchar    "PISecondaryAssistant",                 limit: 30
    t.varchar    "PILocation",                           limit: 25
    t.varchar    "PIReasonForStudy",                     limit: 25
    t.varchar    "NatureChestPain",                      limit: 40
    t.float      "PreTestLikelihoodOfCAD"
    t.integer    "HxMI",                                 limit: 2
    t.varchar    "HxTypeOfMI",                           limit: 20
    t.varchar    "HxLocationOfMI",                       limit: 25
    t.integer    "HxMIPrior",                            limit: 2
    t.datetime   "DateOfMostRecentMI"
    t.float      "HxPeakCPK"
    t.varchar    "HxThrombolyticTherapy",                limit: 20
    t.varchar    "HxTypeOfRecentMI",                     limit: 15
    t.varchar    "HxLocationOfRecentMI",                 limit: 25
    t.integer    "HxCABG",                               limit: 2
    t.datetime   "DateOfCABG"
    t.integer    "HxPTCA",                               limit: 2
    t.datetime   "DateOfPTCA"
    t.varchar    "HxPTCAVessel",                         limit: 20
    t.integer    "HxCHF",                                limit: 2
    t.varchar    "RFDiabetesMellitus",                   limit: 20
    t.integer    "RFHypertension",                       limit: 2
    t.integer    "RFFamHistMale",                        limit: 2
    t.integer    "RFFamHistFemale",                      limit: 2
    t.varchar    "RFMenopause",                          limit: 30
    t.varchar    "RFOopherectomy",                       limit: 30
    t.float      "RFAgeAtMenopause"
    t.integer    "MedicationsBetaBlocker",               limit: 2
    t.integer    "MedicationsBBMorning",                 limit: 2
    t.integer    "MedicationsCaBlocker",                 limit: 2
    t.integer    "MedicationsACEInhibitor",              limit: 2
    t.integer    "MedicationsDigitalis",                 limit: 2
    t.integer    "MedicationsASA",                       limit: 2
    t.integer    "MedicationsNitrate",                   limit: 2
    t.integer    "MedicationsLipidDrug",                 limit: 2
    t.text_basic "MedicationsOther",                     limit: 2147483647
    t.varchar    "ECGResults",                           limit: 15
    t.integer    "ECGIntLBBB",                           limit: 2
    t.integer    "ECGIntRBBB",                           limit: 2
    t.integer    "ECGIntIVCDNS",                         limit: 2
    t.integer    "ECGIntLVH",                            limit: 2
    t.integer    "ECGIntSTAbnormalities",                limit: 2
    t.integer    "ECGIntQWavesPresent",                  limit: 2
    t.integer    "ECGIntAfibFlutter",                    limit: 2
    t.integer    "ECGIntVEA",                            limit: 2
    t.integer    "ECGIntPacedRhythm",                    limit: 2
    t.integer    "ECGIntWPW",                            limit: 2
    t.integer    "ECGIntPRWProgression",                 limit: 2
    t.integer    "LimitArtifactBreast",                  limit: 2
    t.integer    "LimitArtifactDiagphragm",              limit: 2
    t.integer    "LimitArtifactSubdiaphragm",            limit: 2
    t.integer    "LimitArtifactMotion",                  limit: 2
    t.integer    "LimitArtifactHotSpot",                 limit: 2
    t.varchar    "MSAnteriorDefectClass",                limit: 25
    t.varchar    "MSAnteriorDefectSeverity",             limit: 10
    t.varchar    "MSAnteroseptalDefectClass",            limit: 25
    t.varchar    "MSAnteroseptalDefectSeverity",         limit: 10
    t.varchar    "MSInferoseptalDefectClass",            limit: 25
    t.varchar    "MSInferoseptalDefectSeverity",         limit: 10
    t.varchar    "MSInferiorDefectClass",                limit: 25
    t.varchar    "MSInferiorDefectSeverity",             limit: 10
    t.varchar    "MSInferolateralDefectClass",           limit: 25
    t.varchar    "MSInferolateralDefectSeverity",        limit: 10
    t.varchar    "MSAnterolateralDefectClass",           limit: 25
    t.varchar    "MSAnterolateralDefectSeverity",        limit: 10
    t.varchar    "MSAnteroapexDefectClass",              limit: 25
    t.varchar    "MSAnteroapexDefectSeverity",           limit: 10
    t.varchar    "MSInferoapexDefectClass",              limit: 25
    t.varchar    "MSInferoapexDefectSeverity",           limit: 10
    t.varchar    "CADLADDisease",                        limit: 20
    t.varchar    "CADRCADisease",                        limit: 20
    t.varchar    "CADCxDisease",                         limit: 20
    t.varchar    "CADLVDilatation",                      limit: 40
    t.varchar    "gSPECTAnteriorStress",                 limit: 25
    t.varchar    "gSPECTAnteriorRest",                   limit: 25
    t.varchar    "gSPECTLateralStress",                  limit: 25
    t.varchar    "gSPECTLateralRest",                    limit: 25
    t.varchar    "gSPECTInferiorStress",                 limit: 25
    t.varchar    "gSPECTInferiorRest",                   limit: 25
    t.varchar    "gSPECTSeptumStress",                   limit: 25
    t.varchar    "gSPECTSeptumRest",                     limit: 50
    t.varchar    "gSPECTApexStress",                     limit: 25
    t.varchar    "gSPECTApexRest",                       limit: 25
    t.float      "StressEjectionFraction"
    t.float      "RestEjectionFraction"
    t.varchar    "CCCardiacCath",                        limit: 30
    t.datetime   "DateOfCath"
    t.varchar    "CCCathLocation",                       limit: 35
    t.integer    "CCEventBetween",                       limit: 2
    t.varchar    "CCContrastVentriculography",           limit: 20
    t.float      "CCEjectionFraction"
    t.float      "CCLeftMain"
    t.float      "CCLADProximal"
    t.float      "CCLADMid"
    t.float      "CCLadDistal"
    t.float      "CC1stDiagonal"
    t.float      "CC2ndDiagonal"
    t.float      "CCCircumflexProximal"
    t.float      "CCCircumflexDistal"
    t.float      "CC1stOM"
    t.float      "CC2ndOM"
    t.float      "CCRCAProximal"
    t.float      "CCRCAMid"
    t.float      "CCRCADistal"
    t.float      "CCPDA"
    t.integer    "CCCollaterals",                        limit: 2
    t.text_basic "Impression",                           limit: 2147483647
    t.text_basic "Conclusion",                           limit: 2147483647
    t.varchar    "IsotopeImagingProtocol",               limit: 30
    t.varchar    "AdditionalProcedures",                 limit: 30
    t.float      "TPRestDose"
    t.float      "TPReinjecDose"
    t.varchar    "TPAccquisition",                       limit: 20
    t.integer    "TPAttenuationCorrection",              limit: 2
    t.integer    "ECGRVH",                               limit: 2
    t.integer    "ECGBVH",                               limit: 2
    t.integer    "ECGLAE",                               limit: 2
    t.integer    "ECGSTV",                               limit: 2
    t.integer    "ECGVT",                                limit: 2
    t.integer    "ECGAIVR",                              limit: 2
    t.integer    "ECGVentEct",                           limit: 2
    t.integer    "ECGAtEct",                             limit: 2
    t.float      "CCCircumMid"
    t.float      "CC3rdOM"
    t.integer    "ECGRAE",                               limit: 2
    t.integer    "ECGBAE",                               limit: 2
    t.integer    "BaseECGNormalSinusRhythm",             limit: 2
    t.varchar    "TypeOfStudy",                          limit: 50
    t.varchar    "SSCaseNumber",                         limit: 30
    t.integer    "SSTouch"
    t.integer    "SSLock",                               limit: 2
    t.varchar    "PIMDOrdering",                         limit: 100
    t.varchar    "Fellow",                               limit: 100
    t.text_basic "MDPlan",                               limit: 2147483647
    t.text_basic "TechnologistComments",                 limit: 2147483647
    t.varchar    "PtDataCaseNo",                         limit: 50
    t.varchar    "PIReferringMD2",                       limit: 100
    t.text_basic "SummaryComments",                      limit: 2147483647
    t.text_basic "PETFindings",                          limit: 2147483647
    t.varchar    "NmlBaselineECG",                       limit: 30
    t.text_basic "ECGInterpretationFindings",            limit: 2147483647
    t.text_basic "BaselineECGFindings",                  limit: 2147483647
    t.text_basic "StressRecoveryFindings",               limit: 2147483647
    t.text_basic "PerfusionFindings",                    limit: 2147483647
    t.text_basic "FunctionFindings",                     limit: 2147483647
    t.text_basic "InterpretationFindings",               limit: 2147483647
    t.text_basic "TechImagingProtocolFindings",          limit: 2147483647
    t.text_basic "DobutamineProtocolFindings",           limit: 2147483647
    t.text_basic "ExerciseProtocolFindings",             limit: 2147483647
    t.text_basic "AdenosineRegadenosonProtocolFindings", limit: 2147483647
    t.text_basic "Conclusions",                          limit: 2147483647
    t.varchar    "NuclearTechnologist",                  limit: 150
    t.text_basic "PETPerfusionProtocolFindings",         limit: 2147483647
    t.varchar    "TPAtt",                                limit: 50
    t.text_basic "PETPerfusionFindings",                 limit: 2147483647
    t.integer    "Cath",                                 limit: 2
    t.integer    "Echo",                                 limit: 2
    t.integer    "SurgicalInterventions",                limit: 2
    t.varchar    "AdenosineAcquisition",                 limit: 255
    t.text_basic "PriorStudyFindings",                   limit: 2147483647
    t.text_basic "RecommendationsFindings",              limit: 2147483647
    t.text_basic "PresentationHistoryFindings",          limit: 2147483647
    t.text_basic "ViabilityFindings",                    limit: 2147483647
    t.varchar    "Accession_Number",                     limit: 50
    t.varchar    "StressTPAtt",                          limit: 20
    t.varchar    "IsotopeProtocolStress",                limit: 50
    t.varchar    "DelayFDGTPAtt",                        limit: 20
    t.varchar    "IsotopeProtocolDelayFDG",              limit: 50
    t.varchar    "IsotopeImagingProtocolFunction",       limit: 50
    t.varchar    "IsotopeProtocolDelayFDGFunction",      limit: 50
    t.varchar    "IsotopeProtocolStressFunction",        limit: 50
    t.varchar    "DelayFDGTPAttFunction",                limit: 20
    t.varchar    "TPAttFunction",                        limit: 20
    t.varchar    "StressTPAttFunction",                  limit: 20
    t.float      "TPRestDoseFunction"
    t.float      "TPDelayFDGDoseFunction"
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_PE", primary_key: "SS_Event_PE_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID",                                 null: false
    t.varchar    "Account_Number",             limit: 20
    t.varchar    "Order_Number",               limit: 20
    t.text_basic "GeneralAppearance",          limit: 2147483647
    t.varchar    "HEENTFinding",               limit: 10
    t.text_basic "HEENTDescription",           limit: 2147483647
    t.varchar    "BreastFinding",              limit: 10
    t.text_basic "BreastDescription",          limit: 2147483647
    t.varchar    "AbdomenFinding",             limit: 10
    t.text_basic "AbdomenDescription",         limit: 2147483647
    t.varchar    "ExtremitiesFinding",         limit: 10
    t.text_basic "ExtremitiesDescription",     limit: 2147483647
    t.varchar    "NeuroFinding",               limit: 10
    t.text_basic "NeuroDescription",           limit: 2147483647
    t.varchar    "PMIFinding",                 limit: 10
    t.varchar    "PMIDescription",             limit: 50
    t.real       "Height"
    t.real       "Weight"
    t.float      "Temperature"
    t.integer    "BP_Systolic",                limit: 2
    t.integer    "BP_Diastolic",               limit: 2
    t.integer    "Heart_Rate",                 limit: 2
    t.varchar    "Performed_By",               limit: 50
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "Exam_Location",              limit: 30
    t.varchar    "Hospital",                   limit: 40
    t.varchar    "GastroIntestinalAppear",     limit: 10
    t.text_basic "GastroIntestinalDesc",       limit: 2147483647
    t.varchar    "GenitourinaryPelvicAppear",  limit: 10
    t.text_basic "GenitourinaryPelvicDesc",    limit: 2147483647
    t.varchar    "ThyroidAppear",              limit: 10
    t.text_basic "ThyroidDesc",                limit: 2147483647
    t.varchar    "LymphaticAppear",            limit: 10
    t.text_basic "LymphaticDesc",              limit: 2147483647
    t.varchar    "MusculoskeletalAppear",      limit: 10
    t.text_basic "MusculoskeletalDesc",        limit: 2147483647
    t.varchar    "ImmunologicAppear",          limit: 10
    t.text_basic "ImmunologicDesc",            limit: 2147483647
    t.varchar    "DermatologicAppear",         limit: 10
    t.text_basic "DermatologicDesc",           limit: 2147483647
    t.varchar    "HematologyOncologyAppear",   limit: 10
    t.text_basic "HematologyOncologyDesc",     limit: 2147483647
    t.varchar    "PsycholPsychiatricAppear",   limit: 10
    t.text_basic "PsycholPsychiatricDesc",     limit: 2147483647
    t.varchar    "CardiacRhythm",              limit: 50
    t.text_basic "CardiacRhythmNotes",         limit: 2147483647
    t.varchar    "HeartSoundS1Description",    limit: 10
    t.varchar    "HeartSoundS2Description",    limit: 20
    t.varchar    "HeartSoundS2Splitting",      limit: 15
    t.varchar    "HeartSoundS3",               limit: 15
    t.text_basic "HeartSoundS3Notes",          limit: 2147483647
    t.varchar    "HeartSoundS4",               limit: 15
    t.varchar    "Murmur1Loudness",            limit: 1
    t.varchar    "Murmur1Timing",              limit: 15
    t.varchar    "Murmur1Location",            limit: 30
    t.varchar    "Murmur1Quality",             limit: 20
    t.text_basic "Murmur1Notes",               limit: 2147483647
    t.varchar    "Murmur2Loudness",            limit: 1
    t.varchar    "Murmur2Timing",              limit: 15
    t.varchar    "Murmur2Location",            limit: 30
    t.varchar    "Murmur2Quality",             limit: 20
    t.varchar    "Murmur3Loudness",            limit: 1
    t.varchar    "Murmur3Timing",              limit: 15
    t.varchar    "Murmur3Location",            limit: 30
    t.varchar    "Murmur3Quality",             limit: 20
    t.varchar    "Prosthetic",                 limit: 15
    t.integer    "HeartSoundOpeningSnap",      limit: 2
    t.integer    "HeartSoundFrictionRubs",     limit: 2
    t.integer    "HeartSoundPericardialKnock", limit: 2
    t.integer    "HeartSoundClicks",           limit: 2
    t.integer    "HeartSoundProstheticOS",     limit: 2
    t.integer    "HeartSoundEjectionSound",    limit: 2
    t.integer    "SSLock",                     limit: 2
    t.varchar    "SSCaseNumber",               limit: 30
    t.integer    "SSTouch"
    t.real       "HeightIn"
    t.real       "WeightLbs"
    t.real       "BSA"
    t.real       "BMI"
    t.real       "Age"
    t.float      "TemperatureF"
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Ped_Echo", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Account_Number",                 limit: 20
    t.varchar    "Order_Number",                   limit: 20
    t.varchar    "MedicareNumber",                 limit: 20
    t.varchar    "UnitNumber",                     limit: 20
    t.datetime   "EventDate"
    t.datetime   "EventTimeStart"
    t.datetime   "EventTimeStop"
    t.varchar    "EchoTapeNumber",                 limit: 25
    t.varchar    "EchoTapeCounter",                limit: 50
    t.varchar    "EchoTapeTime",                   limit: 50
    t.varchar    "EchoSonographer",                limit: 50
    t.varchar    "EchoProcedureRoomNum",           limit: 20
    t.varchar    "PtDataMedicalRecordNo",          limit: 20
    t.varchar    "PtDataCaseNo",                   limit: 50
    t.varchar    "PtDataRoomNo",                   limit: 10
    t.varchar    "PtDataReferringMD",              limit: 50
    t.varchar    "PtDataInterpretingMD",           limit: 50
    t.real       "BaselineHeight"
    t.real       "BaselineWeight"
    t.float      "BaselineHeartRate"
    t.datetime   "BaselineDateOfBirth"
    t.real       "BaselineAgefYears"
    t.real       "BaselineAgeMonths"
    t.real       "BaselineAgeDays"
    t.float      "BaselineBSA"
    t.float      "BaselineBPSystolicResting"
    t.float      "BaselineBPDiastolicResting"
    t.varchar    "BaselineRhythm",                 limit: 40
    t.varchar    "BaselineSedation",               limit: 25
    t.integer    "AdmissionOutpatient",            limit: 2
    t.varchar    "AdmissionOutpatientText",        limit: 25
    t.integer    "AdmissionInpatient",             limit: 2
    t.varchar    "AdmissionInpatientText",         limit: 25
    t.integer    "AdmissionPortable",              limit: 2
    t.integer    "AdmissionPreviousStudy",         limit: 2
    t.datetime   "AdmissionPreviousStudyDate"
    t.varchar    "AdmissionSchedulingType",        limit: 10
    t.varchar    "AdmissionReportStatus",          limit: 15
    t.integer    "IndicationsCongenital",          limit: 2
    t.varchar    "IndicationsCongenitalType",      limit: 30
    t.integer    "IndicationsEvalPericardium",     limit: 2
    t.integer    "IndicationsPericardEffusion",    limit: 2
    t.integer    "IndicationsIntracardMass",       limit: 2
    t.varchar    "IndicationsIntracardMassDesc",   limit: 50
    t.integer    "IndicationsEvalLVFunction",      limit: 2
    t.integer    "IndicationsEvalRVFunction",      limit: 2
    t.integer    "IndicationsEvalChamberSize",     limit: 2
    t.integer    "IndicationsCompareStudy",        limit: 2
    t.integer    "IndicationsMurmur",              limit: 2
    t.integer    "IndicationsEvalAorticValve",     limit: 2
    t.varchar    "IndicationsEvalAorticValveType", limit: 15
    t.integer    "IndicationsEvalMitralValve",     limit: 2
    t.varchar    "IndicationsEvalMitralValveType", limit: 15
    t.integer    "IndicationsEvalTricuspidValve",  limit: 2
    t.varchar    "IndicationsEvalTricusValveType", limit: 15
    t.integer    "IndicationsEvalPulmonicValve",   limit: 2
    t.varchar    "IndicationsEvalPulmonValveType", limit: 15
    t.integer    "IndicationsEvalAorticArch",      limit: 2
    t.integer    "IndicationsEvalCoroArteries",    limit: 2
    t.integer    "IndicationsEvalAneurysms",       limit: 2
    t.integer    "IndicationsOtherYN",             limit: 2
    t.varchar    "IndicationsOther",               limit: 50
    t.text_basic "IndicationsComment",             limit: 2147483647
    t.float      "MModeRVEndDiastolicThickness"
    t.float      "MModeRVEndSystolicDimension"
    t.float      "MModeRVSTI_PEP"
    t.float      "MModeRVSTI_RVET"
    t.float      "MModeRVSTI_PEP_RVET"
    t.float      "MModeRVSTI_VCF"
    t.float      "MModeInterVentEndDiastThick"
    t.float      "MModeInterVentEndSystolicThick"
    t.float      "MModeInterVentCardiacInput"
    t.float      "MModeInterVentCardiacOutput"
    t.float      "MModeLVEndDiastolicThick"
    t.float      "MModeLV_VolumeCC"
    t.float      "MModeEndSystolicDimension"
    t.float      "MModeVolumeMM"
    t.float      "MModeStrokeVolume"
    t.float      "MModeEjectionFraction"
    t.float      "MModeFractionalShortening"
    t.float      "MModePosteriorWallExec"
    t.float      "MModeIVS_LVPW"
    t.float      "MModeLVMass"
    t.float      "MModePeakSystolicWallStress"
    t.float      "MModeEndSystolicWallStress"
    t.float      "MModeLVSTI_PEP_LVET"
    t.float      "MModeLVSTI_VCF"
    t.float      "MModeLVSTI_PEP"
    t.float      "MModeLVSTI_LVET"
    t.float      "MModeLVSTI_VCFc"
    t.float      "MModeLVPosteriorEndDiastolic"
    t.float      "MModeLVPosteriorEndSystolic"
    t.float      "MModeLVPosteriorAorticRootDim"
    t.float      "MModeLVPosteriorLeftAtrialDim"
    t.float      "MModeMVExcursion"
    t.float      "MModeMV_EFSlope"
    t.float      "MModeMV_EIVS"
    t.float      "MModeMV_EPSS"
    t.float      "MModeLA_AORatio"
    t.text_basic "MModeComments",                  limit: 2147483647
    t.float      "__2DArteriesAorta"
    t.float      "__2DArteriesAorticHinge"
    t.float      "__2DArteriesAorticSinus"
    t.float      "__2DArteriesCommissuralRing"
    t.float      "__2DArteriesAscendingAorta"
    t.float      "__2DArteriesTransverseArch"
    t.float      "__2DArteriesDescendingAorta"
    t.float      "__2DArteriesCoartation"
    t.float      "__2DArteriesIsthmus"
    t.float      "__2DArteriesPulmonaryAnnulus"
    t.float      "__2DArteriesMPADiameter"
    t.float      "__2DArteriesRPADiameter"
    t.float      "__2DArteriesLPADiameter"
    t.float      "__2DArteriesLVEndSystolicVol"
    t.float      "__2DArteriesLVEndDiastolicVol"
    t.float      "__2DArteriesLVEjectionFraction"
    t.varchar    "__2DArteriesMeasureMethod",      limit: 50
    t.varchar    "__2DArteriesComments",           limit: 100
    t.float      "__2DTricuspidAnnulus"
    t.float      "__2DMitralAnnulus"
    t.float      "__2DRVOT"
    t.float      "__2DLVOT"
    t.float      "__2DArteriesPDA"
    t.varchar    "__2DVeinsComments",              limit: 100
    t.text_basic "__2DComments",                   limit: 2147483647
    t.text_basic "Comments",                       limit: 2147483647
    t.integer    "ComentsNoAbnormalities",         limit: 2
    t.text_basic "Conclusions",                    limit: 2147483647
    t.varchar    "SummaryFinding",                 limit: 50
    t.varchar    "SummaryTechnicalProblems",       limit: 25
    t.integer    "ProcTransthoracic",              limit: 2
    t.integer    "ProcTransesoph",                 limit: 2
    t.integer    "ProcCompleteStudy",              limit: 2
    t.integer    "ProcLimitedStudy",               limit: 2
    t.integer    "ProcMMode",                      limit: 2
    t.integer    "Proc2DEcho",                     limit: 2
    t.integer    "ProcColorDoppler",               limit: 2
    t.integer    "ProcQualDoppler",                limit: 2
    t.integer    "ProcQuanDoppler",                limit: 2
    t.integer    "ProcContrastStudy",              limit: 2
    t.integer    "ProcIntraOpEcho",                limit: 2
    t.integer    "ProcEpicardial",                 limit: 2
    t.integer    "ProcIntravent",                  limit: 2
    t.integer    "ProcStressEcho",                 limit: 2
    t.integer    "ProcFetalEcho",                  limit: 2
    t.integer    "ProcTechProbWindows",            limit: 2
    t.integer    "ProcTechProbUncoop",             limit: 2
    t.varchar    "SSCaseNumber",                   limit: 30
    t.integer    "SSTouch"
    t.real       "BaselineWeightLb"
    t.real       "BaselineHeightIn"
    t.real       "BaselineBMI"
    t.varchar    "StudyExtent",                    limit: 50
    t.varchar    "EchoLocation",                   limit: 50
    t.integer    "AfterHrs",                       limit: 2
    t.varchar    "QualityOfStudy",                 limit: 50
    t.integer    "BaselineQA",                     limit: 2
    t.varchar    "ASAClass",                       limit: 50
    t.datetime   "PtArrivalTime"
    t.integer    "InformedConsent",                limit: 2
    t.varchar    "PtDataInterpretingGroup",        limit: 50
    t.varchar    "PtDataOrderingMD",               limit: 50
    t.varchar    "PtDataPerformingMD",             limit: 50
    t.float      "AgeInDecimal"
    t.float      "BaselineBMIPercent"
    t.varchar    "ParentName",                     limit: 100
    t.varchar    "ParentRelationship",             limit: 200
    t.varchar    "ParentAddress",                  limit: 125
    t.varchar    "ParentCity",                     limit: 50
    t.varchar    "ParentState",                    limit: 25
    t.varchar    "ParentZipCode",                  limit: 25
    t.varchar    "ParentPhone",                    limit: 25
    t.varchar    "ParentCel",                      limit: 25
    t.varchar    "PtDataPerformingFellowMD",       limit: 50
    t.varchar    "PtDataInterpretingFellowMD",     limit: 50
    t.varchar    "PtDataOtherMD",                  limit: 255
    t.varchar    "PtDataRN",                       limit: 50
    t.varchar    "PtDataNursePrac",                limit: 50
    t.varchar    "PtDataPhyAsst",                  limit: 50
    t.text_basic "ChambersAndValves",              limit: 2147483647
    t.text_basic "Intervention",                   limit: 2147483647
    t.float      "__2DAorticRootDim"
    t.float      "__2DFractionalShortening"
    t.text_basic "PrevComments",                   limit: 2147483647
    t.text_basic "CathConclusions",                limit: 2147483647
    t.text_basic "NuclearConclusions",             limit: 2147483647
    t.text_basic "SurgeryFindings",                limit: 2147483647
    t.integer    "Cath",                           limit: 2
    t.integer    "Nuclear",                        limit: 2
    t.integer    "SurgicalIntervention",           limit: 2
    t.datetime   "DateOfPreviousCath"
    t.datetime   "DateOfPreviousNuclear"
    t.datetime   "DateOfPreviousSurgery"
    t.real       "PreProcPhysioLVEFPercent"
    t.real       "RestEjectionFraction"
    t.real       "StressEjectionFraction"
    t.integer    "InterpCards",                    limit: 2
    t.integer    "PerformSonog",                   limit: 2
    t.varchar    "ProcedureType",                  limit: 150
    t.integer    "LVDysfunction",                  limit: 2
    t.integer    "AorStenosis",                    limit: 2
    t.integer    "PositiveSE",                     limit: 2
    t.integer    "PositiveTEE",                    limit: 2
    t.float      "__2DASDDiameter"
    t.float      "__2DVSDDiameter"
    t.integer    "TeachingCase",                   limit: 2
    t.integer    "ResearchStudy",                  limit: 2
    t.varchar    "MaternalMRN",                    limit: 20
    t.datetime   "OBUltrasoundDate"
    t.float      "BPLeftSystolic"
    t.float      "BPRightSystolic"
    t.float      "BPLeftDiastolic"
    t.float      "BPRightDiastolic"
    t.varchar    "BPLocation",                     limit: 25
    t.integer    "SSLock",                         limit: 2
    t.float      "PVAreaPlan2D"
    t.float      "MVAnnDiamA4C"
    t.integer    "GestationAge",                   limit: 2
    t.datetime   "PrimaryImagingComplete"
    t.datetime   "PrelimReportEntered"
    t.datetime   "SetAsideForReview"
    t.datetime   "ReviewStart"
    t.datetime   "RepeatImagingStart"
    t.datetime   "RepeatImagingComplete"
    t.float      "BPRightMean"
    t.float      "BPLeftMean"
    t.integer    "GestationAgeDays",               limit: 2
    t.varchar    "OHIP",                           limit: 50
    t.varchar    "VersionCode",                    limit: 50
    t.text_basic "SurgIntervComments",             limit: 2147483647
    t.text_basic "SurgIntervIndicationComments",   limit: 2147483647
    t.text_basic "FindingsTech",                   limit: 2147483647
    t.integer    "ReadyForBilling",                limit: 2
    t.varchar    "Accession_Number",               limit: 30
    t.index ["EventDate"], name: "EventDate"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Event_Peripheral_Vascular", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "SSCaseNumber",                  limit: 30
    t.integer    "SSTouch"
    t.integer    "SSLock",                        limit: 2
    t.varchar    "StudyID",                       limit: 20
    t.varchar    "Accession_Number",              limit: 20
    t.varchar    "MedRecordNum",                  limit: 50
    t.varchar    "Account_Number",                limit: 20
    t.varchar    "Order_Number",                  limit: 20
    t.varchar    "CPTCode",                       limit: 20
    t.varchar    "ICDCode",                       limit: 20
    t.datetime   "EventDate"
    t.datetime   "TimeOfExamStart"
    t.datetime   "TimeOfExamStop"
    t.datetime   "TimeOfPrelimResultsSent"
    t.datetime   "TimeOfReportFinal"
    t.datetime   "TimeArrive"
    t.datetime   "TimeReq"
    t.float      "Age"
    t.varchar    "InOutPatient",                  limit: 20
    t.integer    "TeachingCase",                  limit: 2
    t.varchar    "TestQuality",                   limit: 50
    t.varchar    "StudyQuality",                  limit: 50
    t.varchar    "Hospital",                      limit: 150
    t.varchar    "Location",                      limit: 100
    t.varchar    "RoomNum",                       limit: 50
    t.integer    "LeftBPSystolic",                limit: 2
    t.integer    "LeftBPDiastolic",               limit: 2
    t.integer    "RightBPSystolic",               limit: 2
    t.integer    "RightBPDiastolic",              limit: 2
    t.real       "HeightCM"
    t.real       "HeightIN"
    t.real       "WeightLB"
    t.real       "WeightKG"
    t.real       "BSA"
    t.real       "BMI"
    t.integer    "HeartRate",                     limit: 2
    t.varchar    "InterpretingPhysician",         limit: 50
    t.varchar    "ReferringPhysician",            limit: 50
    t.varchar    "Technologist",                  limit: 50
    t.varchar    "ReferringPhys1",                limit: 50
    t.varchar    "ReferringPhys2",                limit: 50
    t.varchar    "ProcedureType",                 limit: 255
    t.varchar    "ProcedureModifier",             limit: 50
    t.varchar    "PrimaryIndication",             limit: 255
    t.integer    "LimitedByUnableToTolerateTest", limit: 2
    t.integer    "LimitedByBandages",             limit: 2
    t.integer    "LimitedByBodyHabitus",          limit: 2
    t.integer    "LimitedByPortableExam",         limit: 2
    t.integer    "LimitedByIVLine",               limit: 2
    t.integer    "LimitedByArtLine",              limit: 2
    t.integer    "LimitedByBowelGas",             limit: 2
    t.integer    "LimitedByVentilator",           limit: 2
    t.integer    "LimitedByOpenWound",            limit: 2
    t.integer    "LimitedByUncooperative",        limit: 2
    t.integer    "LimitedByPtMovement",           limit: 2
    t.integer    "LimitedByContractedPosition",   limit: 2
    t.varchar    "LimitedByOther",                limit: 200
    t.integer    "ReadyForBilling",               limit: 2
    t.integer    "CompletedCase",                 limit: 2
    t.text_basic "Indications",                   limit: 2147483647
    t.text_basic "TechnologistComments",          limit: 2147483647
    t.text_basic "Comments",                      limit: 2147483647
    t.text_basic "Findings",                      limit: 2147483647
    t.text_basic "PrevFindings",                  limit: 2147483647
    t.text_basic "Conclusions",                   limit: 2147483647
    t.text_basic "PrevSurgery",                   limit: 2147483647
    t.text_basic "FindingsCarotidDuplex",         limit: 2147483647
    t.text_basic "FindingsUEVenousDuplex",        limit: 2147483647
    t.text_basic "FindingsLEVenousDuplex",        limit: 2147483647
    t.text_basic "FindingsVenousPhysiologic",     limit: 2147483647
    t.text_basic "FindingsUEVeinMapArtDuplex",    limit: 2147483647
    t.text_basic "FindingsUEArtPhysiologic",      limit: 2147483647
    t.text_basic "FindingsLEArtPhysiologic",      limit: 2147483647
    t.text_basic "FindingsUEArtDuplex",           limit: 2147483647
    t.text_basic "FindingsLEArtDuplex",           limit: 2147483647
    t.text_basic "FindingsAortoIliac",            limit: 2147483647
    t.text_basic "FindingsEVAR",                  limit: 2147483647
    t.text_basic "FindingsRenalDuplex",           limit: 2147483647
    t.text_basic "FindingsAbdVenous",             limit: 2147483647
    t.text_basic "FindingsHemodialysisAccess",    limit: 2147483647
    t.text_basic "FindingsHemoDialysisMapping",   limit: 2147483647
    t.text_basic "FindingsDialysisSteal",         limit: 2147483647
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "FU_NonInvasive_Test", primary_key: "SS_FU_NonInvasive_Test", force: :cascade do |t|
    t.integer    "SS_Event_Followup_ID",                       null: false
    t.varchar    "TestType",                limit: 25
    t.datetime   "DateOfNonInvasiveTest"
    t.varchar    "TestResult",              limit: 15
    t.text_basic "NonInvasiveTestComments", limit: 2147483647
    t.index ["SS_Event_Followup_ID"], name: "SS_Event_Followup_ID"
  end

  create_table "Followup_Cardiac", primary_key: "SS_Event_Followup_ID", force: :cascade do |t|
    t.varchar    "ValvStenAortic",            limit: 50
    t.varchar    "ValvStenMitral",            limit: 50
    t.varchar    "ValvStenTricuspid",         limit: 50
    t.varchar    "ValvStenPulm",              limit: 50
    t.varchar    "ValvInsufAortic",           limit: 50
    t.varchar    "ValvInsufMitral",           limit: 50
    t.varchar    "ValvInsufTricuspid",        limit: 50
    t.varchar    "ValvInsufPulmonic",         limit: 50
    t.datetime   "DateOfCardCath"
    t.float      "CardCathLesionsNum"
    t.varchar    "LocationLesion1",           limit: 50
    t.varchar    "LocationLesion2",           limit: 50
    t.varchar    "LocationLesion3",           limit: 50
    t.varchar    "LocationLesion4",           limit: 50
    t.varchar    "LocationLesion5",           limit: 50
    t.varchar    "LocationLesion6",           limit: 50
    t.float      "OcclusionLesion1"
    t.float      "OcclusionLesion2"
    t.float      "OcclusionLesion3"
    t.float      "OcclusionLesion4"
    t.float      "OcclusionLesion5"
    t.float      "OcclusionLesion6"
    t.datetime   "DateOfPTCA"
    t.float      "PTCALesionsNum"
    t.float      "StenosisPreLesion1"
    t.float      "StenosisPreLesion2"
    t.float      "StenosisPreLesion3"
    t.float      "StenosisPostLesion1"
    t.float      "StenosisPostLesion2"
    t.float      "StenosisPostLesion3"
    t.varchar    "StenosisResultsLesion1",    limit: 50
    t.varchar    "StenosisResultsLesion2",    limit: 50
    t.varchar    "StenosisResultsLesion3",    limit: 50
    t.text_basic "PTCAComplications",         limit: 2147483647
    t.float      "CABGGraftsNum"
    t.datetime   "DateOfCABGFirstOcc"
    t.varchar    "CABGFirstOccVessel",        limit: 50
    t.varchar    "CABGFirstOccConduit",       limit: 50
    t.datetime   "DateOfOcclusionRM"
    t.datetime   "DateOfOcclusionLAD"
    t.datetime   "DateOfOcclusionD1"
    t.datetime   "DateOfOcclusionD2"
    t.datetime   "DateOfOcclusionIntMed"
    t.datetime   "DateOfOcclusionCx"
    t.datetime   "DateOfOcclusionOM1"
    t.datetime   "DateOfOcclusionOM2"
    t.datetime   "DateOfOcclusionOM3"
    t.datetime   "DateOfOcclusionPDA"
    t.datetime   "DateOfOcclusionLVB"
    t.datetime   "DateOfOcclusionAM"
    t.datetime   "DateOfOcclusionLM"
    t.integer    "CABGOccGrafts",             limit: 2
    t.integer    "Pacemaker",                 limit: 2
    t.integer    "ICD",                       limit: 2
    t.varchar    "PacemakerType",             limit: 50
    t.datetime   "DateOfPacemakerImplant"
    t.varchar    "ICDImplantMethod",          limit: 50
    t.datetime   "DateOfICDImplant"
    t.text_basic "ImplantableDeviceComments", limit: 2147483647
  end

  create_table "Followup_Extension", primary_key: "SS_Event_Followup_ID", force: :cascade do |t|
  end

  create_table "GraftMapPoints", primary_key: "SSGraftMapID", force: :cascade do |t|
    t.integer "SSGraftID"
    t.real    "XSrc"
    t.real    "YSrc"
    t.real    "XDst"
    t.real    "YDst"
    t.integer "Type",      limit: 2
    t.index ["SSGraftID"], name: "SSGraftID"
  end

  create_table "Grafts", primary_key: "SSGraftID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                              null: false
    t.integer    "SSViewID"
    t.integer    "RGBColor"
    t.varchar    "Graft",                      limit: 50
    t.varchar    "Vessel_Segment",             limit: 255
    t.varchar    "Type_of_Graft",              limit: 50
    t.varchar    "Type_of_Material",           limit: 50
    t.varchar    "Origin",                     limit: 50
    t.varchar    "Insertion1",                 limit: 50
    t.varchar    "Insertion2",                 limit: 50
    t.varchar    "Insertion3",                 limit: 50
    t.integer    "Nonvisualized",              limit: 2
    t.integer    "Ectatic",                    limit: 2
    t.integer    "Lesion_at_Mid_Segment",      limit: 2
    t.integer    "Patent",                     limit: 2
    t.integer    "Diffusely_Diseased",         limit: 2
    t.integer    "Flow_Decreased",             limit: 2
    t.integer    "Lesion_at_Proximal_Segment", limit: 2
    t.integer    "Lesion_at_Distal_Segment",   limit: 2
    t.integer    "Lesion_at_Distal_Anast",     limit: 2
    t.integer    "Lesion_at_Proximal_Anast",   limit: 2
    t.integer    "Lesion_Distal_to_Anast",     limit: 2
    t.integer    "LesionProxtoDistalAnast",    limit: 2
    t.varchar    "Type",                       limit: 50
    t.text_basic "SSVascularData",             limit: 2147483647
    t.index ["SSViewID"], name: "SSViewID"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "GraftsDetails", primary_key: "SSGraftDetailsID", force: :cascade do |t|
    t.integer "SSGraftID",                    null: false
    t.varchar "GraftDescription", limit: 255
    t.index ["SSGraftDetailsID"], name: "SSGraftDetailsID", unique: true
  end

  create_table "Hemo_Oximetry", primary_key: "SS_Hemo_Oximetry_ID", force: :cascade do |t|
    t.integer  "SS_Hemodynamics_ID",            null: false
    t.datetime "TimeofAcquisition"
    t.varchar  "Site",               limit: 50
    t.float    "Content"
    t.float    "Saturation"
    t.real     "HB"
    t.real     "PO2"
    t.integer  "ExcludePrint",       limit: 2
    t.index ["SS_Hemodynamics_ID"], name: "SS_Hemodynamics_ID"
  end

  create_table "Hemo_Pressures", primary_key: "SS_Hemo_Pressure_ID", force: :cascade do |t|
    t.integer  "SS_Hemodynamics_ID",            null: false
    t.datetime "TimeofAcquisition"
    t.varchar  "Site",               limit: 50
    t.float    "Pressure1"
    t.float    "Pressure2"
    t.float    "Pressure3"
    t.float    "Heart_Rate"
    t.real     "VWave"
    t.real     "AWave"
    t.real     "Mean"
    t.real     "MaxdPdt"
    t.integer  "ExcludePrint",       limit: 2
    t.index ["SS_Hemodynamics_ID"], name: "SS_Hemodynamics_ID"
  end

  create_table "Hemodynamics", primary_key: "SS_Hemodynamics_ID", force: :cascade do |t|
    t.integer "SS_Event_Cath_ID"
    t.integer "Phase",                       limit: 2
    t.varchar "State",                       limit: 40
    t.float   "Fick_Cardiac_Output"
    t.float   "Fick_Cardiac_Output_Index"
    t.float   "Thermo_Cardiac_Output"
    t.float   "Thermo_Cardiac_Output_Index"
    t.float   "Cardiac_Output_Other"
    t.float   "Cardiac_Output_Index_Other"
    t.float   "Left_to_Right_Shunt"
    t.float   "Right_to_Left_Shunt"
    t.float   "QP_QS"
    t.float   "PVR_SVR_Ratio"
    t.float   "Fick_Heart_Rate"
    t.float   "Hemoglobin"
    t.float   "Expired_O2"
    t.float   "Inspired_O2"
    t.float   "Fick_Arterial_Content"
    t.float   "Fick_Venous_Content"
    t.float   "Mean_Arterial_Pressure"
    t.float   "Expired_Volume_Corrected"
    t.float   "Pulmonary_Vein_Content"
    t.float   "Pulmonary_Artery_Content"
    t.float   "Pulmonary_Blood_Flow"
    t.float   "Systemic_Blood_Flow"
    t.float   "Systemic_AV_O2_Difference"
    t.float   "End_Diastolic_Volume"
    t.float   "End_Systolic_Volume"
    t.float   "Stroke_Volume"
    t.float   "End_Diastolic_Volume_Index"
    t.float   "End_Systolic_Volume_Index"
    t.float   "Stroke_Volume_Index"
    t.float   "AVDifference"
    t.varchar "Shunts",                      limit: 10
    t.float   "AV_Area"
    t.float   "AV_Area_Index"
    t.float   "AV_Flow"
    t.float   "AV_Gradient"
    t.float   "AV_Heart_Rate"
    t.float   "AV_Open_Time"
    t.float   "AV_SEP"
    t.float   "AV_Left_Diastolic_Pre"
    t.float   "AV_Left_Systolic_Pre"
    t.float   "AV_Right_Diastolic_Pre"
    t.float   "AV_Right_Systolic_Pre"
    t.float   "LV_Stroke_Work"
    t.float   "LV_Stroke_Work_Index"
    t.float   "MV_Area"
    t.float   "MV_Area_Index"
    t.float   "MV_DFP"
    t.float   "MV_Flow"
    t.float   "MV_Gradient"
    t.float   "MV_Heart_Rate"
    t.float   "MV_Open_Time"
    t.float   "MV_Left_Diastolic_Pre"
    t.float   "MV_Left_Systolic_Pre"
    t.float   "MV_Right_Diastolic_Pre"
    t.float   "MV_Right_Systolic_Pre"
    t.float   "O2_Consumption_Measured"
    t.float   "O2_Consumption_Predicted"
    t.float   "Pulmonary_AV_O2_Diff"
    t.float   "PV_Area"
    t.float   "PV_Area_Index"
    t.float   "PV_Flow"
    t.float   "PV_Gradient"
    t.float   "PV_Heart_Rate"
    t.float   "PV_Open_Time"
    t.float   "PV_SEP"
    t.float   "PV_Left_Diastolic_Pre"
    t.float   "PV_Left_Systolic_Pre"
    t.float   "PulmVasc_Resistance_Index"
    t.float   "PulmVasc_Resistance"
    t.float   "PV_Right_Diastolic_Pre"
    t.float   "PV_Right_Systolic_Pre"
    t.float   "RV_Stroke_Work"
    t.float   "RV_Stroke_Work_Index"
    t.float   "SV_Resistance"
    t.float   "SV_Resistance_Index"
    t.float   "TPR"
    t.float   "TPR_Index"
    t.float   "TV_Area"
    t.float   "TV_Area_Index"
    t.float   "TV_Flow"
    t.float   "TV_Gradient"
    t.float   "TV_Heart_Rate"
    t.float   "TV_Open_Time"
    t.float   "TV_SEP"
    t.float   "TV_Left_Diastolic_Pre"
    t.float   "TV_Left_Systolic_Pre"
    t.float   "TV_Right_Diastolic_Pre"
    t.float   "TV_Right_Systolic_Pre"
    t.float   "TVR"
    t.float   "TVR_Index"
    t.real    "Dynes_PulmVasc_Resistance"
    t.real    "Dynes_SV_Resistance"
    t.real    "Dynes_TPR"
    t.real    "Dynes_TVR"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "History_Cardiac", primary_key: "SS_Event_History_ID", force: :cascade do |t|
    t.varchar    "ChestPainStatus",            limit: 25
    t.varchar    "AnginaCurrenttype",          limit: 20
    t.varchar    "CCS",                        limit: 10
    t.varchar    "AnginaWithin24Hrs",          limit: 40
    t.varchar    "MIPriorNum",                 limit: 5
    t.varchar    "MIPriorType",                limit: 20
    t.varchar    "MIPriorStatus",              limit: 35
    t.varchar    "MIPriorLyticAgent",          limit: 30
    t.varchar    "MICurrentOnsetTiming",       limit: 30
    t.datetime   "DateOfMICurrent"
    t.datetime   "TimeOfMICurrent"
    t.float      "MICurrentHrstoInterv"
    t.varchar    "MICurrentType",              limit: 20
    t.datetime   "DateOfThrombolysis"
    t.datetime   "TimeThrombolysis"
    t.varchar    "ThrombolysisMITiming",       limit: 20
    t.varchar    "ThrombolyticAgent",          limit: 50
    t.varchar    "NYHA",                       limit: 10
    t.varchar    "CHFSeverity",                limit: 10
    t.varchar    "CHFSymptoms",                limit: 255
    t.varchar    "CHFPattern",                 limit: 20
    t.varchar    "AtrialFibType",              limit: 10
    t.varchar    "AVBlockType",                limit: 10
    t.varchar    "CompHeartBlockType",         limit: 10
    t.varchar    "VentTachyType",              limit: 50
    t.text_basic "ArrhythmiaOther",            limit: 2147483647
    t.varchar    "PacemakerType",              limit: 30
    t.datetime   "DateOfPacemaker"
    t.varchar    "ICDMethodImplant",           limit: 15
    t.datetime   "DateOfICDImplant"
    t.varchar    "ICDComments",                limit: 255
    t.varchar    "ValveStenosisAortic",        limit: 20
    t.varchar    "ValveStenosisMitral",        limit: 10
    t.varchar    "ValveStenosisPulmonic",      limit: 10
    t.varchar    "ValveStenosisTricuspid",     limit: 10
    t.varchar    "ValveInsufAortic",           limit: 10
    t.varchar    "ValveInsufMitral",           limit: 10
    t.varchar    "ValveInsufPulmonic",         limit: 10
    t.varchar    "ValveInsufTricuspid",        limit: 10
    t.varchar    "InfectEndoTiming",           limit: 50
    t.varchar    "InfectEndoOrganism",         limit: 30
    t.varchar    "BleedingHistType",           limit: 20
    t.text_basic "OtherNonCoronaryDisease",    limit: 2147483647
    t.varchar    "CardiogenicShock2",          limit: 40
    t.varchar    "OtherDesc",                  limit: 40
    t.float      "LVEF"
    t.datetime   "DateOfLVEF"
    t.varchar    "LVEFMethod",                 limit: 20
    t.datetime   "DateOfETT"
    t.varchar    "ETTResults",                 limit: 20
    t.varchar    "ETTIschemia",                limit: 20
    t.datetime   "DateOfStressNuclear"
    t.varchar    "StressNuclearExercise",      limit: 20
    t.datetime   "DateOfStressEcho"
    t.varchar    "StressEchoExercise",         limit: 50
    t.datetime   "DateOfRecentCVIntervention"
    t.varchar    "PriorCABNum",                limit: 12
    t.varchar    "AnginaPriorType",            limit: 50
    t.text_basic "OtherHeartDiseaseComments",  limit: 2147483647
    t.text_basic "Summary",                    limit: 2147483647
    t.datetime   "DateOfPriorMI"
    t.datetime   "RestingEchoDate"
    t.varchar    "LVFindings",                 limit: 10
    t.varchar    "MitralValveFindings",        limit: 10
    t.varchar    "PericardiumFindings",        limit: 10
    t.varchar    "AorticRootFindings",         limit: 10
    t.varchar    "SummaryFindings",            limit: 10
    t.integer    "EvidenceOfIschemia",         limit: 2
    t.integer    "HypertensionTherapy",        limit: 2
    t.integer    "CADPtHistory",               limit: 2
    t.integer    "CADFamHistory",              limit: 2
    t.integer    "Marfan",                     limit: 2
    t.integer    "Rheumatic",                  limit: 2
    t.integer    "DiabetesYesNo",              limit: 2
    t.integer    "AnginaCurrentCresc",         limit: 2
    t.integer    "AnginaCurrentPostInfarct",   limit: 2
    t.integer    "MICurrent",                  limit: 2
    t.integer    "MIPriorAnterior",            limit: 2
    t.integer    "MIPriorLateral",             limit: 2
    t.integer    "MIPriorPosterior",           limit: 2
    t.integer    "MIPriorLytic",               limit: 2
    t.integer    "MICurrentAnterior",          limit: 2
    t.integer    "MICurrentLateral",           limit: 2
    t.integer    "MICurrentPosterior",         limit: 2
    t.integer    "IABP",                       limit: 2
    t.integer    "Thrombolysis",               limit: 2
    t.integer    "CHF",                        limit: 2
    t.integer    "CHFPriorHosp",               limit: 2
    t.integer    "Arrhythmia",                 limit: 2
    t.integer    "AVBlock",                    limit: 2
    t.integer    "CompHeartBlock",             limit: 2
    t.integer    "VentTachy",                  limit: 2
    t.integer    "VentTachySustained",         limit: 2
    t.integer    "Asystole",                   limit: 2
    t.integer    "ImplantableDevices",         limit: 2
    t.integer    "ICD",                        limit: 2
    t.integer    "ValvularAbnorm",             limit: 2
    t.integer    "Cardiomegaly",               limit: 2
    t.integer    "InfectEndocarditis",         limit: 2
    t.integer    "OtherHeartDisease",          limit: 2
    t.integer    "AIDS",                       limit: 2
    t.integer    "Gout",                       limit: 2
    t.integer    "MechanicalAssist",           limit: 2
    t.integer    "AssistUnstableAngina",       limit: 2
    t.integer    "AssistProphylactic",         limit: 2
    t.integer    "Resuscitation",              limit: 2
    t.integer    "StressNuclearInotropes",     limit: 2
    t.integer    "StressEchoInotropes",        limit: 2
    t.integer    "StressECGInotropes",         limit: 2
    t.integer    "PreviousCVIntervention",     limit: 2
    t.integer    "AnginaPrior",                limit: 2
    t.integer    "AnginaPriorCrescendo",       limit: 2
    t.integer    "Hypertension",               limit: 2
    t.integer    "CADMultVessel",              limit: 2
    t.integer    "PeriVascDisease",            limit: 2
    t.integer    "Scarlet",                    limit: 2
    t.integer    "AnginaCurrent",              limit: 2
    t.integer    "AnginaCurrentNoc",           limit: 2
    t.integer    "MIPrior",                    limit: 2
    t.integer    "MIPriorInferior",            limit: 2
    t.integer    "MICurrentInferior",          limit: 2
    t.integer    "CardiogenicShock",           limit: 2
    t.integer    "CHFPriorTherapy",            limit: 2
    t.integer    "AtrialFib",                  limit: 2
    t.integer    "VentFib",                    limit: 2
    t.integer    "Pacemaker",                  limit: 2
    t.integer    "HIV",                        limit: 2
    t.integer    "SyncopePreSyncope",          limit: 2
    t.integer    "AssistLowOutput",            limit: 2
    t.integer    "AssistOther",                limit: 2
    t.integer    "StressNuclearVasodilators",  limit: 2
    t.integer    "StressEchoVasodilators",     limit: 2
    t.integer    "StressECGVasodilators",      limit: 2
    t.integer    "AnginaPriorNoc",             limit: 2
    t.integer    "SigNonCardiacDis",           limit: 2
    t.integer    "RheumaticHeartDisease",      limit: 2
    t.integer    "RefuseBlood",                limit: 2
    t.integer    "ImmunosupressiveRx",         limit: 2
    t.integer    "LiverHepatitisCholangitis",  limit: 2
    t.integer    "ThoracicHiatusHernia",       limit: 2
    t.integer    "ThoracicLyeStricture",       limit: 2
    t.integer    "ThoracicBarrettsEpithelium", limit: 2
    t.integer    "CongenDigeorge",             limit: 2
    t.integer    "SignsSxPreOpECMO",           limit: 2
    t.integer    "SignsSxAcidosis",            limit: 2
    t.integer    "SignsSxFailToThrive",        limit: 2
    t.integer    "SignsSxOther",               limit: 2
    t.integer    "Downs",                      limit: 2
    t.integer    "MIPriorSeptal",              limit: 2
    t.integer    "MICurrentSeptal",            limit: 2
    t.integer    "BleedingHist",               limit: 2
    t.integer    "AssistShock",                limit: 2
    t.integer    "AnginaPriorPostInfarct",     limit: 2
    t.integer    "CVDisease",                  limit: 2
    t.integer    "Pressors",                   limit: 2
    t.integer    "OtherCoronaryResuscitation", limit: 2
    t.integer    "ChronicSteroidUse",          limit: 2
    t.integer    "ThoracicRefluxEsophagitis",  limit: 2
    t.integer    "CongenOtherChromosome",      limit: 2
    t.integer    "SignsSxAsymptomatic",        limit: 2
    t.integer    "SignsSxShock",               limit: 2
    t.integer    "Immunosupression",           limit: 2
    t.integer    "ThoracicAchalasia",          limit: 2
    t.integer    "SignsSxPreOpMech",           limit: 2
    t.integer    "CNS",                        limit: 2
    t.integer    "ChronicLungDisease",         limit: 2
    t.varchar    "RemoteMITiming",             limit: 25
    t.integer    "PulmonaryPolycythemia",      limit: 2
    t.integer    "PulmHypertension",           limit: 2
    t.integer    "CardiomyopathyYN",           limit: 2
    t.integer    "OtherCardiogenicShock",      limit: 2
    t.integer    "OtherDiseaseAsplenia",       limit: 2
    t.integer    "OtherBleedingDisorder",      limit: 2
  end

  create_table "History_Extension", primary_key: "SS_Event_History_ID", force: :cascade do |t|
  end

  create_table "History_PriorCardiac", primary_key: "SS_History_PriorCard_ID", force: :cascade do |t|
    t.integer    "SS_Event_History_ID",                     null: false
    t.varchar    "TypeofSurgery",        limit: 50
    t.datetime   "DateofSurgery"
    t.float      "NumPriorSurgery"
    t.text_basic "SurgeryDescription",   limit: 2147483647
    t.text_basic "SurgeryComplications", limit: 2147483647
    t.index ["SS_Event_History_ID"], name: "SS_Event_History_ID"
  end

  create_table "Interventional_Devices", primary_key: "SS_Device_ID", force: :cascade do |t|
    t.integer    "SS_Lesion_ID",                          null: false
    t.varchar    "Device_Name",        limit: 255
    t.varchar    "Device_Size",        limit: 15
    t.float      "Pre_Stenosis"
    t.float      "Post_Stenosis"
    t.varchar    "Comment",            limit: 50
    t.varchar    "Device_Type",        limit: 40
    t.varchar    "Sequence",           limit: 10
    t.varchar    "DeviceSequence",     limit: 35
    t.text_basic "SSVascularData",     limit: 2147483647
    t.float      "MinPressure"
    t.float      "MaxPressure"
    t.varchar    "Serial_Number",      limit: 50
    t.integer    "Inflations",         limit: 2
    t.integer    "NewSequence",        limit: 2
    t.varchar    "ACCDeviceName",      limit: 255
    t.integer    "ACCICDeviceID",      limit: 2
    t.varchar    "DimensionsRequired", limit: 1
    t.real       "DeviceDiameter"
    t.real       "DeviceLength"
    t.varchar    "DeviceIDGuid",       limit: 50
    t.index ["SS_Lesion_ID"], name: "SS_Lesion_ID"
  end

  create_table "InvSupplyItems", primary_key: "SS_Item_ID", force: :cascade do |t|
    t.integer    "SS_Parent_ID"
    t.varchar    "Item",            limit: 255
    t.varchar    "Vendor",          limit: 255
    t.varchar    "Hospital_Number", limit: 40
    t.varchar    "Item_Group",      limit: 255
    t.varchar    "SubGroup",        limit: 255
    t.money      "Cost",                               precision: 19, scale: 4
    t.money      "Charge",                             precision: 19, scale: 4
    t.text_basic "Notes",           limit: 2147483647
    t.varchar    "BarCode",         limit: 80
    t.varchar    "SourceID",        limit: 50
    t.real       "DeviceLength"
    t.real       "DeviceDiameter"
    t.varchar    "SourceTable",     limit: 50
    t.varchar    "SourceField",     limit: 50
    t.varchar    "ICDeviceID",      limit: 50
    t.index ["ICDeviceID"], name: "ICDeviceID"
    t.index ["Item"], name: "Item"
    t.index ["SourceID"], name: "SourceID"
    t.index ["Vendor"], name: "Vendor"
  end

  create_table "LUProcedureList", primary_key: "SSID", force: :cascade do |t|
    t.varchar "ProcedureName",              limit: 255
    t.varchar "ProcedureType",              limit: 50
    t.integer "Sequence"
    t.varchar "PicklistNotes",              limit: 250
    t.varchar "ParentProcedureName",        limit: 50
    t.varchar "ProcedureNameID",            limit: 50
    t.varchar "DiagnosticOrInterventional", limit: 20
    t.index ["ProcedureName"], name: "ProcedureName", unique: true
    t.index ["ProcedureNameID"], name: "ProcedureNameID", unique: true
  end

  create_table "LU_ACCPCI_Devices", primary_key: "LU_ACC_ICDevices_ID", force: :cascade do |t|
    t.datetime "EffectiveDate"
    t.datetime "ExpirationDate"
    t.integer  "ICDeviceID",     limit: 2
    t.varchar  "ICDeviceName",   limit: 255
    t.varchar  "ICDevMfr",       limit: 100
    t.varchar  "ICDevDimenReq",  limit: 10
    t.varchar  "ICDevType",      limit: 50
    t.datetime "TimeOfUpdate"
    t.index ["ICDeviceID"], name: "ICDeviceID"
  end

  create_table "LU_ACCVesselSeg", primary_key: "ACCVesselNumber", id: :varchar, limit: 5, force: :cascade do |t|
    t.varchar "ACCVesselSegmentName", limit: 200
    t.varchar "VesselType",           limit: 50
    t.integer "SortOrder",            limit: 2
    t.integer "LU_ACCVesselSeg_ID",               null: false
    t.varchar "ParentVesselName",     limit: 50
    t.index ["LU_ACCVesselSeg_ID"], name: "LU_ACCVesselSeg_ID"
  end

  create_table "LU_CPT_Codes", primary_key: "LU_CPT_ID", force: :cascade do |t|
    t.varchar "CPTCode",           limit: 20,                           null: false
    t.varchar "CPTDesc",           limit: 255
    t.money   "CPTCost",                       precision: 19, scale: 4
    t.varchar "ProcedureName",     limit: 50
    t.varchar "CPTDefinition",     limit: 255
    t.varchar "ProcedureSpecific", limit: 100
    t.index ["CPTCode", "ProcedureName", "ProcedureSpecific"], name: "UniqueKey", unique: true
  end

  create_table "LU_CPT_Codes_PVD", primary_key: "LU_CPT_ID", force: :cascade do |t|
    t.varchar "CPTCode",           limit: 20
    t.varchar "CPTDesc",           limit: 255
    t.money   "CPTCost",                       precision: 19, scale: 4
    t.varchar "ProcedureName",     limit: 50
    t.varchar "CPTDefinition",     limit: 255
    t.varchar "ProcedureSpecific", limit: 100
    t.varchar "ProcedureType",     limit: 100
    t.varchar "ProcedureModifier", limit: 50
    t.index ["CPTCode", "ProcedureType", "ProcedureModifier"], name: "UniqueKey", unique: true
  end

  create_table "LU_CathProcedures", primary_key: "LU_CathProcedures_ID", force: :cascade do |t|
    t.varchar "ProcedureName", limit: 255
    t.varchar "ProcedureType", limit: 50
  end

  create_table "LU_EchoStress_Protocol", primary_key: "LU_EchoStress_Protocol_lID", force: :cascade do |t|
    t.varchar "Protocol",        limit: 25
    t.varchar "Stage",           limit: 10
    t.varchar "EchoStressSpeed", limit: 50
    t.integer "Grade",           limit: 2
    t.integer "StageTime",       limit: 2
    t.float   "METS"
  end

  create_table "LU_ElementMapping", primary_key: "LU_ElementMapping_ID", force: :cascade do |t|
    t.varchar "SourceTableName", limit: 255
    t.varchar "SourceFieldName", limit: 255
    t.varchar "SourceValue",     limit: 255
    t.varchar "TargetValue",     limit: 255
  end

  create_table "LU_FindingsDescription", primary_key: "SS_LU_FindingsDescription_ID", force: :cascade do |t|
    t.varchar "Description",  limit: 50
    t.varchar "Diagram",      limit: 100
    t.varchar "VascularType", limit: 50
    t.varchar "Module",       limit: 50
    t.integer "ElementOrder", limit: 2
    t.index ["Description", "Diagram", "VascularType", "Module"], name: "Uique", unique: true
  end

  create_table "LU_FindingsType", primary_key: "SS_LU_FindingsType_ID", force: :cascade do |t|
    t.varchar "VesselType",   limit: 50
    t.varchar "Diagram",      limit: 100
    t.varchar "VascularType", limit: 50
    t.varchar "Module",       limit: 50
    t.integer "ElementOrder", limit: 2
  end

  create_table "LU_Hospital_Location", primary_key: "HospitalID", force: :cascade do |t|
    t.varchar "SequenceNumber",  limit: 50
    t.varchar "Hospital",        limit: 150
    t.varchar "HospitalZipCode", limit: 25
    t.varchar "HospitalState",   limit: 50
    t.varchar "HospitalNPI",     limit: 50
    t.varchar "HospitalAHACode", limit: 50
    t.varchar "HospitalType",    limit: 50
    t.varchar "EchoLocation",    limit: 255
    t.varchar "SiteName",        limit: 255
    t.varchar "Address1",        limit: 255
    t.varchar "Address2",        limit: 255
    t.varchar "City",            limit: 50
    t.varchar "State",           limit: 50
    t.varchar "Zip",             limit: 50
    t.varchar "Phone",           limit: 50
    t.varchar "Fax",             limit: 50
    t.varchar "Location",        limit: 255
    t.index ["Hospital", "HospitalNPI"], name: "UniqueHospital"
  end

  create_table "LU_ICD9_Codes", primary_key: "ICD_ID", force: :cascade do |t|
    t.varchar "ICD9Code",          limit: 20,  null: false
    t.varchar "Diagnosis",         limit: 255
    t.varchar "ProcedureName",     limit: 255
    t.varchar "ICD9Definition",    limit: 255
    t.varchar "ProcedureSpecific", limit: 255
    t.varchar "LongDescription",   limit: 255
    t.varchar "Version",           limit: 50
    t.index ["ICD9Code", "ProcedureName", "ProcedureSpecific"], name: "UniqueKey", unique: true
  end

  create_table "LU_InvSupplyItems", primary_key: "SS_Item_ID", force: :cascade do |t|
    t.integer    "SS_Parent_ID"
    t.varchar    "Item",            limit: 255
    t.varchar    "Vendor",          limit: 255
    t.varchar    "Hospital_Number", limit: 40
    t.varchar    "Item_Group",      limit: 255
    t.varchar    "SubGroup",        limit: 40
    t.money      "Cost",                               precision: 19, scale: 4
    t.money      "Charge",                             precision: 19, scale: 4
    t.text_basic "Notes",           limit: 2147483647
    t.varchar    "Barcode",         limit: 80
    t.varchar    "SourceID",        limit: 50
    t.real       "DeviceLength"
    t.real       "DeviceDiameter"
    t.varchar    "SourceTable",     limit: 50
    t.varchar    "SourceField",     limit: 50
    t.varchar    "ICDeviceID",      limit: 50
    t.index ["Barcode"], name: "Barcode"
    t.index ["ICDeviceID"], name: "ICDeviceID"
    t.index ["Item"], name: "Item"
    t.index ["SS_Parent_ID"], name: "SS_Parent_ID"
    t.index ["SourceID"], name: "SourceID"
    t.index ["Vendor"], name: "Vendor"
  end

  create_table "LU_NuclearRE_Protocols", primary_key: "LU_NuclearRE_Protocols_ID", force: :cascade do |t|
    t.varchar "ProtocolTab", limit: 50
    t.varchar "Protocol",    limit: 50
    t.varchar "Stage",       limit: 50
    t.float   "Speed"
    t.float   "Grade"
    t.float   "PTime"
    t.float   "METS"
    t.index ["LU_NuclearRE_Protocols_ID"], name: "LU_NuclearRE_Protocols_ID"
  end

  create_table "LU_PVDPriorInterventions", primary_key: ["Category", "Intervention"], force: :cascade do |t|
    t.varchar "Category",     limit: 50,  null: false
    t.varchar "Intervention", limit: 100, null: false
    t.integer "Sequence",     limit: 2
  end

  create_table "LU_PVD_GraftsBypass", primary_key: ["Location1", "Location2", "PreviousBypass"], force: :cascade do |t|
    t.varchar "Location1",      limit: 50, null: false
    t.varchar "Location2",      limit: 50, null: false
    t.varchar "PreviousBypass", limit: 50, null: false
    t.index ["Location1", "Location2", "PreviousBypass"], name: "UniqueKey", unique: true
  end

  create_table "LU_PVD_GraftsMaterial", primary_key: ["Manufacturer", "BrandName", "Material"], force: :cascade do |t|
    t.varchar "Manufacturer", limit: 50, null: false
    t.varchar "BrandName",    limit: 50, null: false
    t.varchar "Material",     limit: 50, null: false
    t.index ["Manufacturer", "BrandName", "Material"], name: "UniqueKey", unique: true
  end

  create_table "LU_PVD_History", primary_key: ["Exam", "Description"], force: :cascade do |t|
    t.varchar "Exam",        limit: 255, null: false
    t.varchar "Description", limit: 255, null: false
    t.index ["Exam", "Description"], name: "Unique_Key", unique: true
  end

  create_table "LU_PVD_VesselLookup", primary_key: ["Category", "Vessel"], force: :cascade do |t|
    t.varchar "Category", limit: 50, null: false
    t.varchar "Vessel",   limit: 50, null: false
    t.float   "Sequence"
  end

  create_table "LU_ProcedureNameMap", primary_key: ["EventTable", "StandardName", "LocalName"], force: :cascade do |t|
    t.varchar "EventTable",   limit: 50, null: false
    t.varchar "StandardName", limit: 50, null: false
    t.varchar "LocalName",    limit: 50, null: false
    t.integer "Sequence"
  end

  create_table "LU_SRCodeValues", primary_key: "SSSRCodeValueID", force: :cascade do |t|
    t.varchar "ImageMode",   limit: 50
    t.varchar "CodeValue",   limit: 50
    t.varchar "CodeMeaning", limit: 255
    t.varchar "XmlID",       limit: 50
    t.index ["CodeMeaning"], name: "CodeMeaning"
    t.index ["CodeValue"], name: "CodeValue"
    t.index ["ImageMode", "CodeMeaning", "XmlID"], name: "NewIDX", unique: true
    t.index ["SSSRCodeValueID"], name: "SSSRCodeValueID"
    t.index ["XmlID"], name: "XmlID"
  end

  create_table "LU_WallMotion", primary_key: "LU_WallMotion_ID", force: :cascade do |t|
    t.varchar "Module",         limit: 255
    t.varchar "ProcedureType",  limit: 255
    t.varchar "ScoringModel",   limit: 255
    t.varchar "DiagramControl", limit: 255
  end

  create_table "LU_ZipCode", primary_key: "ZipCode", id: :varchar, limit: 5, force: :cascade do |t|
    t.varchar "City",    limit: 25
    t.varchar "State",   limit: 2
    t.varchar "Country", limit: 20
  end

  create_table "Lab_Results", primary_key: "SS_Lab_Results_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Test",            limit: 50
    t.varchar    "Test_Result",     limit: 30
    t.varchar    "Result_Units",    limit: 20
    t.datetime   "Test_Date"
    t.datetime   "Test_Time"
    t.integer    "WNL",             limit: 2
    t.varchar    "Test_Type",       limit: 50
    t.text_basic "Test_Comment",    limit: 2147483647
    t.varchar    "Specimen_Source", limit: 30
    t.varchar    "Reference_Range", limit: 30
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "Lesion_Extension", primary_key: "SS_Lesion_ID", force: :cascade do |t|
  end

  create_table "Lesions", primary_key: "SS_Lesion_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                               null: false
    t.varchar    "SegmentType",                 limit: 40
    t.varchar    "VesselSegment",               limit: 80
    t.varchar    "LocationWithinSegment",       limit: 40
    t.integer    "PreStenosis",                 limit: 2
    t.integer    "PostStenosis",                limit: 2
    t.varchar    "LesionLengthDesc",            limit: 50
    t.varchar    "LesionTypeABC",               limit: 10
    t.varchar    "Morphology",                  limit: 40
    t.varchar    "Calcification",               limit: 40
    t.integer    "Luminal_Irregularities",      limit: 2
    t.integer    "Restenosis",                  limit: 2
    t.integer    "Aneurysm",                    limit: 2
    t.varchar    "Angulation",                  limit: 40
    t.varchar    "PreThrombus",                 limit: 50
    t.varchar    "PostThrombus",                limit: 50
    t.varchar    "PreTIMIFlow",                 limit: 40
    t.varchar    "PostTIMIFlow",                limit: 40
    t.varchar    "DissectionClass",             limit: 50
    t.varchar    "Failure",                     limit: 65
    t.integer    "Loss_of_Side_Branch",         limit: 2
    t.text_basic "Notes",                       limit: 2147483647
    t.integer    "Number_of_Inflations",        limit: 2
    t.float      "Maximum_Duration"
    t.integer    "Abrupt_Closure_Out_of_Lab",   limit: 2
    t.integer    "Vascular_Perforation",        limit: 2
    t.varchar    "LesionShape",                 limit: 50
    t.real       "ButtonX"
    t.real       "ButtonY"
    t.float      "Maximum_Pressure"
    t.varchar    "Accessibility",               limit: 50
    t.varchar    "SideBranch",                  limit: 50
    t.varchar    "DistalDisease",               limit: 35
    t.varchar    "Result",                      limit: 15
    t.varchar    "AbruptClosure",               limit: 20
    t.varchar    "Stent",                       limit: 25
    t.integer    "StentsNumber",                limit: 2
    t.integer    "StentHemi",                   limit: 2
    t.integer    "StentPressureFirst",          limit: 2
    t.integer    "StentPressureSecond",         limit: 2
    t.varchar    "StentDeployment",             limit: 25
    t.varchar    "StentDeploymentAssessed",     limit: 20
    t.varchar    "StentDislodged",              limit: 20
    t.varchar    "StentDislodgedLocation",      limit: 10
    t.varchar    "PreStenosisMethod",           limit: 25
    t.integer    "Ulcerated",                   limit: 2
    t.integer    "Bifurcation",                 limit: 2
    t.integer    "Diffuse_Disease",             limit: 2
    t.integer    "Culprit",                     limit: 2
    t.integer    "Delayed_Occlusion",           limit: 2
    t.integer    "Spasm",                       limit: 2
    t.integer    "Abrupt_Closure_In_Lab",       limit: 2
    t.integer    "No_Reflow",                   limit: 2
    t.integer    "Intervention",                limit: 2
    t.integer    "AbruptClosureReopened",       limit: 2
    t.integer    "StentsOverlapping",           limit: 2
    t.integer    "PrevDilatedLesion",           limit: 2
    t.text_basic "SSVascularData",              limit: 2147483647
    t.integer    "Length",                      limit: 2
    t.varchar    "BifurcationArtery",           limit: 80
    t.real       "VesselDiameter"
    t.varchar    "TotalOcclusion",              limit: 75
    t.integer    "FriableLesions",              limit: 2
    t.varchar    "Collaterals",                 limit: 15
    t.varchar    "SSGUID",                      limit: 36
    t.varchar    "SSBifurcationGUID",           limit: 36
    t.varchar    "LesionDescription",           limit: 100
    t.varchar    "ACCPrevDilatedLesion",        limit: 50
    t.varchar    "ACCLesionInGraft",            limit: 15
    t.integer    "PrevTreatBalloon",            limit: 2
    t.integer    "PrevTreatRadiation",          limit: 2
    t.integer    "PrevTreatOtherUnk",           limit: 2
    t.integer    "PrevTreatDateKnown",          limit: 2
    t.datetime   "PrevTreatDate"
    t.varchar    "ACCAbruptReopened",           limit: 15
    t.integer    "ACCDissection",               limit: 2
    t.varchar    "LesCrossWithWire",            limit: 13
    t.varchar    "DistalVesselDescription",     limit: 250
    t.varchar    "Complications",               limit: 25
    t.varchar    "LocationWithInNativeSegment", limit: 40
    t.varchar    "CalloutComments",             limit: 255
    t.integer    "ThrombusPresent",             limit: 2
    t.integer    "PrevTreatStentYN",            limit: 2
    t.integer    "Hazy",                        limit: 2
    t.real       "IVUSPreLesionMLA"
    t.real       "IVUSPreLesionMLD"
    t.real       "IVUSPreProximalMLA"
    t.real       "IVUSPreProximalMLD"
    t.real       "IVUSPreDistalMLA"
    t.real       "IVUSPreDistalMLD"
    t.varchar    "IVUSPrePlaqueDesc",           limit: 50
    t.integer    "IVUSPreISR",                  limit: 2
    t.integer    "IVUSPreDegreeOfISR",          limit: 2
    t.integer    "IVUSPreDissection",           limit: 2
    t.real       "IVUSPostLesionMLA"
    t.real       "IVUSPostLesionMLD"
    t.real       "IVUSPostProximalMLA"
    t.real       "IVUSPostProximalMLD"
    t.real       "IVUSPostDistalMLA"
    t.real       "IVUSPostDistalMLD"
    t.varchar    "IVUSPostPlaqueDesc",          limit: 50
    t.integer    "IVUSPostISR",                 limit: 2
    t.integer    "IVUSPostDegreeOfISR",         limit: 2
    t.integer    "IVUSPostDissection",          limit: 2
    t.real       "FFRPre"
    t.real       "FFRPost"
    t.integer    "FFRPreAdenosineIC",           limit: 2
    t.integer    "FFRPreAdenosineIV",           limit: 2
    t.text_basic "Note",                        limit: 2147483647
    t.text_basic "AdditionalNotes",             limit: 2147483647
    t.index ["SSBifurcationGUID"], name: "SSBifurcationGUID"
    t.index ["SSGUID"], name: "SSGUID"
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Lesions_Segments", primary_key: "SS_Lesion_Segments_ID", force: :cascade do |t|
    t.integer "SS_Lesion_ID"
    t.varchar "SegmentName",  limit: 200
    t.varchar "SegmentID",    limit: 5
    t.index ["SS_Lesion_ID"], name: "SS_Lesion_ID"
    t.index ["SS_Lesion_Segments_ID"], name: "SS_Lesion_Segments_ID", unique: true
    t.index ["SegmentID"], name: "SegmentID"
  end

  create_table "MajorVesselDescription", primary_key: "SS_MajorVesselDescription_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                    null: false
    t.varchar    "VesselSegment",    limit: 150
    t.varchar    "Size",             limit: 40
    t.varchar    "Disease",          limit: 40
    t.varchar    "Calcification",    limit: 40
    t.varchar    "Tortuous",         limit: 40
    t.varchar    "Collaterals",      limit: 255
    t.integer    "PreviousStent",    limit: 2
    t.varchar    "Origin",           limit: 40
    t.varchar    "Dominance",        limit: 40
    t.varchar    "Terminates",       limit: 40
    t.varchar    "Branches",         limit: 255
    t.integer    "OmitSentence",     limit: 2
    t.text_basic "MajorNotes",       limit: 2147483647
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Medications", primary_key: "SS_Medications_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.varchar    "Medication",    limit: 30
    t.float      "Dose"
    t.varchar    "Units",         limit: 12
    t.varchar    "Route",         limit: 20
    t.varchar    "Frequency",     limit: 20
    t.datetime   "Start_Date"
    t.datetime   "Stop_Date"
    t.varchar    "Indication",    limit: 50
    t.datetime   "StartTime"
    t.datetime   "StopTime"
    t.varchar    "Module",        limit: 50
    t.varchar    "ReasonForStop", limit: 50
    t.real       "TotalDose"
    t.text_basic "Comments",      limit: 2147483647
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "MinorVesselDescription", primary_key: "SS_MinorVesselDescription_ID", force: :cascade do |t|
    t.integer    "SS_Event_Cath_ID",                    null: false
    t.varchar    "VesselSegment",    limit: 150
    t.varchar    "Size",             limit: 40
    t.varchar    "Disease",          limit: 40
    t.varchar    "Calcification",    limit: 40
    t.varchar    "Tortuous",         limit: 40
    t.varchar    "Collaterals",      limit: 255
    t.integer    "PreviousStent",    limit: 2
    t.varchar    "Origin",           limit: 40
    t.varchar    "Dominance",        limit: 40
    t.varchar    "Terminates",       limit: 40
    t.varchar    "Branches",         limit: 255
    t.integer    "OmitSentence",     limit: 2
    t.text_basic "MinorNotes",       limit: 2147483647
    t.index ["SS_Event_Cath_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Mortality_Added_Cause", primary_key: "SS_Mortality_Added_Cause_ID", force: :cascade do |t|
    t.integer "SS_Event_Mortality_ID",            null: false
    t.varchar "AssociatedCondition",   limit: 50
    t.varchar "DeathCauseRank",        limit: 50
    t.index ["SS_Event_Mortality_ID"], name: "SS_Event_Mortality_ID"
  end

  create_table "Mortality_CPT_Codes", primary_key: "SS_Mortality_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Mortality_ID",             null: false
    t.varchar "CPTCode",               limit: 20
    t.varchar "CPTDesc",               limit: 255
    t.index ["CPTCode"], name: "CPTCode"
    t.index ["SS_Event_Mortality_ID"], name: "SS_Event_Mortality_ID"
  end

  create_table "Mortality_Cancer_Site", primary_key: "SS_Mortality_Cancer_Site_ID", force: :cascade do |t|
    t.integer "SS_Event_Mortality_ID",            null: false
    t.varchar "MetastaticSite",        limit: 50
    t.index ["SS_Event_Mortality_ID"], name: "SS_Event_Mortality_ID"
  end

  create_table "Mortality_Extension", primary_key: "SS_Event_Mortality_ID", force: :cascade do |t|
  end

  create_table "Mortality_ICD9_Codes", primary_key: "SS_Mortality_ICD9_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Mortality_ID",            null: false
    t.varchar "ICD9_Code",             limit: 50
    t.varchar "ICD9_Description",      limit: 50
    t.index ["ICD9_Code"], name: "ICD9_Code"
    t.index ["SS_Event_Mortality_ID"], name: "SS_Event_Mortality_ID"
  end

  create_table "Nuclear_Adv01", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.varchar  "Hospital",                 limit: 50
    t.varchar  "PtHospitalNumber",         limit: 20
    t.datetime "TimeOfScheduledStart"
    t.real     "PatientAge"
    t.real     "HeightCm"
    t.real     "HeightIn"
    t.real     "WeightKg"
    t.real     "WeightLb"
    t.real     "BSA"
    t.real     "BMI"
    t.datetime "DateOfHistory"
    t.integer  "RFCAD",                    limit: 2
    t.integer  "RFCADFamilyHx",            limit: 2
    t.varchar  "RFSmokingHx",              limit: 50
    t.integer  "RFHypercholesterolemia",   limit: 2
    t.integer  "RFDiabetes",               limit: 2
    t.integer  "RFCOPD",                   limit: 2
    t.integer  "HxAngina",                 limit: 2
    t.varchar  "HxCHFNYHAClass",           limit: 10
    t.integer  "HxArrhythmia",             limit: 2
    t.varchar  "HxArrhythmiaType",         limit: 50
    t.integer  "HxInterventionUnk",        limit: 2
    t.integer  "HxInterventionLM",         limit: 2
    t.integer  "HxInterventionLAD",        limit: 2
    t.integer  "HxInterventionCIRC",       limit: 2
    t.integer  "HxInterventionRCA",        limit: 2
    t.integer  "HxCABGUnk",                limit: 2
    t.integer  "HxCABGLAD",                limit: 2
    t.integer  "HxCABGCIRC",               limit: 2
    t.integer  "HxCABGRCA",                limit: 2
    t.integer  "HxAsthma",                 limit: 2
    t.integer  "HxGlaucoma",               limit: 2
    t.integer  "RestingStudyOnly",         limit: 2
    t.datetime "TimeOfPatientInRoom"
    t.datetime "TimeOfStressTestEnd"
    t.integer  "ECGAbnormalRhythm",        limit: 2
    t.integer  "StressTestGated",          limit: 2
    t.varchar  "RestLocation",             limit: 25
    t.datetime "TimeOfStartRest"
    t.datetime "TimeOfStopRest"
    t.real     "RestLengthOfStudy"
    t.integer  "Attenuation",              limit: 2
    t.integer  "SumStressScore",           limit: 2
    t.integer  "SumRestScore",             limit: 2
    t.integer  "SumWMScore",               limit: 2
    t.integer  "LADRestScore",             limit: 2
    t.integer  "LADStressScore",           limit: 2
    t.integer  "LADWMScore",               limit: 2
    t.varchar  "LADDescription",           limit: 50
    t.integer  "CircRestScore",            limit: 2
    t.integer  "CircStressScore",          limit: 2
    t.integer  "CircWMScore",              limit: 2
    t.varchar  "CircDescription",          limit: 50
    t.integer  "RCARestScore",             limit: 2
    t.integer  "RCAStressScore",           limit: 2
    t.integer  "RCAWMScore",               limit: 2
    t.varchar  "RCADescription",           limit: 50
    t.varchar  "FindingsImageQuality",     limit: 30
    t.varchar  "FindingsLungUptake",       limit: 50
    t.real     "FindingsHLRatio"
    t.varchar  "FindingsRVSize",           limit: 25
    t.varchar  "FindingsRVFunction",       limit: 25
    t.varchar  "FindingsLVSize",           limit: 25
    t.varchar  "FindingsLVFunction",       limit: 25
    t.integer  "FindingsWallThickening",   limit: 2
    t.integer  "FindingsTID",              limit: 2
    t.varchar  "ResearchStudy",            limit: 50
    t.integer  "TeachingCase",             limit: 2
    t.varchar  "ReportToBeSignedBy",       limit: 50
    t.varchar  "LVSizeStress",             limit: 10
    t.real     "LVVolRest"
    t.real     "LVVolStress"
    t.integer  "LVProlongedTracerTransit", limit: 2
    t.varchar  "RVSizeStress",             limit: 10
    t.real     "RVVolRest"
    t.real     "RVVolStress"
    t.integer  "RVProlongedTracerTransit", limit: 2
    t.real     "LVEFRecovery"
    t.real     "RVEFPeakStress"
    t.real     "RVEFRecovery"
    t.integer  "RVDilated",                limit: 2
    t.integer  "RVAneurysm",               limit: 2
    t.integer  "LVDilated",                limit: 2
    t.integer  "LVAneurysm",               limit: 2
    t.integer  "RADilated",                limit: 2
    t.integer  "RAAneurysm",               limit: 2
    t.integer  "LADilated",                limit: 2
    t.integer  "LAAneurysm",               limit: 2
    t.integer  "AODilated",                limit: 2
    t.integer  "AOAneurysm",               limit: 2
    t.integer  "PADilated",                limit: 2
    t.integer  "PAAneurysm",               limit: 2
    t.real     "EDV"
    t.real     "ESV"
    t.real     "SV"
    t.real     "CO"
    t.integer  "RAAntWallMotionOverall",   limit: 2
    t.integer  "RAAntBasAntStress",        limit: 2
    t.integer  "RAAntBasAntRest",          limit: 2
    t.integer  "RAAntBasAntRec",           limit: 2
    t.integer  "RAAntMidAntStress",        limit: 2
    t.integer  "RAAntMidAntRest",          limit: 2
    t.integer  "RAAntMidAntRec",           limit: 2
    t.integer  "RAAntApicalStress",        limit: 2
    t.integer  "RAAntApicalRest",          limit: 2
    t.integer  "RAAntApicalRec",           limit: 2
    t.integer  "RAAntMidInfStress",        limit: 2
    t.integer  "RAAntMidInfRest",          limit: 2
    t.integer  "RAAntMidInfRec",           limit: 2
    t.integer  "RAAntBasInfStress",        limit: 2
    t.integer  "RAAntBasInfRest",          limit: 2
    t.integer  "RAAntBasInfRec",           limit: 2
    t.integer  "RAAntLeftAntOverall",      limit: 2
    t.integer  "RAAntSeptalStress",        limit: 2
    t.integer  "RAAntSeptalRest",          limit: 2
    t.integer  "RAAntSeptalRec",           limit: 2
    t.integer  "RAAntInfsepStress",        limit: 2
    t.integer  "RAAntInfsepRest",          limit: 2
    t.integer  "RAAntInfsepRec",           limit: 2
    t.integer  "RAAntInfapStress",         limit: 2
    t.integer  "RAAntInfapRest",           limit: 2
    t.integer  "RAAntInfapRec",            limit: 2
    t.integer  "RAAntInflatStress",        limit: 2
    t.integer  "RAAntInflatRest",          limit: 2
    t.integer  "RAAntInflatRec",           limit: 2
    t.integer  "RAAntLateralStress",       limit: 2
    t.integer  "RAAntLateralRest",         limit: 2
    t.integer  "RAAntLateralRec",          limit: 2
    t.integer  "RALLWallMotionOverall",    limit: 2
    t.integer  "RALLBasAntStress",         limit: 2
    t.integer  "RALLBasAntRest",           limit: 2
    t.integer  "RALLBasAntRec",            limit: 2
    t.integer  "RALLMidAntStress",         limit: 2
    t.integer  "RALLMidAntRest",           limit: 2
    t.integer  "RALLMidAntRec",            limit: 2
    t.integer  "RALLApexStress",           limit: 2
    t.integer  "RALLApexRest",             limit: 2
    t.integer  "RALLApexRec",              limit: 2
    t.integer  "RALLMidInfStress",         limit: 2
    t.integer  "RALLMidInfRest",           limit: 2
    t.integer  "RALLMidInfRec",            limit: 2
    t.integer  "RALLBasInfStress",         limit: 2
    t.integer  "RALLBasInfRest",           limit: 2
    t.integer  "RALLBasInfRec",            limit: 2
    t.datetime "TimeOfStressTestStart"
    t.real     "LVIndexRest"
    t.real     "LVIndexStress"
    t.varchar  "AttenuationCause",         limit: 50
  end

  create_table "Nuclear_Adv02", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer    "RCARestScore_CD",               limit: 2
    t.integer    "CircRestScore_CD",              limit: 2
    t.integer    "LADRestScore_CD",               limit: 2
    t.integer    "RCAStressScore_CD",             limit: 2
    t.integer    "CircStressScore_CD",            limit: 2
    t.integer    "LADStressScore_CD",             limit: 2
    t.integer    "RCAWMScore_CD",                 limit: 2
    t.integer    "CircWMScore_CD",                limit: 2
    t.integer    "LADWMScore_CD",                 limit: 2
    t.real       "STDepressionRes"
    t.text_basic "BaselineEKGFindings",           limit: 2147483647
    t.text_basic "StressEKGFindings",             limit: 2147483647
    t.text_basic "RecoveryEKGFindings",           limit: 2147483647
    t.integer    "PtConfPreRadPharmAdmin",        limit: 2
    t.integer    "PtConfPreRadPharmAdmin2nd",     limit: 2
    t.varchar    "AcqStressPosition",             limit: 50
    t.varchar    "AcqRestPosition",               limit: 50
    t.integer    "ProcDiscussedWithPt",           limit: 2
    t.integer    "RecentPregnancyTest",           limit: 2
    t.integer    "BreastFeeding",                 limit: 2
    t.varchar    "BreastFeedingVerify",           limit: 50
    t.integer    "ConfirmExplainBreastFeed",      limit: 2
    t.text_basic "PregnancyScreeningDiscussion",  limit: 2147483647
    t.text_basic "HxNotes",                       limit: 2147483647
    t.integer    "PriorNucMedStudy",              limit: 2
    t.text_basic "PriorNucMedStudyComp",          limit: 2147483647
    t.integer    "StudyMeetsGuidelines",          limit: 2
    t.integer    "PtWithinChildBearingYears",     limit: 2
    t.integer    "PossibilityOfPregnancy",        limit: 2
    t.datetime   "DateOfPregnancyTest"
    t.varchar    "PregnancyTestResults",          limit: 100
    t.datetime   "DateofPrevNuc"
    t.datetime   "DateofPrevECG"
    t.datetime   "DateofPrevEcho"
    t.integer    "PriorCathStudy",                limit: 2
    t.integer    "PriorEchoStudy",                limit: 2
    t.integer    "PriorECGStudy",                 limit: 2
    t.float      "PriorNucRestingEF"
    t.float      "PriorNucStressEF"
    t.float      "PriorCathLVEF"
    t.text_basic "PriorEchoConclusions",          limit: 2147483647
    t.text_basic "PriorCathConclusions",          limit: 2147483647
    t.text_basic "PriorECGConclusions",           limit: 2147483647
    t.float      "PrevEchoLVEFMMode"
    t.float      "PrevEchoLVEF2D"
    t.varchar    "InterpretingGroup",             limit: 50
    t.varchar    "Protocol",                      limit: 50
    t.float      "Predicted85Percent"
    t.varchar    "ReturnToNml",                   limit: 50
    t.integer    "WorseBeforeNml",                limit: 2
    t.float      "STR_DukeScore"
    t.varchar    "STR_DukeRisk",                  limit: 25
    t.varchar    "ExerciseCapacity",              limit: 25
    t.varchar    "BPResponseToStress",            limit: 25
    t.varchar    "HRResponseToStress",            limit: 25
    t.text_basic "ECGInterpComments",             limit: 2147483647
    t.varchar    "TID",                           limit: 50
    t.integer    "TIDOverestimated",              limit: 2
    t.float      "TIDRatio"
    t.float      "EDVCorrectedBSA"
    t.float      "ESVCorrectedBSA"
    t.varchar    "AsyncSeptalContraction",        limit: 50
    t.varchar    "RVFunction",                    limit: 25
    t.integer    "NuclearSeparateCover",          limit: 2
    t.integer    "ECGSeparateCover",              limit: 2
    t.varchar    "Perfusion",                     limit: 50
    t.float      "SummedStressScore"
    t.varchar    "SummedStressScoreRange",        limit: 25
    t.varchar    "Ischemia",                      limit: 75
    t.varchar    "Recommendations",               limit: 50
    t.varchar    "ResultsDiscussed",              limit: 200
    t.varchar    "NonDiagnositicStressECG",       limit: 50
    t.integer    "AbnormalECG",                   limit: 2
    t.integer    "UninterpretableStressECG",      limit: 2
    t.integer    "NoProArrhythmia",               limit: 2
    t.integer    "ChestPain",                     limit: 2
    t.integer    "IncreasedChestPain",            limit: 2
    t.integer    "AtypicalChestPain",             limit: 2
    t.integer    "NoChangeChestPain",             limit: 2
    t.integer    "Angina",                        limit: 2
    t.integer    "Dyspnea",                       limit: 2
    t.integer    "Fatigue",                       limit: 2
    t.integer    "Flushing",                      limit: 2
    t.integer    "Dizziness",                     limit: 2
    t.integer    "Claudication",                  limit: 2
    t.varchar    "ComparisonStudy",               limit: 200
    t.varchar    "Technique",                     limit: 255
    t.varchar    "PostInjectionScanTime",         limit: 25
    t.varchar    "ViabilityRepeatImaging",        limit: 25
    t.datetime   "StressInjectionDate"
    t.varchar    "PostStressScanTime",            limit: 25
    t.varchar    "ImagingStudyQualityTech",       limit: 75
    t.varchar    "ScanArtifacts",                 limit: 75
    t.varchar    "MotionCorrection",              limit: 25
    t.float      "BestSeptalView"
    t.float      "TC99Dose"
    t.text_basic "ReportFindings",                limit: 2147483647
    t.datetime   "RestInjectionDate"
    t.varchar    "LowLevelExercise",              limit: 50
    t.varchar    "TPPharmAgent",                  limit: 50
    t.varchar    "InabilityToExercise",           limit: 100
    t.integer    "TtlStressMinutes",              limit: 2
    t.integer    "TtlStressSeconds",              limit: 2
    t.varchar    "TerminatedStage",               limit: 25
    t.integer    "RatePressureProduct",           limit: 2
    t.float      "MaxDobutamineDose"
    t.float      "MaxAtropineDose"
    t.float      "MaxMetoprololDose"
    t.varchar    "BetaBlockersHeldGiven",         limit: 25
    t.varchar    "ReasonInfusionStopped",         limit: 50
    t.varchar    "PharmProtocol",                 limit: 50
    t.varchar    "Hospital",                      limit: 150
    t.integer    "ShowDiagrams",                  limit: 2
    t.text_basic "BaselineECGComments",           limit: 2147483647
    t.float      "RadioIsotopeInjectedHR"
    t.integer    "MaxSTDeviation_DTS",            limit: 2
    t.varchar    "AnginaIndex_DTS",               limit: 35
    t.float      "ReturntoNmlMin"
    t.varchar    "ImagingStudyQualityMD",         limit: 75
    t.varchar    "ScanArtifactsMD",               limit: 75
    t.float      "ViabilityDose"
    t.integer    "CTAttenuation",                 limit: 2
    t.float      "MedInsulin"
    t.float      "MedGlucose"
    t.integer    "DurationOfAnginaSec",           limit: 2
    t.integer    "DurationOfAnginaMin",           limit: 2
    t.varchar    "SeverityOfAngina",              limit: 10
    t.integer    "RescanDoneRest",                limit: 2
    t.integer    "RescanDoneStress",              limit: 2
    t.float      "EF"
    t.text_basic "TechImagingProtocol_Comments",  limit: 2147483647
    t.integer    "HRAt1MinRec",                   limit: 2
    t.integer    "HRDrop",                        limit: 2
    t.varchar    "HeartRateRecovery",             limit: 10
    t.text_basic "AdenosineRegadenosonComments",  limit: 2147483647
    t.text_basic "DobutamineComments",            limit: 2147483647
    t.text_basic "ExerciseProtocolComments",      limit: 2147483647
    t.text_basic "PETProtocolComments",           limit: 2147483647
    t.varchar    "PETFastingState",               limit: 30
    t.varchar    "ExerciseProtocol",              limit: 50
    t.varchar    "TestInfoReasonForEnding",       limit: 100
    t.text_basic "TIDComments",                   limit: 2147483647
    t.varchar    "RVUptake",                      limit: 30
    t.varchar    "FindingsLungUptake",            limit: 35
    t.text_basic "PerfusionComments",             limit: 2147483647
    t.text_basic "FunctionComments",              limit: 2147483647
    t.integer    "GatingDataRest",                limit: 2
    t.integer    "GatingDataStress",              limit: 2
    t.text_basic "PET_Comments",                  limit: 2147483647
    t.varchar    "NucStressStage",                limit: 25
    t.integer    "Prior_NewIschemia",             limit: 2
    t.integer    "Prior_NewInfarction",           limit: 2
    t.integer    "Prior_ResOfPriorIschemia",      limit: 2
    t.integer    "Prior_WorseningOfIschemia",     limit: 2
    t.varchar    "TypeOfPriorStudy",              limit: 30
    t.text_basic "PriorStudyComments",            limit: 2147483647
    t.varchar    "TypeOfChestPain",               limit: 35
    t.varchar    "Medications",                   limit: 75
    t.text_basic "PatientInformationComments",    limit: 2147483647
    t.text_basic "StressECGComments",             limit: 2147483647
    t.text_basic "NuclearInterpretationComments", limit: 2147483647
    t.float      "PrevLVEFModSimpBiPlane"
    t.text_basic "PriorSurgicalConclusions",      limit: 2147483647
    t.datetime   "DateOfPreviousSurgery"
    t.integer    "MarkforPeerReview",             limit: 2
    t.integer    "PeerReviewDone",                limit: 2
    t.varchar    "PeerReviewAgreeDisagree",       limit: 25
    t.text_basic "PeerReviewComments",            limit: 2147483647
    t.integer    "MarkforPeerReviewTech",         limit: 2
    t.integer    "PeerReviewDoneTech",            limit: 2
    t.varchar    "PeerReviewStudyQuality",        limit: 35
    t.varchar    "PeerReviewAgreeDisagreeTech",   limit: 25
    t.text_basic "PeerReviewCommentsTech",        limit: 2147483647
    t.varchar    "LungUptake",                    limit: 255
    t.varchar    "SDExerciseProtocol",            limit: 255
    t.integer    "DiscussedWPatientFamily",       limit: 2
    t.integer    "DiscussedWReferringMD",         limit: 2
    t.integer    "RsnForEnding_Syncope",          limit: 2
    t.integer    "RsnForEnding_Nausea",           limit: 2
    t.integer    "RsnForEnding_ECGChanges",       limit: 2
    t.integer    "RsnForEnding_PatientRequest",   limit: 2
    t.integer    "RsnForEnding_TargetHR",         limit: 2
    t.integer    "RsnForEnding_Hypotension",      limit: 2
    t.integer    "RsnForEnding_Hypertension",     limit: 2
    t.integer    "RsnForEnding_Arrhythmia",       limit: 2
  end

  create_table "Nuclear_Adv03", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer    "RsnForEnding_EndProtocol",      limit: 2
    t.integer    "Recom_CardiologyConsult",       limit: 2
    t.integer    "Recom_CVSurgConsult",           limit: 2
    t.integer    "Recom_CoronaryAngio",           limit: 2
    t.integer    "Recom_CardCTAngio",             limit: 2
    t.integer    "Recom_DobStressEcho",           limit: 2
    t.integer    "Recom_ExStressEcho",            limit: 2
    t.integer    "Recom_PharmStressNuc",          limit: 2
    t.integer    "Recom_StressMRI",               limit: 2
    t.integer    "Recom_PET",                     limit: 2
    t.integer    "Recom_TransthoracicEcho",       limit: 2
    t.integer    "CriticalResultsWReferringMD",   limit: 2
    t.varchar    "CalciumBlockersHeldGiven",      limit: 25
    t.integer    "RsnForEnding_Dyspnea",          limit: 2
    t.integer    "RsnForEnding_Claudication",     limit: 2
    t.integer    "RsnForEnding_Flushing",         limit: 2
    t.integer    "RsnForEnding_Dizziness",        limit: 2
    t.integer    "RsnForEnding_ChestPain",        limit: 2
    t.integer    "RsnForEnding_Fatigue",          limit: 2
    t.integer    "Recom_ClinicalCorrelation",     limit: 2
    t.integer    "SABreastAttenuation",           limit: 2
    t.integer    "SAMotionArtifact",              limit: 2
    t.integer    "SADiaphragmaticAttenuation",    limit: 2
    t.integer    "SAIncreasedBowelUptake",        limit: 2
    t.integer    "SASoftTissue",                  limit: 2
    t.integer    "SAIncreasedVisceralTracer",     limit: 2
    t.integer    "Recom_CardiologyFollowUp",      limit: 2
    t.integer    "SplanchnicUptake",              limit: 2
    t.integer    "BreastAttenuationVisualized",   limit: 2
    t.varchar    "StressTestSummary",             limit: 50
    t.text_basic "ViabilityComments",             limit: 2147483647
    t.integer    "GatingNotDoneArrythmias",       limit: 2
    t.integer    "NonDiagStECG_BelowTargHR",      limit: 2
    t.integer    "NonDiagStECG_AbnBaseECG",       limit: 2
    t.integer    "NonDiagStECG_PaceRhythm",       limit: 2
    t.integer    "NonDiagStECG_LBBB",             limit: 2
    t.integer    "NonDiagStECG_LVH",              limit: 2
    t.float      "COCorrectedBSA"
    t.float      "MyocardialMassStress"
    t.float      "PeakFillingRateStress"
    t.float      "PeakEmptyingRateStress"
    t.float      "OneThirdPeakFillingRateStress"
    t.float      "LVTimePeakFillingRateStress"
    t.float      "LVTimePeakEjectRateStress"
    t.float      "SDStressHR"
    t.float      "EDVRest"
    t.float      "EDVRestCorrectedBSA"
    t.float      "ESVRest"
    t.float      "ESVRestCorrectedBSA"
    t.float      "CORest"
    t.float      "CORestCorrectedBSA"
    t.float      "MyocardialMassRest"
    t.float      "PeakFillingRateRest"
    t.float      "PeakEmptyingRateRest"
    t.float      "OneThirdPeakFillingRateRest"
    t.float      "LVTimePeakFillingRateRest"
    t.float      "LVTimePeakEjectRateRest"
    t.float      "EDVDelay"
    t.float      "EDVDelayCorrectedBSA"
    t.float      "ESVDelay"
    t.float      "ESVDelayCorrectedBSA"
    t.float      "LVEFDelayCalculated"
    t.float      "CODelay"
    t.float      "CODelayCorrectedBSA"
    t.float      "MyocardialMassDelay"
    t.float      "PeakFillingRateDelay"
    t.float      "PeakEmptyingRateDelay"
    t.float      "OneThirdPeakFillingRateDelay"
    t.float      "LVTimePeakFillingRateDelay"
    t.float      "LVTimePeakEjectRateDelay"
    t.float      "SDDelayHR"
    t.float      "DelayDefectLAD"
    t.float      "DelayDefectLCX"
    t.float      "DelayDefectRCA"
    t.float      "DelayDefectTotal"
    t.float      "ViabilityDefectLAD"
    t.float      "ViabilityDefectLCX"
    t.float      "ViabilityDefectRCA"
    t.float      "ViabilityDefectTotal"
    t.float      "StressDefectPercentLAD"
    t.float      "StressDefectPercentLCX"
    t.float      "StressDefectPercentRCA"
    t.float      "StressDefectPercentTotal"
    t.float      "RestDefectPercentLAD"
    t.float      "RestDefectPercentLCX"
    t.float      "RestDefectPercentRCA"
    t.float      "RestDefectPercentTotal"
    t.float      "ReversibleDefectPercentLAD"
    t.float      "ReversibleDefectPercentLCX"
    t.float      "ReversibleDefectPercentRCA"
    t.float      "ReversibleDefectPercentTotal"
    t.float      "SDRestHR"
    t.varchar    "GatedStudyStress",              limit: 25
    t.varchar    "StressAppliedCorrections",      limit: 25
    t.varchar    "StressTypeOfAttCorrection",     limit: 50
    t.datetime   "StressInjectionTime"
    t.datetime   "StressImageTime"
    t.float      "DurationOfImagingStress"
    t.varchar    "PostStressScanTime",            limit: 25
    t.varchar    "GatedStudyRest",                limit: 25
    t.varchar    "AppliedCorrections",            limit: 25
    t.varchar    "TypeOfAttCorrection",           limit: 50
    t.datetime   "RestInjectionTime"
    t.datetime   "RestImageTime"
    t.float      "DurationOfImagingRest"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Adv04", id: false, force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID"
    t.varchar  "DelayFDGAppliedCorrections",          limit: 25
    t.varchar  "DelayFDGTypeOfAttCorrection",         limit: 50
    t.datetime "DelayFDGInjectionTime"
    t.datetime "DelayFDGImageTime"
    t.float    "DurationOfImagingDelayFDG"
    t.varchar  "PostDelayFDGScanTime",                limit: 25
    t.varchar  "StressProtocol",                      limit: 75
    t.varchar  "Protocol",                            limit: 75
    t.varchar  "DelayFDGProtocol",                    limit: 75
    t.varchar  "GatedStudyDelayFDG",                  limit: 25
    t.float    "TPDelayFDGDose"
    t.datetime "DelayFDGInjectionDate"
    t.float    "RadiationDoseStress"
    t.float    "RadiationDoseRest"
    t.float    "RadiationDoseDelayFDG"
    t.varchar  "AcqDelayFDGPosition",                 limit: 35
    t.float    "MnTPCLADRest"
    t.float    "MnTPCLCXRest"
    t.float    "MnTPCRCARest"
    t.float    "MnTPCGlobalRest"
    t.float    "DysMnTPCRest"
    t.float    "DysStDvTPCRest"
    t.float    "DysBwTPCRest"
    t.float    "MnTPTLADRest"
    t.float    "MnTPTLCXRest"
    t.float    "MnTPTRCARest"
    t.float    "MnTPTGlobalRest"
    t.float    "DysMnTPTRest"
    t.float    "DysStDvTPTRest"
    t.float    "DysBwTPTRest"
    t.float    "MnTPT1LADRest"
    t.float    "MnTPT1LCXRest"
    t.float    "MnTPT1RCARest"
    t.float    "MnTPT1GlobalRest"
    t.float    "DysMnTPT1Rest"
    t.float    "DysStDvTPT1Rest"
    t.float    "DysBwTPT1Rest"
    t.float    "MnTPCLADStress"
    t.float    "MnTPCLCXStress"
    t.float    "MnTPCRCAStress"
    t.float    "MnTPCGlobalStress"
    t.float    "DysMnTPCStress"
    t.float    "DysStDvTPCStress"
    t.float    "DysBwTPCStress"
    t.float    "MnTPTLADStress"
    t.float    "MnTPTLCXStress"
    t.float    "MnTPTRCAStress"
    t.float    "MnTPTGlobalStress"
    t.float    "DysMnTPTStress"
    t.float    "DysStDvTPTStress"
    t.float    "DysBwTPTStress"
    t.float    "MnTPT1LADStress"
    t.float    "MnTPT1LCXStress"
    t.float    "MnTPT1RCAStress"
    t.float    "MnTPT1GlobalStress"
    t.float    "DysMnTPT1Stress"
    t.float    "DysStDvTPT1Stress"
    t.float    "DysBwTPT1Stress"
    t.float    "IschemicExtentLADReversible"
    t.float    "IschemicExtentLCXReversible"
    t.float    "IschemicExtentGlobalReversible"
    t.float    "IschemicExtentRCAReversible"
    t.float    "ScarExtentLADReversibility"
    t.float    "ScarExtentLCSReversibility"
    t.float    "ScarExtentRCAReversibility"
    t.float    "ScarExtentMyoReversibility"
    t.float    "ScarExtentLADViability"
    t.float    "ScarExtentLCXViability"
    t.float    "ScarExtentRCAViability"
    t.float    "ScarExtentMyoViability"
    t.float    "NormalExtentLADReversibility"
    t.float    "NormalExtentLCSReversibility"
    t.float    "NormalExtentRCAReversibility"
    t.float    "NormalExtentMyoReversibility"
    t.float    "NormalExtentLADViability"
    t.float    "NormalExtentLCSViability"
    t.float    "NormalExtentRCAViability"
    t.float    "NormalExtentMyoViability"
    t.varchar  "DelayFDGProtocolFunction",            limit: 75
    t.varchar  "StressProtocolFunction",              limit: 75
    t.varchar  "ProtocolFunction",                    limit: 75
    t.varchar  "AcqRestPositionFunction",             limit: 50
    t.varchar  "AcqStressPositionFunction",           limit: 50
    t.varchar  "AcqDelayFDGPositionFunction",         limit: 50
    t.varchar  "StressAppliedCorrectionsFunction",    limit: 25
    t.varchar  "DelayFDGAppliedCorrectionsFunction",  limit: 25
    t.varchar  "AppliedCorrectionsFunction",          limit: 25
    t.varchar  "StressTypeOfAttCorrectionFunction",   limit: 50
    t.varchar  "TypeOfAttCorrectionFunction",         limit: 50
    t.varchar  "DelayFDGTypeOfAttCorrectionFunction", limit: 50
    t.varchar  "GatedStudyRestFunction",              limit: 25
    t.varchar  "GatedStudyStressFunction",            limit: 25
    t.varchar  "GatedStudyDelayFDGFunction",          limit: 25
    t.datetime "StressInjectionDateFunction"
    t.datetime "RestInjectionDateFunction"
    t.datetime "DelayFDGInjectionDateFunction"
    t.datetime "StressImageTImeFunction"
    t.datetime "RestImageTimeFunction"
    t.datetime "DelayFDGImageTimeFunction"
    t.datetime "StressInjectionTimeFunction"
    t.datetime "DelayFDGInjectionTimeFunction"
    t.float    "DurationOfImagingRestFunction"
    t.float    "DurationOfImagingDelayFDGFunction"
    t.float    "DurationOfImagingStressFunction"
    t.varchar  "PostStressScanTimeFunction",          limit: 25
    t.varchar  "PostInjectionScanTimeFunction",       limit: 25
    t.varchar  "PostDelayFDGScanTimeFunction",        limit: 25
    t.float    "RadiationDoseStressFunction"
    t.float    "RadiationDoseRestFunction"
    t.float    "RadiationDoseDelayFDGFunction"
    t.float    "TPDelayFDGDoseFunction"
  end

  create_table "Nuclear_AllMeasurements", primary_key: "SS_Nuclear_AllMeasurements_ID", force: :cascade do |t|
    t.integer    "SS_Event_Nuclear_ID",                         null: false
    t.varchar    "StudyInstanceUID",         limit: 64,         null: false
    t.varchar    "SRInstanceUID",            limit: 64
    t.varchar    "MeasurementName",          limit: 50
    t.integer    "SSDICOMSRMappingID"
    t.integer    "SSDICOMInviaMappingID"
    t.float      "Value"
    t.varchar    "Units",                    limit: 50
    t.float      "DisplayValue"
    t.varchar    "DisplayUnit",              limit: 50
    t.varchar    "StringValue",              limit: 200
    t.varchar    "MeasurementType",          limit: 50
    t.varchar    "Derivation",               limit: 100
    t.integer    "CurrentlySelected",        limit: 2
    t.varchar    "SelectionStatus",          limit: 50
    t.varchar    "ReferencedSOPInstanceUID", limit: 64
    t.integer    "ReferencedFrame"
    t.varchar    "Creator",                  limit: 50
    t.datetime   "ModifiedDate"
    t.varchar    "DrawingKey",               limit: 200
    t.integer    "Flags"
    t.text_basic "Description",              limit: 2147483647
    t.index ["MeasurementName"], name: "Nuclear_AllMeasurementsName"
    t.index ["SSDICOMInviaMappingID"], name: "SSDICOMInviaMappingID"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Attenuation", primary_key: "SS_Nuclear_Attenuation_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "AttenuationCause",    limit: 250
    t.varchar "AttenuationRegion",   limit: 100
    t.varchar "AttenuationComments", limit: 250
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_BaselineEKG", primary_key: "SS_Nuclear_BaseEKG_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Rhythm",              limit: 50
    t.varchar "STDepression",        limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_BaselineTInversion", primary_key: "SS_Nuclear_BaseTInv_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "TInversion",          limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_CPT_Codes", primary_key: "SS_Nuclear_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "CPT_Code",            limit: 20
    t.varchar "CPT_Desc",            limit: 255
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_DICOM_Studies", primary_key: "SS_Nuclear_DICOM_ID", force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID",             null: false
    t.varchar  "DICOM_UID",           limit: 100
    t.varchar  "FileName",            limit: 255
    t.varchar  "SS_SettingsKeyName",  limit: 50
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",    limit: 80
    t.integer  "ExcludeFromReport",   limit: 2
    t.index ["DICOM_UID"], name: "DICOM_UID"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "Nuclear_Diagnosis", primary_key: "SS_Nuclear_Diagnosis_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "ICD9_Code",           limit: 20
    t.varchar "ICD9_Desc",           limit: 255
    t.index ["ICD9_Code"], name: "ICD9_Code"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_ECGAbnormal", primary_key: "SS_Nuclear_ECGAbnormal_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "AbnormalRhythm",      limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Extension", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
  end

  create_table "Nuclear_FindingNonCard", primary_key: "SS_Nuclear_FindingNonCard_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Findings",            limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_ICD9_Codes", primary_key: "SS_Nuclear_ICD9_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "ICD9_Code",           limit: 20
    t.varchar "ICD9_Desc",           limit: 255
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Image_Drawings", primary_key: "SS_Nuclear_Image_Drawings_ID", force: :cascade do |t|
    t.integer    "SS_Event_Nuclear_ID",                    null: false
    t.varchar    "StudyUID",            limit: 100,        null: false
    t.varchar    "ImageUID",            limit: 100,        null: false
    t.integer    "FrameNumber",                            null: false
    t.varchar    "DrawingKey",          limit: 200,        null: false
    t.varchar    "DrawingType",         limit: 100,        null: false
    t.text_basic "Drawing",             limit: 2147483647, null: false
    t.index ["DrawingKey"], name: "IX_Echo_Image_Drawings_Key", unique: true
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "Nuclear_Images", primary_key: "SS_Nuclear_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID",               null: false
    t.varchar  "Filename",              limit: 255
    t.varchar  "ImagingDevice",         limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",             limit: 30
    t.varchar  "Caption",               limit: 255
    t.varchar  "Media_UID",             limit: 50
    t.varchar  "Location",              limit: 50
    t.varchar  "SS_SettingsKeyName",    limit: 50
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.varchar  "Status",                limit: 50
    t.integer  "CaptureMask"
    t.integer  "ExcludeFromReport",     limit: 2
    t.varchar  "StudyInstanceUID",      limit: 255
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Indications", primary_key: "SS_Nuclear_Indications_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Indications",         limit: 100
    t.index ["SS_Event_Nuclear_ID"], name: "PrimaryKey"
    t.index ["SS_Nuclear_Indications_ID"], name: "SS_Nuclear_Ischemia_ID"
  end

  create_table "Nuclear_Ischemia", primary_key: "SS_Nuclear_Ischemia_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "IschemiaInfarctLocation",      limit: 25
    t.varchar "IschemiaInfarctFindings",      limit: 50
    t.varchar "IschemiaInfarctReversibility", limit: 25
    t.varchar "IschemiaInfarctExtent",        limit: 25
    t.varchar "IschemiaInfarctCoronaries",    limit: 75
    t.varchar "IschemiaInfarctSize",          limit: 50
    t.varchar "IschemiaInfarct",              limit: 255
    t.index ["SS_Event_Nuclear_ID"], name: "PrimaryKey"
    t.index ["SS_Nuclear_Ischemia_ID"], name: "SS_Nuclear_Ischemia_ID"
  end

  create_table "Nuclear_Meds", primary_key: "SS_Nuclear_Meds_ID", force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID"
    t.varchar  "Meds",                limit: 50
    t.datetime "CD_MedTime"
    t.varchar  "CD_MedName",          limit: 50
    t.float    "CD_MedDose"
    t.varchar  "CD_MedUnits",         limit: 12
    t.varchar  "CD_MedRoute",         limit: 20
    t.float    "CD_MedTotalDose"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
    t.index ["SS_Nuclear_Meds_ID"], name: "SS_Meds_ID"
  end

  create_table "Nuclear_PETPerfusionCFR", primary_key: "SS_Nuclear_PETPerfusionCFR_ID", force: :cascade do |t|
    t.integer    "SS_Event_Nuclear_ID"
    t.varchar    "CFR_CoronaryArtery",  limit: 25
    t.float      "CFR_Ratio"
    t.varchar    "CFR_BloodFlow",       limit: 25
    t.varchar    "Sarcoid_CTInterp",    limit: 10
    t.text_basic "Sarcoid_Comments",    limit: 2147483647
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_PETPerfusionMBF", primary_key: "SS_Nuclear_PETPerfusionMBF_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "MBF_CoronaryArtery",  limit: 25
    t.float   "MBF_RestBloodFlow"
    t.float   "MBF_StressBloodFlow"
    t.varchar "MBF_Rest",            limit: 25
    t.varchar "MBF_Stress",          limit: 25
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_PharmStress_Test", primary_key: "SS_Nuclear_PharmStress_Test_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "DobProtocolStage",            limit: 50
    t.varchar "DobProtocolTime",             limit: 5
    t.varchar "DobProtocolDose",             limit: 50
    t.float   "DobProtocolAtropine"
    t.float   "DobProtocolMetoprolol"
    t.float   "DobProtocolHR"
    t.float   "DobProtocolBPSystolic"
    t.float   "DobProtocolBPDiastolic"
    t.varchar "DobProtocolPharmSymptoms",    limit: 50
    t.varchar "PharmArrhythmiaDuringStress", limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
    t.index ["SS_Nuclear_PharmStress_Test_ID"], name: "SS_Nuclear_PharmStress_Test_ID"
  end

  create_table "Nuclear_RETechFindings", primary_key: "SS_Nuclear_RETechFindings_ID", force: :cascade do |t|
    t.integer "SS_Event_Echo_ID"
    t.varchar "TableName",        limit: 50
    t.varchar "FieldName",        limit: 50
    t.varchar "FieldValue",       limit: 255
    t.varchar "Field_Type",       limit: 20
    t.integer "Field_Type_Code",  limit: 2
    t.index ["SS_Event_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Nuclear_RadioPharmMeds", primary_key: "SS_Nuclear_RadPharmMeds_ID", force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID"
    t.varchar  "Meds",                limit: 50
    t.datetime "MedTime"
    t.varchar  "MedName",             limit: 100
    t.float    "MedDose"
    t.varchar  "MedUnits",            limit: 50
    t.varchar  "MedRoute",            limit: 50
    t.float    "MedTotalDose"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_RecoveryEKG", primary_key: "SS_Nuclear_RecovEKG_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Rhythm",              limit: 50
    t.varchar "STDepression",        limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_RecoveryTInversion", primary_key: "SS_Nuclear_RecovTInv_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "TInversion",          limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_RiskFactors", primary_key: "SS_Nuclear_RiskFactors_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Nuclear_RiskFactors", limit: 100
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_RiskHistory", primary_key: "SS_Nuclear_RiskHistory_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Nuclear_RiskHistory", limit: 100
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Staff", primary_key: "SS_Nuclear_Staff_ID", force: :cascade do |t|
    t.integer  "SS_Event_Nuclear_ID"
    t.varchar  "Name",                limit: 100
    t.varchar  "StaffPosition",       limit: 100
    t.datetime "Time_In"
    t.datetime "Time_Out"
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_CHF_ID"
  end

  create_table "Nuclear_Stress", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.varchar "TPPrimaryStress",            limit: 30
    t.varchar "TPTypePhysicalExercise",     limit: 30
    t.varchar "TPPharmAgent",               limit: 30
    t.float   "TPStressDose"
    t.varchar "TPProtocol",                 limit: 25
    t.float   "SDRestingHR"
    t.float   "SDPeakStressHR"
    t.float   "SDMPHR"
    t.float   "SDExerciseTime"
    t.float   "SDRestBPSys"
    t.float   "SDRestBPDia"
    t.float   "SDPeakBPSys"
    t.float   "SDPeakBPDia"
    t.varchar "SDBPResponseToExercise",     limit: 20
    t.float   "SDRPP"
    t.float   "SDStage"
    t.float   "SDMETS"
    t.float   "SDMaxDosePharmAgent"
    t.integer "SDSymptomsDuringTestNone",   limit: 2
    t.integer "SDSymptomsDuringTestAngina", limit: 2
    t.integer "SDSymptomsDuringTestAtyp",   limit: 2
    t.integer "SDSymptomsDuringTestOther",  limit: 2
    t.varchar "SDSymptomsOtherDetail",      limit: 40
    t.varchar "SDReasonForStop",            limit: 30
    t.varchar "SDOtherReasonStopped",       limit: 30
    t.varchar "ECGSTResults",               limit: 30
    t.float   "ECGMagnitudeSTDepress"
    t.varchar "ECGConfigSTSegment",         limit: 20
    t.varchar "ECGExerciseVentEctopy",      limit: 10
    t.varchar "ExerciseAtEctopy",           limit: 50
    t.float   "PercentMPHR"
    t.float   "MagnitudeStElevation"
    t.varchar "ECGMagnitudeSTDepLead",      limit: 50
    t.float   "TPStressDoseFunction"
  end

  create_table "Nuclear_StressBaselineECG", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer "BL_NSR",                    limit: 2
    t.integer "BL_SinusNonSpecSTChanges",  limit: 2
    t.integer "BL_EarlyRepol",             limit: 2
    t.integer "BL_PoorRwaveProg",          limit: 2
    t.integer "BL_SinusBrady",             limit: 2
    t.integer "BL_SinusTach",              limit: 2
    t.integer "BL_AtrialFlutter",          limit: 2
    t.integer "BL_AtrialFibrillation",     limit: 2
    t.integer "BL_AtrialPacing",           limit: 2
    t.integer "BL_VentPacing",             limit: 2
    t.integer "BL_JunctionalRhythm",       limit: 2
    t.integer "BL_MultifocalAtrialRhythm", limit: 2
    t.integer "Cond_1stDegAVB_BL",         limit: 2
    t.integer "Cond_2ndDegAVBType1_BL",    limit: 2
    t.integer "Cond_2ndDegAVBType2_BL",    limit: 2
    t.integer "Cond_2ndDegAVBUnk_BL",      limit: 2
    t.integer "Cond_3rdDegAVB_BL",         limit: 2
    t.integer "Cond_IncompLBBB_BL",        limit: 2
    t.integer "Cond_IncompRBBB_BL",        limit: 2
    t.integer "Cond_LAFB_BL",              limit: 2
    t.integer "Cond_LAD_BL",               limit: 2
    t.integer "Cond_RAD_BL",               limit: 2
    t.integer "Cond_LPFB_BL",              limit: 2
    t.integer "Cond_WPW_BL",               limit: 2
    t.integer "Cond_NonSpecQRSWide_BL",    limit: 2
    t.integer "AtrARR_OccPAC_BL",          limit: 2
    t.integer "AtrARR_FreqPAC_BL",         limit: 2
    t.integer "AtrARR_AtrialCouplet_BL",   limit: 2
    t.integer "AtrARR_AtrialTriplets_BL",  limit: 2
    t.integer "AtrARR_NonSustSVT_BL",      limit: 2
    t.integer "AtrARR_RunsAFib_BL",        limit: 2
    t.integer "VentARR_OccPVC_BL",         limit: 2
    t.integer "VentARR_FreqPVC_BL",        limit: 2
    t.integer "VentARR_OccCouplets_BL",    limit: 2
    t.integer "VentARR_FreqCouplets_BL",   limit: 2
    t.integer "VentARR_OccTriplets_BL",    limit: 2
    t.integer "VentARR_FreqTriplets_BL",   limit: 2
    t.integer "VentARR_NonSustVT_BL",      limit: 2
    t.integer "BL_TWaveAnterior",          limit: 2
    t.integer "BL_TWaveInferior",          limit: 2
    t.integer "BL_TWaveAnteroseptal",      limit: 2
    t.integer "BL_TWaveLateral",           limit: 2
    t.integer "BL_TWaveAnterolateral",     limit: 2
    t.integer "BL_TWaveAnteroapical",      limit: 2
    t.integer "BL_TWaveHighLateral",       limit: 2
    t.integer "BL_QwaveAnterior",          limit: 2
    t.integer "BL_QwaveInferior",          limit: 2
    t.integer "BL_QwaveAnteroseptal",      limit: 2
    t.integer "BL_QwaveLateral",           limit: 2
    t.integer "BL_QwaveAnterolateral",     limit: 2
    t.integer "BL_QwaveAnteroapical",      limit: 2
    t.integer "BL_QwaveHighLateral",       limit: 2
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_StressBaselineST", primary_key: "SS_Nuclear_StressBaselineST_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "BL_STChangeType",     limit: 50
    t.varchar "BL_STMaxShif",        limit: 25
    t.varchar "BL_STLocation",       limit: 50
    t.varchar "BL_STConfig",         limit: 50
    t.varchar "BL_STComments",       limit: 200
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_StressEKG", primary_key: "SS_Nuclear_StressEKG_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "Rhythm",              limit: 50
    t.varchar "STDepression",        limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_StressRecoveryECG", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer "AtrARR_OccPAC_REC",         limit: 2
    t.integer "AtrARR_FreqPAC_REC",        limit: 2
    t.integer "AtrARR_AtrialCouplet_REC",  limit: 2
    t.integer "AtrARR_AtrialTriplets_REC", limit: 2
    t.integer "AtrARR_NonSustSVT_REC",     limit: 2
    t.integer "AtrARR_RunsAFib_REC",       limit: 2
    t.integer "VentARR_OccPVC_REC",        limit: 2
    t.integer "VentARR_FreqPVC_REC",       limit: 2
    t.integer "VentARR_OccCouplets_REC",   limit: 2
    t.integer "VentARR_FreqCouplets_REC",  limit: 2
    t.integer "VentARR_OccTriplets_REC",   limit: 2
    t.integer "VentARR_FreqTriplets_REC",  limit: 2
    t.integer "VentARR_NonSustVT_REC",     limit: 2
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_StressRecoveryST", primary_key: "SS_Nuclear_StressRecoveryST_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "REC_STChangeType",    limit: 50
    t.varchar "REC_STMaxShift",      limit: 25
    t.varchar "REC_STLocation",      limit: 50
    t.varchar "REC_STConfig",        limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_StressTInversion", primary_key: "SS_Nuclear_StressTInv_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "TInversion",          limit: 50
    t.integer "Lead1",               limit: 2
    t.integer "Lead2",               limit: 2
    t.integer "Lead3",               limit: 2
    t.integer "LeadaVR",             limit: 2
    t.integer "LeadaVL",             limit: 2
    t.integer "LeadaVF",             limit: 2
    t.integer "LeadV1",              limit: 2
    t.integer "LeadV2",              limit: 2
    t.integer "LeadV3",              limit: 2
    t.integer "LeadV4",              limit: 2
    t.integer "LeadV5",              limit: 2
    t.integer "LeadV6",              limit: 2
    t.integer "LeadV7",              limit: 2
    t.integer "LeadV8",              limit: 2
  end

  create_table "Nuclear_StressTestECG", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.varchar "NmlStressECG",              limit: 50
    t.integer "Cond_1stDegAVB_STR",        limit: 2
    t.integer "Cond_2ndDegAVBType1_STR",   limit: 2
    t.integer "Cond_2ndDegAVBType2_STR",   limit: 2
    t.integer "Cond_2ndDegAVBUnk_STR",     limit: 2
    t.integer "Cond_3rdDegAVB_STR",        limit: 2
    t.integer "Cond_IVCD_STR",             limit: 2
    t.integer "Cond_LBBB_STR",             limit: 2
    t.integer "Cond_IncompLBBB_STR",       limit: 2
    t.integer "Cond_RBBB_STR",             limit: 2
    t.integer "Cond_IncompRBBB_STR",       limit: 2
    t.integer "Cond_LAFB_STR",             limit: 2
    t.integer "Cond_LAD_STR",              limit: 2
    t.integer "Cond_RAD_STR",              limit: 2
    t.integer "Cond_LPFB_STR",             limit: 2
    t.integer "Cond_WPW_STR",              limit: 2
    t.integer "Cond_NonSpecQRSWide_STR",   limit: 2
    t.integer "AtrARR_OccPAC_STR",         limit: 2
    t.integer "AtrARR_FreqPAC_STR",        limit: 2
    t.integer "AtrARR_AtrialCouplet_STR",  limit: 2
    t.integer "AtrARR_AtrialTriplets_STR", limit: 2
    t.integer "AtrARR_NonSustSVT_STR",     limit: 2
    t.integer "AtrARR_RunsAFib_STR",       limit: 2
    t.integer "VentARR_OccPVC_STR",        limit: 2
    t.integer "VentARR_FreqPVC_STR",       limit: 2
    t.integer "VentARR_OccCouplets_STR",   limit: 2
    t.integer "VentARR_FreqCouplets_STR",  limit: 2
    t.integer "VentARR_OccTriplets_STR",   limit: 2
    t.integer "VentARR_FreqTriplets_STR",  limit: 2
    t.integer "VentARR_NonSustVT_STR",     limit: 2
    t.integer "STR_Artifact",              limit: 2
    t.integer "STR_LeadsOff",              limit: 2
    t.integer "Cond_1stDegAVB_REC",        limit: 2
    t.integer "Cond_2ndDegAVBType1_REC",   limit: 2
    t.integer "Cond_2ndDegAVBType2_REC",   limit: 2
    t.integer "Cond_2ndDegAVBUnk_REC",     limit: 2
    t.integer "Cond_3rdDegAVB_REC",        limit: 2
    t.integer "Cond_IVCD_REC",             limit: 2
    t.integer "Cond_LBBB_REC",             limit: 2
    t.integer "Cond_IncompLBBB_REC",       limit: 2
    t.integer "Cond_RBBB_REC",             limit: 2
    t.integer "Cond_IncompRBBB_REC",       limit: 2
    t.integer "Cond_LAFB_REC",             limit: 2
    t.integer "Cond_LAD_REC",              limit: 2
    t.integer "Cond_RAD_REC",              limit: 2
    t.integer "Cond_LPFB_REC",             limit: 2
    t.integer "Cond_WPW_REC",              limit: 2
    t.integer "Cond_NonSpecQRSWide_REC",   limit: 2
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_StressTestST", primary_key: "SS_Nuclear_StressTestST_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "STR_STChangeType",    limit: 50
    t.varchar "STR_STMaxShif",       limit: 25
    t.varchar "STR_STLocation",      limit: 50
    t.varchar "STR_STConfig",        limit: 50
    t.varchar "STR_Comments",        limit: 200
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
    t.index ["SS_Nuclear_StressTestST_ID"], name: "SS_Nuclear_StressTestST_ID"
  end

  create_table "Nuclear_Stress_Recovery", primary_key: "SS_Nuclear_Stress_Recovery_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "RecoveryStage",       limit: 12
    t.float   "RecoveryGrade"
    t.float   "RecoveryMets"
    t.float   "RecoveryTotalTime"
    t.float   "RecoveryHR"
    t.float   "RecoveryBPSys"
    t.float   "RecoveryBPDia"
    t.varchar "RecoveryMaxST13",     limit: 10
    t.varchar "RecoveryMax46",       limit: 10
    t.varchar "RecoveryMaxST23",     limit: 10
    t.varchar "RecoveryMaxST1L",     limit: 10
    t.varchar "RecoverySymp",        limit: 40
    t.float   "Recovery0HR"
    t.varchar "RecoverySympArr",     limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Stress_Test", primary_key: "SS_Nuclear_Stress_Test_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "STPStage",                    limit: 12
    t.float   "STPGrade"
    t.float   "STPMets"
    t.float   "STPTotalTime"
    t.float   "STPHR"
    t.float   "STPBPSys"
    t.float   "STPBPDia"
    t.varchar "STPMaxST13",                  limit: 10
    t.varchar "STPMax46",                    limit: 10
    t.varchar "STPMaxST23",                  limit: 10
    t.varchar "STPMaxST1L",                  limit: 10
    t.varchar "STPSymp",                     limit: 40
    t.float   "STRP0HR"
    t.varchar "STPArr",                      limit: 50
    t.float   "STPSpeed"
    t.varchar "PharmArrhythmiaDuringStress", limit: 100
    t.varchar "StressSpeed",                 limit: 50
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Summary_SNLog", primary_key: "SS_Nuclear_Summary_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Nuclear_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",            limit: 255
    t.varchar    "TextField",           limit: 255
    t.text_basic "Note",                limit: 2147483647
    t.varchar    "EnteredBy",           limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",           limit: 50
    t.text_basic "NoteText",            limit: 2147483647
    t.integer    "BulletSequence",      limit: 2
    t.text_basic "NoteRtf",             limit: 2147483647
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Stress_ID"
  end

  create_table "Nuclear_Symptoms", primary_key: "SS_Nuclear_Sym_ID", force: :cascade do |t|
    t.integer "SS_Event_Nuclear_ID"
    t.varchar "CD_Symptoms",         limit: 100
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_TechComments_SNLog", primary_key: "SS_Nuclear_TechCmt_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Nuclear_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",            limit: 255
    t.varchar    "TextField",           limit: 255
    t.text_basic "Note",                limit: 2147483647
    t.varchar    "EnteredBy",           limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",           limit: 50
    t.text_basic "NoteText",            limit: 2147483647
    t.integer    "BulletSequence",      limit: 2
    t.text_basic "NoteRtf",             limit: 2147483647
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Nuclear_Ventric", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.varchar    "LVRelativeSize",               limit: 25
    t.integer    "LVEvidenceOfLVH",              limit: 2
    t.integer    "LVEvidenceOfEffusion",         limit: 2
    t.integer    "LVEvidenceOfDiscreteAneurysm", limit: 2
    t.float      "LVEFCalculated"
    t.float      "LVEFPeakStress"
    t.text_basic "LVDataDescription",            limit: 2147483647
    t.varchar    "AnterolateralMotion",          limit: 12
    t.varchar    "AnterolateralScore",           limit: 12
    t.varchar    "AntApexMotion",                limit: 12
    t.varchar    "AntApexScore",                 limit: 12
    t.varchar    "InferiorMotion",               limit: 12
    t.varchar    "InferiorScore",                limit: 12
    t.varchar    "SeptalMotion",                 limit: 12
    t.varchar    "SeptalScore",                  limit: 12
    t.varchar    "InferoseptalMotion",           limit: 12
    t.varchar    "InferoseptalScore",            limit: 12
    t.varchar    "PosterolateralMotion",         limit: 12
    t.varchar    "PosterolateralScore",          limit: 12
    t.varchar    "AnteroSeptalMotion",           limit: 12
    t.varchar    "AnteroSeptalScore",            limit: 12
    t.varchar    "LLeftLatApexMotion",           limit: 12
    t.varchar    "LLeftLatApexScore",            limit: 12
    t.varchar    "InferoposteriorMotion",        limit: 12
    t.varchar    "InferoposteriorScore",         limit: 12
    t.integer    "ChangesInWallMotion",          limit: 2
    t.text_basic "ChangesInWallMotionDescribe",  limit: 2147483647
    t.varchar    "RVRelativeSize",               limit: 50
    t.float      "RVEjectionFraction"
    t.text_basic "RVDataDescription",            limit: 2147483647
  end

  create_table "Nuclear_WallMotion", primary_key: "SS_Event_Nuclear_ID", force: :cascade do |t|
    t.integer    "ShowDiagrams",                limit: 2
    t.varchar    "RestApex",                    limit: 50
    t.varchar    "StressApex",                  limit: 50
    t.varchar    "WallMApex",                   limit: 50
    t.text_basic "CD_WallMotionFindings",       limit: 2147483647
    t.integer    "CD_RestScoreCount",           limit: 2
    t.integer    "CD_RestScoreIndex",           limit: 2
    t.integer    "CD_stressScoreIndex",         limit: 2
    t.integer    "CD_StressScoreCount",         limit: 2
    t.integer    "CD_RevScoreIndex",            limit: 2
    t.integer    "CD_RevScoreCount",            limit: 2
    t.integer    "CD_WMScoreIndex",             limit: 2
    t.integer    "CD_WMScoreCount",             limit: 2
    t.varchar    "ReverseApex",                 limit: 50
    t.varchar    "RestApicalSeptal",            limit: 50
    t.varchar    "RestApicalLateral",           limit: 50
    t.varchar    "StressApicalSeptal",          limit: 50
    t.varchar    "StressApicalLateral",         limit: 50
    t.varchar    "WallMApicalSeptal",           limit: 50
    t.varchar    "WallMApicalLateral",          limit: 50
    t.varchar    "ReverseApicalSeptal",         limit: 50
    t.varchar    "ReverseApicalLateral",        limit: 50
    t.integer    "SumStressSCore_CD",           limit: 2
    t.integer    "SumRestScore_CD",             limit: 2
    t.integer    "SumWMScore_CD",               limit: 2
    t.integer    "ReversibilityScore_CD",       limit: 2
    t.varchar    "RestBasalAnterior",           limit: 50
    t.varchar    "RestBasalAnteroseptal",       limit: 50
    t.varchar    "RestBasalInferoseptal",       limit: 50
    t.varchar    "RestBasalInferior",           limit: 50
    t.varchar    "RestBasalInferolateral",      limit: 50
    t.varchar    "RestBasalAnterolateral",      limit: 50
    t.varchar    "RestMidAnterior",             limit: 50
    t.varchar    "RestMidAnteroseptal",         limit: 50
    t.varchar    "RestMidInferoseptal",         limit: 50
    t.varchar    "RestMidInferior",             limit: 50
    t.varchar    "RestMidInferolateral",        limit: 50
    t.varchar    "RestMidAnterolateral",        limit: 50
    t.varchar    "RestApicalAnterior",          limit: 50
    t.varchar    "RestApicalAnteroseptal",      limit: 50
    t.varchar    "RestApicalInferoseptal",      limit: 50
    t.varchar    "RestApicalInferior",          limit: 50
    t.varchar    "RestApicalInferolateral",     limit: 50
    t.varchar    "RestApicalAnterolateral",     limit: 50
    t.varchar    "RestAnteroapical",            limit: 50
    t.varchar    "RestInferoapical",            limit: 50
    t.varchar    "StressBasalAnterior",         limit: 50
    t.varchar    "StressBasalAnteroseptal",     limit: 50
    t.varchar    "StressBasalInferoseptal",     limit: 50
    t.varchar    "StressBasalInferior",         limit: 50
    t.varchar    "StressBasalInferolateral",    limit: 50
    t.varchar    "StressBasalAnterolateral",    limit: 50
    t.varchar    "StressMidAnterior",           limit: 50
    t.varchar    "StressMidAnteroseptal",       limit: 50
    t.varchar    "StressMidInferoseptal",       limit: 50
    t.varchar    "StressMidInferior",           limit: 50
    t.varchar    "StressMidInferolateral",      limit: 50
    t.varchar    "StressMidAnterolateral",      limit: 50
    t.varchar    "StressApicalAnterior",        limit: 50
    t.varchar    "StressApicalAnteroseptal",    limit: 50
    t.varchar    "StressApicalInferoseptal",    limit: 50
    t.varchar    "StressApicalInferior",        limit: 50
    t.varchar    "StressApicalInferolateral",   limit: 50
    t.varchar    "StressApicalAnterolateral",   limit: 50
    t.varchar    "StressAnteroapical",          limit: 50
    t.varchar    "StressInferoapical",          limit: 50
    t.varchar    "WallMBasalAnterior",          limit: 50
    t.varchar    "WallMBasalAnteroseptal",      limit: 50
    t.varchar    "WallMBasalInferoseptal",      limit: 50
    t.varchar    "WallMBasalInferior",          limit: 50
    t.varchar    "WallMBasalInferolateral",     limit: 50
    t.varchar    "WallMBasalAnterolateral",     limit: 50
    t.varchar    "WallMMidAnterior",            limit: 50
    t.varchar    "WallMMidAnteroseptal",        limit: 50
    t.varchar    "WallMMidInferoseptal",        limit: 50
    t.varchar    "WallMMidInferior",            limit: 50
    t.varchar    "WallMMidInferolateral",       limit: 50
    t.varchar    "WallMMidAnterolateral",       limit: 50
    t.varchar    "WallMApicalAnterior",         limit: 50
    t.varchar    "WallMApicalAnteroseptal",     limit: 50
    t.varchar    "WallMApicalInferoseptal",     limit: 50
    t.varchar    "WallMApicalInferior",         limit: 50
    t.varchar    "WallMApicalInferolateral",    limit: 50
    t.varchar    "WallMApicalAnterolateral",    limit: 50
    t.varchar    "WallMAnteroapical",           limit: 50
    t.varchar    "WallMInferoapical",           limit: 50
    t.varchar    "ReverseBasalAnterior",        limit: 50
    t.varchar    "ReverseBasalAnteroseptal",    limit: 50
    t.varchar    "ReverseBasalInferoseptal",    limit: 50
    t.varchar    "ReverseBasalInferior",        limit: 50
    t.varchar    "ReverseBasalInferolateral",   limit: 50
    t.varchar    "ReverseBasalAnterolateral",   limit: 50
    t.varchar    "ReverseMidAnterior",          limit: 50
    t.varchar    "ReverseMidAnteroseptal",      limit: 50
    t.varchar    "ReverseMidInferoseptal",      limit: 50
    t.varchar    "ReverseMidInferior",          limit: 50
    t.varchar    "ReverseMidInferolateral",     limit: 50
    t.varchar    "ReverseMidAnterolateral",     limit: 50
    t.varchar    "ReverseApicalAnterior",       limit: 50
    t.varchar    "ReverseApicalAnteroseptal",   limit: 50
    t.varchar    "ReverseApicalInferoseptal",   limit: 50
    t.varchar    "ReverseApicalInferior",       limit: 50
    t.varchar    "ReverseApicalInferolateral",  limit: 50
    t.varchar    "ReverseApicalAnterolateral",  limit: 50
    t.varchar    "ReverseAnteroapical",         limit: 50
    t.varchar    "ReverseInferoapical",         limit: 50
    t.integer    "ReversibilityScore",          limit: 2
    t.varchar    "PETBasalAnterior",            limit: 50
    t.varchar    "PETBasalAnteroseptal",        limit: 50
    t.varchar    "PETBasalInferoseptal",        limit: 50
    t.varchar    "PETBasalInferior",            limit: 50
    t.varchar    "PETBasalInferolateral",       limit: 50
    t.varchar    "PETBasalAnterolateral",       limit: 50
    t.varchar    "PETMidAnterior",              limit: 50
    t.varchar    "PETMidAnteroseptal",          limit: 50
    t.varchar    "PETMidInferoseptal",          limit: 50
    t.varchar    "PETMidInferior",              limit: 50
    t.varchar    "PETMidInferolateral",         limit: 50
    t.varchar    "PETMidAnterolateral",         limit: 50
    t.varchar    "PETApicalAnterior",           limit: 50
    t.varchar    "PETApicalSeptal",             limit: 50
    t.varchar    "PETApicalInferior",           limit: 50
    t.varchar    "PETApicalLateral",            limit: 50
    t.varchar    "PETApex",                     limit: 50
    t.integer    "CD_PETScoreIndex",            limit: 2
    t.integer    "CD_PETScoreCount",            limit: 2
    t.integer    "SumPETScore_CD",              limit: 2
    t.text_basic "PerfusionNotes",              limit: 2147483647
    t.text_basic "PETNotes",                    limit: 2147483647
    t.text_basic "WallMotionNotes",             limit: 2147483647
    t.integer    "ShowPerfusionDiagrams",       limit: 2
    t.integer    "ShowWallMotionDiagrams",      limit: 2
    t.integer    "ShowPETDiagrams",             limit: 2
    t.text_basic "RestFindings",                limit: 2147483647
    t.text_basic "StressFindings",              limit: 2147483647
    t.text_basic "ReverseFindings",             limit: 2147483647
    t.varchar    "DelayedBasalAnterior",        limit: 50
    t.varchar    "DelayedBasalAnteroseptal",    limit: 50
    t.varchar    "DelayedBasalInferoseptal",    limit: 50
    t.varchar    "DelayedBasalInferior",        limit: 50
    t.varchar    "DelayedBasalInferolateral",   limit: 50
    t.varchar    "DelayedBasalAnterolateral",   limit: 50
    t.varchar    "DelayedMidAnterior",          limit: 50
    t.varchar    "DelayedMidAnteroseptal",      limit: 50
    t.varchar    "DelayedMidInferoseptal",      limit: 50
    t.varchar    "DelayedMidInferior",          limit: 50
    t.varchar    "DelayedMidInferolateral",     limit: 50
    t.varchar    "DelayedMidAnterolateral",     limit: 50
    t.varchar    "DelayedApicalAnterior",       limit: 50
    t.varchar    "DelayedApicalSeptal",         limit: 50
    t.varchar    "DelayedApicalInferior",       limit: 50
    t.varchar    "DelayedApicalLateral",        limit: 50
    t.varchar    "DelayedApex",                 limit: 50
    t.integer    "CD_DelayedScoreIndex",        limit: 2
    t.integer    "CD_DelayedScoreCount",        limit: 2
    t.integer    "SumDelayedSCore_CD",          limit: 2
    t.integer    "ShowViabilityDiagrams",       limit: 2
    t.text_basic "ViabilityNotes",              limit: 2147483647
    t.text_basic "DelayedFindings",             limit: 2147483647
    t.varchar    "ScarBasalAnterior",           limit: 30
    t.varchar    "ScarBasalAnterolateral",      limit: 30
    t.varchar    "ScarBasalInferolateral",      limit: 30
    t.varchar    "ScarBasalInferior",           limit: 30
    t.varchar    "ScarBasalInferoseptal",       limit: 30
    t.varchar    "ScarBasalAnteroseptal",       limit: 30
    t.varchar    "ScarMidAnterior",             limit: 30
    t.varchar    "ScarMidAnterolateral",        limit: 30
    t.varchar    "ScarMidInferolateral",        limit: 30
    t.varchar    "ScarMidInferior",             limit: 30
    t.varchar    "ScarMidInferoseptal",         limit: 30
    t.varchar    "ScarMidAnteroseptal",         limit: 30
    t.varchar    "ScarApicalAnterior",          limit: 30
    t.varchar    "ScarApicalLateral",           limit: 30
    t.varchar    "ScarApicalInferior",          limit: 30
    t.varchar    "ScarApicalSeptal",            limit: 30
    t.varchar    "ScarApex",                    limit: 15
    t.integer    "SumScarScore_CD",             limit: 2
    t.integer    "CD_ScarScoreIndex",           limit: 2
    t.integer    "SummedWTScore",               limit: 2
    t.integer    "SummedWTScoreRest",           limit: 2
    t.varchar    "WallMRestApicalAnterior",     limit: 30
    t.varchar    "WallMRestApicalLateral",      limit: 30
    t.varchar    "WallMRestApicalInferior",     limit: 30
    t.varchar    "WallMRestApicalSeptal",       limit: 30
    t.varchar    "WallMRestApex",               limit: 15
    t.varchar    "WallMRestMidAnteroseptal",    limit: 30
    t.varchar    "WallMRestBasalAnterior",      limit: 30
    t.varchar    "WallMRestBasalAnterolateral", limit: 30
    t.varchar    "WallMRestBasalInferolateral", limit: 30
    t.varchar    "WallMRestBasalInferior",      limit: 30
    t.varchar    "WallMRestBasalInferoseptal",  limit: 30
    t.varchar    "WallMRestBasalAnteroseptal",  limit: 30
    t.varchar    "WallMRestMidAnterior",        limit: 30
    t.varchar    "WallMRestMidAnterolateral",   limit: 30
    t.varchar    "WallMRestMidInferolateral",   limit: 30
    t.varchar    "WallMRestMidInferior",        limit: 30
    t.varchar    "WallMRestMidInferoseptal",    limit: 30
    t.integer    "SumRestWMScore_CD",           limit: 2
    t.integer    "CD_ScarScoreCount",           limit: 2
    t.integer    "CD_RestWMScoreIndex",         limit: 2
    t.integer    "CD_RestWMScoreCount",         limit: 2
    t.text_basic "ScarNotes",                   limit: 2147483647
    t.integer    "SumReversibilityScore_CD",    limit: 2
    t.varchar    "ViabilityBasalAnterior",      limit: 16
    t.varchar    "ViabilityBasalAnterolateral", limit: 16
    t.varchar    "ViabilityBasalInferolateral", limit: 16
    t.varchar    "ViabilityBasalInferior",      limit: 16
    t.varchar    "ViabilityBasalInferoseptal",  limit: 16
    t.varchar    "ViabilityBasalAnteroseptal",  limit: 16
    t.varchar    "ViabilityMidAnterior",        limit: 16
    t.varchar    "ViabilityMidAnterolateral",   limit: 16
    t.varchar    "ViabilityMidInferolateral",   limit: 16
    t.varchar    "ViabilityMidInferior",        limit: 16
    t.varchar    "ViabilityMidInferoseptal",    limit: 16
    t.varchar    "ViabilityMidAnteroseptal",    limit: 16
    t.varchar    "ViabilityApicalAnterior",     limit: 16
    t.varchar    "ViabilityApicalLateral",      limit: 16
    t.varchar    "ViabilityApicalInferior",     limit: 16
    t.varchar    "ViabilityApicalSeptal",       limit: 16
    t.varchar    "ViabilityApex",               limit: 16
    t.integer    "CD_ViabilityScoreCount",      limit: 2
    t.integer    "CD_ViabilityScoreIndex",      limit: 2
    t.integer    "SumViabilityScore_CD",        limit: 2
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID", unique: true
  end

  create_table "Nuclear_WallThickening", id: false, force: :cascade do |t|
    t.integer "WallTApex",                   limit: 2
    t.integer "WallTApicalAnterior",         limit: 2
    t.integer "WallTApicalInferior",         limit: 2
    t.integer "WallTApicalLateral",          limit: 2
    t.integer "WallTApicalSeptal",           limit: 2
    t.integer "WallTBasalAnterior",          limit: 2
    t.integer "WallTBasalAnterolateral",     limit: 2
    t.integer "WallTBasalAnteroseptal",      limit: 2
    t.integer "WallTBasalInferior",          limit: 2
    t.integer "WallTBasalInferolateral",     limit: 2
    t.integer "WallTBasalInferoseptal",      limit: 2
    t.integer "WallTMidAnterior",            limit: 2
    t.integer "WallTMidAnterolateral",       limit: 2
    t.integer "WallTMidAnteroseptal",        limit: 2
    t.integer "WallTMidInferior",            limit: 2
    t.integer "WallTMidInferolateral",       limit: 2
    t.integer "WallTMidInferoseptal",        limit: 2
    t.integer "WallTRestApex",               limit: 2
    t.integer "WallTRestApicalAnterior",     limit: 2
    t.integer "WallTRestApicalInferior",     limit: 2
    t.integer "WallTRestApicalLateral",      limit: 2
    t.integer "WallTRestApicalSeptal",       limit: 2
    t.integer "WallTRestBasalAnterior",      limit: 2
    t.integer "WallTRestBasalAnterolateral", limit: 2
    t.integer "WallTRestBasalAnteroseptal",  limit: 2
    t.integer "WallTRestBasalInferior",      limit: 2
    t.integer "WallTRestBasalInferolateral", limit: 2
    t.integer "WallTRestBasalInferoseptal",  limit: 2
    t.integer "WallTRestMidAnterior",        limit: 2
    t.integer "WallTRestMidAnterolateral",   limit: 2
    t.integer "WallTRestMidAnteroseptal",    limit: 2
    t.integer "WallTRestMidInferior",        limit: 2
    t.integer "WallTRestMidInferolateral",   limit: 2
    t.integer "WallTRestMidInferoseptal",    limit: 2
    t.integer "SS_Event_Nuclear_ID",                   null: false
    t.index ["SS_Event_Nuclear_ID"], name: "SS_Event_Nuclear_ID", unique: true
  end

  create_table "PE_Chest", primary_key: "SS_Event_PE_ID", force: :cascade do |t|
    t.varchar    "ChestLungGenAppear",        limit: 10
    t.text_basic "ChestLungGenAppearAbDesc",  limit: 2147483647
    t.varchar    "RespiratoryPattern",        limit: 10
    t.varchar    "ThoracicSpine",             limit: 10
    t.text_basic "ThoracicSpineAbnormalDesc", limit: 2147483647
    t.varchar    "Percussion",                limit: 10
    t.varchar    "PercussionAbnormalDesc",    limit: 15
    t.varchar    "VocalFremitus",             limit: 15
    t.varchar    "Rales",                     limit: 10
    t.varchar    "LeftRalesLocation",         limit: 50
    t.varchar    "RightRalesLocation",        limit: 50
    t.varchar    "WheezesPresent",            limit: 10
    t.varchar    "Wheezes",                   limit: 50
    t.varchar    "BreathSounds",              limit: 50
    t.text_basic "CommentsConsent",           limit: 2147483647
    t.integer    "PleuralRub",                limit: 2
    t.integer    "InspiratoryCrackles",       limit: 2
    t.varchar    "PulsesRightCarotid",        limit: 5
    t.varchar    "PulsesLeftCarotid",         limit: 5
    t.varchar    "PulsesRightBrachial",       limit: 5
    t.varchar    "PulsesLeftBrachial",        limit: 5
    t.varchar    "PulsesRightRadial",         limit: 5
    t.varchar    "PulsesLeftRadial",          limit: 5
    t.varchar    "PulsesRightFemoral",        limit: 5
    t.varchar    "PulsesLeftFemoral",         limit: 5
    t.varchar    "PulsesRightPoplitiel",      limit: 5
    t.varchar    "PulsesLeftPoplitiel",       limit: 5
    t.varchar    "PulsesRightDP",             limit: 5
    t.varchar    "PulsesLeftDP",              limit: 5
    t.varchar    "PulsesRightPT",             limit: 5
    t.varchar    "PulsesLeftPT",              limit: 5
    t.text_basic "PulsesNotes",               limit: 2147483647
    t.varchar    "BruitRightCarotid",         limit: 15
    t.varchar    "BruitLeftCarotid",          limit: 15
    t.varchar    "BruitRightFemoral",         limit: 15
    t.varchar    "BruitLeftFemoral",          limit: 15
    t.float      "JVPcm"
    t.varchar    "JVPDegreesOfHeadUp",        limit: 15
    t.text_basic "JVPNotes",                  limit: 2147483647
    t.text_basic "PMINotes",                  limit: 2147483647
    t.text_basic "BruitNotes",                limit: 2147483647
    t.integer    "Heave",                     limit: 2
    t.integer    "Thrill",                    limit: 2
    t.varchar    "JVPJugular",                limit: 25
    t.text_basic "RespPatternAbnDesc",        limit: 2147483647
    t.text_basic "AdditionalComments",        limit: 2147483647
  end

  create_table "PE_Comments_SNLog", primary_key: "SS_PE_Comments_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_PE_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.varchar    "Note",             limit: 255
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.text_basic "NoteText",         limit: 2147483647
    t.integer    "BulletSequence"
    t.index ["SS_Event_PE_ID"], name: "SS_Event_PE_ID"
  end

  create_table "PE_Extension", primary_key: "SS_Event_PE_ID", force: :cascade do |t|
  end

  create_table "PVD_ABD_Duplex", primary_key: "SS_PVD_ABD_Duplex_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",                   limit: 10
    t.varchar    "Location",               limit: 50
    t.integer    "PSV",                    limit: 2
    t.integer    "EDV",                    limit: 2
    t.varchar    "Assessment",             limit: 25
    t.varchar    "Vessel",                 limit: 50
    t.varchar    "Stenosis",               limit: 25
    t.integer    "Aneurysm",               limit: 2
    t.float      "APDiameter"
    t.float      "TVDiameter"
    t.float      "Angle"
    t.varchar    "Plaque",                 limit: 35
    t.varchar    "Resistance",             limit: 50
    t.integer    "Occluded",               limit: 2
    t.varchar    "InterventionType",       limit: 50
    t.varchar    "InterventionStatus",     limit: 35
    t.integer    "NarrowedLocProx",        limit: 2
    t.integer    "NarrowedLocMid",         limit: 2
    t.integer    "NarrowedLocDistal",      limit: 2
    t.integer    "PostPrandialPSV",        limit: 2
    t.integer    "PostPrandialEDV",        limit: 2
    t.varchar    "PostPrandialResistance", limit: 50
    t.text_basic "Comments",               limit: 2147483647
    t.integer    "ToReport_Pre",           limit: 2
    t.integer    "ToReport_Post",          limit: 2
    t.integer    "NoAneurysm",             limit: 2
    t.varchar    "AneurysmIncDec",         limit: 25
    t.varchar    "AneurysmStatus",         limit: 30
    t.float      "AneurysmChangeInSize"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_ABD_VenousDuplex", primary_key: "SS_PVD_ABD_VenousDuplex_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Location",               limit: 50
    t.varchar    "Vessel",                 limit: 50
    t.varchar    "Spontaneous",            limit: 30
    t.varchar    "Flow",                   limit: 30
    t.varchar    "Assessment",             limit: 25
    t.integer    "Stented",                limit: 2
    t.varchar    "ThrombusType",           limit: 35
    t.varchar    "ThrombusChronicity",     limit: 35
    t.varchar    "ThrombusRecanalization", limit: 35
    t.float      "APDiameter"
    t.text_basic "Comments",               limit: 2147483647
    t.integer    "ToReport",               limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_AccessGraftSegments", primary_key: "SS_PVD_AccessGraftSeg_ID", force: :cascade do |t|
    t.integer    "SS_PVD_AccessGrafts_ID"
    t.integer    "ToReport",                   limit: 2
    t.varchar    "Assessment",                 limit: 25
    t.varchar    "Side",                       limit: 10
    t.varchar    "Location",                   limit: 25
    t.varchar    "Segment",                    limit: 50
    t.integer    "PSV",                        limit: 2
    t.varchar    "Vessel",                     limit: 50
    t.varchar    "Patency",                    limit: 30
    t.varchar    "Stenosis",                   limit: 25
    t.float      "DistanceOfStenosisCM"
    t.varchar    "StenosisLocationAboveBelow", limit: 25
    t.varchar    "DistanceOfStenosisFrom",     limit: 50
    t.varchar    "CauseOfStenosis",            limit: 30
    t.varchar    "Aneurysm",                   limit: 25
    t.float      "AneurysmSizeCM"
    t.text_basic "Comments",                   limit: 2147483647
    t.index ["SS_PVD_AccessGrafts_ID"], name: "SS_PVD_AccessGrafts_ID"
  end

  create_table "PVD_AccessGrafts", primary_key: "SS_PVD_AccessGrafts_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "GraftName",           limit: 250
    t.varchar    "GraftType",           limit: 50
    t.varchar    "Side",                limit: 25
    t.varchar    "InflowVessel",        limit: 50
    t.varchar    "OutflowVessel",       limit: 50
    t.varchar    "Status",              limit: 30
    t.text_basic "Comments",            limit: 2147483647
    t.integer    "PerigraftCollProx",   limit: 2
    t.integer    "PerigraftCollMid",    limit: 2
    t.integer    "PerigraftCollDistal", limit: 2
    t.integer    "FlowVolume1",         limit: 2
    t.integer    "FlowVolume2",         limit: 2
    t.integer    "FlowVolume3",         limit: 2
    t.float      "FlowVolumeMean"
    t.integer    "FlowVolumeMax",       limit: 2
    t.integer    "ToReportMeanVol",     limit: 2
    t.integer    "ToReportMaxVol",      limit: 2
    t.index ["PerigraftCollMid"], name: "PerigraftCollMid"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_AccessGraftsPrevious", primary_key: "SS_PVD_AccessGraftsPrev_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",           limit: 10
    t.varchar    "InflowArtery",   limit: 50
    t.varchar    "OutflowVein",    limit: 50
    t.varchar    "GraftType",      limit: 25
    t.integer    "Functional",     limit: 2
    t.integer    "Removed",        limit: 2
    t.integer    "Infected",       limit: 2
    t.integer    "Aneurysmal",     limit: 2
    t.text_basic "Comments",       limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_AccessPreopEvalArteries", primary_key: "SS_PVD_AccessPEArteries_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",                limit: 10
    t.varchar    "Vessel",              limit: 50
    t.integer    "PSV",                 limit: 2
    t.integer    "ToReport",            limit: 2
    t.varchar    "Assessment",          limit: 25
    t.varchar    "Patency",             limit: 30
    t.varchar    "Calcification",       limit: 20
    t.varchar    "BrachialBifurcation", limit: 30
    t.text_basic "Comments",            limit: 2147483647
    t.integer    "CalcificationProx",   limit: 2
    t.integer    "CalcificationMid",    limit: 2
    t.integer    "CalcificationDistal", limit: 2
    t.index ["CalcificationMid"], name: "CalcificationMid"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_AccessPreopEvalVeins", primary_key: "SS_PVD_AccessPEVeins_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",            limit: 10
    t.varchar    "Vessel",          limit: 50
    t.float      "MaxDiameter"
    t.float      "Depth"
    t.varchar    "Compressibility", limit: 25
    t.varchar    "Patency",         limit: 30
    t.varchar    "Assessment",      limit: 25
    t.varchar    "Description",     limit: 50
    t.text_basic "Comments",        limit: 2147483647
    t.integer    "ToReport",        limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_AllMeasurements", primary_key: "SS_PVD_AllMeasurements_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID",                              null: false
    t.varchar    "StudyInstanceUID",         limit: 64,         null: false
    t.varchar    "SRInstanceUID",            limit: 64
    t.varchar    "MeasurementName",          limit: 50
    t.integer    "SSDICOMSRMappingID"
    t.float      "Value"
    t.varchar    "Units",                    limit: 50
    t.float      "DisplayValue"
    t.varchar    "DisplayUnit",              limit: 50
    t.varchar    "StringValue",              limit: 200
    t.varchar    "MeasurementType",          limit: 50
    t.varchar    "Derivation",               limit: 100
    t.integer    "CurrentlySelected",        limit: 2
    t.varchar    "SelectionStatus",          limit: 50
    t.varchar    "ReferencedSOPInstanceUID", limit: 64
    t.integer    "ReferencedFrame"
    t.varchar    "Creator",                  limit: 50
    t.datetime   "ModifiedDate"
    t.varchar    "DrawingKey",               limit: 200
    t.integer    "Flags"
    t.text_basic "Description",              limit: 2147483647
    t.index ["MeasurementName"], name: "PVD_AllMeasurementsName"
    t.index ["SS_Event_PV_ID"], name: "FK_PVD_AllMeasurements"
  end

  create_table "PVD_AorticDuplex", primary_key: "SS_PVD_AorticDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Vessel",                     limit: 50
    t.integer "PSV",                        limit: 2
    t.integer "EDV",                        limit: 2
    t.varchar "Assessment",                 limit: 25
    t.varchar "Flow",                       limit: 50
    t.varchar "Stenosis",                   limit: 50
    t.integer "Thrombus",                   limit: 2
    t.varchar "Patent",                     limit: 25
    t.integer "ToReport",                   limit: 2
    t.varchar "PlaqueMorphology",           limit: 50
    t.varchar "PlaqueSeverity",             limit: 30
    t.integer "HemodynamicallySignificant", limit: 2
    t.integer "NoAneurysm",                 limit: 2
    t.float   "APDiameter"
    t.float   "TVDiameter"
    t.varchar "AneurysmStatus",             limit: 30
    t.integer "InvolvesRenals",             limit: 2
    t.integer "InvolvesSMA",                limit: 2
    t.integer "InvolvesCeliac",             limit: 2
    t.integer "InvolvesIliacs",             limit: 2
    t.varchar "IncreasedDecreased",         limit: 25
    t.float   "ChangeInSize"
    t.float   "AortaAPDiameter"
    t.float   "AortaTRVDiameter"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Arterial_Results", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.varchar    "DominantArm",                        limit: 10
    t.integer    "Grade",                              limit: 2
    t.float      "LeftABIExer"
    t.float      "LeftABIRest"
    t.integer    "LeftBrachialBPDiastolicExer",        limit: 2
    t.integer    "LeftBrachialBPDiastolicRest",        limit: 2
    t.integer    "LeftBrachialBPSystolicExer",         limit: 2
    t.integer    "LeftBrachialBPSystolicRest",         limit: 2
    t.float      "LeftDigitIndexExer"
    t.float      "LeftDigitIndexRest"
    t.integer    "LeftDigitPressureExer",              limit: 2
    t.integer    "LeftDigitPressureRest",              limit: 2
    t.float      "LeftDPIndexExer"
    t.float      "LeftDPIndexRest"
    t.integer    "LeftDPPressureExer",                 limit: 2
    t.integer    "LeftDPPressureRest",                 limit: 2
    t.float      "LeftPTIndexExer"
    t.float      "LeftPTIndexRest"
    t.integer    "LeftPTPressureExer",                 limit: 2
    t.integer    "LeftPTPressureRest",                 limit: 2
    t.integer    "MaxHeartRate",                       limit: 2
    t.integer    "NegativeClaudicationLeft",           limit: 2
    t.integer    "NegativeClaudicationRight",          limit: 2
    t.varchar    "Protocol",                           limit: 50
    t.float      "RightABIExer"
    t.float      "RightABIRest"
    t.integer    "RightBrachialBPDiastolicExer",       limit: 2
    t.integer    "RightBrachialBPDiastolicRest",       limit: 2
    t.integer    "RightBrachialBPSystolicExer",        limit: 2
    t.integer    "RightBrachialBPSystolicRest",        limit: 2
    t.float      "RightDigitIndexExer"
    t.float      "LeftUEDigitIndexRest"
    t.float      "RightUEDigitIndexRest"
    t.float      "RightDigitIndexRest"
    t.integer    "RightDigitPressureExer",             limit: 2
    t.integer    "LeftUEDigitPressureRest",            limit: 2
    t.integer    "RightUEDigitPressureRest",           limit: 2
    t.integer    "RightDigitPressureRest",             limit: 2
    t.float      "RightDPIndexExer"
    t.float      "LeftRadIndexRest"
    t.float      "RightRadIndexRest"
    t.float      "RightDPIndexRest"
    t.integer    "RightDPPressureExer",                limit: 2
    t.integer    "LeftRadPRessureRest",                limit: 2
    t.integer    "RightRadPRessureRest",               limit: 2
    t.integer    "RightDPPressureRest",                limit: 2
    t.float      "RightPTIndexExer"
    t.float      "LeftUlnIndexRest"
    t.float      "RightUlnIndexRest"
    t.float      "RightPTIndexRest"
    t.integer    "RightPTPressureExer",                limit: 2
    t.integer    "LeftUlnPressureRest",                limit: 2
    t.integer    "RightUlnPressureRest",               limit: 2
    t.integer    "RightPTPressureRest",                limit: 2
    t.float      "Speed"
    t.integer    "TimeToClaudicationMinsLeft",         limit: 2
    t.integer    "TimeToClaudicationMinsRight",        limit: 2
    t.integer    "TimeToClaudicationSecsLeft",         limit: 2
    t.integer    "TimeToClaudicationSecsRight",        limit: 2
    t.integer    "TotalTimeMinutes",                   limit: 2
    t.integer    "TotalTimeSeconds",                   limit: 2
    t.float      "RightRAR"
    t.float      "LeftRAR"
    t.text_basic "LEArterialDuplexComments",           limit: 2147483647
    t.text_basic "LEPhysiologicComments",              limit: 2147483647
    t.integer    "RestFalseElevationRT",               limit: 2
    t.integer    "RestFalseElevationLT",               limit: 2
    t.text_basic "UEArterialDuplexComments",           limit: 2147483647
    t.text_basic "UEPhysiologicComments",              limit: 2147483647
    t.varchar    "LEResultsPVRRight",                  limit: 100
    t.varchar    "UEResultsPVRLeft",                   limit: 100
    t.varchar    "LEResultsPVRLeft",                   limit: 100
    t.varchar    "LEResultsDopplerRight",              limit: 100
    t.varchar    "LEResultsDopplerLeft",               limit: 100
    t.varchar    "LEResultsSegPressRight",             limit: 100
    t.varchar    "LEResultsSegPressLeft",              limit: 100
    t.varchar    "UEResultsPVRRight",                  limit: 100
    t.varchar    "UEResultsDopplerRight",              limit: 100
    t.varchar    "UEResultsDopplerLeft",               limit: 100
    t.varchar    "UEResultsSegPressRight",             limit: 100
    t.varchar    "UEResultsSegPressLeft",              limit: 100
    t.integer    "RightDPTPressureRest",               limit: 2
    t.integer    "RightDPTPressureExer",               limit: 2
    t.integer    "LeftDPTPressureExer",                limit: 2
    t.varchar    "LEResultsABIRight",                  limit: 100
    t.varchar    "LEResultsABILeft",                   limit: 100
    t.text_basic "EVARComments",                       limit: 2147483647
    t.text_basic "DialysisStealComments",              limit: 2147483647
    t.text_basic "DialysisPreopArteriesCommentsRight", limit: 2147483647
    t.text_basic "DialysisPreopArteriesCommentsLeft",  limit: 2147483647
    t.varchar    "BrachialBifurcationRight",           limit: 30
    t.varchar    "BrachialBifurcationLeft",            limit: 30
    t.integer    "FalselyElevated_RtDP",               limit: 2
    t.integer    "FalselyElevated_RtPT",               limit: 2
    t.integer    "FalselyElevated_RtDigit",            limit: 2
    t.integer    "NoAudibleSignal_RtDP",               limit: 2
    t.integer    "NoAudibleSignal_RtPT",               limit: 2
    t.integer    "NoAudibleSignal_RtDigit",            limit: 2
    t.integer    "FalselyElevated_LtDP",               limit: 2
    t.integer    "FalselyElevated_LtPT",               limit: 2
    t.integer    "FalselyElevated_LtDigit",            limit: 2
    t.integer    "NoAudibleSignal_LtDP",               limit: 2
    t.integer    "NoAudibleSignal_LtPT",               limit: 2
    t.integer    "NoAudibleSignal_LtDigit",            limit: 2
    t.varchar    "LEResultsRight",                     limit: 100
    t.varchar    "LEResultsLeft",                      limit: 100
    t.varchar    "UEResultsRight",                     limit: 100
    t.varchar    "UEResultsLeft",                      limit: 100
    t.text_basic "LEArterialDuplexCommentsLt",         limit: 2147483647
    t.text_basic "LEArterialDuplexCommentsRt",         limit: 2147483647
    t.text_basic "ThoracicOutletComments",             limit: 2147483647
    t.text_basic "UEArterialDuplexCommentsLt",         limit: 2147483647
    t.text_basic "UEArterialDuplexCommentsRt",         limit: 2147483647
    t.text_basic "CommentsAbdArterialDuplex",          limit: 2147483647
    t.integer    "PVRDisease_IliofemoralRight",        limit: 2
    t.integer    "PVRDisease_FemoropoplitealRight",    limit: 2
    t.integer    "PVRDisease_TibialRight",             limit: 2
    t.integer    "PVRDisease_MetatarsalRight",         limit: 2
    t.integer    "PVRDisease_PoplitealRight",          limit: 2
    t.integer    "PVRDisease_IliofemoralLeft",         limit: 2
    t.integer    "PVRDisease_FemoropoplitealLeft",     limit: 2
    t.integer    "PVRDisease_TibialLeft",              limit: 2
    t.integer    "PVRDisease_MetatarsalLeft",          limit: 2
    t.integer    "PVRDisease_PoplitealLeft",           limit: 2
    t.integer    "RightABIBPSystolic",                 limit: 2
    t.integer    "RightABIBPDiastolic",                limit: 2
    t.integer    "LeftABIBPSystolic",                  limit: 2
    t.integer    "LeftABIBPDiastolic",                 limit: 2
    t.float      "RightWBIRest"
    t.float      "LeftWBIRest"
    t.integer    "FalselyElevated_RtRad",              limit: 2
    t.integer    "FalselyElevated_RtUln",              limit: 2
    t.integer    "NoAudibleSignal_RtRad",              limit: 2
    t.integer    "NoAudibleSignal_RtUln",              limit: 2
    t.integer    "FalselyElevated_LtRad",              limit: 2
    t.integer    "FalselyElevated_LtUln",              limit: 2
    t.integer    "NoAudibleSignal_LtRad",              limit: 2
    t.integer    "NoAudibleSignal_LtUln",              limit: 2
    t.varchar    "WBIResults",                         limit: 35
    t.integer    "LEStressPressureChange",             limit: 2
    t.text_basic "LEStressComments",                   limit: 2147483647
    t.varchar    "UEResultsWBIRight",                  limit: 100
    t.varchar    "UEResultsWBILeft",                   limit: 100
    t.integer    "RightCompletePalmarArch",            limit: 2
    t.integer    "LeftCompletePalmarArch",             limit: 2
    t.text_basic "AorticComments",                     limit: 2147483647
  end

  create_table "PVD_BypassGraftSegments", primary_key: "SS_PVD_BypassGraftsSeg_ID", force: :cascade do |t|
    t.integer    "SS_PVD_BypassGrafts_ID"
    t.varchar    "Location",                    limit: 50
    t.varchar    "Segment",                     limit: 50
    t.varchar    "Vessel",                      limit: 50
    t.integer    "PSV",                         limit: 2
    t.integer    "ToReport",                    limit: 2
    t.varchar    "Assessment",                  limit: 25
    t.varchar    "Patency",                     limit: 25
    t.varchar    "Stenosis",                    limit: 25
    t.float      "DistanceOfStenosisCM"
    t.varchar    "DistanceOfStenosisFrom",      limit: 50
    t.varchar    "StenosisLocationAboveBelow",  limit: 25
    t.varchar    "Aneurysm",                    limit: 25
    t.float      "AneurysmSizeCM"
    t.text_basic "Comments",                    limit: 2147483647
    t.integer    "CausePlaque",                 limit: 2
    t.integer    "CauseResidualValve",          limit: 2
    t.integer    "CauseThrombus",               limit: 2
    t.integer    "CauseNeointimalHyperplasia",  limit: 2
    t.integer    "CauseExtrinsicCompression",   limit: 2
    t.integer    "CauseInStentRestenosis",      limit: 2
    t.integer    "CausePatchStenosis",          limit: 2
    t.integer    "NoAneurysm",                  limit: 2
    t.integer    "NoPseudoaneurysm",            limit: 2
    t.varchar    "AneurysmStatus",              limit: 30
    t.float      "AneurysmAPDiam"
    t.float      "AneurysmTRDiameter"
    t.varchar    "AneurysmIncDec",              limit: 25
    t.float      "AneurysmChangeInSize"
    t.varchar    "PseudoaneurysmStatus",        limit: 30
    t.integer    "MultiSaccularPseudoaneurysm", limit: 2
    t.float      "PseudoaneurysmAPDiam"
    t.float      "PseudoaneurysmTRDiam"
    t.varchar    "PseudoaneurysmOrigin",        limit: 30
    t.float      "PseudoNeckLength"
    t.float      "PseudoNeckDiam"
    t.varchar    "PseudoaneurysmIncDec",        limit: 25
    t.float      "PseudoChangeInSize"
    t.varchar    "Side",                        limit: 10
    t.index ["SS_PVD_BypassGrafts_ID"], name: "SS_PVD_BypassGrafts_ID"
  end

  create_table "PVD_BypassGrafts", primary_key: "SS_PVD_BypassGrafts_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "GraftName",          limit: 250
    t.varchar    "GraftType",          limit: 50
    t.varchar    "InflowSide",         limit: 25
    t.varchar    "InflowVessel",       limit: 50
    t.varchar    "OutflowVessel",      limit: 50
    t.varchar    "Status",             limit: 30
    t.text_basic "Comments",           limit: 2147483647
    t.varchar    "OutflowSide",        limit: 25
    t.varchar    "Configuration",      limit: 50
    t.varchar    "ConfigurationOther", limit: 255
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_CPTCodes", primary_key: "SS_PVD_CPT_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "CPTCode",           limit: 50
    t.varchar "CPTDescription",    limit: 255
    t.varchar "ProcedureModifier", limit: 50
    t.index ["CPTCode"], name: "CPTCode"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_CV_TestResults", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.integer    "BruitRight",                     limit: 2
    t.integer    "BruitLeft",                      limit: 2
    t.varchar    "RightCCAPlaque",                 limit: 40
    t.varchar    "LeftCCAPlaque",                  limit: 40
    t.varchar    "LeftCCAFlow",                    limit: 40
    t.varchar    "LeftSubclavianFlow",             limit: 40
    t.varchar    "LeftVertebralFlow",              limit: 40
    t.float      "ICACCARatioRight"
    t.float      "ICACCARatioLeft"
    t.float      "ICAResistanceIndexRight"
    t.float      "ICAResistanceIndexLeft"
    t.integer    "ICAValueRight",                  limit: 2
    t.integer    "CCAValueRight",                  limit: 2
    t.integer    "ICAValueLeft",                   limit: 2
    t.integer    "CCAValueLeft",                   limit: 2
    t.float      "DiameterICARight"
    t.float      "DiameterICALeft"
    t.float      "DiameterCCALeft"
    t.float      "DiameterCCARight"
    t.float      "DistanceToBifurcationRight"
    t.float      "DistanceToBifurcationLeft"
    t.float      "MandibleToBifurcationRight"
    t.float      "MandibleToBifurcationLeft"
    t.float      "SternalNotchToBifurcationRight"
    t.float      "SternalNotchToBifurcationLeft"
    t.float      "ICACCARatioRightEDV"
    t.integer    "ICAValueRightEDV",               limit: 2
    t.integer    "CCAValueRightEDV",               limit: 2
    t.float      "ICACCARatioLeftEDV"
    t.integer    "ICAValueLeftEDV",                limit: 2
    t.integer    "CCAValueLeftEDV",                limit: 2
    t.text_basic "LTCarotidComments",              limit: 2147483647
    t.text_basic "RTCarotidComments",              limit: 2147483647
    t.varchar    "NormalCarotid",                  limit: 25
    t.text_basic "TCDLtComments",                  limit: 2147483647
    t.text_basic "TCDRtComments",                  limit: 2147483647
    t.index ["NormalCarotid"], name: "NormalCarotid"
  end

  create_table "PVD_CV_TranscranialResults", primary_key: "SS_PVD_CV_TrnRes_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Vessel",         limit: 255
    t.integer "PSV",            limit: 2
    t.integer "EDV",            limit: 2
    t.float   "MeanVelocity"
    t.float   "Depth"
    t.float   "PI"
    t.float   "RI"
    t.varchar "Assessment",     limit: 25
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_CV_VesselResults", primary_key: "SS_PVD_CVVesselResults_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                       limit: 10
    t.varchar "Vessel",                     limit: 100
    t.integer "PSV",                        limit: 2
    t.integer "EDV",                        limit: 2
    t.integer "UseForRatioCalculation",     limit: 2
    t.integer "Angle",                      limit: 2
    t.varchar "Assessment",                 limit: 25
    t.varchar "Stenosis",                   limit: 50
    t.varchar "PlaqueSurface",              limit: 50
    t.integer "PlaqueCalcified",            limit: 2
    t.varchar "PlaqueMorphology",           limit: 35
    t.varchar "DopplerCharacteristics",     limit: 40
    t.float   "LesionLength"
    t.float   "SentenceOrder"
    t.integer "AddSentence",                limit: 2
    t.float   "Sequence"
    t.integer "ToReport",                   limit: 2
    t.varchar "IntimalThickening",          limit: 35
    t.float   "LesionDiameter"
    t.varchar "CVAneurysm",                 limit: 30
    t.float   "CVAneurysmLength"
    t.float   "CVAneurysmAP"
    t.float   "CVAneurysmTrans"
    t.float   "VesselDiameter"
    t.float   "ResidualLumen"
    t.varchar "PlaqueSeverity",             limit: 20
    t.varchar "CVAneurysmIntralumThrombus", limit: 30
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Conclusions_SNLog", primary_key: "SS_PVD_Conclusions_SNLog_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",         limit: 255
    t.varchar    "TextField",        limit: 255
    t.text_basic "Note",             limit: 2147483647
    t.varchar    "EnteredBy",        limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",        limit: 50
    t.text_basic "NoteText",         limit: 2147483647
    t.text_basic "NoteRtf",          limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PVD_ID"
  end

  create_table "PVD_CopyTo", primary_key: "SS_PVD_CopyTo_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "ToName",         limit: 80
    t.varchar    "eMail",          limit: 80
    t.varchar    "Fax",            limit: 80
    t.text_basic "Comments",       limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_DialysisSteal", primary_key: "SS_PVD_DialysisSteal_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",           limit: 10
    t.varchar    "Vessel",         limit: 50
    t.varchar    "Patency",        limit: 35
    t.varchar    "Flow",           limit: 30
    t.text_basic "Comments",       limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_DialysisStealDigits", primary_key: "SS_PVD_DialysisStealDigits_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",            limit: 10
    t.varchar    "RestDigit1",      limit: 30
    t.varchar    "RestDigit2",      limit: 30
    t.varchar    "RestDigit3",      limit: 30
    t.varchar    "RestDigit4",      limit: 30
    t.varchar    "RestDigit5",      limit: 30
    t.varchar    "StressDigit1",    limit: 30
    t.varchar    "StressDigit2",    limit: 30
    t.varchar    "StressDigit3",    limit: 30
    t.varchar    "StressDigit4",    limit: 30
    t.varchar    "StressDigit5",    limit: 30
    t.integer    "AmpRestDigit1",   limit: 2
    t.integer    "AmpRestDigit2",   limit: 2
    t.integer    "AmpRestDigit3",   limit: 2
    t.integer    "AmpRestDigit4",   limit: 2
    t.integer    "AmpRestDigit5",   limit: 2
    t.integer    "AmpStressDigit1", limit: 2
    t.integer    "AmpStressDigit2", limit: 2
    t.integer    "AmpStressDigit3", limit: 2
    t.integer    "AmpStressDigit4", limit: 2
    t.integer    "AmpStressDigit5", limit: 2
    t.text_basic "Comments",        limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_EVAR_Endoleak", primary_key: "SS_PVD_EVAR_Endoleak_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "EndoleakType",   limit: 20
    t.varchar "Location",       limit: 100
    t.varchar "FlowDirection",  limit: 25
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_EVAR_SacList", primary_key: "SS_PVD_EVAR_SacList_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",              limit: 10
    t.varchar "Vessel",            limit: 50
    t.float   "BaselineDiameter"
    t.float   "PreviousDiameter"
    t.float   "CurrentDiameter"
    t.integer "SignificantChange", limit: 2
    t.integer "Sonolucency",       limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_EVAR_Status", primary_key: "SS_PVD_EVAR_Status_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Configuration",        limit: 50
    t.varchar "GraftType",            limit: 100
    t.varchar "AdjunctiveProcedures", limit: 100
    t.varchar "Status",               limit: 50
    t.varchar "Endoleak",             limit: 10
    t.varchar "GraftDeformity",       limit: 20
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_EVAR_Velocities", primary_key: "SS_PVD_EVAR_Velocities_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Vessel",         limit: 50
    t.integer "PSV",            limit: 2
    t.float   "LongAxisDiam"
    t.float   "ShortAxisDiam"
    t.integer "Stenosis",       limit: 2
    t.integer "ToReport",       limit: 2
    t.varchar "Patency",        limit: 20
    t.integer "GraftDeformity", limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Extension", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
  end

  create_table "PVD_Extension1", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
  end

  create_table "PVD_History", primary_key: "SS_PVD_History_ID", force: :cascade do |t|
    t.integer  "SS_Event_PV_ID"
    t.datetime "DateOfOnset"
    t.varchar  "Description",    limit: 255
    t.varchar  "Location",       limit: 100
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_ICAVL", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.integer    "ICAVLCase",                 limit: 2
    t.varchar    "ICAVLCategory",             limit: 25
    t.varchar    "CorrPerformed",             limit: 25
    t.varchar    "CorrMethod",                limit: 50
    t.varchar    "CorrResult",                limit: 25
    t.varchar    "Result",                    limit: 15
    t.varchar    "ScreeningResult",           limit: 35
    t.varchar    "Outcome",                   limit: 25
    t.text_basic "Description",               limit: 2147483647
    t.varchar    "TimeToRead",                limit: 25
    t.varchar    "ReasonForDelayReading",     limit: 255
    t.integer    "PositivelyCorrelatedRight", limit: 2
    t.integer    "PositivelyCorrelatedLeft",  limit: 2
    t.integer    "SourcePatientHistory",      limit: 2
    t.integer    "SourcePhoneCall",           limit: 2
    t.integer    "SourcePatientChart",        limit: 2
    t.integer    "SourceNoteFromMD",          limit: 2
    t.integer    "SourceNoInfo",              limit: 2
    t.integer    "SourceOther",               limit: 2
    t.varchar    "SourceOtherDescription",    limit: 250
    t.varchar    "OverReadingPhysician",      limit: 50
  end

  create_table "PVD_ICDCodes", primary_key: "SS_PVD_ICD_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "ICDCode",        limit: 50
    t.varchar "ICDDescription", limit: 255
    t.index ["ICDCode"], name: "ICDCode"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Image_Drawings", primary_key: "SS_PVD_Image_Drawings_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID",                    null: false
    t.varchar    "StudyUID",       limit: 100,        null: false
    t.varchar    "ImageUID",       limit: 100,        null: false
    t.integer    "FrameNumber",                       null: false
    t.varchar    "DrawingKey",     limit: 200,        null: false
    t.varchar    "DrawingType",    limit: 100,        null: false
    t.text_basic "Drawing",        limit: 2147483647, null: false
    t.index ["DrawingKey"], name: "IX_Echo_Image_Drawings_Key", unique: true
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "PVD_Indications", primary_key: "SS_PVD_Indications_ID", force: :cascade do |t|
    t.integer  "SS_Event_PV_ID"
    t.varchar  "Indication",     limit: 255
    t.datetime "DateOfOnset"
    t.varchar  "Description",    limit: 255
    t.varchar  "Location",       limit: 100
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_ArterialDuplex", primary_key: "SS_PVD_LE_ArterialDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                        limit: 10
    t.varchar "Vessel",                      limit: 50
    t.integer "PSV",                         limit: 2
    t.integer "EDV",                         limit: 2
    t.varchar "Flow",                        limit: 50
    t.varchar "Stenosis",                    limit: 25
    t.float   "StenosisDistanceCM"
    t.varchar "StenosisDistanceFrom",        limit: 50
    t.varchar "Calcification",               limit: 25
    t.varchar "AVFistula",                   limit: 25
    t.varchar "ReconstitutesVessel",         limit: 50
    t.varchar "Thrombus",                    limit: 50
    t.varchar "Location",                    limit: 50
    t.varchar "AVFistulaCommunication",      limit: 255
    t.integer "ToReport",                    limit: 2
    t.varchar "Assessment",                  limit: 25
    t.varchar "PlaqueMorphology",            limit: 30
    t.varchar "PlaqueSeverity",              limit: 15
    t.integer "HemodynamicallySignificant",  limit: 2
    t.integer "NoAneurysm",                  limit: 2
    t.integer "NoPseudoaneurysm",            limit: 2
    t.varchar "AneurysmStatus",              limit: 30
    t.float   "AneurysmLength"
    t.float   "AneurysmAPDiameter"
    t.varchar "AneurysmIncDec",              limit: 25
    t.float   "PseudoChangeInSize"
    t.integer "ManualCompression",           limit: 2
    t.float   "ManualCompressionDuration"
    t.varchar "ManualCompressionResult",     limit: 30
    t.integer "ThrombinInjection",           limit: 2
    t.varchar "ThrombinInjectionResult",     limit: 30
    t.varchar "PostThrombinInjectPatency",   limit: 25
    t.float   "PseudoaneurysmTRDiam"
    t.float   "PseudoNeckLength"
    t.float   "PseudoNeckDiam"
    t.varchar "PseudoaneurysmIncDec",        limit: 25
    t.varchar "PseudoaneurysmStatus",        limit: 30
    t.float   "AneurysmChangeInSize"
    t.float   "PseudoaneurysmAPDiam"
    t.varchar "PseudoaneurysmOrigin",        limit: 30
    t.varchar "ThrombusDistanceFrom",        limit: 50
    t.float   "ThrombusDistanceCM"
    t.integer "MultiSaccularPseudoaneurysm", limit: 2
    t.integer "FlowUse",                     limit: 2
    t.varchar "Stent",                       limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_DigitStressResults", primary_key: "SS_PVD_LEDigitStrResult_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Stage",                          limit: 20
    t.real       "RightDigitTemp1"
    t.real       "RightDigitTemp2"
    t.real       "RightDigitTemp3"
    t.real       "RightDigitTemp4"
    t.real       "RightDigitTemp5"
    t.real       "LeftDigitTemp1"
    t.real       "LeftDigitTemp2"
    t.real       "LeftDigitTemp3"
    t.real       "LeftDigitTemp4"
    t.real       "LeftDigitTemp5"
    t.text_basic "TemperatureDigitStressComments", limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_Doppler", primary_key: "SS_PVD_LE_Doppler_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Vessel",         limit: 50
    t.varchar "WaveForm",       limit: 50
    t.integer "Amplitude",      limit: 2
    t.integer "Notch",          limit: 2
    t.integer "ToReport",       limit: 2
    t.varchar "Location",       limit: 50
    t.varchar "Results",        limit: 35
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_ExerResults", primary_key: "SS_PVD_LE_ExResult_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",             limit: 10
    t.varchar "Stage",            limit: 25
    t.integer "BrachialPressure", limit: 2
    t.integer "AnklePressure",    limit: 2
    t.float   "AnkleIndex"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_PVR", primary_key: "SS_PVD_LE_PVR_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Location",       limit: 50
    t.integer "Amplitude",      limit: 2
    t.integer "ToReport",       limit: 2
    t.varchar "Morphology",     limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_Perforators", primary_key: "SS_PVD_LE_Perforators_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Landmark",         limit: 25
    t.varchar "InferiorSuperior", limit: 25
    t.varchar "Location",         limit: 50
    t.float   "Distance"
    t.varchar "Side",             limit: 10
    t.float   "Diameter"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_SegmentalPressures", primary_key: "SS_PVD_LE_SegmentalPressures_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",            limit: 10
    t.varchar "Location",        limit: 50
    t.integer "Pressure",        limit: 2
    t.float   "SegmentalIndex"
    t.integer "ToReport",        limit: 2
    t.varchar "Results",         limit: 35
    t.integer "FalselyElevated", limit: 2
    t.integer "NoAudibleSignal", limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_VeinMap", primary_key: "SS_PVD_LE_VeinMap_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",            limit: 10
    t.varchar "Location",        limit: 50
    t.integer "Subfascial",      limit: 2
    t.float   "Depth"
    t.varchar "Characteristics", limit: 50
    t.varchar "Vessel",          limit: 50
    t.varchar "Assessment",      limit: 25
    t.float   "Diameter"
    t.varchar "DrainageFlow",    limit: 50
    t.varchar "DrainageVein",    limit: 50
    t.integer "Used",            limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_VenousDuplex", primary_key: "SS_PVD_LEVenousDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                   limit: 10
    t.varchar "Vessel",                 limit: 50
    t.varchar "Status",                 limit: 35
    t.varchar "Compressibility",        limit: 25
    t.varchar "Spontaneous",            limit: 30
    t.varchar "Augment",                limit: 10
    t.varchar "Reflux",                 limit: 10
    t.float   "RefluxSeconds"
    t.varchar "ThrombusType",           limit: 50
    t.varchar "ThrombusChronicity",     limit: 25
    t.varchar "ThrombusRecanalization", limit: 25
    t.varchar "Location",               limit: 50
    t.varchar "Flow",                   limit: 30
    t.varchar "Assessment",             limit: 25
    t.varchar "ThrombusLandmark",       limit: 50
    t.float   "ThrombusDistanceTo"
    t.varchar "ThrombusAboveBelow",     limit: 25
    t.integer "Normal",                 limit: 2
    t.float   "Diameter"
    t.float   "Depth"
    t.integer "Used",                   limit: 2
    t.integer "CNormal",                limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LE_VenousReflux", primary_key: "SS_PVD_LE_VenousReflux_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Side",             limit: 12
    t.varchar    "Location",         limit: 50
    t.varchar    "Vessel",           limit: 50
    t.float      "Diameter"
    t.float      "Depth"
    t.integer    "Reflux",           limit: 2
    t.varchar    "Seconds",          limit: 10
    t.varchar    "Characteristics",  limit: 30
    t.text_basic "LERefluxComments", limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_LimitingFactors", primary_key: "SS_PVD_LimitingFactors_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "LimitingFactor", limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Medications", primary_key: "SS_PVD_Medications_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Medication",     limit: 75
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_PriorInterventions", primary_key: "SS_PVD_PriorInterventions_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Category",       limit: 50
    t.varchar "Vessel",         limit: 50
    t.varchar "Intervention",   limit: 100
    t.varchar "Side",           limit: 10
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_PriorStudy", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.varchar    "ComparisonStudy",    limit: 30
    t.datetime   "PriorStudyDate"
    t.text_basic "PriorStudyComments", limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_Recommendations", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.integer    "RecommendNeuroConsult",     limit: 2
    t.integer    "RecommendSurgConsult",      limit: 2
    t.varchar    "RecommendOther",            limit: 250
    t.text_basic "RecommendComments",         limit: 2147483647
    t.varchar    "PVDCare",                   limit: 100
    t.varchar    "PVDCareOther",              limit: 30
    t.text_basic "CareComments",              limit: 2147483647
    t.datetime   "TestCompleteDate"
    t.datetime   "TestCompleteTime"
    t.varchar    "CriticalResultsCalledTo",   limit: 100
    t.datetime   "CriticalResultsCalledDate"
    t.datetime   "CriticalResultsCalledTime"
    t.varchar    "CriticalResultsReportedBy", limit: 25
    t.integer    "DiscussedWithPt",           limit: 2
    t.integer    "DiscussedWithPtFamily",     limit: 2
    t.integer    "DiscussedWithRefMd",        limit: 2
    t.integer    "CriticalResultsWithRefMD",  limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
    t.index ["TestCompleteTime"], name: "TestCompleteTime"
  end

  create_table "PVD_RenalAnatomy", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.varchar    "AssessmentRight",            limit: 25
    t.varchar    "LocationRight",              limit: 50
    t.integer    "RenalTransplantRight",       limit: 2
    t.varchar    "InflowArteryRight",          limit: 50
    t.float      "KidneyLengthRight"
    t.float      "CorticalThicknessRight"
    t.varchar    "CystRight",                  limit: 20
    t.float      "CystSizeRight"
    t.varchar    "CystLocationRight",          limit: 35
    t.integer    "MassRight",                  limit: 2
    t.float      "MassSizeRight"
    t.varchar    "MassLocationRight",          limit: 25
    t.integer    "HydronephrosisRight",        limit: 2
    t.integer    "CalculiRight",               limit: 2
    t.integer    "PerinephricFluidRight",      limit: 2
    t.varchar    "RenalVeinRight",             limit: 25
    t.varchar    "CongenitalVariationRight",   limit: 35
    t.varchar    "AssessmentLeft",             limit: 25
    t.varchar    "InflowArteryLeft",           limit: 50
    t.varchar    "LocationLeft",               limit: 50
    t.float      "KidneyLengthLeft"
    t.float      "CorticalThicknessLeft"
    t.integer    "RenalTransplantLeft",        limit: 2
    t.varchar    "CystLeft",                   limit: 20
    t.float      "CystSizeLeft"
    t.varchar    "CystLocationLeft",           limit: 35
    t.integer    "MassLeft",                   limit: 2
    t.float      "MassSizeLeft"
    t.varchar    "MassLocationLeft",           limit: 25
    t.integer    "HydronephrosisLeft",         limit: 2
    t.integer    "CalculiLeft",                limit: 2
    t.integer    "PerinephricFluidLeft",       limit: 2
    t.varchar    "RenalVeinLeft",              limit: 25
    t.varchar    "CongenitalVariationLeft",    limit: 35
    t.integer    "RenalTransplant",            limit: 2
    t.varchar    "LocationTxp",                limit: 50
    t.varchar    "InflowArteryTxp",            limit: 50
    t.varchar    "InflowArteryPatencyTxp",     limit: 30
    t.varchar    "OutflowVeinTxp",             limit: 50
    t.varchar    "OutflowVeinPatencyTxp",      limit: 30
    t.varchar    "EchogenicityTxp",            limit: 25
    t.float      "KidneyLengthTxp"
    t.float      "CorticalThicknessTxp"
    t.varchar    "CystTxp",                    limit: 25
    t.float      "CystSizeTxp"
    t.integer    "MassTxp",                    limit: 2
    t.integer    "MassAppearHypoechoicTxp",    limit: 2
    t.integer    "MassAppearHyperechoicTxp",   limit: 2
    t.integer    "MassAppearSolidTxp",         limit: 2
    t.integer    "MassAppearSeptatedTxp",      limit: 2
    t.integer    "MassAppearPoorlyDefinedTxp", limit: 2
    t.integer    "MassAppearPedunculatedTxp",  limit: 2
    t.float      "MassSizeTxp"
    t.varchar    "MassLocationTxp",            limit: 25
    t.integer    "HydronephrosisTxp",          limit: 2
    t.integer    "CalculiTxp",                 limit: 2
    t.integer    "PerinephricFluidTxp",        limit: 2
    t.integer    "FluidCollectionTxp",         limit: 2
    t.text_basic "FluidCollectionCommentsTxp", limit: 2147483647
    t.text_basic "TransplantComments",         limit: 2147483647
    t.integer    "MassAppearHypoechoicRt",     limit: 2
    t.integer    "MassAppearHyperechoicRt",    limit: 2
    t.integer    "MassAppearSolidRt",          limit: 2
    t.integer    "MassAppearSeptatedRt",       limit: 2
    t.integer    "MassAppearPoorlyDefinedRt",  limit: 2
    t.integer    "MassAppearPedunculatedRt",   limit: 2
    t.text_basic "CommentsRight",              limit: 2147483647
    t.integer    "MassAppearHypoechoicLt",     limit: 2
    t.integer    "MassAppearHyperechoicLt",    limit: 2
    t.integer    "MassAppearSolidLt",          limit: 2
    t.integer    "MassAppearSeptatedLt",       limit: 2
    t.integer    "MassAppearPoorlyDefinedLt",  limit: 2
    t.integer    "MassAppearPedunculatedLt",   limit: 2
    t.text_basic "CommentsLeft",               limit: 2147483647
  end

  create_table "PVD_RenalDuplex", primary_key: "SS_PVD_RenalDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                   limit: 10
    t.varchar "Vessel",                 limit: 50
    t.varchar "Status",                 limit: 50
    t.varchar "Assessment",             limit: 25
    t.integer "UseForRAR",              limit: 2
    t.integer "PSV",                    limit: 2
    t.integer "EDV",                    limit: 2
    t.float   "RI"
    t.float   "RAR"
    t.float   "PI"
    t.float   "EDR"
    t.integer "AccelerationTime",       limit: 2
    t.float   "APDiameter"
    t.float   "TVDiameter"
    t.varchar "Aneurysm",               limit: 50
    t.float   "AneurysmSize"
    t.varchar "Plaque",                 limit: 25
    t.integer "FibromuscularDysplasia", limit: 2
    t.varchar "DiastolicFlow",          limit: 25
    t.integer "Occluded",               limit: 2
    t.varchar "Stenosis",               limit: 35
    t.integer "Stented",                limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_RiskFactors", primary_key: "SS_PVD_Risk_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "PVDRiskFactors",     limit: 100
    t.varchar "PVDRiskFactorYesNo", limit: 10
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_AllenTest", primary_key: "SS_PVD_UE_Allen_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                 limit: 10
    t.varchar "RestDigitResult1",     limit: 30
    t.varchar "RestDigitResult2",     limit: 30
    t.varchar "RestDigitResult3",     limit: 30
    t.varchar "RestDigitResult4",     limit: 30
    t.varchar "RestDigitResult5",     limit: 30
    t.varchar "PostCompDigitResult1", limit: 30
    t.varchar "PostCompDigitResult2", limit: 30
    t.varchar "PostCompDigitResult3", limit: 30
    t.varchar "PostCompDigitResult4", limit: 30
    t.varchar "PostCompDigitResult5", limit: 30
    t.varchar "Protocol",             limit: 50
    t.integer "AmpRestDigit1",        limit: 2
    t.integer "AmpRestDigit2",        limit: 2
    t.integer "AmpRestDigit3",        limit: 2
    t.integer "AmpRestDigit4",        limit: 2
    t.integer "AmpRestDigit5",        limit: 2
    t.integer "AmpPostCompDigit1",    limit: 2
    t.integer "AmpPostCompDigit2",    limit: 2
    t.integer "AmpPostCompDigit3",    limit: 2
    t.integer "AmpPostCompDigit4",    limit: 2
    t.integer "AmpPostCompDigit5",    limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_AllenTestResult", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.varchar    "PreCompResultRt",     limit: 30
    t.varchar    "PostCompResultRt",    limit: 30
    t.varchar    "PreCompResultLt",     limit: 30
    t.varchar    "PostCompResultLt",    limit: 30
    t.text_basic "UEPPGStressComments", limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_ArterialDuplex", primary_key: "SS_PVD_UE_ArterialDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",                        limit: 10
    t.varchar "Vessel",                      limit: 50
    t.integer "PSV",                         limit: 2
    t.integer "EDV",                         limit: 2
    t.varchar "Flow",                        limit: 50
    t.varchar "Stenosis",                    limit: 25
    t.float   "StenosisDistanceCM"
    t.varchar "StenosisDistanceFrom",        limit: 50
    t.varchar "Calcification",               limit: 25
    t.varchar "AVFistula",                   limit: 25
    t.varchar "ReconstitutesVessel",         limit: 50
    t.varchar "Thrombus",                    limit: 50
    t.varchar "Location",                    limit: 50
    t.varchar "AVFistulaCommunication",      limit: 255
    t.integer "ToReport",                    limit: 2
    t.varchar "Assessment",                  limit: 25
    t.varchar "PlaqueMorphology",            limit: 30
    t.varchar "PlaqueSeverity",              limit: 15
    t.integer "HemodynamicallySignificant",  limit: 2
    t.integer "NoAneurysm",                  limit: 2
    t.varchar "AneurysmStatus",              limit: 30
    t.float   "AneurysmLength"
    t.float   "AneurysmAPDiameter"
    t.varchar "AneurysmIncDec",              limit: 25
    t.float   "AneurysmChangeInSize"
    t.varchar "ThrombusDistanceFrom",        limit: 50
    t.float   "ThrombusDistanceCM"
    t.varchar "PseudoaneurysmStatus",        limit: 30
    t.integer "MultiSaccularPseudoaneurysm", limit: 2
    t.float   "PseudoaneurysmAPDiam"
    t.float   "PseudoaneurysmTRDiam"
    t.varchar "PseudoaneurysmOrigin",        limit: 30
    t.float   "PseudoNeckLength"
    t.float   "PseudoNeckDiam"
    t.varchar "PseudoaneurysmIncDec",        limit: 25
    t.real    "PseudoChangeInSize"
    t.integer "ManualCompression",           limit: 2
    t.float   "ManualCompressionDuration"
    t.varchar "ManualCompressionResult",     limit: 30
    t.integer "ThrombinInjection",           limit: 2
    t.varchar "ThrombinInjectionResult",     limit: 30
    t.varchar "PostThrombinInjectPatency",   limit: 25
    t.integer "NoPseudoaneurysm",            limit: 2
    t.integer "FlowUse",                     limit: 2
    t.varchar "Stent",                       limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_DigitStressResults", primary_key: "SS_PVD_UEDigitStrResult_ID", force: :cascade do |t|
    t.integer    "SS_Event_PV_ID"
    t.varchar    "Stage",                          limit: 50
    t.real       "RightDigitTemp1"
    t.real       "RightDigitTemp2"
    t.real       "RightDigitTemp3"
    t.real       "RightDigitTemp4"
    t.real       "RightDigitTemp5"
    t.real       "LeftDigitTemp1"
    t.real       "LeftDigitTemp2"
    t.real       "LeftDigitTemp3"
    t.real       "LeftDigitTemp4"
    t.real       "LeftDigitTemp5"
    t.text_basic "TemperatureDigitStressComments", limit: 2147483647
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_Doppler", primary_key: "SS_PVD_UE_Doppler_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Vessel",         limit: 50
    t.varchar "Waveform",       limit: 50
    t.integer "Amplitude",      limit: 2
    t.integer "Notch",          limit: 2
    t.integer "ToReport",       limit: 2
    t.varchar "Location",       limit: 50
    t.varchar "Results",        limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_PVR", primary_key: "SS_PVD_UE_PVR_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Location",       limit: 50
    t.integer "Amplitude",      limit: 2
    t.varchar "Morphology",     limit: 50
    t.integer "ToReport",       limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_SegmentalPressures", primary_key: "SS_PVD_UE_SegmentalPressures_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",            limit: 10
    t.varchar "Location",        limit: 50
    t.integer "Pressure",        limit: 2
    t.float   "SegmentalIndex"
    t.integer "ToReport",        limit: 2
    t.varchar "Results",         limit: 35
    t.integer "FalselyElevated", limit: 2
    t.integer "NoAudibleSignal", limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_ThoracicOutlet", primary_key: "SS_PVD_UE_ThorOut_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",           limit: 10
    t.varchar "Maneuver",       limit: 25
    t.integer "Pressure",       limit: 2
    t.varchar "Waveform",       limit: 30
    t.integer "Amplitude",      limit: 2
    t.integer "Notch",          limit: 2
    t.varchar "Result",         limit: 35
    t.varchar "Stage",          limit: 50
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_VeinMap", primary_key: "SS_PVD_UE_VeinMap_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Side",            limit: 10
    t.varchar "Location",        limit: 50
    t.integer "Subfascial",      limit: 2
    t.float   "Depth"
    t.varchar "Characteristics", limit: 50
    t.varchar "Vessel",          limit: 50
    t.varchar "Assessment",      limit: 25
    t.float   "Diameter"
    t.varchar "DrainageVein",    limit: 50
    t.varchar "DrainageFlow",    limit: 50
    t.integer "Used",            limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_UE_VenousDuplex", primary_key: "SS_PVD_UEVenousDuplex_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID"
    t.varchar "Assessment",             limit: 25
    t.varchar "Side",                   limit: 10
    t.varchar "Vessel",                 limit: 50
    t.varchar "Compressibility",        limit: 25
    t.varchar "Spontaneous",            limit: 30
    t.varchar "Augment",                limit: 10
    t.varchar "Status",                 limit: 35
    t.varchar "ThrombusType",           limit: 50
    t.varchar "ThrombusChronicity",     limit: 25
    t.varchar "ThrombusRecanalization", limit: 25
    t.varchar "Location",               limit: 50
    t.varchar "Flow",                   limit: 30
    t.varchar "ThrombusLandmark",       limit: 50
    t.float   "ThrombusDistanceTo"
    t.varchar "ThrombusAboveBelow",     limit: 25
    t.integer "Normal",                 limit: 2
    t.integer "Used",                   limit: 2
    t.integer "CNormal",                limit: 2
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PV_ID"
  end

  create_table "PVD_VenousResults", primary_key: "SS_Event_PV_ID", force: :cascade do |t|
    t.integer    "RightRefillTimeWOTourniquet",    limit: 2
    t.integer    "RightRefillTimeWTourniquet",     limit: 2
    t.integer    "LeftRefillTimeWOTourniquet",     limit: 2
    t.integer    "LeftRefillTimeWTourniquet",      limit: 2
    t.text_basic "LEVenousCommentsRight",          limit: 2147483647
    t.text_basic "LEVenousCommentsLeft",           limit: 2147483647
    t.text_basic "UEVenousCommentsRight",          limit: 2147483647
    t.text_basic "UEVenousCommentsLeft",           limit: 2147483647
    t.text_basic "LEVeinMapCommentsRight",         limit: 2147483647
    t.text_basic "LEVeinMapCommentsLeft",          limit: 2147483647
    t.text_basic "UEVeinMapCommentsRight",         limit: 2147483647
    t.text_basic "UEVeinMapCommentsLeft",          limit: 2147483647
    t.integer    "NoSVTRight",                     limit: 2
    t.integer    "NoSVTLeft",                      limit: 2
    t.integer    "NoDVTRight",                     limit: 2
    t.integer    "NoDVTLeft",                      limit: 2
    t.integer    "NoDVTContralateralRight",        limit: 2
    t.integer    "NoDVTContralateralLeft",         limit: 2
    t.integer    "NoUE_SVTRight",                  limit: 2
    t.integer    "NoUE_SVTLeft",                   limit: 2
    t.integer    "NoUE_DVTRight",                  limit: 2
    t.integer    "NoUE_DVTLeft",                   limit: 2
    t.integer    "NoUE_DVTContralateralLeft",      limit: 2
    t.integer    "NoUE_DVTContralateralRight",     limit: 2
    t.varchar    "BasilicDrainageLocationRight",   limit: 50
    t.varchar    "BasilicDrainageLocationLeft",    limit: 50
    t.text_basic "DialysisPreopVeinCommentsRight", limit: 2147483647
    t.text_basic "DialysisPreopVeinCommentsLeft",  limit: 2147483647
    t.text_basic "LERefluxComments",               limit: 2147483647
    t.text_basic "CommentsAbdVenousDuplex",        limit: 2147483647
    t.varchar    "SubclavianFlowRight",            limit: 30
    t.varchar    "SubclavianFlowLeft",             limit: 30
    t.integer    "LE_DVTRight",                    limit: 2
    t.integer    "LE_DVTLeft",                     limit: 2
    t.integer    "LE_SVTRight",                    limit: 2
    t.integer    "LE_SVTLeft",                     limit: 2
    t.integer    "LE_DVTBilateral",                limit: 2
    t.integer    "LE_SVTBilateral",                limit: 2
    t.integer    "UE_DVTRight",                    limit: 2
    t.integer    "UE_DVTLeft",                     limit: 2
    t.integer    "UE_SVTRight",                    limit: 2
    t.integer    "UE_SVTLeft",                     limit: 2
    t.integer    "UE_DVTBilateral",                limit: 2
    t.integer    "UE_SVTBilateral",                limit: 2
    t.integer    "NoSVT_NoDVT",                    limit: 2
    t.integer    "NoSVT_NoDVTUE",                  limit: 2
    t.integer    "NoSVT_NoDVTUELeft",              limit: 2
    t.integer    "NoSVT_NoDVTLeft",                limit: 2
  end

  create_table "PV_DICOM_Studies", primary_key: "SS_PV_DICOM_ID", force: :cascade do |t|
    t.integer  "SS_Event_PV_ID",                 null: false
    t.varchar  "DICOM_UID",          limit: 100
    t.varchar  "FileName",           limit: 255
    t.varchar  "SS_SettingsKeyName", limit: 50
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",   limit: 80
    t.integer  "ExcludeFromReport",  limit: 2
    t.index ["DICOM_UID"], name: "DICOM_UID"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "PV_Images", primary_key: "SS_PV_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_PV_ID",                    null: false
    t.varchar  "Filename",              limit: 255
    t.varchar  "ImagingDevice",         limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",             limit: 30
    t.varchar  "Caption",               limit: 255
    t.varchar  "Media_UID",             limit: 50
    t.varchar  "Location",              limit: 50
    t.varchar  "SS_SettingsKeyName",    limit: 50
    t.varchar  "Status",                limit: 25
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.varchar  "StudyInstanceUID",      limit: 255
    t.integer  "CaptureMask"
    t.integer  "ExcludeFromReport",     limit: 2
    t.index ["Media_UID"], name: "Media_UID"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_PVInv_ID"
  end

  create_table "PV_MiscData", primary_key: "SS_PV_MiscData_ID", force: :cascade do |t|
    t.integer "SS_Event_PV_ID",               null: false
    t.varchar "ItemName",         limit: 80
    t.varchar "ItemAbbreviation", limit: 40
    t.varchar "ItemValue",        limit: 255
    t.varchar "ItemUnits",        limit: 20
    t.varchar "ItemComputation",  limit: 20
    t.float   "ItemStdDev"
    t.integer "AddToReport",      limit: 2
    t.index ["ItemStdDev"], name: "Media_UID"
    t.index ["SS_Event_PV_ID"], name: "SS_Event_Cath_ID"
  end

  create_table "PedEchoAPCollateral", primary_key: "SS_PedEchoAPCollateral_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "APCollateralsSize",    limit: 100
    t.varchar "APCollateralOrigin",   limit: 100
    t.varchar "APCollateralLung",     limit: 100
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoAPCollateral_ID"], name: "SS_PedEchoAPCollateral_ID"
  end

  create_table "PedEchoAVValves", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "NormalRTAVValve",               limit: 2
    t.integer    "RAVVLeafletAppNorm",            limit: 2
    t.integer    "RAVVLeafletAppThick",           limit: 2
    t.integer    "RAVVLeafletAppMildThick",       limit: 2
    t.integer    "RAVVLeafletAppModThick",        limit: 2
    t.integer    "RAVVLeafletAppSevThick",        limit: 2
    t.integer    "RAVVLeafletAppDysplastic",      limit: 2
    t.integer    "RAVVLeafletAppMildDysp",        limit: 2
    t.integer    "RAVVLeafletAppModDysp",         limit: 2
    t.integer    "RAVVLeafletAppSevDysp",         limit: 2
    t.integer    "RAVVLeafletAppRedundant",       limit: 2
    t.integer    "RAVVLeafletAppMyxomatous",      limit: 2
    t.integer    "RAVVLeafletAppParachute",       limit: 2
    t.integer    "RAVVLeafletAppNotAssessed",     limit: 2
    t.integer    "RAVVLeafletAppNWV",             limit: 2
    t.varchar    "RAVVSupBridgeLeafMob",          limit: 35
    t.varchar    "RAVVInferiorLeafMob",           limit: 35
    t.varchar    "RAVVInfBridgeLeafMob",          limit: 35
    t.varchar    "RAVVAntSupLeafMob",             limit: 35
    t.integer    "RAVVAccTissue",                 limit: 2
    t.integer    "RAVVAccTissueSupBridge",        limit: 2
    t.integer    "RAVVAccTissueInferior",         limit: 2
    t.integer    "RAVVAccTissueInfBridgeLeaf",    limit: 2
    t.integer    "RAVVAccTissueRightAntsup",      limit: 2
    t.integer    "RAVVNonCoapt",                  limit: 2
    t.integer    "RAVVNonCoaptAnnDil",            limit: 2
    t.integer    "RAVVNonCoaptLeafTether",        limit: 2
    t.integer    "RAVVLeafDef",                   limit: 2
    t.integer    "RAVVLeafDefSupBridgLeaf",       limit: 2
    t.integer    "RAVVLeafDefInferiorLeaf",       limit: 2
    t.integer    "RAVVLeafDefInferiorBridge",     limit: 2
    t.integer    "RAVVLeafDefAntSup",             limit: 2
    t.integer    "RAVVLeafAbsSupBridgLeaf",       limit: 2
    t.integer    "RAVVLeafAbsInferiorLeaf",       limit: 2
    t.integer    "RAVVLeafAbsInferiorBridge",     limit: 2
    t.integer    "RAVVLeafAbsAntSup",             limit: 2
    t.integer    "RAVVLeafPerfSupBridgLeaf",      limit: 2
    t.integer    "RAVVLeafPerfInferiorLeaf",      limit: 2
    t.integer    "RAVVLeafPerfInferiorBridge",    limit: 2
    t.integer    "RAVVLeafPerfAntSup",            limit: 2
    t.integer    "NoRAVVProlapse",                limit: 2
    t.varchar    "RAVVProlapseSupBridge",         limit: 30
    t.varchar    "RAVVProlapseAntSup",            limit: 30
    t.varchar    "RAVVProlapseInf",               limit: 30
    t.varchar    "RAVVProlapseInfBridge",         limit: 30
    t.integer    "RAVVChordNml",                  limit: 2
    t.integer    "RAVVChordThick",                limit: 2
    t.integer    "RAVVChordShort",                limit: 2
    t.integer    "RAVVChordMuscularized",         limit: 2
    t.integer    "RAVVChordRedundant",            limit: 2
    t.integer    "RAVVChordThickened",            limit: 2
    t.integer    "RAVVChordInsertInRVOT",         limit: 2
    t.integer    "RAVVChordNotAssessed",          limit: 2
    t.integer    "RAVVChordNWV",                  limit: 2
    t.integer    "RAVVAntLeafNml",                limit: 2
    t.integer    "RAVVAntLeafShort",              limit: 2
    t.integer    "RAVVAntLeafMuscularized",       limit: 2
    t.integer    "RAVVAntLeafRedundant",          limit: 2
    t.integer    "RAVVAntLeafThick",              limit: 2
    t.integer    "RAVVAntLeafRupture",            limit: 2
    t.integer    "RAVVAntLeafInsertInRVOT",       limit: 2
    t.integer    "RAVVSeptLeafNml",               limit: 2
    t.integer    "RAVVSeptLeafShort",             limit: 2
    t.integer    "RAVVSeptLeafMuscularized",      limit: 2
    t.integer    "RAVVSeptLeafRedundSept",        limit: 2
    t.integer    "RAVVSeptLeafThick",             limit: 2
    t.integer    "RAVVSeptLeafRupture",           limit: 2
    t.integer    "RAVVSeptLeafInsertInRVOT",      limit: 2
    t.integer    "RAVVPostLeafNml",               limit: 2
    t.integer    "RAVVPostLeafShort",             limit: 2
    t.integer    "RAVVPostLeafMuscularized",      limit: 2
    t.integer    "RAVVPostLeafRedundPost",        limit: 2
    t.integer    "RAVVPostLeafThick",             limit: 2
    t.integer    "RAVVPostLeafRupture",           limit: 2
    t.integer    "RAVVPostLeafInsertInRVOT",      limit: 2
    t.integer    "RAVVAccesChordRVOT",            limit: 2
    t.integer    "RAVVAccesChordSept",            limit: 2
    t.varchar    "RAVVPMAssess",                  limit: 30
    t.integer    "RAVVEFE",                       limit: 2
    t.integer    "RAVVEFEMedial",                 limit: 2
    t.integer    "RAVVEFEInferior",               limit: 2
    t.integer    "RAVVEFEAnterior",               limit: 2
    t.integer    "RAVVCalc",                      limit: 2
    t.integer    "RAVVCalcMedial",                limit: 2
    t.integer    "RAVVCalcInferior",              limit: 2
    t.integer    "RAVVCalcAnterior",              limit: 2
    t.integer    "RAVVHypoMedial",                limit: 2
    t.integer    "RAVVHypoInferior",              limit: 2
    t.integer    "RAVVHypoAnterior",              limit: 2
    t.integer    "RAVVHypoNotAssessed",           limit: 2
    t.integer    "RAVVHypoNWV",                   limit: 2
    t.varchar    "RAVVStenosis",                  limit: 35
    t.varchar    "RAVVRegurgitation",             limit: 35
    t.integer    "RAVVRegurgMedial",              limit: 2
    t.integer    "RAVVRegurgCentral",             limit: 2
    t.integer    "RAVVRegurgLateral",             limit: 2
    t.integer    "RAVVRegurgAnterior",            limit: 2
    t.integer    "RAVVRegurgPosterior",           limit: 2
    t.integer    "RAVVLeafletAppCleft",           limit: 2
    t.varchar    "RAVVJetDirection",              limit: 25
    t.varchar    "RAVVAnnSize",                   limit: 25
    t.float      "RAVVCircumf"
    t.float      "RAVVArea"
    t.integer    "RAVVProstheticValve",           limit: 2
    t.integer    "RAVVBioprostheticValve",        limit: 2
    t.varchar    "RAVVProsthMobility",            limit: 35
    t.varchar    "RAVVPerivalvLeak",              limit: 25
    t.integer    "RAVVLeakLocMedial",             limit: 2
    t.integer    "RAVVLeakLocLateral",            limit: 2
    t.integer    "RAVVLeakLocAnterior",           limit: 2
    t.integer    "RAVVLeakLocPosterior",          limit: 2
    t.varchar    "RAVVMassSize",                  limit: 25
    t.varchar    "RAVVMassDiff",                  limit: 25
    t.varchar    "RAVVMassMobility",              limit: 35
    t.varchar    "RAVVMassLocation",              limit: 25
    t.varchar    "RAVVMassConsistency",           limit: 25
    t.text_basic "RAVVMassComments",              limit: 2147483647
    t.float      "RAVVMassDim1"
    t.float      "RAVVMassDim2"
    t.integer    "NormalLtAVValve",               limit: 2
    t.integer    "LAVVLeafletAppNorm",            limit: 2
    t.integer    "LAVVLeafletAppThick",           limit: 2
    t.integer    "LAVVLeafletAppMildThick",       limit: 2
    t.integer    "LAVVLeafletAppModThick",        limit: 2
    t.integer    "LAVVLeafletAppSevThick",        limit: 2
    t.integer    "LAVVLeafletAppDysplastic",      limit: 2
    t.integer    "LAVVLeafletAppMildDysp",        limit: 2
    t.integer    "LAVVLeafletAppModDysp",         limit: 2
    t.integer    "LAVVLeafletAppSevDysp",         limit: 2
    t.integer    "LAVVLeafletAppRedundant",       limit: 2
    t.integer    "LAVVLeafletAppMyxomatous",      limit: 2
    t.integer    "LAVVLeafletAppNotAssessed",     limit: 2
    t.integer    "LAVVLeafletAppNWV",             limit: 2
    t.varchar    "LAVVLeafletMobility",           limit: 35
    t.varchar    "LAVVAntBridgeLeafMob",          limit: 35
    t.varchar    "LAVVInferiorBridgeLeafMob",     limit: 35
    t.varchar    "LAVVMuralLeafMob",              limit: 35
    t.varchar    "LAVVAntLeafMob",                limit: 35
    t.integer    "LAVVAccTissue",                 limit: 2
    t.integer    "LAVVAccTissueSupBridge",        limit: 2
    t.integer    "LAVVAccTissueInferior",         limit: 2
    t.integer    "LAVVAccTissueInfBridgeLeaf",    limit: 2
    t.integer    "LAVVAccTissueRightAntsup",      limit: 2
    t.integer    "LAVVNonCoapt",                  limit: 2
    t.integer    "LAVVNonCoaptAnnDil",            limit: 2
    t.integer    "LAVVNonCoaptLeafTether",        limit: 2
    t.integer    "LAVVLeafDef",                   limit: 2
    t.integer    "LAVVLeafDefSupBridgLeaf",       limit: 2
    t.integer    "LAVVLeafDefInferiorLeaf",       limit: 2
    t.integer    "LAVVLeafDefMural",              limit: 2
    t.integer    "LAVVLeafDefAnterior",           limit: 2
    t.integer    "LAVVLeafFenestSupBridgLeaf",    limit: 2
    t.integer    "LAVVLeafFenestInferiorLeaf",    limit: 2
    t.integer    "LAVVLeafFenesteMural",          limit: 2
    t.integer    "LAVVLeafFenestAnterior",        limit: 2
    t.integer    "LAVVLeafAbsSupBridgLeaf",       limit: 2
    t.integer    "LAVVLeafAbsInferiorLeaf",       limit: 2
    t.integer    "LAVVLeafAbsMural",              limit: 2
    t.integer    "LAVVLeafAbsAnterior",           limit: 2
    t.integer    "LAVVLeafPerfSupBridgLeaf",      limit: 2
    t.integer    "LAVVLeafPerfInferiorLeaf",      limit: 2
    t.integer    "LAVVLeafPerfInferiorBridge",    limit: 2
    t.integer    "LAVVLeafPerfAntSup",            limit: 2
    t.integer    "NoLAVVProlapse",                limit: 2
    t.varchar    "LAVVProlapseSupBridge",         limit: 30
    t.varchar    "LAVVProlapseMural",             limit: 30
    t.varchar    "LAVVProlapseInf",               limit: 30
    t.varchar    "LAVVProlapseAnterior",          limit: 30
    t.integer    "LAVVChordNml",                  limit: 2
    t.integer    "LAVVChordThick",                limit: 2
    t.integer    "LAVVChordShort",                limit: 2
    t.integer    "LAVVChordMuscularized",         limit: 2
    t.integer    "LAVVChordRedundant",            limit: 2
    t.integer    "LAVVChordThickened",            limit: 2
    t.integer    "LAVVChordInsertInRVOT",         limit: 2
    t.integer    "LAVVChordNotAssessed",          limit: 2
    t.integer    "LAVVChordNWV",                  limit: 2
    t.integer    "LAVVSupBridgeLeafNml",          limit: 2
    t.integer    "LAVVSupBridgeLeafShort",        limit: 2
    t.integer    "LAVVSupBridgeLeafMuscularized", limit: 2
    t.integer    "LAVVSupBridgeLeafRedSupB",      limit: 2
    t.integer    "LAVVSupBridgeLeafThick",        limit: 2
    t.integer    "LAVVSupBridgeLeafRupture",      limit: 2
    t.integer    "LAVVInfBridgeLeafNml",          limit: 2
    t.integer    "LAVVInfBridgeLeafShort",        limit: 2
    t.integer    "LAVVInfBridgeLeafMuscularized", limit: 2
    t.integer    "LAVVInfBridgeLeafRedInfB",      limit: 2
    t.integer    "LAVVInfBridgeLeafThick",        limit: 2
    t.integer    "LAVVInfBridgeLeafRupture",      limit: 2
    t.integer    "LAVVMuralLeafNml",              limit: 2
    t.integer    "LAVVMuralLeafShort",            limit: 2
    t.integer    "LAVVMuralLeafMuscularized",     limit: 2
    t.integer    "LAVVMuralLeafRedundMural",      limit: 2
    t.integer    "LAVVMuralLeafThick",            limit: 2
    t.integer    "LAVVMuralLeafRupture",          limit: 2
    t.integer    "LAVVAccesChordLVOT",            limit: 2
    t.integer    "LAVVAccesChordSept",            limit: 2
    t.varchar    "LAVVPMAssess",                  limit: 30
    t.integer    "LAVVEFE",                       limit: 2
    t.integer    "LAVVEFEALPM",                   limit: 2
    t.integer    "LAVVEFEPMPM",                   limit: 2
    t.integer    "LAVVCalc",                      limit: 2
    t.integer    "LAVVCalcALPM",                  limit: 2
    t.integer    "LAVVCalcPMPM",                  limit: 2
    t.integer    "LAVVHypoALPM",                  limit: 2
    t.integer    "LAVVHypoPMPM",                  limit: 2
    t.varchar    "LAVVStenosis",                  limit: 30
    t.varchar    "LAVVRegurgitation",             limit: 30
    t.integer    "LAVVRegurgMedial",              limit: 2
    t.integer    "LAVVRegurgCentral",             limit: 2
    t.integer    "LAVVRegurgLateral",             limit: 2
    t.integer    "LAVVRegurgAnterior",            limit: 2
    t.integer    "LAVVRegurgPosterior",           limit: 2
    t.integer    "LAVVRegurgCleft",               limit: 2
    t.integer    "LAVVRegurgMultiple",            limit: 2
    t.varchar    "LAVVJetDirection",              limit: 25
    t.varchar    "LAVVAnnSize",                   limit: 25
    t.float      "LAVVCircumf"
    t.float      "LAVVArea"
    t.integer    "LAVVProstheticValve",           limit: 2
    t.integer    "LAVVBioprostheticValve",        limit: 2
    t.varchar    "LAVVProsthMobility",            limit: 25
    t.varchar    "LAVVPerivalvLeak",              limit: 25
    t.integer    "LAVVLeakLocMedial",             limit: 2
    t.integer    "LAVVLeakLocLateral",            limit: 2
    t.integer    "LAVVLeakLocAnterior",           limit: 2
    t.integer    "LAVVLeakLocPosterior",          limit: 2
    t.varchar    "LAVVMassSize",                  limit: 25
    t.varchar    "LAVVMassDiff",                  limit: 25
    t.varchar    "LAVVMassMobility",              limit: 35
    t.varchar    "LAVVMassLocation",              limit: 25
    t.varchar    "LAVVMassConsistency",           limit: 25
    t.text_basic "LAVVMassComments",              limit: 2147483647
    t.float      "LAVVMassDim1"
    t.float      "LAVVMassDim2"
    t.varchar    "RAVVLeafletMobility",           limit: 35
    t.integer    "RAVVLeafFenestSupBridgLeaf",    limit: 2
    t.integer    "RAVVLeafFenestInferiorLeaf",    limit: 2
    t.integer    "RAVVLeafFenestInferiorBridge",  limit: 2
    t.integer    "RAVVLeafFenestAntSup",          limit: 2
    t.text_basic "Findings",                      limit: 2147483647
    t.varchar    "LtAVVValveFlow",                limit: 50
    t.varchar    "RtAVVValveFlow",                limit: 50
    t.integer    "LAVVPD_DominantALPM",           limit: 2
    t.integer    "LAVVPD_DomminantPMPM",          limit: 2
    t.integer    "LAVVPD_MultiHeadsALPM",         limit: 2
    t.integer    "LAVVPD_MultiHeadsPMPM",         limit: 2
    t.integer    "LAVVPD_CloselySpaced",          limit: 2
    t.integer    "LAVVPD_RotateClockwise",        limit: 2
    t.integer    "LAVVPD_RotateCounterclockwise", limit: 2
    t.integer    "LAVVLeafletMorphResCleft",      limit: 2
    t.integer    "LAVVLeafletMorphCleft",         limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoAVValves2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "LAVVLeafletMorphDblOrifice",    limit: 2
    t.integer    "LAVVLeafletMorphParachute",     limit: 2
    t.integer    "LAVVLeafletMorphParALPM",       limit: 2
    t.integer    "LAVVLeafletMorphParPMPM",       limit: 2
    t.integer    "LAVVLeafletMorphSupravlavRing", limit: 2
    t.integer    "LAVVLeafletMorphArcade",        limit: 2
    t.integer    "LAVVLeafletMorphNotAssessed",   limit: 2
    t.integer    "LAVVLeafletMorphNWV",           limit: 2
    t.integer    "RAVVRegurgMultiple",            limit: 2
    t.integer    "LAVVAccTissueMuralLeaf",        limit: 2
    t.integer    "LAVVAccTissueAntLeaf",          limit: 2
    t.integer    "RAVVRegurgCleft",               limit: 2
    t.text_basic "TricuspidValveComments",        limit: 2147483647
    t.text_basic "MitralValveComments",           limit: 2147483647
    t.text_basic "RtAVValveComments",             limit: 2147483647
    t.text_basic "LtAVValveComments",             limit: 2147483647
    t.text_basic "CommAVValveComments",           limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoArterialLines", primary_key: "SS_PedEchoAL_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "ArterialCatheterType",          limit: 40
    t.varchar "ArterialCatheterPosition",      limit: 35
    t.integer "ArterialCatheterNoThrombusVeg", limit: 2
    t.varchar "ArterialCatheterMass",          limit: 40
    t.varchar "ArterialCatheterMassSize",      limit: 35
    t.varchar "ArterialCatheterMassLoc",       limit: 40
    t.varchar "ArterialCatheterMassMobility",  limit: 35
    t.float   "ArterialCatheterDim1"
    t.float   "ArterialCatheterDim2"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoArteries", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "AscAoHypoplasia",                limit: 80
    t.varchar    "AscAoSupravalvarStenosis",       limit: 80
    t.integer    "AscAoDilSinusofValsalva",        limit: 2
    t.integer    "AscAoDilSTRidge",                limit: 2
    t.integer    "AscAoDilSTJunct",                limit: 2
    t.integer    "AscAoDilAscAo",                  limit: 2
    t.integer    "IncludeAoRootCalc",              limit: 2
    t.integer    "IncludeAscAoCalc",               limit: 2
    t.integer    "PostStenoticAoDilitation",       limit: 2
    t.float      "PostStenoticAoDilatationDim"
    t.varchar    "AscAoAneurysmType",              limit: 80
    t.float      "AscAoAneurysmDim"
    t.varchar    "APWindowLocation",               limit: 80
    t.varchar    "APWindowShuntDirection",         limit: 80
    t.float      "APWindowDim"
    t.varchar    "LVAoTunnelSize",                 limit: 80
    t.varchar    "AscAoMassSize",                  limit: 80
    t.varchar    "AscAoMassDiff",                  limit: 80
    t.varchar    "AscAoMassMobility",              limit: 80
    t.varchar    "AscAoMassLocation",              limit: 80
    t.varchar    "AscAoMassConsistency",           limit: 80
    t.text_basic "AscAoMassComments",              limit: 2147483647
    t.float      "AscAoMassDim1"
    t.float      "AscAoMassDim2"
    t.varchar    "AorticArchBranching",            limit: 80
    t.integer    "AoArchBranchingCommonOrigin",    limit: 2
    t.varchar    "AoArchVascularRing",             limit: 80
    t.integer    "AoArchVesIsolationInnom",        limit: 2
    t.integer    "AoArchVesIsolationLtCCA",        limit: 2
    t.integer    "AoArchVesIsolationRtCCA",        limit: 2
    t.integer    "AoArchVesIsolationLtSubcl",      limit: 2
    t.integer    "AoArchVesIsolationRtSubcl",      limit: 2
    t.varchar    "CervicalArchObst",               limit: 80
    t.varchar    "DoubleAorticArch",               limit: 80
    t.integer    "TransversArchHypoplasia",        limit: 2
    t.integer    "TransversArchDilatation",        limit: 2
    t.integer    "IncludeTransAoArchCalc",         limit: 2
    t.varchar    "AorticIsthmusHypoplasia",        limit: 80
    t.integer    "IncludeAorticIsthmusCalc",       limit: 2
    t.integer    "CoarctTypeDiscreteShelf",        limit: 2
    t.integer    "CoarctTypeLongSegment",          limit: 2
    t.integer    "CoarctTypeIntraluminalWeb",      limit: 2
    t.varchar    "CoarctSeverity",                 limit: 80
    t.varchar    "InterruptedAorticArch",          limit: 80
    t.integer    "NmlCoronaryArteries",            limit: 2
    t.varchar    "CoroArtEctasia",                 limit: 80
    t.integer    "IncludeLtMainCalcs",             limit: 2
    t.integer    "IncludeRCACalcs",                limit: 2
    t.integer    "CoroArtOrigRCAfrRCC",            limit: 2
    t.integer    "CoroArtOrigLMCAfrLCC",           limit: 2
    t.integer    "CoroArtOrigLADfrLMCA",           limit: 2
    t.integer    "CoroArtOrigCxfrLMCA",            limit: 2
    t.integer    "CoroArtOrigRCANWV",              limit: 2
    t.integer    "CoroArtOrigLMCANWV",             limit: 2
    t.integer    "CoroArtOrigLADNWV",              limit: 2
    t.integer    "CoroArtOrigCxNWV",               limit: 2
    t.integer    "CoroArtOrigNotAssessed",         limit: 2
    t.integer    "CoroArtOrigNWV",                 limit: 2
    t.varchar    "SingleCoronaryArtery",           limit: 80
    t.integer    "CoroArtOrigAnomLMCAfrRCC",       limit: 2
    t.integer    "CoroArtOrigAnomLMCAfrRCA",       limit: 2
    t.integer    "CoroArtOrigAnomRCAfrLCC",        limit: 2
    t.integer    "CoroArtOrigAnomRCAfrLMCA",       limit: 2
    t.integer    "CoroArtOrigAnomCxfrRCC",         limit: 2
    t.integer    "CoroArtOrigAnomCxfrRCA",         limit: 2
    t.integer    "CoroArtOrigAnomLADfrRCC",        limit: 2
    t.integer    "CoroArtOrigAnomLADfrRCA",        limit: 2
    t.integer    "MiscCoroArtAnomDualLAD",         limit: 2
    t.integer    "MiscCoroArtAnomConalBranch",     limit: 2
    t.integer    "MiscCoroArtAnomHighLMCA",        limit: 2
    t.integer    "MiscCoroArtAnomHighLAD",         limit: 2
    t.integer    "MiscCoroArtAnomHighCx",          limit: 2
    t.integer    "MiscCoroArtAnomHighRCA",         limit: 2
    t.integer    "MiscCoroArtAnomAcuteAngleLMCA",  limit: 2
    t.integer    "MiscCoroArtAnomAcuteAngleLAD",   limit: 2
    t.integer    "MiscCoroArtAnomAcuteAngleCx",    limit: 2
    t.integer    "MiscCoroArtAnomAcuteAngleRCA",   limit: 2
    t.varchar    "CourseOfCoronaryArteries",       limit: 80
    t.varchar    "IntramuralCoronaryArteries",     limit: 80
    t.integer    "RCAOstialStenosisByColor",       limit: 2
    t.integer    "RCAOstialStenosisByColour",      limit: 2
    t.integer    "RCAOstialStenosisBy2D",          limit: 2
    t.integer    "RCAAtresia",                     limit: 2
    t.integer    "LCAOstialStenosisByColor",       limit: 2
    t.integer    "LCAOstialStenosisByColour",      limit: 2
    t.integer    "LCAOstialStenosisBy2D",          limit: 2
    t.integer    "RVDependCircLeft",               limit: 2
    t.integer    "RVDependCircRight",              limit: 2
    t.integer    "AnomOriginLMCAfrPA",             limit: 2
    t.integer    "AnomOriginRCAfrPA",              limit: 2
    t.integer    "AnomOriginCxfrPA",               limit: 2
    t.integer    "AnomOriginLADfrPA",              limit: 2
    t.integer    "AnomOriginBothfrPA",             limit: 2
    t.varchar    "CoronaryArteryEctasiaRCA",       limit: 80
    t.varchar    "CoronaryArteryEctasiaLMCA",      limit: 80
    t.varchar    "CoronaryArteryEctasiaLAD",       limit: 80
    t.varchar    "CoronaryArteryEctasiaCx",        limit: 80
    t.varchar    "CoronaryArteryEctasiaPD",        limit: 80
    t.varchar    "CoronaryArteryAneurysm",         limit: 80
    t.varchar    "CoroArtAneurysmSegment",         limit: 80
    t.varchar    "CoroArtAneurysmSize",            limit: 80
    t.float      "CoroArtAneurysmDiam"
    t.float      "CoroArtAneurysmLength"
    t.varchar    "CoroArtAneurysmThrombus",        limit: 80
    t.varchar    "CoronaryFistula",                limit: 80
    t.varchar    "CoronaryFistulaDrainage",        limit: 80
    t.varchar    "CoronaryFistulaSize",            limit: 80
    t.float      "CoronaryFistulaMeasurement"
    t.varchar    "CoronarySinusoidRV",             limit: 80
    t.varchar    "CoronarySinusoidLV",             limit: 80
    t.integer    "NmlMPAandBranchPAs",             limit: 2
    t.integer    "IncludeMPACalcs",                limit: 2
    t.varchar    "SupravalvarPulmonaryStenosis",   limit: 80
    t.float      "SupravalvarPulmStenosisDiam"
    t.varchar    "PAMassSize",                     limit: 80
    t.varchar    "PAMassDiff",                     limit: 80
    t.varchar    "PAMassMobility",                 limit: 80
    t.varchar    "PAMassLocation",                 limit: 80
    t.varchar    "PAMassConsistency",              limit: 80
    t.text_basic "PAMassComments",                 limit: 2147483647
    t.float      "PAMassDim1"
    t.float      "PAMassDim2"
    t.varchar    "RPAMassSize",                    limit: 80
    t.varchar    "RPAMassDiff",                    limit: 80
    t.varchar    "RPAMassMobility",                limit: 80
    t.varchar    "RPAMassLocation",                limit: 80
    t.varchar    "RPAMassConsistency",             limit: 80
    t.text_basic "RPAMassComments",                limit: 2147483647
    t.float      "RPAMassDim1"
    t.float      "RPAMassDim2"
    t.varchar    "LPAMassSize",                    limit: 80
    t.text_basic "LPAMassComments",                limit: 2147483647
    t.float      "LPAMassDim1"
    t.float      "LPAMassDim2"
    t.text_basic "PAOrigins_CommonArtTrunkCom",    limit: 2147483647
    t.varchar    "LPAMassDiff",                    limit: 80
    t.varchar    "LPAMassMobility",                limit: 80
    t.varchar    "LPAMassLocation",                limit: 80
    t.varchar    "LPAMassConsistency",             limit: 80
    t.varchar    "PAConfluence",                   limit: 80
    t.varchar    "PASling",                        limit: 80
    t.varchar    "IsolatedAbsentRPA",              limit: 80
    t.varchar    "IsolatedAbsentLPA",              limit: 80
    t.varchar    "PAOrigins_CommonArtTrunk",       limit: 80
    t.integer    "MultipleAPCollaterals",          limit: 2
    t.varchar    "CrossedPulmArteries",            limit: 80
    t.varchar    "TortuousRPA_LPA",                limit: 80
    t.integer    "IncludeLPACalcs",                limit: 2
    t.float      "DistalRPADiam"
    t.integer    "IncludeDistalRPADiam",           limit: 2
    t.varchar    "RPAStenosis",                    limit: 80
    t.float      "RPAStenosisDiam"
    t.integer    "IncludeRPAStenosisDiam",         limit: 2
    t.integer    "RtPeripheralPAStenosis",         limit: 2
    t.varchar    "RPAFlow",                        limit: 80
    t.float      "DistalLPADiam"
    t.integer    "IncludeDistalLPADiam",           limit: 2
    t.varchar    "LPAStenosis",                    limit: 80
    t.float      "LPAStenosisDiam"
    t.integer    "IncludeLPAStenosisDiam",         limit: 2
    t.varchar    "SmallAPArteries",                limit: 80
    t.integer    "LtPeripheralPAStenosis",         limit: 2
    t.varchar    "LPAFlow",                        limit: 80
    t.integer    "IncludeRPACalcs",                limit: 2
    t.text_basic "Findings",                       limit: 2147483647
    t.integer    "IntramuralCoroArtRCA",           limit: 2
    t.integer    "IntramuralCoroArtLMCA",          limit: 2
    t.integer    "IntramuralCoroArtLAD",           limit: 2
    t.integer    "IntramuralCoroArtCx",            limit: 2
    t.varchar    "CoroArtOriginsInDTGA",           limit: 80
    t.varchar    "InterarteriaCoroArtInDTGA",      limit: 80
    t.varchar    "PDAClosed",                      limit: 50
    t.integer    "IncludeLADCalcs",                limit: 2
    t.varchar    "DKSAnastomosis",                 limit: 35
    t.integer    "DKSFlowLaminar",                 limit: 2
    t.integer    "DKSFlowAccel",                   limit: 2
    t.integer    "DKSFlowTurbulent",               limit: 2
    t.integer    "DKSFlowAbsentDiast",             limit: 2
    t.integer    "IncludeSTJunctionCalc",          limit: 2
    t.varchar    "AscAoAneurysmLocOther",          limit: 100
    t.varchar    "AoArchStent",                    limit: 35
    t.integer    "AoArchStentPosProxDistToLCCA",   limit: 2
    t.integer    "AoArchStentPosProxEndOrigLCCA",  limit: 2
    t.integer    "AoArchStentPosProxEndCrossLCCA", limit: 2
    t.integer    "AoArchStentPosProxDistToLSCA",   limit: 2
    t.integer    "AoArchStentPosProxEndOrigLSCA",  limit: 2
    t.integer    "AoArchStentPosProxEndCrossLSCA", limit: 2
    t.integer    "AoArchStentPosCrossOrigLSCA",    limit: 2
    t.integer    "AoArchStentPosWellPostitioned",  limit: 2
    t.integer    "AoArchStenInnom",                limit: 2
    t.integer    "AoArchStenRCC",                  limit: 2
    t.integer    "AoArchStenRSA",                  limit: 2
    t.integer    "AoArchStenLtInnom",              limit: 2
    t.integer    "AoArchStenLCC",                  limit: 2
    t.integer    "AoArchStenLSA",                  limit: 2
    t.integer    "AoArchAbsInnom",                 limit: 2
    t.integer    "AoArchAbsRCC",                   limit: 2
    t.integer    "AoArchAbsRSA",                   limit: 2
    t.integer    "AoArchAbsLtInnom",               limit: 2
    t.integer    "AoArchAbsLCC",                   limit: 2
    t.integer    "AoArchAbsLSA",                   limit: 2
    t.integer    "AorticArchBranchNorm",           limit: 2
    t.integer    "AorticArchBranchMirrorImage",    limit: 2
    t.integer    "AorticArchBranchAbberRSA",       limit: 2
    t.integer    "AorticArchBranchAbbLSA",         limit: 2
    t.integer    "AorticArchBranchDivOfKomm",      limit: 2
    t.integer    "AoArchBranchingCommOrigAll",     limit: 2
    t.integer    "AorticArchBranchNotAssessed",    limit: 2
    t.integer    "AorticArchBranchNWV",            limit: 2
    t.varchar    "AscAoMassLocationOther",         limit: 100
    t.varchar    "AVAoTunnelSize",                 limit: 20
    t.integer    "NormalFlowAbAo",                 limit: 2
    t.integer    "UnobsLA",                        limit: 2
    t.integer    "NormalAbAo",                     limit: 2
    t.integer    "AscAoNml_SinusofValsalva",       limit: 2
    t.integer    "AscAoNml_STJuntion",             limit: 2
    t.integer    "AscAoNml_STRidge",               limit: 2
    t.integer    "AscAoNml_AscAo",                 limit: 2
    t.integer    "AscAoMildDil_SinusesOfValsalva", limit: 2
    t.integer    "AscAoMildDil_STJunction",        limit: 2
    t.integer    "AscAoMildDil_STRidge",           limit: 2
    t.integer    "AscAoMildDil_AscAo",             limit: 2
    t.integer    "AscAoModDil_SinusesOfValsalva",  limit: 2
    t.integer    "AscAoModDil_STJunction",         limit: 2
    t.integer    "AscAoModDil_STRidge",            limit: 2
    t.integer    "AscAoModDil_AscAo",              limit: 2
    t.integer    "AscAoSevDil_SinusesOfValsalva",  limit: 2
    t.integer    "AscAoSevDil_STJunction",         limit: 2
    t.integer    "AscAoSevDil_STRidge",            limit: 2
    t.integer    "AscAoSevDil_AscAo",              limit: 2
    t.text_basic "MultiCoronaryFistulasComments",  limit: 2147483647
    t.integer    "MPABandWellPostioned",           limit: 2
    t.integer    "MPABandMigratedDistal",          limit: 2
    t.integer    "MPABandAppearsTight",            limit: 2
    t.integer    "MPABandAppearsLoose",            limit: 2
    t.integer    "MPABandNotAssessed",             limit: 2
    t.integer    "MPABandNWV",                     limit: 2
    t.text_basic "AscendingAortaComments",         limit: 2147483647
    t.text_basic "AorticArchComments",             limit: 2147483647
    t.text_basic "MPABranchPAComments",            limit: 2147483647
    t.text_basic "CoronaryComments",               limit: 2147483647
    t.text_basic "PDAComments",                    limit: 2147483647
    t.text_basic "APCollatWindowShuntsComments",   limit: 2147483647
  end

  create_table "PedEchoArteries2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "AoArchStentAppWellExpanded",     limit: 2
    t.integer    "AoArchStentAppNarrow",           limit: 2
    t.integer    "AoArchStentAppNarrowProx",       limit: 2
    t.integer    "AoArchStentAppNarrowMid",        limit: 2
    t.integer    "AoArchStentAppNarrowDistal",     limit: 2
    t.integer    "AoArchStentAppNarrowDiffuse",    limit: 2
    t.integer    "AoArchStentFlowUnobst",          limit: 2
    t.integer    "AoArchStentFlowMildAccel",       limit: 2
    t.integer    "AoArchStentFlowProxAccel",       limit: 2
    t.integer    "AoArchStentFlowDistalAccel",     limit: 2
    t.integer    "AoArchStentFlowTurbulent",       limit: 2
    t.integer    "AoArchStentFlowProxTurbulent",   limit: 2
    t.integer    "AoArchStentFlowDistalTurbulent", limit: 2
    t.integer    "AoArchStentFlowDiastRunOff",     limit: 2
    t.integer    "UnobstructedAorticArch",         limit: 2
    t.integer    "AorticArchBranchNotAssessed",    limit: 2
    t.integer    "AorticArchBranchNWV",            limit: 2
    t.integer    "IncludeCXCalcs",                 limit: 2
    t.integer    "CoroArtOrigCxFrLCC",             limit: 2
    t.integer    "CoroArtOrigAnomCxFrLCC",         limit: 2
    t.integer    "LCAAtresia",                     limit: 2
    t.integer    "NoCaAneurysmLMCA",               limit: 2
    t.integer    "NoCaAneurysmLAD",                limit: 2
    t.integer    "NoCaAneurysmCx",                 limit: 2
    t.integer    "NoCaAneurysmRCA",                limit: 2
    t.integer    "NoCaAneurysmPD",                 limit: 2
    t.integer    "MultipleCoronaryFistulas",       limit: 2
    t.varchar    "PDAStent",                       limit: 40
    t.integer    "PDAPosWell",                     limit: 2
    t.integer    "PDAPosProxNotInMPA",             limit: 2
    t.integer    "PDAPosProxEndMigrat",            limit: 2
    t.integer    "PDAPosDistlExtToDesAo",          limit: 2
    t.integer    "PDAPosDistExtSignToDesAo",       limit: 2
    t.integer    "PDAPosJailsProxDesAo",           limit: 2
    t.varchar    "PDAAppearance",                  limit: 30
    t.integer    "PDAFlowUnobst",                  limit: 2
    t.integer    "PDAFlowMildAccel",               limit: 2
    t.integer    "PDAFlowMildProxAccel",           limit: 2
    t.integer    "PDAFlowMildDistalAccel",         limit: 2
    t.integer    "PDAFlowTurbulant",               limit: 2
    t.integer    "PDAFlowProxTurbulant",           limit: 2
    t.integer    "PDAFlowDistalTurbulant",         limit: 2
    t.varchar    "PDAOccluder",                    limit: 25
    t.integer    "PDAPosWellPostitioned",          limit: 2
    t.integer    "PDAPosEncroachLPAOrigin",        limit: 2
    t.integer    "PDAPosEncroachRPAOrigin",        limit: 2
    t.integer    "PDAPospProtrudesDesAo",          limit: 2
    t.varchar    "ResidualPDA",                    limit: 25
    t.integer    "NoPDADeviceMass",                limit: 2
    t.varchar    "PDADeviceEmobliz",               limit: 40
    t.varchar    "PDACoilEmboliz",                 limit: 40
    t.varchar    "PAEndMassSize",                  limit: 25
    t.varchar    "PAEndMassMobility",              limit: 25
    t.float      "PAEndMassDimension1"
    t.float      "PAEndMassDimension2"
    t.varchar    "PAEndMassDifferential",          limit: 25
    t.varchar    "AoEndMassSize",                  limit: 25
    t.varchar    "AoEndMassMobility",              limit: 25
    t.float      "AoEndMassDim1"
    t.float      "AoEndMassDim2"
    t.varchar    "AoEndMassDifferential",          limit: 25
    t.integer    "NoAPCollaterals",                limit: 2
    t.varchar    "RAPStent",                       limit: 25
    t.varchar    "RAPStentPosition",               limit: 40
    t.integer    "RAPStentAppWellExpand",          limit: 2
    t.integer    "RAPStentAppNarrow",              limit: 2
    t.integer    "RAPStentAppNarrowProx",          limit: 2
    t.integer    "RAPStentAppNarrowMid",           limit: 2
    t.integer    "RAPStentAppNarrowDistal",        limit: 2
    t.integer    "RAPStentAppNarrowDiffuse",       limit: 2
    t.integer    "RAPStentFlowUnobst",             limit: 2
    t.integer    "RAPStentFlowMidFlowAccel",       limit: 2
    t.integer    "RAPStentFlowTurbulant",          limit: 2
    t.integer    "RAPStentFlowLPAObstStent",       limit: 2
    t.integer    "RPABandWellPostioned",           limit: 2
    t.integer    "RPABandMigratedDistal",          limit: 2
    t.integer    "RPABandAppearsTight",            limit: 2
    t.integer    "RPABandAppearsLoose",            limit: 2
    t.integer    "RPABandNotAssessed",             limit: 2
    t.integer    "RPABandNWV",                     limit: 2
    t.varchar    "RPAStenosisLoc",                 limit: 25
    t.varchar    "LPAStent",                       limit: 30
    t.varchar    "LPAStentPosition",               limit: 40
    t.integer    "LPAStentAppWellExpand",          limit: 2
    t.integer    "LPAStentAppNarrow",              limit: 2
    t.integer    "LPAStentAppNarrowProx",          limit: 2
    t.integer    "LPAStentAppNarrowMid",           limit: 2
    t.integer    "LPAStentAppNarrowDistal",        limit: 2
    t.integer    "LPAStentAppNarrowDiffuse",       limit: 2
    t.integer    "LPAStentFlowUnobst",             limit: 2
    t.integer    "LPAStentFlowMidFlowAccel",       limit: 2
    t.integer    "LPAStentFlowTurbulant",          limit: 2
    t.integer    "LPAStentFlowRPAObstStent",       limit: 2
    t.integer    "LPABandWellPostioned",           limit: 2
    t.integer    "LPABandMigratedDistal",          limit: 2
    t.integer    "LPABandAppearsTight",            limit: 2
    t.integer    "LPABandAppearsLoose",            limit: 2
    t.integer    "LPABandNotAssessed",             limit: 2
    t.integer    "LPABandNWV",                     limit: 2
    t.varchar    "LPAStenosisLocation",            limit: 25
    t.integer    "CCTGACoroInvert",                limit: 2
    t.integer    "CCTGACoroLCAFrLtSinus",          limit: 2
    t.integer    "CCTGACoroRCAFrRtSinus",          limit: 2
    t.integer    "CCTGACoroLCALtSinusSepOst",      limit: 2
    t.integer    "CCTGACoroRCARtSinusSepOst",      limit: 2
    t.integer    "CCTGACoroSingleFrLtSinus",       limit: 2
    t.integer    "CCTGACoroSingleFrRtSinus",       limit: 2
    t.integer    "CCTGACoroLCAOriginNWV",          limit: 2
    t.integer    "CCTGACoroRCAOriginNWV",          limit: 2
    t.integer    "CCTGACoroNotAssessed",           limit: 2
    t.integer    "CCTGACoroNWV",                   limit: 2
    t.varchar    "CCTGAInterArtCourse",            limit: 35
    t.integer    "CCTGACxFrRCA",                   limit: 2
    t.text_basic "CCTGAComments",                  limit: 2147483647
    t.integer    "TortuousRPA",                    limit: 2
    t.integer    "TortuousLPA",                    limit: 2
    t.integer    "AorticArchBranchDoKommAbbRSA",   limit: 2
    t.integer    "TransversArchNormal",            limit: 2
    t.integer    "TransversArchHypoplasiaMild",    limit: 2
    t.integer    "TransversArchHypoplasiaMod",     limit: 2
    t.integer    "TransversArchHypoplasiaSev",     limit: 2
    t.integer    "TransversArchDilatationMild",    limit: 2
    t.integer    "TransversArchDilatationMod",     limit: 2
    t.integer    "TransversArchDilatationSev",     limit: 2
    t.integer    "TransverseArchNmlLeft",          limit: 2
    t.integer    "TransverseArchNmlRight",         limit: 2
    t.integer    "TransverseArchHypoLeft",         limit: 2
    t.integer    "TransverseArchHypoLeftMild",     limit: 2
    t.integer    "TransverseArchHypoLeftMod",      limit: 2
    t.integer    "TransverseArchHypoLeftSev",      limit: 2
    t.integer    "TransverseArchDilRight",         limit: 2
    t.integer    "TransverseArchDilRightMild",     limit: 2
    t.integer    "TransverseArchDilRightMod",      limit: 2
    t.integer    "TransverseArchDilRightSev",      limit: 2
    t.integer    "TransverseArchHypoRight",        limit: 2
    t.integer    "TransverseArchHypoRightMild",    limit: 2
    t.integer    "TransverseArchHypoRightMod",     limit: 2
    t.integer    "TransverseArchHypoRightSev",     limit: 2
    t.integer    "TransverseArchDilLeft",          limit: 2
    t.integer    "TransverseArchDilLeftMild",      limit: 2
    t.integer    "TransverseArchDilLeftMod",       limit: 2
    t.integer    "TransverseArchDilLeftSev",       limit: 2
    t.integer    "TortuousTransverseArch",         limit: 2
    t.varchar    "DescendingAorta",                limit: 30
    t.varchar    "AbdominalAorta",                 limit: 25
    t.varchar    "RetrogradeArchObstruction",      limit: 30
    t.integer    "ThoracicCoarctation",            limit: 2
    t.integer    "AbdominalCoarctation",           limit: 2
    t.varchar    "RtArm_LtArmBPGradient",          limit: 50
    t.varchar    "Arm_LegBPGradient",              limit: 50
    t.varchar    "SystolicRetrogradeArchFlow",     limit: 50
    t.integer    "LaminarArchFlow_Transverse",     limit: 2
    t.integer    "TurbulentArchFlow_Transverse",   limit: 2
    t.integer    "AbdAoFlow_Nml",                  limit: 2
    t.integer    "HoloDiastFlowRev_AscAo",         limit: 2
    t.varchar    "DescFlowProfile",                limit: 35
    t.integer    "CollateralFlow",                 limit: 2
    t.integer    "CoroArtEctasia_RCA",             limit: 2
    t.integer    "BranchPALimit_SeenbyColor",      limit: 2
    t.integer    "BranchPALimit_RPASeenbyColor",   limit: 2
    t.integer    "BranchPALimit_LPASeenbyColor",   limit: 2
    t.integer    "BranchPALimit_RPANotSeen",       limit: 2
    t.integer    "BranchPALimit_LPANotSeen",       limit: 2
    t.varchar    "RPAStenosisDegree",              limit: 25
    t.varchar    "LPAStenosisDegree",              limit: 25
    t.integer    "LaminarArchFlow_ProxTransverse", limit: 2
    t.integer    "LaminarArchFlow_DistTransverse", limit: 2
    t.integer    "LaminarArchFlow_ProxDescAo",     limit: 2
    t.integer    "LaminarArchFlow_Isthmus",        limit: 2
    t.integer    "LaminarArchFlow_DescAo",         limit: 2
    t.integer    "LaminarArchFlow_AbdAo",          limit: 2
    t.integer    "TurbulentArchFlow_ProxTrans",    limit: 2
    t.integer    "TurbulentArchFlow_DistTrans",    limit: 2
    t.integer    "TurbulentArchFlow_ProxDescAo",   limit: 2
    t.integer    "TurbulentArchFlow_Isthmus",      limit: 2
    t.integer    "TurbulentArchFlow_Coarct",       limit: 2
    t.integer    "TurbulentArchFlow_DescAo",       limit: 2
    t.integer    "AbdAoFlow_LowVel",               limit: 2
    t.integer    "AbdAoFlow_ContDiastFlow",        limit: 2
    t.integer    "AbdAoFlow_ContDiastWOCoarc",     limit: 2
    t.integer    "AbdAoFlow_ContDiastPosCoarc",    limit: 2
    t.integer    "HoloDiastFlowRev_TransAo",       limit: 2
    t.integer    "HoloDiastFlowRev_DescAo",        limit: 2
    t.integer    "HoloDiastFlowRev_AbdAo",         limit: 2
    t.integer    "CoroArtEctasia_LMCA",            limit: 2
    t.integer    "CoroArtEctasia_LAD",             limit: 2
    t.integer    "CoroArtEctasia_Cx",              limit: 2
    t.integer    "CoroArtEctasia_PD",              limit: 2
    t.integer    "RCAAtresia",                     limit: 2
    t.integer    "CoarctTypeAorticAtresia",        limit: 2
  end

  create_table "PedEchoArteriesShunt", primary_key: "SS_PedEchoArteriesShunt_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID"
    t.varchar    "TypeOfShunt",               limit: 50
    t.varchar    "ShuntObstruction",          limit: 40
    t.integer    "ShuntSiteProx",             limit: 2
    t.integer    "ShuntSiteMid",              limit: 2
    t.integer    "ShuntSiteDistal",           limit: 2
    t.integer    "ShuntSiteDiffuse",          limit: 2
    t.varchar    "ShuntThrombus",             limit: 30
    t.integer    "ShuntFlowCont",             limit: 2
    t.integer    "ShuntFlowContGoodDiast",    limit: 2
    t.integer    "ShuntFlowContPossRedDiast", limit: 2
    t.integer    "ShuntFlowContRedDiast",     limit: 2
    t.integer    "ShuntFlowPulsatile",        limit: 2
    t.integer    "ShuntFlowContRevDiast",     limit: 2
    t.text_basic "ShuntComments",             limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoAtria", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float      "AnteriorRimDim"
    t.float      "AorticRimDim"
    t.varchar    "ASD",                            limit: 50
    t.float      "ASDDim1"
    t.float      "ASDDim2"
    t.varchar    "ASDPatchLeak1",                  limit: 50
    t.varchar    "ASDPatchLeak1Type",              limit: 50
    t.varchar    "ASDPatchLeak2",                  limit: 50
    t.varchar    "ASDPatchLeak2Type",              limit: 50
    t.varchar    "ASDRestriction",                 limit: 50
    t.varchar    "ASDShunting",                    limit: 50
    t.varchar    "ASDSize",                        limit: 50
    t.varchar    "AtrialBaffle",                   limit: 50
    t.integer    "BaffleLimbIVCNWV",               limit: 2
    t.integer    "BaffleLimbMildObstIVC",          limit: 2
    t.integer    "BaffleLimbMildObstSVC",          limit: 2
    t.integer    "BaffleLimbModObstIVC",           limit: 2
    t.integer    "BaffleLimbModObstSVC",           limit: 2
    t.integer    "BaffleLimbNotAssessed",          limit: 2
    t.integer    "BaffleLimbNWV",                  limit: 2
    t.integer    "BaffleLimbSevObstIVC",           limit: 2
    t.integer    "BaffleLimbSevObstSVC",           limit: 2
    t.integer    "BaffleLimbSVCNWV",               limit: 2
    t.integer    "BaffleLimbUnobstIVC",            limit: 2
    t.integer    "BaffleLimbUnobstSup_Inf",        limit: 2
    t.integer    "BaffleLimbUnobstSVC",            limit: 2
    t.integer    "CommonAtrium",                   limit: 2
    t.varchar    "CoronarySinusASD",               limit: 50
    t.float      "CoronarySinusASDDim1"
    t.float      "CoronarySinusASDDim2"
    t.varchar    "CoronarySinusASDPosition",       limit: 50
    t.varchar    "CoronarySinusASDRestriction",    limit: 50
    t.varchar    "CoronarySinusASDShunting",       limit: 50
    t.varchar    "CoronarySinusASDSize",           limit: 50
    t.varchar    "CoronarySinusASDUnroof_Fenest",  limit: 50
    t.float      "Cortiatriatum_InferiorASDDiam"
    t.varchar    "Cortiatriatum_InferiorASDL_R",   limit: 50
    t.float      "Cortiatriatum_InferiorASDMnGrd"
    t.float      "Cortiatriatum_InferiorASDPkGrd"
    t.float      "Cortiatriatum_SuperiorASDDiam"
    t.varchar    "Cortiatriatum_SuperiorASDL_R",   limit: 50
    t.float      "Cortiatriatum_SuperiorASDMnGrd"
    t.float      "Cortiatriatum_SuperiorASDPkGrd"
    t.varchar    "Cortiratriatum_ProxChambConLA",  limit: 50
    t.float      "Cortriatriatum_ConnectionMeas"
    t.float      "Cortriatriatum_ConnectionMnGrd"
    t.float      "Cortriatriatum_ConnectionPkGrd"
    t.varchar    "Cortriatriatum_PulmVeins",       limit: 50
    t.integer    "Device1LocAnterior",             limit: 2
    t.integer    "Device1LocCentral",              limit: 2
    t.integer    "Device1LocInferior",             limit: 2
    t.integer    "Device1LocPosterior",            limit: 2
    t.integer    "Device1LocSuperior",             limit: 2
    t.integer    "Device2LocAnterior",             limit: 2
    t.integer    "Device2LocCentral",              limit: 2
    t.integer    "Device2LocInferior",             limit: 2
    t.integer    "Device2LocPosterior",            limit: 2
    t.integer    "Device2LocSuperior",             limit: 2
    t.integer    "Device3LocAnterior",             limit: 2
    t.integer    "Device3LocCentral",              limit: 2
    t.integer    "Device3LocInferior",             limit: 2
    t.integer    "Device3LocPosterior",            limit: 2
    t.integer    "Device3LocSuperior",             limit: 2
    t.integer    "DeviceLeak1LocAnterior",         limit: 2
    t.integer    "DeviceLeak1LocAo",               limit: 2
    t.integer    "DeviceLeak1LocInferior",         limit: 2
    t.integer    "DeviceLeak1LocIVC",              limit: 2
    t.integer    "DeviceLeak1LocMV",               limit: 2
    t.integer    "DeviceLeak1LocPosterior",        limit: 2
    t.integer    "DeviceLeak1LocRUPV",             limit: 2
    t.integer    "DeviceLeak1LocSuperior",         limit: 2
    t.integer    "DeviceLeak1LocSVC",              limit: 2
    t.integer    "DeviceLeak1SizeLrgPeri",         limit: 2
    t.integer    "DeviceLeak1SizeModPeri",         limit: 2
    t.integer    "DeviceLeak1SizeMulti",           limit: 2
    t.integer    "DeviceLeak1SizeMultiLrg",        limit: 2
    t.integer    "DeviceLeak1SizeMultiMod",        limit: 2
    t.integer    "DeviceLeak1SizeMultiSm",         limit: 2
    t.integer    "DeviceLeak1SizeNone",            limit: 2
    t.integer    "DeviceLeak1SizeSmallIntra",      limit: 2
    t.integer    "DeviceLeak1SizeSmallPeri",       limit: 2
    t.integer    "DeviceLeak2LocAnterior",         limit: 2
    t.integer    "DeviceLeak2LocAo",               limit: 2
    t.integer    "DeviceLeak2LocInferior",         limit: 2
    t.integer    "DeviceLeak2LocIVC",              limit: 2
    t.integer    "DeviceLeak2LocMV",               limit: 2
    t.integer    "DeviceLeak2LocPosterior",        limit: 2
    t.integer    "DeviceLeak2LocRUPV",             limit: 2
    t.integer    "DeviceLeak2LocSuperior",         limit: 2
    t.integer    "DeviceLeak2LocSVC",              limit: 2
    t.integer    "DeviceLeak2SizeLrgPeri",         limit: 2
    t.integer    "DeviceLeak2SizeModPeri",         limit: 2
    t.integer    "DeviceLeak2SizeMulti",           limit: 2
    t.integer    "DeviceLeak2SizeMultiLrg",        limit: 2
    t.integer    "DeviceLeak2SizeMultiMod",        limit: 2
    t.integer    "DeviceLeak2SizeMultiSm",         limit: 2
    t.integer    "DeviceLeak2SizeNone",            limit: 2
    t.integer    "DeviceLeak2SizeSmallIntra",      limit: 2
    t.integer    "DeviceLeak2SizeSmallPeri",       limit: 2
    t.integer    "DeviceLeak3LocAnterior",         limit: 2
    t.integer    "DeviceLeak3LocAo",               limit: 2
    t.integer    "DeviceLeak3LocInferior",         limit: 2
    t.integer    "DeviceLeak3LocIVC",              limit: 2
    t.integer    "DeviceLeak3LocMV",               limit: 2
    t.integer    "DeviceLeak3LocPosterior",        limit: 2
    t.integer    "DeviceLeak3LocRUPV",             limit: 2
    t.integer    "DeviceLeak3LocSuperior",         limit: 2
    t.integer    "DeviceLeak3LocSVC",              limit: 2
    t.integer    "DeviceLeak3SizeLrgPeri",         limit: 2
    t.integer    "DeviceLeak3SizeModPeri",         limit: 2
    t.integer    "DeviceLeak3SizeMulti",           limit: 2
    t.integer    "DeviceLeak3SizeMultiLrg",        limit: 2
    t.integer    "DeviceLeak3SizeMultiMod",        limit: 2
    t.integer    "DeviceLeak3SizeMultiSm",         limit: 2
    t.integer    "DeviceLeak3SizeNone",            limit: 2
    t.integer    "DeviceLeak3SizeSmallIntra",      limit: 2
    t.integer    "DeviceLeak3SizeSmallPeri",       limit: 2
    t.float      "DeviceLeakDim1"
    t.float      "DeviceLeakDim2"
    t.varchar    "DeviceSeating1",                 limit: 50
    t.varchar    "DeviceSeating2",                 limit: 50
    t.varchar    "DeviceSeating3",                 limit: 50
    t.float      "InteriorRimDim"
    t.float      "IVCBaffleGrad"
    t.float      "IVCRimDim"
    t.varchar    "LeftAtrium_Appendage",           limit: 50
    t.varchar    "LeftAtrium_Mass",                limit: 50
    t.varchar    "LeftAtrium_MassConsistency",     limit: 50
    t.varchar    "LeftAtrium_MassDifferential",    limit: 50
    t.float      "LeftAtrium_MassDim1"
    t.float      "LeftAtrium_MassDim2"
    t.varchar    "LeftAtrium_MassLocation",        limit: 50
    t.varchar    "LeftAtrium_MassMobility",        limit: 50
    t.text_basic "LeftAtrium_MultiMassComments",   limit: 2147483647
    t.varchar    "LeftAtrium_MultiMassConsist",    limit: 50
    t.varchar    "LeftAtrium_MultiMassDifferent",  limit: 50
    t.integer    "LeftAtrium_MultipleMasses",      limit: 2
    t.integer    "MiscRightAtrium_Chiari",         limit: 2
    t.integer    "MiscRightAtrium_EustachianVlv",  limit: 2
    t.varchar    "MultipleSecundumASDRestiction",  limit: 50
    t.varchar    "MultipleSecundumASDShunting",    limit: 50
    t.float      "MVDi"
    t.varchar    "NumberOfSecundumASDs",           limit: 50
    t.integer    "PatchLeak1LocAnterior",          limit: 2
    t.integer    "PatchLeak1LocInferior",          limit: 2
    t.integer    "PatchLeak1LocPosterior",         limit: 2
    t.integer    "PatchLeak1LocSuperior",          limit: 2
    t.float      "PatchLeak1ResidShuntSize1"
    t.float      "PatchLeak1ResidShuntSize2"
    t.integer    "PatchLeak2LocAnterior",          limit: 2
    t.integer    "PatchLeak2LocInferior",          limit: 2
    t.integer    "PatchLeak2LocPosterior",         limit: 2
    t.integer    "PatchLeak2LocSuperior",          limit: 2
    t.float      "PatchLeak2ResidShuntSize1"
    t.float      "PatchLeak2ResidShuntSize2"
    t.varchar    "PatentForamenOvale",             limit: 50
    t.float      "PFODim1"
    t.float      "PFODim2"
    t.float      "PFOFenestrationDim1"
    t.float      "PFOFenestrationDim2"
    t.float      "PFOFenestrationDim3"
    t.varchar    "PFONumberOfFenestrations",       limit: 50
    t.varchar    "PFORestriction",                 limit: 50
    t.varchar    "PFOShunt",                       limit: 50
    t.varchar    "PFOSize",                        limit: 50
    t.float      "PosteriorRimDim"
    t.varchar    "PrimumASD",                      limit: 50
    t.float      "PrimumASDDim1"
    t.float      "PrimumASDDim2"
    t.varchar    "PrimumASDRestriction",           limit: 50
    t.varchar    "PrimumASDShunting",              limit: 50
    t.varchar    "PrimumASDSize",                  limit: 50
    t.float      "PulmVenPathGrad"
    t.varchar    "RightAtrium_Appendage",          limit: 50
    t.varchar    "RightAtrium_Mass",               limit: 50
    t.varchar    "RightAtrium_MassConsistency",    limit: 50
    t.varchar    "RightAtrium_MassDifferential",   limit: 50
    t.float      "RightAtrium_MassDim1"
    t.float      "RightAtrium_MassDim2"
    t.varchar    "RightAtrium_MassLocation",       limit: 50
    t.varchar    "RightAtrium_MassMobility",       limit: 50
    t.text_basic "RightAtrium_MultiMassComments",  limit: 2147483647
    t.varchar    "RightAtrium_MultiMassConsist",   limit: 50
    t.integer    "RightAtrium_MultipleMasses",     limit: 2
    t.float      "RUPVDim"
    t.integer    "SecundumASDRimDefAntAo",         limit: 2
    t.integer    "SecundumASDRimDefAo",            limit: 2
    t.integer    "SecundumASDRimDefInferior",      limit: 2
    t.integer    "SecundumASDRimDefIVC",           limit: 2
    t.integer    "SecundumASDRimDefMV",            limit: 2
    t.integer    "SecundumASDRimDefPosterior",     limit: 2
    t.integer    "SecundumASDRimDefRUPV",          limit: 2
    t.integer    "SecundumASDRimDefSuperior",      limit: 2
    t.integer    "SecundumASDRimDefSVC",           limit: 2
    t.integer    "SecumdumASDRimSize",             limit: 2
    t.float      "SecundumASD1Dim1"
    t.float      "SecundumASD1Dim2"
    t.float      "SecundumASD2Dim2"
    t.float      "SecundumASD2Dim1"
    t.float      "SecundumASD3Dim1"
    t.integer    "SecundumASDRimAbsAnterior",      limit: 2
    t.integer    "SecundumASDRimAbsSuperior",      limit: 2
    t.integer    "SecundumASDRimAbsInferior",      limit: 2
    t.integer    "SecundumASDRimAbsPosterior",     limit: 2
    t.integer    "SecundumASDRimAbsAortic",        limit: 2
    t.integer    "SecundumASDRimAbsSVC",           limit: 2
    t.integer    "SecundumASDRimAbsIVC",           limit: 2
    t.integer    "SecundumASDRimAbsRUPV",          limit: 2
    t.integer    "SecundumASDRimAbsMV",            limit: 2
    t.float      "DeviceLeak2Dim1"
    t.float      "DeviceLeak2Dim2"
    t.float      "DeviceLeak3Dim1"
    t.float      "DeviceLeak3Dim2"
    t.float      "SinusVenosusASDDim1"
    t.float      "SinusVenosusASDDim2"
    t.float      "SecundumASD3Dim2"
    t.float      "SuperiorRimDim"
    t.float      "SVCRimDim"
    t.float      "SVCBaffleGrad"
    t.varchar    "PulmVenousPathway",              limit: 30
    t.varchar    "SinusVenosusASD",                limit: 25
    t.varchar    "SinusVenosusASDSize",            limit: 25
    t.varchar    "SinusVenosusASDPosition",        limit: 25
    t.varchar    "SinusVenosusASD_PAPVD",          limit: 25
    t.varchar    "SinusVenosusASDRestriction",     limit: 25
    t.varchar    "SinusVenosusASDShunting",        limit: 30
    t.varchar    "RightAtrium_MultiMassDifferent", limit: 30
    t.varchar    "SecundumASD1Size",               limit: 25
    t.varchar    "SecundumASD1Position",           limit: 25
    t.varchar    "SecundumASD1Restriction",        limit: 25
    t.varchar    "SecundumASD1Shunt",              limit: 25
    t.varchar    "SecundumASD2Size",               limit: 25
    t.varchar    "SecundumASD2Position",           limit: 25
    t.varchar    "SecundumASD3Size",               limit: 25
    t.varchar    "SecundumASD3Position",           limit: 25
    t.varchar    "SenningPulmVenBaffle",           limit: 25
    t.varchar    "SenningSystVenPath",             limit: 25
    t.text_basic "Findings",                       limit: 2147483647
    t.float      "SenningPulmVenBaffleGrad"
    t.float      "SenningSystVenPathGrad"
    t.float      "SenningIVCPathGrad"
    t.varchar    "SecundumASDSize",                limit: 25
    t.float      "SVCBafflePkGrad"
    t.float      "SVCBaffleMnGrad"
    t.float      "IVCBafflePkGrad"
    t.float      "IVCBaffleMnGrad"
    t.float      "PulmVenPathPkGrad"
    t.float      "PulmVenMnGrad"
    t.varchar    "ElevatedLAPressure",             limit: 35
    t.integer    "NoASDPatchLeak",                 limit: 2
    t.integer    "MultipleASDPatchesNoLeaks",      limit: 2
    t.varchar    "BaffleLeak",                     limit: 50
    t.varchar    "BaffleShunt",                    limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoAtria2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "IASStent",                   limit: 35
    t.integer    "IASStentApp_Unobst",         limit: 2
    t.integer    "IASStentApp_NarrOnRt",       limit: 2
    t.integer    "IASStentApp_MidNarr",        limit: 2
    t.integer    "IASStentApp_NarrOnLt",       limit: 2
    t.integer    "IASStentApp_Obst",           limit: 2
    t.integer    "IASStentApp_ObstMild",       limit: 2
    t.integer    "IASStentApp_ObstMod",        limit: 2
    t.integer    "IASStentApp_ObstSev",        limit: 2
    t.integer    "IASStentLoc_RtImmobile",     limit: 2
    t.integer    "IASStentLoc_RtMobile",       limit: 2
    t.integer    "IASStentLoc_LtImmobile",     limit: 2
    t.integer    "IASStentLoc_LtMobile",       limit: 2
    t.integer    "IASStentLoc_DiffImmobile",   limit: 2
    t.integer    "IASStentLoc_DiffMobile",     limit: 2
    t.float      "IASStentThrombDim1"
    t.float      "IASStentThrombDim2"
    t.integer    "PulmVeinEncroachRUPV",       limit: 2
    t.integer    "PulmVeinEncroachRLPV",       limit: 2
    t.integer    "PulmVeinEncroachLUPV",       limit: 2
    t.integer    "PulmVeinEncroachLLPV",       limit: 2
    t.varchar    "SecundumASDPosition",        limit: 30
    t.float      "SecundumASDDim1"
    t.float      "SecundumASDDim2"
    t.varchar    "SecundumASDRestriction",     limit: 25
    t.varchar    "SecundumASDShunt",           limit: 25
    t.float      "SenningPulmVenBafflePkGrad"
    t.text_basic "RightAtriumComments",        limit: 2147483647
    t.text_basic "LeftAtriumComments",         limit: 2147483647
    t.text_basic "SeptumASDComments",          limit: 2147483647
    t.text_basic "CorTriatriatumComments",     limit: 2147483647
    t.text_basic "BaffleMustSennComments",     limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoCommonAVV", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "CommAVCanalDefect",       limit: 25
    t.varchar    "CommAVValve",             limit: 35
    t.varchar    "CommAVVOverride",         limit: 25
    t.varchar    "CommAVVBalance",          limit: 35
    t.varchar    "CommAVVHypoplasia",       limit: 35
    t.integer    "CommAVVMorphRastelliA",   limit: 2
    t.integer    "CommAVVMorphRastelliB",   limit: 2
    t.integer    "CommAVVMorphRastelliC",   limit: 2
    t.integer    "CommAVVMorphSBLtoIVS",    limit: 2
    t.integer    "CommAVVMorphSBLtoRV",     limit: 2
    t.integer    "CommAVVMorphSBLFree",     limit: 2
    t.integer    "CommAVVMorphSBLtoSept",   limit: 2
    t.integer    "CommAVVMorphIBLtoIVS",    limit: 2
    t.integer    "CommAVVMorphIBLFree",     limit: 2
    t.text_basic "Findings",                limit: 2147483647
    t.varchar    "CommAVVCommitment",       limit: 50
    t.varchar    "CommAVVFlow",             limit: 35
    t.varchar    "CommAVVStenosis",         limit: 35
    t.varchar    "CommAVVRegurgitation",    limit: 25
    t.varchar    "CommAVVRegurgDesc",       limit: 35
    t.varchar    "CommAVVVentComp",         limit: 45
    t.varchar    "CommonAVVRegurgOther",    limit: 255
    t.text_basic "CommonAVVRegurgComments", limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoCoroArtAneurysm", primary_key: "SS_PedEchoCAAFlow_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Artery",               limit: 25
    t.integer "CoroAnSegment_Prox",   limit: 2
    t.varchar "Size",                 limit: 25
    t.float   "Diameter"
    t.float   "Length"
    t.varchar "Thrombus",             limit: 35
    t.integer "CoroAnSegment_Mid",    limit: 2
    t.integer "CoroAnSegment_Distal", limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoCoroArtImaging", primary_key: "SS_PedEchoCAImage_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "CoronaryArtery",              limit: 35
    t.varchar "CoronaryImaging",             limit: 35
    t.integer "CaSegment_Origin",            limit: 2
    t.integer "CaSegment_Prox",              limit: 2
    t.integer "CaSegment_Distal",            limit: 2
    t.integer "CaOriginUnclear",             limit: 2
    t.varchar "CaOriginLocation",            limit: 25
    t.varchar "CaOstium",                    limit: 35
    t.integer "CaLocationInSinus_Central",   limit: 2
    t.integer "CaLocationInSinus_High",      limit: 2
    t.integer "CaLocationInSinus_Leftward",  limit: 2
    t.integer "CaLocationInSinus_Rightward", limit: 2
    t.varchar "CaCommissure",                limit: 35
    t.integer "CaAcuteAngle",                limit: 2
    t.varchar "CaOstialAppearance",          limit: 50
    t.varchar "CaCourse",                    limit: 35
    t.varchar "CaIntramural",                limit: 35
    t.varchar "CaSize",                      limit: 35
    t.varchar "Ca2D_Color",                  limit: 35
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoCoronaryArteryFlow", primary_key: "SS_PedEchoCAFlow_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "CoronaryArteryFlow",         limit: 100
    t.varchar "CoronaryArteryFlowType",     limit: 100
    t.float   "CoronaryArteryFlowVelocity"
    t.varchar "RetrogradePAFlow",           limit: 15
    t.integer "CaCollateralFlow_Right",     limit: 2
    t.integer "CaCollateralFlow_LAD",       limit: 2
    t.integer "CaCollateralFlow_CX",        limit: 2
    t.integer "Segment_Prox",               limit: 2
    t.integer "Segment_Distal",             limit: 2
    t.integer "Segment_Mid",                limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoMitralValve", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "MVAccessoryTissue",             limit: 2
    t.integer    "MVAccessoryTissueAntLeaf",      limit: 2
    t.integer    "MVAccessoryTissuePostLeaf",     limit: 2
    t.varchar    "MVAnnulusSize",                 limit: 50
    t.varchar    "MVAnteriorLeafletMobility",     limit: 50
    t.varchar    "MVAtresia",                     limit: 50
    t.integer    "MVChordalAttachCrestSept",      limit: 2
    t.integer    "MVChordalAttachLVOT",           limit: 2
    t.integer    "MVChordalAttachRVBody",         limit: 2
    t.integer    "MVChordalAttachRVSideSept",     limit: 2
    t.integer    "MVChordalAttachTipOfSept",      limit: 2
    t.integer    "MVChordsAntMuscularized",       limit: 2
    t.integer    "MVChordsAntNormal",             limit: 2
    t.integer    "MVChordsAntRedundant",          limit: 2
    t.integer    "MVChordsAntRuptured",           limit: 2
    t.integer    "MVChordsAntShortened",          limit: 2
    t.integer    "MVChordsAntThickened",          limit: 2
    t.integer    "MVChordsPostMuscularized",      limit: 2
    t.integer    "MVChordsPostNormal",            limit: 2
    t.integer    "MVChordsPostRedundant",         limit: 2
    t.integer    "MVChordsPostRuptured",          limit: 2
    t.integer    "MVChordsPostShortened",         limit: 2
    t.integer    "MVChordsPostThickened",         limit: 2
    t.integer    "MVLeafletAbsenceAntLeaf",       limit: 2
    t.integer    "MVLeafletAbsencePostLeaf",      limit: 2
    t.integer    "MVLeafletDeficiency",           limit: 2
    t.integer    "MVLeafletDeficiencyAntLeaf",    limit: 2
    t.integer    "MVLeafletDeficiencyPostLeaf",   limit: 2
    t.integer    "MVLeafletFenestrationAntLeaf",  limit: 2
    t.integer    "MVLeafletFenestrationPostLeaf", limit: 2
    t.varchar    "MVLeafletMobility",             limit: 50
    t.integer    "MVLeafletPerfAntLeaf",          limit: 2
    t.integer    "MVLeafletPerfPostLeaf",         limit: 2
    t.integer    "MVLeafMildDysplastic",          limit: 2
    t.integer    "MVLeafMildThick",               limit: 2
    t.integer    "MVLeafModDysplastic",           limit: 2
    t.integer    "MVLeafModThick",                limit: 2
    t.integer    "MVLeafMyxomatous",              limit: 2
    t.integer    "MVLeafNormal",                  limit: 2
    t.integer    "MVLeafNotAssessed",             limit: 2
    t.integer    "MVLeafNWV",                     limit: 2
    t.integer    "MVLeafSevDysplastic",           limit: 2
    t.integer    "MVLeafSevThick",                limit: 2
    t.integer    "MVLeafThickened",               limit: 2
    t.integer    "MVLeafRedundant",               limit: 2
    t.text_basic "MVMassComments",                limit: 2147483647
    t.varchar    "MVMassConsistency",             limit: 50
    t.varchar    "MVMassDiff",                    limit: 50
    t.float      "MVMassDim1"
    t.float      "MVMassDim2"
    t.varchar    "MVMassLocation",                limit: 50
    t.varchar    "MVMassMobility",                limit: 50
    t.varchar    "MVMassSize",                    limit: 50
    t.integer    "MVMorphArchade",                limit: 2
    t.integer    "MVMorphDoubleOrifice",          limit: 2
    t.integer    "MVMorphFormFrusteParachute",    limit: 2
    t.integer    "MVMorphIsolatedCleft",          limit: 2
    t.integer    "MVMorphNormal",                 limit: 2
    t.integer    "MVMorphParachute",              limit: 2
    t.integer    "MVMorphParachuteALPM",          limit: 2
    t.integer    "MVMorphSupravalvarRing",        limit: 2
    t.integer    "MVNonCoapt",                    limit: 2
    t.integer    "MVNonCoaptAnnDil",              limit: 2
    t.integer    "MVNonCoaptLeafTethering",       limit: 2
    t.varchar    "MVPosition",                    limit: 50
    t.varchar    "MVPosteriorLeafletMobility",    limit: 50
    t.varchar    "MVProlapseAntSegment",          limit: 50
    t.varchar    "MVProlapsePosterior",           limit: 50
    t.varchar    "MVProlapsePostSegment",         limit: 50
    t.varchar    "MVProlaspseAnterior",           limit: 50
    t.integer    "MVProstheticValve",             limit: 2
    t.integer    "MVProsthLeakLocAnterior",       limit: 2
    t.integer    "MVProsthLeakLocLateral",        limit: 2
    t.integer    "MVProsthLeakLocMedial",         limit: 2
    t.integer    "MVProsthLeakLocPosterior",      limit: 2
    t.varchar    "MVProsthPerivalvarLeak",        limit: 50
    t.varchar    "MVProsthValveMobility",         limit: 50
    t.integer    "MVRegurgDescripAnterior",       limit: 2
    t.integer    "MVRegurgDescripBroadly",        limit: 2
    t.integer    "MVRegurgDescripCentral",        limit: 2
    t.integer    "MVRegurgDescripCleft",          limit: 2
    t.integer    "MVRegurgDescripLateral",        limit: 2
    t.integer    "MVRegurgDescripMedial",         limit: 2
    t.integer    "MVRegurgDescripPosterior",      limit: 2
    t.varchar    "MVRegurgJetDirection",          limit: 50
    t.integer    "MVRegurgMultiJets",             limit: 2
    t.integer    "MVLeafDysplastic",              limit: 2
    t.integer    "MVChordsMuscularized",          limit: 2
    t.integer    "MVChordsNormal",                limit: 2
    t.integer    "MVChordsRedundant",             limit: 2
    t.integer    "MVChordsNotAssessed",           limit: 2
    t.integer    "MVChordsShortened",             limit: 2
    t.integer    "MVChordsThickened",             limit: 2
    t.integer    "MVChordsNWV",                   limit: 2
    t.integer    "MVBioprostheticValve",          limit: 2
    t.integer    "MVMorphFormFrusteParachutePM",  limit: 2
    t.varchar    "MVFlow",                        limit: 50
    t.integer    "MVMorphNoCleft",                limit: 2
    t.integer    "MVMorphParachutePMPM",          limit: 2
    t.varchar    "MVPMAssess",                    limit: 30
    t.integer    "MVGen_Nml2PMs",                 limit: 2
    t.integer    "MVGen_2PMs",                    limit: 2
    t.integer    "MVGen_SingleALPM",              limit: 2
    t.integer    "MVGen_SinglePMPM",              limit: 2
    t.integer    "MVGen_DominantALPM",            limit: 2
    t.integer    "MVGen_DominantPMPM",            limit: 2
    t.integer    "MVGen_MultipleHeadsALPM",       limit: 2
    t.integer    "MVGen_MultipleHeadsPMPM",       limit: 2
    t.integer    "MVGen_AccPMFreeWall",           limit: 2
    t.integer    "MVGen_AccPMAntSept",            limit: 2
    t.integer    "MVGen_AccPMInfSept",            limit: 2
    t.integer    "MVEFE",                         limit: 2
    t.integer    "MVEFEALPM",                     limit: 2
    t.integer    "MVEFEPMPM",                     limit: 2
    t.integer    "MVPos_Normal",                  limit: 2
    t.integer    "MVPos_CloselySpaced",           limit: 2
    t.integer    "MVPos_RotateClockwise",         limit: 2
    t.integer    "MVPos_RotateCounterclockwise",  limit: 2
    t.integer    "MVCalc",                        limit: 2
    t.integer    "MVCalcALPM",                    limit: 2
    t.integer    "MVCalcPMPM",                    limit: 2
    t.integer    "MVHypoALPM",                    limit: 2
    t.integer    "MVHypoPMPM",                    limit: 2
    t.integer    "MVNormal",                      limit: 2
    t.integer    "MVMorphNotAssessed",            limit: 2
    t.integer    "MVMorphNWV",                    limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoMyocardMassLoc", primary_key: "SS_PedEchoMyocardMassLoc_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "MyoCardMassLoc",       limit: 50
    t.float   "MyocardMassDim1"
    t.float   "MyocardMassDim2"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoMyocardMassLoc_ID"], name: "SS_PedEchoMyocardMassLoc_ID"
  end

  create_table "PedEchoMyocardMasses", primary_key: "SS_PedEchoMyocardMasses_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "NumberOfMyocardMasses", limit: 50
    t.varchar "MyocardMassRegion",     limit: 50
    t.varchar "MyocardMassDiff",       limit: 50
    t.varchar "MyocardMassAppearance", limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoMyocardMasses_ID"], name: "SS_PedEchoMyocardMasses_ID"
  end

  create_table "PedEchoOutlets", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "AnatomicMalposition",           limit: 2
    t.varchar    "AorticAtresia",                 limit: 50
    t.integer    "ConcordantLVOTAVNml",           limit: 2
    t.integer    "ConcordantRVOTPVNml",           limit: 2
    t.integer    "DiscordantLVOTPVNml",           limit: 2
    t.integer    "DiscordantRVOTAVNml",           limit: 2
    t.varchar    "GreatArteryRelationship",       limit: 50
    t.integer    "LVOTObstSubvalvar",             limit: 2
    t.integer    "LVOTObstSupravalvar",           limit: 2
    t.integer    "LVOTObstValvar",                limit: 2
    t.varchar    "OutletsInDORVDOLV",             limit: 50
    t.varchar    "PulmonaryAtresia",              limit: 50
    t.integer    "RVOTObstSubvalvar",             limit: 2
    t.integer    "RVOTObstSupravalvar",           limit: 2
    t.integer    "RVOTObstValvar",                limit: 2
    t.varchar    "Transposition",                 limit: 50
    t.varchar    "RVOTDegreeOfObst",              limit: 50
    t.integer    "RVOTMechDilARVC",               limit: 2
    t.integer    "RVOTMechDilIdiopathic",         limit: 2
    t.integer    "RVOTMechDilNotAssessed",        limit: 2
    t.integer    "RVOTMechDilNWV",                limit: 2
    t.text_basic "RVOTMechDilOther",              limit: 2147483647
    t.integer    "RVOTMechDilRVOTPatch",          limit: 2
    t.integer    "RVOTMechObstArtValveProlapse",  limit: 2
    t.integer    "RVOTMechObstAVValveAttach",     limit: 2
    t.integer    "RVOTMechObstAVValveTissue",     limit: 2
    t.integer    "RVOTMechObstFibromuscular",     limit: 2
    t.integer    "RVOTMechObstForeignBody",       limit: 2
    t.integer    "RVOTMechObstMass",              limit: 2
    t.integer    "RVOTMechObstMembSeptalAneu",    limit: 2
    t.integer    "RVOTMechObstMuscleBundles",     limit: 2
    t.integer    "RVOTMechObstMuscular",          limit: 2
    t.integer    "RVOTMechObstOsInfundibNarrow",  limit: 2
    t.text_basic "RVOTMechObstOther",             limit: 2147483647
    t.integer    "RVOTMechObstOutletSeptum",      limit: 2
    t.integer    "RVOTMechObstRedundPatch",       limit: 2
    t.integer    "RVOTMechObstSeptalHypert",      limit: 2
    t.integer    "RVOTMechObstThrombus",          limit: 2
    t.integer    "RVOTMechObstTumor",             limit: 2
    t.integer    "RVOTMechObstTumour",            limit: 2
    t.integer    "RVOTMechObstTunnel",            limit: 2
    t.integer    "RVOTMechObstUndetermined",      limit: 2
    t.integer    "RVOTMechObstVegetation",        limit: 2
    t.varchar    "RVOTMidCavityObstSeverity",     limit: 50
    t.varchar    "RVOTMidCaviyObstType",          limit: 50
    t.integer    "RVOTMiscRVOTAVValveAtt",        limit: 2
    t.integer    "RVOTMiscRVOTAVValveTissue",     limit: 2
    t.integer    "RVOTMiscRVOTCatheter",          limit: 2
    t.integer    "RVOTMiscRVOTMass",              limit: 2
    t.integer    "RVOTMiscRVOTMembSeptalAneur",   limit: 2
    t.text_basic "RVOTMiscRVOTOther",             limit: 2147483647
    t.integer    "RVOTMiscRVOTStent",             limit: 2
    t.integer    "RVOTMiscRVOTThrombus",          limit: 2
    t.integer    "RVOTMiscRVOTTumor",             limit: 2
    t.integer    "RVOTMiscRVOTTumour",            limit: 2
    t.varchar    "RVOTObstType",                  limit: 150
    t.varchar    "LVOTDegreeOfObst",              limit: 50
    t.varchar    "LVOTHypoplasia",                limit: 50
    t.integer    "LVOTMechObstArtValveProlapse",  limit: 2
    t.integer    "LVOTMechObstAVValveAttach",     limit: 2
    t.integer    "LVOTMechObstAVValveTissue",     limit: 2
    t.integer    "LVOTMechObstFibromuscular",     limit: 2
    t.integer    "LVOTMechObstMass",              limit: 2
    t.integer    "LVOTMechObstMembSeptalAneu",    limit: 2
    t.integer    "LVOTMechObstMuscular",          limit: 2
    t.text_basic "LVOTMechObstOther",             limit: 2147483647
    t.integer    "LVOTMechObstProstheticAVValve", limit: 2
    t.integer    "LVOTMechObstRedundPatch",       limit: 2
    t.integer    "LVOTMechObstSAM",               limit: 2
    t.integer    "LVOTMechObstSeptalHypert",      limit: 2
    t.integer    "LVOTMechObstThrombus",          limit: 2
    t.integer    "LVOTMechObstTumor",             limit: 2
    t.integer    "LVOTMechObstTumour",            limit: 2
    t.integer    "LVOTMechObstTunnel",            limit: 2
    t.integer    "LVOTMechObstUndetermined",      limit: 2
    t.integer    "LVOTMechObstVegetation",        limit: 2
    t.varchar    "LVOTMidCavityObstSeverity",     limit: 50
    t.varchar    "LVOTMidCaviyObstType",          limit: 50
    t.varchar    "LVOTObstType",                  limit: 50
    t.varchar    "AbsentPulmValve",               limit: 50
    t.varchar    "MiscPulmValveAbnorm",           limit: 50
    t.varchar    "Morphology",                    limit: 50
    t.integer    "ProlapseLocationAnterior",      limit: 2
    t.integer    "ProlapseLocationLeft",          limit: 2
    t.integer    "ProlapseLocationPosterior",     limit: 2
    t.integer    "ProlapseLocationRight",         limit: 2
    t.varchar    "ProstheticPulmValve",           limit: 50
    t.varchar    "ProstheticPulmValveMobility",   limit: 50
    t.varchar    "PulmLeafletAppearance",         limit: 50
    t.varchar    "PulmLeafletMobility",           limit: 50
    t.varchar    "PulmonaryAnnSize",              limit: 50
    t.text_basic "PulmValveMassComments",         limit: 2147483647
    t.varchar    "PulmValveMassConsistency",      limit: 50
    t.varchar    "PulmValveMassDifferential",     limit: 50
    t.varchar    "PulmValveMassLocation",         limit: 75
    t.varchar    "PulmValveMassMobility",         limit: 50
    t.varchar    "PulmValveMassSize",             limit: 50
    t.varchar    "PulmValveProlapse",             limit: 50
    t.varchar    "PulmValveRegurg",               limit: 50
    t.varchar    "PulmValveStenosis",             limit: 50
    t.varchar    "PVPerivalvularLeak",            limit: 25
    t.varchar    "AoVMorphology",                 limit: 50
    t.varchar    "AoVFusionType",                 limit: 50
    t.varchar    "AoVFusionCusps",                limit: 50
    t.varchar    "ProstheticAoValve",             limit: 50
    t.varchar    "ProstheticAoValveMobility",     limit: 50
    t.varchar    "AoVperivalvarLeak",             limit: 25
    t.integer    "AoVPerivalvarLeakLocMedial",    limit: 2
    t.integer    "AoVPerivalvarLeakLocLateral",   limit: 2
    t.integer    "AoVPerivalvarLeakLocAnterior",  limit: 2
    t.integer    "AoVPerivalvarLeakLocPosterior", limit: 2
    t.varchar    "AorticAnnSize",                 limit: 50
    t.varchar    "AoVLeafletAppearance",          limit: 50
    t.varchar    "AoVLeafletMobility",            limit: 50
    t.varchar    "AoValveStenosis",               limit: 50
    t.varchar    "AoValveRegurg",                 limit: 50
    t.integer    "AoVRegurgJetDirCent",           limit: 2
    t.integer    "AoVRegurgJetDirEccen",          limit: 2
    t.integer    "AoVRegurgJetDirRCC",            limit: 2
    t.integer    "AoVRegurgJetDirLCC",            limit: 2
    t.integer    "AoVRegurgJetDirNCC",            limit: 2
    t.varchar    "AoVRegurgJetDirOther",          limit: 150
    t.varchar    "MiscAoValveAbnorm",             limit: 50
    t.varchar    "AoValveAneurysm",               limit: 100
    t.integer    "AoValveRupture",                limit: 2
    t.varchar    "AoVRuptureLocation",            limit: 50
    t.integer    "AoVProlapseAbsent",             limit: 2
    t.integer    "AoVProlapseMildRCC",            limit: 2
    t.integer    "AoVProlapseModRCC",             limit: 2
    t.integer    "AoVProlapseSevRCC",             limit: 2
    t.integer    "AoVProlapseMildLCC",            limit: 2
    t.integer    "AoVProlapseModLCC",             limit: 2
    t.integer    "AoVProlapseSevLCC",             limit: 2
    t.integer    "AoVProlapseMildNCC",            limit: 2
    t.integer    "AoVProlapseModNCC",             limit: 2
    t.integer    "AoVProlapseSevNCC",             limit: 2
    t.varchar    "AoVMassSize",                   limit: 50
    t.varchar    "AoVMassDifferential",           limit: 50
    t.varchar    "AoVMassMobility",               limit: 50
    t.varchar    "AoVMassLocation",               limit: 50
    t.varchar    "AoVMassLeaflet",                limit: 50
    t.varchar    "AoVMassConsistency",            limit: 50
    t.text_basic "AoVMassComments",               limit: 2147483647
    t.float      "AoVMassDim1"
    t.float      "AoVMassDim2"
    t.varchar    "AoRootAbcess",                  limit: 50
    t.integer    "AoRootAbcessExtAnt",            limit: 2
    t.integer    "AoRootAbcessExtPost",           limit: 2
    t.integer    "AoRootAbcessExtIVS",            limit: 2
    t.integer    "AoRootAbcessExtTV",             limit: 2
    t.integer    "AoRootAbcessExtMV",             limit: 2
    t.varchar    "AoRootAbcessExtOther",          limit: 150
    t.integer    "AoRootAbcessFistRV",            limit: 2
    t.integer    "AoRootAbcessFistLV",            limit: 2
    t.integer    "AoRootAbcessFistRA",            limit: 2
    t.integer    "AoRootAbcessFistLA",            limit: 2
    t.varchar    "AoRootAbcessFistOther",         limit: 150
    t.varchar    "TruncalMorphology",             limit: 50
    t.varchar    "TruncalFusion",                 limit: 50
    t.integer    "TruncalFusionNCC",              limit: 2
    t.integer    "TruncalFusionRCC",              limit: 2
    t.integer    "TruncalFusionLCC",              limit: 2
    t.varchar    "TruncalFusionOther",            limit: 25
    t.varchar    "TruncalAnnSize",                limit: 50
    t.varchar    "TruncalLeafletAppearance",      limit: 50
    t.varchar    "TruncalLeafletMobility",        limit: 50
    t.varchar    "TruncalStenosis",               limit: 50
    t.varchar    "TruncalRegurgitation",          limit: 50
    t.integer    "TruncalRegurgJetDirCent",       limit: 2
    t.integer    "TruncalRegurgJetDirEccen",      limit: 2
    t.integer    "TruncalRegurgJetDirRCC",        limit: 2
    t.integer    "TruncalRegurgJetDirLCC",        limit: 2
    t.integer    "TruncalRegurgJetDirNCC",        limit: 2
    t.varchar    "TruncalRegurgJetDirOther",      limit: 150
    t.integer    "TruncalMiscAbnNonCoapt",        limit: 2
    t.integer    "TruncalMiscAbnDeficiency",      limit: 2
    t.integer    "TruncalMiscAbnPerforation",     limit: 2
    t.integer    "TruncalMiscAbnAbsentCusp",      limit: 2
    t.integer    "TruncalMiscAbnAnnDil",          limit: 2
    t.integer    "TruncalMiscAbnFlailRCC",        limit: 2
    t.integer    "TruncalMiscAbnFlailLCC",        limit: 2
    t.integer    "TruncalMiscAbnFlailNCC",        limit: 2
    t.integer    "TruncalMiscAbnFlailCC",         limit: 2
    t.integer    "TruncalProlapseNone",           limit: 2
    t.integer    "TruncalProlapseNCCMild",        limit: 2
    t.integer    "TruncalProlapseNCCMod",         limit: 2
    t.integer    "TruncalProlapseNCCSev",         limit: 2
    t.integer    "TruncalProlapseRCCMild",        limit: 2
    t.integer    "TruncalProlapseRCCMod",         limit: 2
    t.integer    "TruncalProlapseRCCSev",         limit: 2
    t.integer    "TruncalProlapseLCCMild",        limit: 2
    t.integer    "TruncalProlapseLCCMod",         limit: 2
    t.integer    "TruncalProlapseLCCSev",         limit: 2
    t.varchar    "TruncalValveMass",              limit: 50
    t.varchar    "TruncalValveMassDiff",          limit: 50
    t.varchar    "TruncalValveMassMobility",      limit: 50
    t.varchar    "TruncalValveMassLocation",      limit: 50
    t.varchar    "TruncalValveMassLeaflet",       limit: 50
    t.varchar    "TruncalValveMassConsistency",   limit: 50
    t.float      "TruncalValveMassDim1"
    t.float      "TruncalValveMassDim2"
    t.varchar    "TruncalRootAbcess",             limit: 50
    t.integer    "TruncalRootAbcessExtAnt",       limit: 2
    t.integer    "TruncalRootAbcessExtPost",      limit: 2
    t.integer    "TruncalRootAbcessExtIVS",       limit: 2
    t.integer    "TruncalRootAbcessExtTV",        limit: 2
    t.integer    "TruncalRootAbcessExtMV",        limit: 2
    t.varchar    "TruncalRootAbcessExtOther",     limit: 150
    t.integer    "TruncalRootAbcessFistRV",       limit: 2
    t.integer    "TruncalRootAbcessFistLV",       limit: 2
    t.integer    "TruncalRootAbcessFistRA",       limit: 2
    t.integer    "TruncalRootAbcessFistLA",       limit: 2
    t.varchar    "TruncalRootAbcessFistOther",    limit: 150
    t.text_basic "TruncalValveMassComments",      limit: 2147483647
    t.text_basic "Findings",                      limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoOutlets2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "RVPAConduitObst",               limit: 40
    t.integer    "RVPACondValve_GoodMobil",       limit: 2
    t.integer    "RVPACondValve_ThickLeaflet",    limit: 2
    t.integer    "RVPACondValve_ThickLeaflets",   limit: 2
    t.integer    "RVPACondValve_PoorMobil",       limit: 2
    t.integer    "RVPACondValve_PoorCoapt",       limit: 2
    t.varchar    "RVPASiteOfObst",                limit: 30
    t.varchar    "RVPACondStentType",             limit: 30
    t.varchar    "RVPACondStentObst",             limit: 40
    t.varchar    "RVPACondStentPosition",         limit: 40
    t.text_basic "RVPACondComments",              limit: 2147483647
    t.varchar    "RVOTSubValvarSev",              limit: 25
    t.varchar    "RVOTValvarSev",                 limit: 25
    t.varchar    "RVOTSupraValvarSev",            limit: 25
    t.varchar    "LVPAConduitObst",               limit: 40
    t.integer    "LVPACondValve_GoodMobil",       limit: 2
    t.integer    "LVPACondValve_ThickLeaflet",    limit: 2
    t.integer    "LVPACondValve_ThickLeaflets",   limit: 2
    t.integer    "LVPACondValve_PoorMobil",       limit: 2
    t.integer    "LVPACondValve_PoorCoapt",       limit: 2
    t.varchar    "LVPASiteOfObst",                limit: 30
    t.varchar    "LVPACondStentType",             limit: 30
    t.varchar    "LVPACondStentObst",             limit: 30
    t.varchar    "LVPACondStentPosition",         limit: 30
    t.text_basic "LVPACondComments",              limit: 2147483647
    t.varchar    "LVOTSubValvarSev",              limit: 25
    t.varchar    "LVOTValvarSev",                 limit: 25
    t.varchar    "LVOTSupraValvarSev",            limit: 25
    t.integer    "PVLeakLocMedial",               limit: 2
    t.integer    "PVLeakLocLateral",              limit: 2
    t.integer    "PVLeakLocAnterior",             limit: 2
    t.integer    "PVLeakLocPosterior",            limit: 2
    t.float      "PulmValveDimension1"
    t.float      "PulmValveDimension2"
    t.text_basic "PulmValveComments",             limit: 2147483647
    t.text_basic "AorticValveComments",           limit: 2147483647
    t.text_basic "TruncValveComments",            limit: 2147483647
    t.integer    "AoVFusionCuspsNCC",             limit: 2
    t.integer    "AoVFusionCuspsRCC",             limit: 2
    t.integer    "AoVFusionCuspsLCC",             limit: 2
    t.varchar    "DORV_RVtoPA",                   limit: 30
    t.varchar    "DORV_RVtoPAObstruction",        limit: 30
    t.varchar    "DORV_RVtoAV",                   limit: 30
    t.varchar    "DORV_RVtoAVObstruction",        limit: 30
    t.text_basic "DORV_Comments",                 limit: 2147483647
    t.varchar    "DOLV_LVtoPA",                   limit: 30
    t.varchar    "DOLV_RVtoPAObstruction",        limit: 30
    t.varchar    "DOLV_LVtoAO",                   limit: 30
    t.varchar    "DOLV_RVtoAVObstruction",        limit: 30
    t.text_basic "DOLV_Comments",                 limit: 2147483647
    t.varchar    "RVtoPAConduitVisualization",    limit: 30
    t.integer    "RVtoPACondRegionsNotSeen_Prox", limit: 2
    t.integer    "RVtoPACondRegionsNotSeen_Mid",  limit: 2
    t.integer    "RVtoPACondRegionsNotSeen_Dist", limit: 2
    t.integer    "RVtoPAConduitObstNWV",          limit: 2
    t.integer    "RVMainObst_Subvalvar",          limit: 2
    t.integer    "RVMainObst_Valvar",             limit: 2
    t.integer    "RVMainObst_Supravalvar",        limit: 2
    t.integer    "RVMainObst_Indeterminate",      limit: 2
    t.integer    "RVMainObst_NWV",                limit: 2
    t.integer    "RVMainObst_NotAssessed",        limit: 2
    t.integer    "RVOTMechObstVSDRestriction",    limit: 2
    t.integer    "NonOBRVAnom_Tunnel",            limit: 2
    t.integer    "NonOBRVAnom_OutletSeptum",      limit: 2
    t.integer    "NonOBRVAnom_MemSeptAneu",       limit: 2
    t.integer    "NonOBRVAnom_AVVTissue",         limit: 2
    t.integer    "NonOBRVAnom_AVVAttachements",   limit: 2
    t.integer    "NonOBRVAnom_AVVProlapse",       limit: 2
    t.integer    "NonOBRVAnom_OsInfundibNarrow",  limit: 2
    t.integer    "NonOBRVAnom_MuscleBundles",     limit: 2
    t.integer    "NonOBRVAnom_Fibromuscular",     limit: 2
    t.integer    "NonOBRVAnom_RedundantPatch",    limit: 2
    t.integer    "NonOBRVAnom_Tumor",             limit: 2
    t.integer    "NonOBRVAnom_Tumour",            limit: 2
    t.integer    "NonOBRVAnom_Thrombus",          limit: 2
    t.integer    "NonOBRVAnom_Vegetation",        limit: 2
    t.integer    "NonOBRVAnom_Mass",              limit: 2
    t.integer    "NonOBRVAnom_ForeignBody",       limit: 2
    t.varchar    "RVOTFlow",                      limit: 30
    t.varchar    "LVtoPAConduitVisualization",    limit: 30
    t.integer    "LVtoPACondRegionsNotSeen_Prox", limit: 2
    t.integer    "LVtoPACondRegionsNotSeen_Mid",  limit: 2
    t.integer    "LVtoPACondRegionsNotSeen_Dist", limit: 2
    t.integer    "LVtoPAConduitObstNWV",          limit: 2
    t.integer    "LVMainObst_Subvalvar",          limit: 2
    t.integer    "LVMainObst_Valvar",             limit: 2
    t.integer    "LVMainObst_Supravalvar",        limit: 2
    t.integer    "LVMainObst_Indeterminate",      limit: 2
    t.integer    "LVMainObst_NWV",                limit: 2
    t.integer    "LVMainObst_NotAssessed",        limit: 2
    t.integer    "LVOTMechObstVSDRestriction",    limit: 2
    t.integer    "NonOBLVAnom_Tunnel",            limit: 2
    t.integer    "NonOBLVAnom_EarlyFibromusc",    limit: 2
    t.integer    "NonOBLVAnom_Fibromuscular",     limit: 2
    t.integer    "NonOBLVAnom_MemSeptAneu",       limit: 2
    t.integer    "NonOBLVAnom_AVVTissue",         limit: 2
    t.integer    "NonOBLVAnom_AVVAttachements",   limit: 2
    t.integer    "NonOBLVAnom_AVVProlapse",       limit: 2
    t.integer    "NonOBLVAnom_RedundantPatch",    limit: 2
    t.integer    "NonOBLVAnom_Tumor",             limit: 2
    t.integer    "NonOBLVAnom_Tumour",            limit: 2
    t.integer    "NonOBLVAnom_Thrombus",          limit: 2
    t.integer    "NonOBLVAnom_Vegetation",        limit: 2
    t.integer    "NonOBLVAnom_Mass",              limit: 2
    t.varchar    "LVOTFlow",                      limit: 30
    t.integer    "NormalPulmValve",               limit: 2
    t.varchar    "PVFlow",                        limit: 50
    t.integer    "NormalAorticValve",             limit: 2
    t.integer    "MiscAoVAbn_NonCoapt",           limit: 2
    t.integer    "MiscAoVAbn_RCCDeficient",       limit: 2
    t.integer    "MiscAoVAbn_LCCDeficient",       limit: 2
    t.integer    "MiscAoVAbn_NCCDeficient",       limit: 2
    t.integer    "MiscAoVAbn_RCCPerf",            limit: 2
    t.integer    "MiscAoVAbn_LCCPerf",            limit: 2
    t.integer    "MiscAoVAbn_NCCPerf",            limit: 2
    t.integer    "MiscAoVAbn_AbsentRCC",          limit: 2
    t.integer    "MiscAoVAbn_AbsentLCC",          limit: 2
    t.integer    "MiscAoVAbn_AbsentNCC",          limit: 2
    t.integer    "MiscAoVAbn_FlailRCC",           limit: 2
    t.integer    "MiscAoVAbn_FlailLCC",           limit: 2
    t.integer    "MiscAoVAbn_FlailNCC",           limit: 2
    t.varchar    "AoVFlow",                       limit: 50
    t.varchar    "NeoAoVMorphology",              limit: 25
    t.varchar    "NeoAoVFusionType",              limit: 25
    t.integer    "NeoAoVFusionCuspsRC",           limit: 2
    t.integer    "NeoAoVFusionCuspsLC",           limit: 2
    t.varchar    "NeoAoVFusionCusps",             limit: 250
    t.varchar    "NeoAorticAnnSize",              limit: 50
    t.varchar    "NeoAoVLeafletAppearance",       limit: 50
    t.varchar    "NeoAoVLeafletMobility",         limit: 50
    t.varchar    "NeoAoValveStenosis",            limit: 255
    t.varchar    "NeoAoValveRegurg",              limit: 25
    t.integer    "NeoAoVRegurgJetDirCent",        limit: 2
    t.integer    "NeoAoVRegurgJetDirEccen",       limit: 2
    t.integer    "NeoAoVRegurgJetDirRCC",         limit: 2
    t.integer    "NeoAoVRegurgJetDirLCC",         limit: 2
    t.varchar    "NeoAoVRegurgJetDirOther",       limit: 100
    t.integer    "MiscNeoAoVAbn_NonCoapt",        limit: 2
    t.integer    "MiscNeoAoVAbn_RCCDeficient",    limit: 2
    t.integer    "MiscNeoAoVAbn_LCCDeficient",    limit: 2
    t.integer    "MiscNeoAoVAbn_NCCDeficient",    limit: 2
    t.integer    "MiscNeoAoVAbn_RCCPerf",         limit: 2
    t.integer    "MiscNeoAoVAbn_LCCPerf",         limit: 2
    t.integer    "MiscNeoAoVAbn_NCCPerf",         limit: 2
    t.integer    "MiscNeoAoVAbn_AbsentRCC",       limit: 2
    t.integer    "MiscNeoAoVAbn_AbsentLCC",       limit: 2
    t.integer    "MiscNeoAoVAbn_AbsentNCC",       limit: 2
    t.integer    "MiscNeoAoVAbn_FlailRCC",        limit: 2
    t.integer    "MiscNeoAoVAbn_FlailLCC",        limit: 2
    t.integer    "MiscNeoAoVAbn_FlailNCC",        limit: 2
    t.varchar    "NeoAoVProlapse",                limit: 45
    t.index ["LVtoPACondRegionsNotSeen_Mid"], name: "LVtoPACondRegionsNotSeen_Mid"
    t.index ["RVtoPACondRegionsNotSeen_Mid"], name: "RVtoPACondRegionsNotSeen_Mid"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoPDA", primary_key: "SS_PedEchoPDA_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "PatentDuctusArt",      limit: 50
    t.varchar "PatentDuctusArtShunt", limit: 50
    t.varchar "PDAAppearance",        limit: 50
    t.varchar "PDAInsertion",         limit: 50
    t.varchar "PDAOrigin",            limit: 50
    t.varchar "PDARestriction",       limit: 50
    t.varchar "PDASide",              limit: 50
    t.varchar "PDANarrowed",          limit: 30
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoPDA_ID"], name: "SS_PedEchoPDA_ID"
  end

  create_table "PedEchoPericardium", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "DiaphragmMotionLt",           limit: 50
    t.varchar    "DiaphragmMotionRt",           limit: 50
    t.integer    "NoPleuralEffusion",           limit: 2
    t.integer    "PericardEffLocApexLV",        limit: 2
    t.integer    "PericardEffLocAroundLA",      limit: 2
    t.integer    "PericardEffLocAroundLV",      limit: 2
    t.integer    "PericardEffLocAroundRA",      limit: 2
    t.integer    "PericardEffLocAroundRV",      limit: 2
    t.integer    "PericardEffLocInferiorLV",    limit: 2
    t.integer    "PericardEffLocInferiorRV",    limit: 2
    t.integer    "PericardEffLocLateralLV",     limit: 2
    t.integer    "PericardEffLocLateralRV",     limit: 2
    t.integer    "PericardEffLocPosteriorLA",   limit: 2
    t.integer    "PericardEffLocPosteriorRA",   limit: 2
    t.varchar    "PericardEffReassess",         limit: 50
    t.datetime   "PericardEffReassessDate"
    t.varchar    "PericardEffusionType",        limit: 50
    t.varchar    "PericardHerniation",          limit: 50
    t.integer    "PericardiumFibrinStrands",    limit: 2
    t.varchar    "PericardMassAppearance",      limit: 50
    t.varchar    "PericardMassAssocEff",        limit: 50
    t.integer    "PericardMassLocAnterior",     limit: 2
    t.integer    "PericardMassLocInferior",     limit: 2
    t.integer    "PericardMassLocLeft",         limit: 2
    t.integer    "PericardMassLocPosterior",    limit: 2
    t.integer    "PericardMassLocRight",        limit: 2
    t.integer    "PericardMassLocSuperior",     limit: 2
    t.varchar    "PericardMassType",            limit: 50
    t.varchar    "PericardTamponade",           limit: 50
    t.integer    "PleuralEffLargeBilateral",    limit: 2
    t.integer    "PleuralEffLargeLeft",         limit: 2
    t.integer    "PleuralEffLargeRight",        limit: 2
    t.integer    "PleuralEffModBilateral",      limit: 2
    t.integer    "PleuralEffModLeft",           limit: 2
    t.integer    "PleuralEffModRight",          limit: 2
    t.integer    "PleuralEffNoLeft",            limit: 2
    t.integer    "PleuralEffNoRight",           limit: 2
    t.integer    "PleuralEffSmBilat",           limit: 2
    t.integer    "PleuralEffSmLeft",            limit: 2
    t.integer    "PleuralEffSmRight",           limit: 2
    t.varchar    "PleuralSpaceNWV_NotAssessed", limit: 50
    t.integer    "TamponadeParamIncMVInflow",   limit: 2
    t.integer    "TamponadeParamIncTVInflow",   limit: 2
    t.integer    "TamponadeParamNmlMVInflow",   limit: 2
    t.integer    "TamponadeParamNmlTVInflow",   limit: 2
    t.integer    "TamponadeParamNoRACollapse",  limit: 2
    t.integer    "TamponadeParamNoRVCollapse",  limit: 2
    t.text_basic "Findings",                    limit: 2147483647
    t.text_basic "Comments",                    limit: 2147483647
    t.integer    "PericardEffLocAnteriorRV",    limit: 2
    t.integer    "PericardEffLocApexRV",        limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoPulmonaryVeins", primary_key: "SS_PedEchoPulmonaryVeins_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "TypeOfAnomPulVenConn",        limit: 100
    t.varchar "PulVenousConnConfluence",     limit: 100
    t.float   "PulVenousConnConfluenceSize"
    t.varchar "PulVenousConnectionTo",       limit: 100
    t.varchar "PulVenConn_LtPulVeins",       limit: 100
    t.varchar "PulVenConn_RtPulVeins",       limit: 100
    t.varchar "PulVenConnectLimitationsLt",  limit: 100
    t.varchar "PulVenConnectLimitationsRt",  limit: 100
    t.varchar "PulVenConnObst",              limit: 100
    t.float   "PulVenConnObstGrad"
    t.integer "PulVenConnPV_All",            limit: 2
    t.integer "PulVenConnPV_AllRight",       limit: 2
    t.integer "PulVenConnPV_RUPV",           limit: 2
    t.integer "PulVenConnPV_RMPV",           limit: 2
    t.integer "PulVenConnPV_RLPV",           limit: 2
    t.integer "PulVenConnPV_AllLeft",        limit: 2
    t.integer "PulVenConnPV_LUPV",           limit: 2
    t.integer "PulVenConnPV_LMPV",           limit: 2
    t.integer "PulVenConnPV_LLPV",           limit: 2
    t.integer "PulVenConnPV_SmallRight",     limit: 2
    t.integer "PulVenConnPV_ModRight",       limit: 2
    t.integer "PulVenConnPV_LrgRight",       limit: 2
    t.integer "PulVenConnPV_SmallLeft",      limit: 2
    t.integer "PulVenConnPV_ModLeft",        limit: 2
    t.integer "PulVenConnPV_LrgLeft",        limit: 2
    t.integer "PVCLimitations_RUPV",         limit: 2
    t.integer "PVCLimitations_RMPV",         limit: 2
    t.integer "PVCLimitations_RLPV",         limit: 2
    t.integer "PVCLimitations_LUPV",         limit: 2
    t.integer "PVCLimitations_LMPV",         limit: 2
    t.integer "PVCLimitations_LLPV",         limit: 2
    t.integer "PVCObstSite_Individual",      limit: 2
    t.integer "PVCObstSite_ConftoVV",        limit: 2
    t.integer "PVCObstSite_DiffusetoVV",     limit: 2
    t.integer "PVCObstSite_DiscretetoVV",    limit: 2
    t.integer "PVCObstSite_PAandBronchus",   limit: 2
    t.integer "PVCObstSite_InnominateVein",  limit: 2
    t.integer "PVCObstSite_LSVC",            limit: 2
    t.integer "PVCObstSite_RSVC",            limit: 2
    t.integer "PVCObstSite_RtAtrium",        limit: 2
    t.integer "PVCObstSite_RtSidedAtrium",   limit: 2
    t.integer "PVCObstSite_LTAtrium",        limit: 2
    t.integer "PVCObstSite_LtSidedAtrium",   limit: 2
    t.integer "PVCObstSite_Diaphragm",       limit: 2
    t.integer "PVCObstSite_PortalSystem",    limit: 2
    t.integer "PVCObstSite_IVC",             limit: 2
    t.integer "PVCObstSite_DuctusVenosus",   limit: 2
    t.integer "PVCObstSite_HepaticVeins",    limit: 2
    t.integer "PVCObstSite_CSConnection",    limit: 2
    t.integer "PVCObstSite_CSOstium",        limit: 2
    t.integer "PVCObstSite_ASD",             limit: 2
    t.integer "PVCObstSite_MultipleSites",   limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoPulmonaryVeins_ID"], name: "SS_PedEchoPulmonaryVeins_ID"
  end

  create_table "PedEchoSegAnatomy", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "AbdominalAorta",          limit: 50
    t.varchar    "Apex",                    limit: 50
    t.varchar    "GreatArteryRelationship", limit: 100
    t.varchar    "Liver",                   limit: 50
    t.integer    "MixedSitus",              limit: 2
    t.integer    "NmlSegAnatomy",           limit: 2
    t.varchar    "RVLVMisc",                limit: 30
    t.varchar    "Sidedness",               limit: 50
    t.varchar    "Spleen",                  limit: 50
    t.varchar    "Stomach",                 limit: 50
    t.integer    "VentArrangeAnterior",     limit: 2
    t.integer    "VentArrangeInferior",     limit: 2
    t.integer    "VentArrangePosterior",    limit: 2
    t.integer    "VentArrangeSuperior",     limit: 2
    t.varchar    "VentricularArrangement",  limit: 25
    t.varchar    "VentricularTopology",     limit: 50
    t.varchar    "ExamAVConnectionsType",   limit: 150
    t.text_basic "Findings",                limit: 2147483647
    t.varchar    "AorticArch",              limit: 50
    t.integer    "NmlSegAnatomy_RtArch",    limit: 2
    t.integer    "NmlSegAnatomy_W_OArch",   limit: 2
    t.text_basic "SegAnatomyComments",      limit: 2147483647
    t.text_basic "AbdOrgAnatomyComments",   limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoStressBaselineECG", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "NmlBaselineECG",         limit: 2
    t.integer    "NSR",                    limit: 2
    t.integer    "SinusNonSpecSTChanges",  limit: 2
    t.integer    "EarlyRepol",             limit: 2
    t.integer    "PoorRwaveProg",          limit: 2
    t.integer    "SinusBrady",             limit: 2
    t.integer    "SinusTach",              limit: 2
    t.integer    "Afib",                   limit: 2
    t.integer    "AtrialPacing",           limit: 2
    t.integer    "VentPacing",             limit: 2
    t.integer    "PacedRhythm",            limit: 2
    t.integer    "JunctionalRhythm",       limit: 2
    t.integer    "EctopicAtrialRhythm",    limit: 2
    t.integer    "MultifocalAtrialRhythm", limit: 2
    t.integer    "LVH",                    limit: 2
    t.integer    "Cond_1stDegAVB",         limit: 2
    t.integer    "Cond_2ndDegAVBType1",    limit: 2
    t.integer    "Cond_2ndDegAVBType2",    limit: 2
    t.integer    "Cond_2ndDegAVBUnk",      limit: 2
    t.integer    "Cond_3rdDegAVB",         limit: 2
    t.integer    "Cond_IVCD",              limit: 2
    t.integer    "Cond_LBBB",              limit: 2
    t.integer    "Cond_IncompLBBB",        limit: 2
    t.integer    "Cond_RBBB",              limit: 2
    t.integer    "Cond_IncompRBBB",        limit: 2
    t.integer    "Cond_LAFB",              limit: 2
    t.integer    "Cond_LAD",               limit: 2
    t.integer    "Cond_RAD",               limit: 2
    t.integer    "Cond_LPFB",              limit: 2
    t.integer    "Cond_WPW",               limit: 2
    t.integer    "Cond_NonSpecQRSWide",    limit: 2
    t.integer    "AtrARR_OccPAC",          limit: 2
    t.integer    "AtrARR_FreqPAC",         limit: 2
    t.integer    "AtrARR_AtrialCouplet",   limit: 2
    t.integer    "AtrARR_AtrialTriplets",  limit: 2
    t.integer    "AtrARR_NonSustSVT",      limit: 2
    t.integer    "VentARR_OccPVC",         limit: 2
    t.integer    "VentARR_FreqPVC",        limit: 2
    t.integer    "VentARR_OccCouplets",    limit: 2
    t.integer    "VentARR_FreqCouplets",   limit: 2
    t.integer    "VentARR_OccTriplets",    limit: 2
    t.integer    "VentARR_FreqTriplets",   limit: 2
    t.integer    "VentARR_NonSustVT",      limit: 2
    t.integer    "TWaveAnterior",          limit: 2
    t.integer    "TWaveInferior",          limit: 2
    t.integer    "TWaveAnteroseptal",      limit: 2
    t.integer    "TWaveLateral",           limit: 2
    t.integer    "TWaveAnterolateral",     limit: 2
    t.integer    "TWaveAnteroapical",      limit: 2
    t.integer    "TWaveHighLateral",       limit: 2
    t.integer    "QwaveAnterior",          limit: 2
    t.integer    "QwaveInferior",          limit: 2
    t.integer    "QwaveAnteroseptal",      limit: 2
    t.integer    "QwaveLateral",           limit: 2
    t.integer    "QwaveAnterolateral",     limit: 2
    t.integer    "QwaveAnteroapical",      limit: 2
    t.integer    "QwaveHighLateral",       limit: 2
    t.text_basic "Comments",               limit: 2147483647
    t.integer    "AtrARR_RunsAFib",        limit: 2
    t.text_basic "BaselineFindings",       limit: 2147483647
  end

  create_table "PedEchoStressBaselineST", primary_key: "SS_PedEchoStressBaselineST_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "ChangeType",           limit: 50
    t.varchar "MaxShift",             limit: 25
    t.varchar "Location",             limit: 50
    t.varchar "Config",               limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoStressExercise", primary_key: "SS_PedEchoStressExercise_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Stage",                  limit: 10
    t.float   "Grade"
    t.float   "METS"
    t.float   "HR"
    t.float   "BPSystolic"
    t.float   "BPDiastolic"
    t.varchar "Symptom",                limit: 50
    t.varchar "EchoStressSpeed",        limit: 50
    t.integer "StageTime",              limit: 2
    t.varchar "ArrhythmiaDuringStress", limit: 100
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoStressHYFindings", primary_key: "SS_PedEchoStressHYFindings_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.integer "BasalAnteriorWall",    limit: 2
    t.integer "MidAnteriorWall",      limit: 2
    t.integer "ApicalAnteriorWall",   limit: 2
    t.integer "MidAnteroseptalWall",  limit: 2
    t.integer "MidInferoseptalWall",  limit: 2
    t.integer "ApicalInferiorWall",   limit: 2
    t.integer "BasalInferiorWall",    limit: 2
    t.integer "MidInferiorWall",      limit: 2
    t.integer "ApicalLateralWall",    limit: 2
    t.integer "Apex",                 limit: 2
    t.float   "DoseResponse"
    t.float   "RecurrenceDose"
    t.integer "BasalAntSeptWall",     limit: 2
    t.integer "BasalInfSeptWall",     limit: 2
    t.integer "ApicalAntSeptWall",    limit: 2
    t.integer "BasalInfLatWall",      limit: 2
    t.integer "MidInfLatWall",        limit: 2
    t.integer "BasalAntLatWall",      limit: 2
    t.integer "MidAntLatWall",        limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoStressHYFindings_ID"], name: "SS_PedEchoStressHYFindings_ID"
  end

  create_table "PedEchoStressMIFindings", primary_key: "SS_PedEchoStressMIFindings_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "IschmiaInfarctLocation",    limit: 25
    t.varchar "IschmiaInfarct",            limit: 50
    t.varchar "IschmiaInfarctExtent",      limit: 25
    t.varchar "IschemiaInfarctCoronaries", limit: 75
    t.varchar "Stress_PharmStrEchoResult", limit: 25
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoStressPharm", primary_key: "SS_PedEchoStressPharm_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Stage",                       limit: 50
    t.varchar "Dose",                        limit: 50
    t.float   "HR"
    t.float   "BPSystolic"
    t.float   "BPDiastolic"
    t.varchar "Time",                        limit: 5
    t.float   "Atropine"
    t.float   "Metoprolol"
    t.varchar "PharmSymptoms",               limit: 50
    t.varchar "PharmArrhythmiaDuringStress", limit: 100
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Ped_Event_Echo_ID"
  end

  create_table "PedEchoStressRecoveryECG", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "Cond_1stDegAVB",        limit: 2
    t.integer "Cond_2ndDegAVBType1",   limit: 2
    t.integer "Cond_2ndDegAVBType2",   limit: 2
    t.integer "Cond_2ndDegAVBUnk",     limit: 2
    t.integer "Cond_3rdDegAVB",        limit: 2
    t.integer "Cond_IVCD",             limit: 2
    t.integer "Cond_LBBB",             limit: 2
    t.integer "Cond_IncompLBBB",       limit: 2
    t.integer "Cond_RBBB",             limit: 2
    t.integer "Cond_IncompRBBB",       limit: 2
    t.integer "Cond_LAFB",             limit: 2
    t.integer "Cond_LAD",              limit: 2
    t.integer "Cond_RAD",              limit: 2
    t.integer "Cond_LPFB",             limit: 2
    t.integer "Cond_WPW",              limit: 2
    t.integer "Cond_NonSpecQRSWide",   limit: 2
    t.integer "AtrARR_OccPAC",         limit: 2
    t.integer "AtrARR_FreqPAC",        limit: 2
    t.integer "AtrARR_AtrialCouplet",  limit: 2
    t.integer "AtrARR_AtrialTriplets", limit: 2
    t.integer "AtrARR_NonSustSVT",     limit: 2
    t.integer "AtrARR_RunsAFib",       limit: 2
    t.integer "VentARR_OccPVC",        limit: 2
    t.integer "VentARR_FreqPVC",       limit: 2
    t.integer "VentARR_OccCouplets",   limit: 2
    t.integer "VentARR_FreqCouplets",  limit: 2
    t.integer "VentARR_OccTriplets",   limit: 2
    t.integer "VentARR_FreqTriplets",  limit: 2
    t.integer "VentARR_NonSustVT",     limit: 2
  end

  create_table "PedEchoStressRecoveryST", primary_key: "SS_PedEchoStressRecoveryST_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "ChangeType",           limit: 50
    t.varchar "MaxShift",             limit: 25
    t.varchar "Location",             limit: 50
    t.varchar "Config",               limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoStressTestECG", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "Cond_1stDegAVB",        limit: 2
    t.integer    "Cond_2ndDegAVBType1",   limit: 2
    t.integer    "Cond_2ndDegAVBType2",   limit: 2
    t.integer    "Cond_2ndDegAVBUnk",     limit: 2
    t.integer    "Cond_3rdDegAVB",        limit: 2
    t.integer    "Cond_IVCD",             limit: 2
    t.integer    "Cond_LBBB",             limit: 2
    t.integer    "Cond_IncompLBBB",       limit: 2
    t.integer    "Cond_RBBB",             limit: 2
    t.integer    "Cond_IncompRBBB",       limit: 2
    t.integer    "Cond_LAFB",             limit: 2
    t.integer    "Cond_LAD",              limit: 2
    t.integer    "Cond_RAD",              limit: 2
    t.integer    "Cond_LPFB",             limit: 2
    t.integer    "Cond_WPW",              limit: 2
    t.integer    "Cond_NonSpecQRSWide",   limit: 2
    t.integer    "AtrARR_OccPAC",         limit: 2
    t.integer    "AtrARR_FreqPAC",        limit: 2
    t.integer    "AtrARR_AtrialCouplet",  limit: 2
    t.integer    "AtrARR_AtrialTriplets", limit: 2
    t.integer    "AtrARR_NonSustSVT",     limit: 2
    t.integer    "AtrARR_RunsAFib",       limit: 2
    t.integer    "VentARR_OccPVC",        limit: 2
    t.integer    "VentARR_FreqPVC",       limit: 2
    t.integer    "VentARR_OccCouplets",   limit: 2
    t.integer    "VentARR_FreqCouplets",  limit: 2
    t.integer    "VentARR_OccTriplets",   limit: 2
    t.integer    "VentARR_FreqTriplets",  limit: 2
    t.integer    "VentARR_NonSustVT",     limit: 2
    t.varchar    "NmlStressECG",          limit: 50
    t.integer    "Artifact",              limit: 2
    t.integer    "LeadsOff",              limit: 2
    t.text_basic "RECComments",           limit: 2147483647
  end

  create_table "PedEchoStressTestFindings", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "ReturnToNml",                                limit: 50
    t.integer    "WorseBeforeNml",                             limit: 2
    t.integer    "DukeScore",                                  limit: 2
    t.varchar    "DukeRisk",                                   limit: 25
    t.varchar    "ExerciseCapacity",                           limit: 25
    t.varchar    "BPResponseToStress",                         limit: 25
    t.varchar    "HRResponseToStress",                         limit: 25
    t.varchar    "BL_LVFunction",                              limit: 50
    t.varchar    "BL_EFRange",                                 limit: 25
    t.varchar    "BL_WallMotion",                              limit: 50
    t.varchar    "LVSize",                                     limit: 50
    t.varchar    "EFChange",                                   limit: 50
    t.varchar    "EFRange",                                    limit: 25
    t.varchar    "WallMotion",                                 limit: 50
    t.integer    "NoAbnValve",                                 limit: 2
    t.float      "RVSPStressPeak"
    t.float      "MnMVGradStress"
    t.float      "MnAVGradStress"
    t.float      "AoVPkVelStress"
    t.text_basic "EchoComments",                               limit: 2147483647
    t.varchar    "StudyQuality",                               limit: 100
    t.varchar    "Contrast",                                   limit: 25
    t.integer    "PTMonitored",                                limit: 2
    t.varchar    "BetaBlockersHeldGiven",                      limit: 50
    t.integer    "CompNone",                                   limit: 2
    t.integer    "CompBackPain",                               limit: 2
    t.integer    "CompAllergic",                               limit: 2
    t.varchar    "ComparisonStudy",                            limit: 200
    t.datetime   "PriorStudyDate"
    t.text_basic "ComparisonComments",                         limit: 2147483647
    t.text_basic "SummaryComments",                            limit: 2147483647
    t.integer    "ECGInterpOnly",                              limit: 2
    t.varchar    "EchoResult",                                 limit: 25
    t.varchar    "NonDiagnosticReason",                        limit: 50
    t.integer    "NoIschemia",                                 limit: 2
    t.varchar    "ReducedSensitivity",                         limit: 100
    t.integer    "EchoInterpOnly",                             limit: 2
    t.integer    "NormalStressECG",                            limit: 2
    t.integer    "NonDiagBelowTargHR",                         limit: 2
    t.integer    "NonDiagAbnBaselineECG",                      limit: 2
    t.integer    "NonDiagPacedRhythm",                         limit: 2
    t.integer    "NonDiagLBBB",                                limit: 2
    t.integer    "NonDiagLVH",                                 limit: 2
    t.integer    "AbnormalECG",                                limit: 2
    t.integer    "StressECGUninterpretable",                   limit: 2
    t.integer    "StressECGNoProArrhythmia",                   limit: 2
    t.integer    "SymptomsCP",                                 limit: 2
    t.integer    "SymptomsIncreasedCP",                        limit: 2
    t.integer    "SymptomsAtypCP",                             limit: 2
    t.integer    "SymptomsCPNoChange",                         limit: 2
    t.integer    "SymptomsAngina",                             limit: 2
    t.integer    "SymptomsDyspnea",                            limit: 2
    t.integer    "SymptomsFatigue",                            limit: 2
    t.integer    "SymptomsFlushing",                           limit: 2
    t.integer    "SymptomsDizziness",                          limit: 2
    t.integer    "SymptomsNausea",                             limit: 2
    t.integer    "SymptomsHeadache",                           limit: 2
    t.integer    "SymptomsKneePain",                           limit: 2
    t.integer    "SymptomsHipPain",                            limit: 2
    t.integer    "SymptomsClaudication",                       limit: 2
    t.text_basic "Findings",                                   limit: 2147483647
    t.text_basic "StressBaselineFindings",                     limit: 2147483647
    t.text_basic "StressRecoveryFindings",                     limit: 2147483647
    t.text_basic "StressSummaryFindings",                      limit: 2147483647
    t.text_basic "StressProtocolFindings",                     limit: 2147483647
    t.text_basic "PharmStressProtocolFindings",                limit: 2147483647
    t.text_basic "StressConclusions",                          limit: 2147483647
    t.text_basic "ReportFindings",                             limit: 2147483647
    t.text_basic "StressECGInterpretationFindings",            limit: 2147483647
    t.text_basic "StressEchoInterpretationFindings",           limit: 2147483647
    t.text_basic "StressAdditionalEchoInterpretationFindings", limit: 2147483647
    t.integer    "SymptomsNOCP",                               limit: 2
    t.text_basic "ECGInterpComments",                          limit: 2147483647
    t.integer    "CritRsltsDiscussedWRefMD",                   limit: 2
    t.float      "ReturnToNmlMin"
    t.text_basic "EchoInterpretationFindings",                 limit: 2147483647
    t.integer    "MV_Pk_Grad_chk",                             limit: 2
    t.integer    "MV_Mn_Grad_chk",                             limit: 2
    t.integer    "Aov_Pk_Grad_chk",                            limit: 2
    t.integer    "Aov_Mn_Grad_chk",                            limit: 2
    t.integer    "Mid_Cavity_Pk_Grad_chk",                     limit: 2
    t.integer    "Sub_Valvar_Pk_Grad_chk",                     limit: 2
    t.integer    "Sub_Valvar_Mn_Grad_chk",                     limit: 2
    t.integer    "RVSP_chk",                                   limit: 2
    t.integer    "PV_Pk_chk",                                  limit: 2
    t.text_basic "StressEchoFindings",                         limit: 2147483647
  end

  create_table "PedEchoStressTestST", primary_key: "SS_PedEchoStressTestST_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "ChangeType",           limit: 50
    t.varchar "MaxShift",             limit: 25
    t.varchar "Location",             limit: 50
    t.varchar "Config",               limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoSurgASD", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "ProcASDType3",                    limit: 150
    t.varchar    "ProcASDType2",                    limit: 150
    t.varchar    "ProcASDType1",                    limit: 150
    t.integer    "ProcASDSurgicalCreation",         limit: 2
    t.integer    "ProcASDMiscSeptectomy",           limit: 2
    t.integer    "ProcASDMiscRAPlication",          limit: 2
    t.integer    "ProcASDMiscRAMassExcision",       limit: 2
    t.integer    "ProcASDMiscRAAtrioplasty",        limit: 2
    t.integer    "ProcASDMiscLAPlication",          limit: 2
    t.integer    "ProcASDMiscLAMassExcision",       limit: 2
    t.integer    "ProcASDMiscLAAtrioplasty",        limit: 2
    t.integer    "ProcASDMiscLAAExcision",          limit: 2
    t.varchar    "ProcASDMiscInterventions",        limit: 150
    t.integer    "ProcASDMiscFenestration",         limit: 2
    t.integer    "ProcASDMiscCorTriatriatum",       limit: 2
    t.varchar    "ProcASDDeviceType3",              limit: 150
    t.varchar    "ProcASDDeviceType2",              limit: 150
    t.varchar    "ProcASDDeviceType1",              limit: 150
    t.float      "ProcASDDeviceSize3"
    t.float      "ProcASDDeviceSize2"
    t.float      "ProcASDDeviceSize1"
    t.varchar    "ProcASDDefectType3",              limit: 150
    t.varchar    "ProcASDDefectType2",              limit: 150
    t.varchar    "ProcASDDefectType1",              limit: 150
    t.varchar    "ProcASD3",                        limit: 150
    t.varchar    "ProcASD2",                        limit: 150
    t.varchar    "ProcASD1",                        limit: 150
    t.text_basic "Findings",                        limit: 2147483647
    t.varchar    "ProcASDDeviceType1Other",         limit: 250
    t.integer    "ProcASDAtrialSwitchMustard",      limit: 2
    t.integer    "ProcASDAtrialSwitchSenning",      limit: 2
    t.integer    "ProcASDBalloonSeptostomy",        limit: 2
    t.integer    "ProcASDDilationStatic",           limit: 2
    t.integer    "ProcASDDilationCutting",          limit: 2
    t.integer    "ProcASDStent",                    limit: 2
    t.integer    "ProcASDAtrialSwitchAtrialBaffle", limit: 2
  end

  create_table "PedEchoSurgAVSD", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "ProcAVSDSurg",                   limit: 150
    t.integer "ProcAVSD_RtAVVRepair",           limit: 2
    t.integer "ProcAVSD_RtAVVAnnuloplasty",     limit: 2
    t.integer "ProcAVSD_RtAVVAnnuloplastyRing", limit: 2
    t.integer "ProcAVSD_RtAVVValvuloplasty",    limit: 2
    t.integer "ProcAVSD_RtAVVValvuloPapTWD",    limit: 2
    t.integer "ProcAVSD_RtAVVValvuloPapTWOD",   limit: 2
    t.integer "ProcAVSD_RtAVVValvotomy",        limit: 2
    t.integer "ProcAVSD_RtAVVChordReconst",     limit: 2
    t.integer "ProcAVSD_RtAVVRepairRuptChord",  limit: 2
    t.integer "ProcAVSD_RtAVVChordLength",      limit: 2
    t.integer "ProcAVSD_RtAVVSplittingChords",  limit: 2
    t.integer "ProcAVSD_RtAVVShorteningChords", limit: 2
    t.integer "ProcAVSD_RtAVVPapMusLength",     limit: 2
    t.integer "ProcAVSD_RtAVVPapMusShort",      limit: 2
    t.integer "ProcAVSD_RtAVVPapMusReimplant",  limit: 2
    t.integer "ProcAVSD_RtAVVLeafletRepair",    limit: 2
    t.integer "ProcAVSD_RtAVVLeafletExt",       limit: 2
    t.integer "ProcAVSD_RtAVVCleftRepair",      limit: 2
    t.integer "ProcAVSD_RtAVVOversewing",       limit: 2
    t.integer "ProcAVSD_RtAVVThrombusRemove",   limit: 2
    t.integer "ProcAVSD_RtAVVVegetationRemove", limit: 2
    t.varchar "ProcAVSDProstheticRtAVV",        limit: 150
    t.varchar "ProcAVSDProstheticLtAVV",        limit: 150
    t.float   "ProcAVSDProsthRtAVVSize"
    t.float   "ProcAVSDProsthLtAVVSize"
    t.integer "ProcAVSD_TVReplacement",         limit: 2
    t.integer "ProcAVSD_LtAVVResectSupraVRing", limit: 2
    t.integer "ProcAVSD_LtAVVValvuloplasty",    limit: 2
    t.integer "ProcAVSD_LtAVVAnnuloplasty",     limit: 2
    t.integer "ProcAVSD_LtAVVAnnuloplastyRing", limit: 2
    t.integer "ProcAVSD_LtAVVCommissurotomy",   limit: 2
    t.integer "ProcAVSD_LtAVVValvotomy",        limit: 2
    t.integer "ProcAVSD_LtAVVChordalRecon",     limit: 2
    t.integer "ProcAVSD_LtAVVRepairOfRupChord", limit: 2
    t.integer "ProcAVSD_LtAVVChordalLength",    limit: 2
    t.integer "ProcAVSD_LtAVVSplittingCords",   limit: 2
    t.integer "ProcAVSD_LtAVVShortChords",      limit: 2
    t.integer "ProcAVSD_LtAVVPapillaryMuscleL", limit: 2
    t.integer "ProcAVSD_LtAVVPapillaryMuscleS", limit: 2
    t.integer "ProcAVSD_LtAVVPapillaryMuscleR", limit: 2
    t.integer "ProcAVSD_LtAVVLeafletRepair",    limit: 2
    t.integer "ProcAVSD_LtAVVLeafletExtension", limit: 2
    t.integer "ProcAVSD_LtAVVCleftRepair",      limit: 2
    t.integer "ProcAVSD_LtAVVOversewing",       limit: 2
    t.integer "ProcAVSD_LtAVVThrombusRemoval",  limit: 2
    t.integer "ProcAVSD_LtAVVVegRemoval",       limit: 2
    t.integer "ProcAVSD_RtAVReplacement",       limit: 2
    t.integer "ProcAVSD_LtAVReplacement",       limit: 2
    t.integer "ProcAVSDLtBalloonDilatation",    limit: 2
    t.integer "ProcAVSDRtBalloonDilatation",    limit: 2
  end

  create_table "PedEchoSurgCoarct", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "ProcCoarctSurgery",              limit: 150
    t.integer "ProcIAA_BalloonDilCoarct",       limit: 2
    t.integer "ProcIAA_BalloonDilReCoarct",     limit: 2
    t.integer "ProcIAA_BalloonDilCoarctThor",   limit: 2
    t.integer "ProcIAA_BalloonDilReCoarctThor", limit: 2
    t.integer "ProcIAA_BalloonDilCoarctAbdAo",  limit: 2
    t.integer "ProcIAA_BalloonDilReCoarctAbAo", limit: 2
    t.integer "ProcIAA_StentOfCoarct",          limit: 2
    t.integer "ProcIAA_StentOfReCoarct",        limit: 2
    t.integer "ProcIAA_StentOfCoarctThoracic",  limit: 2
    t.integer "ProcIAA_StentOfReCoarctThor",    limit: 2
    t.integer "ProcIAA_StentOfCoarctAbdAo",     limit: 2
    t.integer "ProcIAA_StentOfReCoarctAbdAo",   limit: 2
    t.varchar "ProcInteruptedAoArchSurg",       limit: 150
  end

  create_table "PedEchoSurgComArt", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "ProcComArtTrunk_VSD",            limit: 150
    t.varchar "ProcComArtTrunk_ASD",            limit: 150
    t.integer "ProcComArtTrunk_Valvuloplasty",  limit: 2
    t.integer "ProcComArtTrunk_UnifocalOfPas",  limit: 2
    t.integer "ProcComArtTrunk_RtUnifocal",     limit: 2
    t.integer "ProcComArtTrunk_RPAIntraStent",  limit: 2
    t.integer "ProcComArtTrunk_RPAArterioplas", limit: 2
    t.integer "ProcComArtTrunk_RPA_plication",  limit: 2
    t.integer "ProcComArtTrunk_Repair",         limit: 2
    t.integer "ProcComArtTrunk_LtUnifocal",     limit: 2
    t.integer "ProcComArtTrunk_LPAIntraStent",  limit: 2
    t.integer "ProcComArtTrunk_LPAArterioplas", limit: 2
    t.integer "ProcComArtTrunk_LPA_plication",  limit: 2
    t.integer "ProcComArtTrunk_LeafletExt",     limit: 2
    t.integer "ProcComArtTrunk_BilatStenting",  limit: 2
    t.integer "ProcComArtTrunk_BilatAteriopla", limit: 2
    t.integer "ProcComArtTrunk_Bilat_plicat",   limit: 2
  end

  create_table "PedEchoSurgCoroArt", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcCoroArt_ReimplantLCA",       limit: 2
    t.integer "ProcCoroArt_ReimplantLCATunnel", limit: 2
    t.integer "ProcCoroArt_LCAOstialSten",      limit: 2
    t.integer "ProcCoroArt_RCAOstialSten",      limit: 2
    t.integer "ProcCoroArt_UnroofingLCA",       limit: 2
    t.integer "ProcCoroArt_UnroofingRCA",       limit: 2
    t.integer "ProcCoroArt_ReimplantRCA",       limit: 2
    t.integer "ProcCoroArt_LigationRCA",        limit: 2
    t.integer "ProcCoroArt_LigationLCA",        limit: 2
    t.integer "ProcCoroArt_TransectMyoBridge",  limit: 2
    t.integer "ProcCoroArt_TransectMultMyoBrg", limit: 2
    t.integer "ProcCoroArt_DivLMCAFistula",     limit: 2
    t.integer "ProcCoroArt_DivLADFistula",      limit: 2
    t.integer "ProcCoroArt_DivCircFistula",     limit: 2
    t.integer "ProcCoroArt_DivRCAFistula",      limit: 2
    t.integer "ProcCoroArt_LigtionLMCAFistula", limit: 2
    t.integer "ProcCoroArt_LigtionLADFistula",  limit: 2
    t.integer "ProcCoroArt_LigationCirFistula", limit: 2
    t.integer "ProcCoroArt_LigationRCAFistula", limit: 2
    t.integer "ProcCoroArt_CABGLMCA",           limit: 2
    t.integer "ProcCoroArt_CABGLAD",            limit: 2
    t.integer "ProcCoroArt_CABGCirc",           limit: 2
    t.integer "ProcCoroArt_CABGRCA",            limit: 2
    t.varchar "ProcCoroArt_Interventions",      limit: 150
    t.integer "ProcCoroArt_ReimplantRCATunnel", limit: 2
    t.integer "ProcCoroArt_CoilOcclusion",      limit: 2
    t.integer "ProcCoroArt_DeviceOcclusion",    limit: 2
    t.integer "ProcCoroArt_BalloonAngioRCA",    limit: 2
    t.integer "ProcCoroArt_BalloonAngioLMCA",   limit: 2
    t.integer "ProcCoroArt_BalloonAngioLAD",    limit: 2
    t.integer "ProcCoroArt_BalloonAngioCx",     limit: 2
    t.integer "ProcCoroArt_StentRCA",           limit: 2
    t.integer "ProcCoroArt_StentLMCA",          limit: 2
    t.integer "ProcCoroArt_StentLAD",           limit: 2
    t.integer "ProcCoroArt_StentCx",            limit: 2
    t.integer "ProcCoroArt_Thrombolysis",       limit: 2
  end

  create_table "PedEchoSurgDORVRepair", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "ProcDORVRepair", limit: 150
    t.varchar "ProcDOLVRepair", limit: 150
  end

  create_table "PedEchoSurgHeartTransplant", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "Proc_HeartTransplant",    limit: 150
    t.integer "ProcHrtTxp_AoArchRep",    limit: 2
    t.integer "ProcHrtTxp_MPAPatch",     limit: 2
    t.integer "ProcHrtTxp_RPAPatch",     limit: 2
    t.integer "ProcHrtTxp_LPAPatch",     limit: 2
    t.integer "ProcHrtTxp_BidiPAPatch",  limit: 2
    t.integer "ProcHrtTxp_RSVCRepair",   limit: 2
    t.integer "ProcHrtTxp_RSVCRedir",    limit: 2
    t.integer "ProcHrtTxp_LSVCRepair",   limit: 2
    t.integer "ProcHrtTxp_LSVCRedir",    limit: 2
    t.integer "ProcHrtTxp_StenoticRtPV", limit: 2
    t.integer "ProcHrtTxp_StenoticLtPV", limit: 2
    t.integer "ProcHrtTxp_PFOClosure",   limit: 2
    t.integer "ProcHrtTxp_ASDClosure",   limit: 2
    t.integer "ProcHrtTxp_VSDClosure",   limit: 2
  end

  create_table "PedEchoSurgIntervIndication", primary_key: "SS_PedEchoSurgIntervIndication_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "SurgeryInterventionIndication", limit: 100
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoSurgLVAO", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcLV_LVOTMyectomy",            limit: 2
    t.integer "ProcLV_LVOTAneurysm",            limit: 2
    t.integer "ProcLV_LVOTAneurysmPlication",   limit: 2
    t.integer "ProcLV_LVOTAneurysmResection",   limit: 2
    t.integer "ProcLV_LVOTPseudoaneurysm",      limit: 2
    t.integer "ProcLV_LVOTThrombusRemoval",     limit: 2
    t.integer "ProcLV_LVOTVegetationExcision",  limit: 2
    t.integer "ProcLV_LVOTMultiVegExcision",    limit: 2
    t.integer "ProcLV_LVOTTumorResection",      limit: 2
    t.integer "ProcLV_LVOTMultiTumorResection", limit: 2
    t.integer "ProcLV_LVOTForeignBodyRemoval",  limit: 2
    t.integer "ProcLV_LVOTMuscleResectionLV",   limit: 2
    t.integer "ProcLV_LVOTEFEResection",        limit: 2
    t.integer "ProcLV_LVOTPartialVentricul",    limit: 2
    t.integer "ProcLV_LVOTFibrousRidgeResect",  limit: 2
    t.integer "ProcLV_LVOTFibromuscResection",  limit: 2
    t.integer "ProcLV_LVOTMuscleResectLVOT",    limit: 2
    t.integer "ProcLV_LVOTChordResectinLVOT",   limit: 2
    t.integer "ProcLV_LVOTReliefCompLVOTO",     limit: 2
    t.integer "ProcLV_LVOTMoifiedKonno",        limit: 2
    t.integer "ProcLV_LVOTKonno",               limit: 2
    t.integer "ProcLV_LVOTLVToAoTunnel",        limit: 2
    t.integer "ProcLV_LVOTLVToPAConduit",       limit: 2
    t.integer "ProcLV_LVOTTransannularPatch",   limit: 2
    t.integer "ProcLV_LVOTLVBiopsy",            limit: 2
    t.integer "Proc_SinusOfValsalvaAneurysm",   limit: 2
    t.integer "Proc_RupturedSinusOfValsalva",   limit: 2
    t.integer "Proc_AortoLVTunnelRepair",       limit: 2
    t.varchar "Proc_AorticRootReplacement",     limit: 150
    t.varchar "Proc_AorticValve",               limit: 150
    t.varchar "Proc_RepeatAorticValveType",     limit: 150
    t.integer "Proc_RepeatAoVSize",             limit: 2
    t.varchar "Proc_AscAoSurg",                 limit: 150
    t.integer "Proc_BalloonDilAoV",             limit: 2
    t.integer "Proc_RepeatBalloonDilAoV",       limit: 2
    t.integer "Proc_LV_PAConduitStent",         limit: 2
    t.integer "Proc_BalloonDilLVOT",            limit: 2
    t.integer "PROCLV_LVOTMyectomyLV",          limit: 2
    t.integer "Proc_AorticValvuloplasty",       limit: 2
    t.integer "Proc_AoVValvotomy",              limit: 2
    t.integer "Proc_AorticCuspPlication",       limit: 2
    t.integer "Proc_AoVAnnuloplasty",           limit: 2
    t.integer "Proc_AorticCuspLeafletExt",      limit: 2
    t.integer "Proc_RepairAoPerforation",       limit: 2
    t.integer "Proc_RepairAoTear",              limit: 2
    t.integer "Proc_RemoveAoVThrombus",         limit: 2
    t.integer "Proc_RemoveAoVVeg",              limit: 2
    t.integer "Proc_AoVSize",                   limit: 2
    t.integer "Proc_AscAo_RepairSupAS",         limit: 2
    t.integer "Proc_AscAo_PatchEnlarge",        limit: 2
    t.integer "Proc_AscAo_PatchEnlargToArch",   limit: 2
    t.integer "Proc_AscAo_PatchEnlargToDescAo", limit: 2
    t.integer "Proc_AscAo_Plication",           limit: 2
    t.integer "Proc_AscAo_DrainRootAbcess",     limit: 2
    t.integer "Proc_AscAo_Replacement",         limit: 2
    t.integer "Proc_AscAo_DavidProc",           limit: 2
    t.integer "Proc_AscAo_InterpGraft",         limit: 2
    t.integer "Proc_AoRootAneuRepair",          limit: 2
    t.integer "Proc_AscAo_AneuRepair",          limit: 2
    t.integer "Proc_AscAo_RootAneuRepair",      limit: 2
    t.integer "Proc_AscAo_DissectionRepair",    limit: 2
    t.integer "Proc_AscAo_ArchDissectRepair",   limit: 2
    t.integer "Proc_AscAo_DescDissectRepair",   limit: 2
    t.integer "Proc_TAVI",                      limit: 2
  end

  create_table "PedEchoSurgMPAPA", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcPA_MPABand",                limit: 2
    t.integer "ProcPA_BilatPABand",            limit: 2
    t.integer "ProcPA_RPABand",                limit: 2
    t.integer "ProcPA_LPABand",                limit: 2
    t.integer "ProcPA_RepeatMPABand",          limit: 2
    t.integer "ProcPA_RepeatRPABand",          limit: 2
    t.integer "ProcPA_RepeatLPABand",          limit: 2
    t.integer "ProcPA_RemoveMPABand",          limit: 2
    t.integer "ProcPA_RemoveBranchPABand",     limit: 2
    t.integer "ProcPA_RemoveRPABand",          limit: 2
    t.integer "ProcPA_RemoveLPABand",          limit: 2
    t.integer "ProcPA_MPAPatchEnlarge",        limit: 2
    t.integer "ProcPA_RPAArterioplasty",       limit: 2
    t.integer "ProcPA_LPAArterioplasty",       limit: 2
    t.integer "ProcPA_MPAplication",           limit: 2
    t.integer "ProcPA_RPAplication",           limit: 2
    t.integer "ProcPA_LPAplication",           limit: 2
    t.integer "ProcPA_MPALigation",            limit: 2
    t.integer "ProcPA_UnifocalBilatMAPCAs",    limit: 2
    t.integer "ProcPA_UnifocalRtMAPCA",        limit: 2
    t.integer "ProcPA_UniflocalMultiRtMAPCA",  limit: 2
    t.integer "ProcPA_UnifocalLtMAPCA",        limit: 2
    t.integer "ProcPA_UniflocalMultiLtMAPCA",  limit: 2
    t.integer "ProcPA_LigateRtMAPCA",          limit: 2
    t.integer "ProcPA_LigateLtMAPCA",          limit: 2
    t.integer "ProcPA_RPAReimplant",           limit: 2
    t.integer "ProcPA_LPAReimplant",           limit: 2
    t.integer "ProcPA_RPAReimplantWTubeGraft", limit: 2
    t.integer "ProcPA_LPAReimplantWTubeGraft", limit: 2
    t.integer "ProcPA_MPAThrombectomy",        limit: 2
    t.integer "ProcPA_RPAThrombectomy",        limit: 2
    t.integer "ProcPA_LPAThrombectomy",        limit: 2
    t.integer "ProcPA_IntraopRPAStent",        limit: 2
    t.integer "ProcPA_IntraoLPAStent",         limit: 2
    t.integer "ProcPA_BalloonDilMPA",          limit: 2
    t.integer "ProcPA_BalloonDilRPA",          limit: 2
    t.integer "ProcPA_BalloonDilLPA",          limit: 2
    t.integer "ProcPA_StentRPA",               limit: 2
    t.integer "ProcPA_StentLPA",               limit: 2
    t.integer "ProcPA_CoilAPCollateral",       limit: 2
    t.integer "ProcPA_CoilMultiAPCollateral",  limit: 2
    t.integer "ProcPA_DeviceOcclAPCollateral", limit: 2
  end

  create_table "PedEchoSurgMitral", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcMV_ResectSupravalvarRing", limit: 2
    t.integer "ProcMV_Valvuloplasty",         limit: 2
    t.integer "ProcMV_Annuloplasty",          limit: 2
    t.integer "ProcMV_AnnuloplastyRing",      limit: 2
    t.integer "ProcMV_Commissurotomy",        limit: 2
    t.integer "ProcMV_Valvotomy",             limit: 2
    t.integer "ProcMV_ChordReconstruction",   limit: 2
    t.integer "ProcMV_RepairRupturedChord",   limit: 2
    t.integer "ProcMV_ChordalLengthening",    limit: 2
    t.integer "ProcMV_SplittingOfChords",     limit: 2
    t.integer "ProcMV_ShorteningOfChords",    limit: 2
    t.integer "ProcMV_PapMuscLengthening",    limit: 2
    t.integer "ProcMV_PapMuscShortening",     limit: 2
    t.integer "ProcMV_PapMuscReimplant",      limit: 2
    t.integer "ProcMV_LeafletRepair",         limit: 2
    t.integer "ProcMV_LeafletExt",            limit: 2
    t.integer "ProcMV_CleftRepair",           limit: 2
    t.integer "ProcMV_Oversewing",            limit: 2
    t.integer "ProcMV_ThrombusRemove",        limit: 2
    t.integer "ProcMV_VegetationRemove",      limit: 2
    t.varchar "Proc_MVReplacement",           limit: 150
    t.float   "Proc_MVReplacementSize"
    t.integer "Proc_BalloonDilMV",            limit: 2
    t.integer "Proc_MVReplacementRepeat",     limit: 2
  end

  create_table "PedEchoSurgNorwood", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "Proc_NorwoodDKS",                limit: 2
    t.integer "Proc_NorwoodRtModBTShunt",       limit: 2
    t.integer "Proc_NorwoodLtModBTShunt",       limit: 2
    t.integer "Proc_NorwoodClassicRtBT",        limit: 2
    t.integer "Proc_NorwoodClassicLtBT",        limit: 2
    t.integer "Proc_NorwoodCentralShunt",       limit: 2
    t.integer "Proc_NorwoodWatersonAnastAoRPA", limit: 2
    t.integer "Proc_NorwoodPottsAnastDesAoLPA", limit: 2
    t.integer "Proc_NorwoodSystShuntToRPA",     limit: 2
    t.integer "Proc_NorwoodSystShuntToLPA",     limit: 2
    t.integer "Proc_NorwoodTakedownRtModBT",    limit: 2
    t.varchar "Proc_Norwood",                   limit: 150
    t.varchar "Proc_NorwoodHybrid",             limit: 150
    t.integer "Proc_NorwoodTakedownLtModBT",    limit: 2
    t.integer "Proc_NorwoodTakedownClassicRtB", limit: 2
    t.integer "Proc_NorwoodTakedownClassicLtB", limit: 2
    t.integer "Proc_NorwoodTakedownCentralSht", limit: 2
    t.integer "Proc_NorwoodTakedownWaterAnast", limit: 2
    t.integer "Proc_NorwoodTakedownPottsAnast", limit: 2
    t.varchar "Proc_NorwoodInterventions",      limit: 150
  end

  create_table "PedEchoSurgPDA", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "Proc_VascularRingSurg",          limit: 150
    t.varchar "Proc_HeadNeckVesselSurg",        limit: 150
    t.varchar "Proc_PDASurg",                   limit: 150
    t.varchar "Proc_APWindowClose",             limit: 150
    t.integer "Proc_PDAStent",                  limit: 2
    t.integer "Proc_PDACoilOcc",                limit: 2
    t.integer "Proc_PDAAmplatzerDevice",        limit: 2
    t.integer "Proc_DeviceOcc",                 limit: 2
    t.integer "Proc_DeviceCloseAPWindow",       limit: 2
    t.integer "Proc_VascRingSurgAortopexy",     limit: 2
    t.integer "Proc_DivisionVascularRing",      limit: 2
    t.integer "Proc_DbleArchRepDivLAA",         limit: 2
    t.integer "Proc_DbleArchRepDivRAA",         limit: 2
    t.integer "Proc_SuspAnomalousInnomArt",     limit: 2
    t.integer "Proc_RimplantAnomalousInnomArt", limit: 2
    t.integer "Proc_PASlingRepair",             limit: 2
    t.integer "Proc_RPASlingRepair",            limit: 2
    t.integer "Proc_LPASlingRepair",            limit: 2
    t.integer "Proc_HeadNeckSurgLigationRSCA",  limit: 2
    t.integer "Proc_HeadNeckSurgLigtionLSCA",   limit: 2
    t.integer "Proc_HeadNeckSurgReimplantRSCA", limit: 2
    t.integer "Proc_HeadNeckSurgReimplantLSCA", limit: 2
  end

  create_table "PedEchoSurgPericardium", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "Pericardiocentesis",         limit: 2
    t.integer "OpenPericardiotomy",         limit: 2
    t.integer "PericardialWindowCatheter",  limit: 2
    t.integer "PericardialWindowSurgical",  limit: 2
    t.integer "PericardiectomyComplete",    limit: 2
    t.integer "PericardiectomyPartial",     limit: 2
    t.integer "PericardialTumorRessection", limit: 2
    t.integer "PericardialBiopsy",          limit: 2
    t.integer "PericardialCystRemove",      limit: 2
    t.integer "PericardialSclerosis",       limit: 2
  end

  create_table "PedEchoSurgProcGlenn", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcGlenn_RtBidir",              limit: 2
    t.integer "ProcGlenn_LtBidir",              limit: 2
    t.integer "ProcGlenn_BilatBidir",           limit: 2
    t.integer "ProcGlenn_RtClassic",            limit: 2
    t.integer "ProcGlenn_LtClassic",            limit: 2
    t.integer "ProcGlenn_RtKawashima",          limit: 2
    t.integer "ProcGlenn_LtKawashima",          limit: 2
    t.integer "ProcGlenn_RtHemiFontan",         limit: 2
    t.integer "ProcGlenn_LtHemiFontan",         limit: 2
    t.integer "ProcGlennTakeDwn_RtBidir",       limit: 2
    t.integer "ProcGlennTakeDwn_LtBidir",       limit: 2
    t.integer "ProcGlennTakeDwn_BilatBidir",    limit: 2
    t.integer "ProcGlennTakeDwn_RtClassic",     limit: 2
    t.integer "ProcGlennTakeDwn_LtClassic",     limit: 2
    t.integer "ProcGlennTakeDwn_RtKawashima",   limit: 2
    t.integer "ProcGlennTakeDwn_LtKawashima",   limit: 2
    t.integer "ProcGlennTakeDwn_RtHemiFontan",  limit: 2
    t.integer "ProcGlennTakeDwn_LtHemiFontan",  limit: 2
    t.integer "ProcFontan_ExCardiac",           limit: 2
    t.integer "ProcFontan_ExCardiacFenestr",    limit: 2
    t.integer "ProcFontan_LatTunnel",           limit: 2
    t.integer "ProcFontan_LatTunnelFenestr",    limit: 2
    t.integer "ProcFontan_RA_PA",               limit: 2
    t.integer "ProcFontan_Classic",             limit: 2
    t.integer "ProcFontan_RA_RV",               limit: 2
    t.integer "ProcFontan_ExCardiacHepCond",    limit: 2
    t.integer "ProcFontan_FenestrExCardHepDiv", limit: 2
    t.integer "ProcFontan_TransCatheter",       limit: 2
    t.integer "SurgeryProcFontan",              limit: 2
    t.integer "ProcFontan_Takedown",            limit: 2
    t.integer "ProcFontan_Revision",            limit: 2
    t.varchar "ProcFontan_Interventions",       limit: 150
    t.integer "ProcGlenn_RtBCPS",               limit: 2
    t.integer "ProcGlenn_LtBCPS",               limit: 2
    t.integer "ProcGlenn_BilatBCPS",            limit: 2
    t.integer "ProcGlennTakeDwn_RtBCPS",        limit: 2
    t.integer "ProcGlennTakeDwn_LtBCPS",        limit: 2
    t.integer "ProcGlennTakeDwn_BilatBCPS",     limit: 2
  end

  create_table "PedEchoSurgPulmVein", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "Proc_TAPVC_PAPVCRepair",         limit: 150
    t.varchar "Proc_TAPVCRepairTechnique",      limit: 150
    t.varchar "Proc_TAPVCPulmVRt",              limit: 150
    t.varchar "Proc_TAPVCPulmVLt",              limit: 150
    t.varchar "Proc_TAPVCVertVein",             limit: 150
    t.varchar "Proc_TAPVCRtVeinNotRedirected",  limit: 150
    t.varchar "Proc_TAPVCLtVeinNotRedirected",  limit: 150
    t.varchar "Proc_PulmVRepair",               limit: 150
    t.integer "Proc_PulmVRepairTechnique",      limit: 2
    t.varchar "Proc_PulmVRt",                   limit: 150
    t.varchar "Proc_PulmVLt",                   limit: 150
    t.varchar "Proc_PulmVRtNotRepaired",        limit: 150
    t.varchar "Proc_PulmVLtNotRepaired",        limit: 150
    t.integer "Proc_PulmVStentRUPV",            limit: 2
    t.integer "Proc_PulmVStentRLPV",            limit: 2
    t.integer "Proc_PulmVStentLUPV",            limit: 2
    t.integer "Proc_PulmVStentLLPV",            limit: 2
    t.integer "Proc_PulmVStentVertVein",        limit: 2
    t.integer "Proc_PulmVStentScimitar",        limit: 2
    t.integer "Proc_PulmVStentObstSite",        limit: 2
    t.integer "Proc_BalloonDilationRUPV",       limit: 2
    t.integer "Proc_BalloonDilationRLPV",       limit: 2
    t.integer "Proc_BalloonDilationLUPV",       limit: 2
    t.integer "Proc_BalloonDilationLLPV",       limit: 2
    t.integer "Proc_BalloonDilStentedRUPV",     limit: 2
    t.integer "Proc_BalloonDilStentedRLPV",     limit: 2
    t.integer "Proc_BalloonDilStentedLUPV",     limit: 2
    t.integer "Proc_BalloonDilStentedLLPV",     limit: 2
    t.integer "Proc_BalloonDilStentedVertVein", limit: 2
    t.integer "Proc_BalloonDilStentedScimitar", limit: 2
  end

  create_table "PedEchoSurgRVPV", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "Proc_RVMuscBundResect",          limit: 2
    t.integer "Proc_RVRepairDblChamber",        limit: 2
    t.integer "Proc_Rvplication",               limit: 2
    t.integer "Proc_RVMuscResect",              limit: 2
    t.integer "Proc_RVTumorResect",             limit: 2
    t.integer "Proc_RVResectMultiTumor",        limit: 2
    t.integer "Proc_RVVegExcision",             limit: 2
    t.integer "Proc_RVExcisionMultiVegetation", limit: 2
    t.integer "Proc_RVRemoveForeignBody",       limit: 2
    t.integer "Proc_RVAneurysmRepair",          limit: 2
    t.integer "Proc_RVOpenBiopsy",              limit: 2
    t.varchar "Proc_PVSurgery",                 limit: 150
    t.varchar "SurgeryProcRVToPA",              limit: 150
    t.float   "Proc_RVPAConduitSize"
    t.varchar "Proc_PVReplacement",             limit: 150
    t.integer "Proc_PVRepeatReplacement",       limit: 2
    t.float   "Proc_PVProsthSize"
    t.integer "Proc_Interv_RVOTBalloonDil",     limit: 2
    t.integer "Proc_Interv_RVOTStent",          limit: 2
    t.integer "Proc_Interv_PVBalloonDil",       limit: 2
    t.integer "Proc_Interv_RVPACondBalloonDil", limit: 2
    t.integer "Proc_Interv_StentRVPAConduit",   limit: 2
    t.integer "Proc_Interv_PVImplant",          limit: 2
    t.integer "Proc_Interv_BallonDilImplanted", limit: 2
    t.integer "Proc_PVSurgValvotomyOpen",       limit: 2
    t.integer "Proc_PVSurgValvotomyClosed",     limit: 2
    t.integer "Proc_PVSurgPulmCuspPlication",   limit: 2
    t.integer "Proc_PVSurgAnnuloplasty",        limit: 2
    t.integer "Proc_PVSurgPulmCuspRepair",      limit: 2
    t.integer "Proc_PVSurgPulmValvectomy",      limit: 2
    t.integer "Proc_PVSurgOversewingPulmValve", limit: 2
    t.integer "Proc_PVSurgRemoveThromb",        limit: 2
    t.integer "Proc_PVSurgRemoveVeg",           limit: 2
    t.integer "ProcIntervBallDilStentRVPACond", limit: 2
  end

  create_table "PedEchoSurgSystemicVein", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "Proc_RSVCRepair",               limit: 2
    t.integer "Proc_RSVCRepairPatch",          limit: 2
    t.integer "Proc_RSVCRepairoConduit",       limit: 2
    t.integer "Proc_RSVCBalloonDilation",      limit: 2
    t.integer "Proc_RSVCStent",                limit: 2
    t.integer "Proc_LSVCRepair",               limit: 2
    t.integer "Proc_LSVCRepairPatch",          limit: 2
    t.integer "Proc_LSVCRepairConduit",        limit: 2
    t.integer "Proc_LSVCBalloonDilation",      limit: 2
    t.integer "Proc_LSVCStent",                limit: 2
    t.integer "Proc_RSVCLigation",             limit: 2
    t.integer "Proc_LSVCLigation",             limit: 2
    t.integer "Proc_RSVCBaffleSystVenAtrium",  limit: 2
    t.integer "Proc_LSVCBaffleSystVenAtrium",  limit: 2
    t.integer "Proc_RSVCReimpSystVenAtrium",   limit: 2
    t.integer "Proc_LSVCReimpSystVenAtrium",   limit: 2
    t.integer "Proc_RSVCRedirectToLSVC",       limit: 2
    t.integer "Proc_LSVCRedirectToRSVC",       limit: 2
    t.integer "Proc_RSVCThrombusRemoval",      limit: 2
    t.integer "Proc_LSVCThrombusRemoval",      limit: 2
    t.integer "Proc_RSVCBaffleStent",          limit: 2
    t.integer "Proc_LSVCBaffleStent",          limit: 2
    t.varchar "Proc_IVCHepVein",               limit: 150
    t.varchar "Proc_CoroSinus",                limit: 150
    t.varchar "Proc_InnominateVein",           limit: 150
    t.integer "Proc_InnomVeinRepair",          limit: 2
    t.integer "Proc_InnomVeinRepairPatch",     limit: 2
    t.integer "Proc_InnomVeinBalloonDil",      limit: 2
    t.integer "Proc_InnomVeinStent",           limit: 2
    t.integer "Proc_InnomVeinRemoveThromb",    limit: 2
    t.integer "Proc_IVCHepVeinRepair",         limit: 2
    t.integer "Proc_IVCHepVeinRepairPatch",    limit: 2
    t.integer "Proc_IVCHepVeinRepairConduit",  limit: 2
    t.integer "Proc_IVCHepVeinReimplant",      limit: 2
    t.integer "Proc_IVCHepVeinBalloon",        limit: 2
    t.integer "Proc_IVCHepVeinStent",          limit: 2
    t.integer "Proc_IVCHepVeinRemoveThromb",   limit: 2
    t.integer "Proc_IVCBaffleToSystVenAtrium", limit: 2
    t.integer "Proc_HVeinBaffleSystVenAtrium", limit: 2
  end

  create_table "PedEchoSurgTGA", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "dTGAProcedure", limit: 150
    t.integer "LeCompte",      limit: 2
    t.integer "AtrialBaffle",  limit: 2
  end

  create_table "PedEchoSurgTOF", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "ProcTOFSurgery",            limit: 2
    t.integer "ProcTOFRVOTInfundMusResec", limit: 2
    t.integer "ProcTOFRVOTTransannPatch",  limit: 2
    t.integer "ProcTOFRVOTInfundPatch",    limit: 2
    t.integer "ProcTOFRVOTValveSparing",   limit: 2
    t.integer "ProcTOFRVOTValvotomy",      limit: 2
    t.integer "ProcTOFRVOTMPAPatch",       limit: 2
    t.integer "ProcTOFRVOTRVPAConduit",    limit: 2
    t.integer "ProcTOFRVOTRVPAHomograft",  limit: 2
    t.integer "ProcTOFRVOTRVPAValvedCond", limit: 2
  end

  create_table "PedEchoSurgTricuspid", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "Proc_TVSurgery",             limit: 150
    t.integer "Proc_TVReplacement",         limit: 2
    t.varchar "Proc_TVProsthType",          limit: 150
    t.float   "Proc_TVProsthSize"
    t.integer "Proc_TVRepair",              limit: 2
    t.integer "Proc_TVAnnuloplasty",        limit: 2
    t.integer "Proc_TVAnnuloplastyRing",    limit: 2
    t.integer "Proc_TVValvuloplasty",       limit: 2
    t.integer "Proc_TVPapMusTransWDetach",  limit: 2
    t.integer "Proc_TVPapMusTransWODetach", limit: 2
    t.integer "Proc_TVValvotomy",           limit: 2
    t.integer "Proc_TVChordReconstruction", limit: 2
    t.integer "Proc_TVRepairRupturedChord", limit: 2
    t.integer "Proc_TVChordLengthening",    limit: 2
    t.integer "Proc_TVSplitChords",         limit: 2
    t.integer "Proc_TVShortenChords",       limit: 2
    t.integer "Proc_TVPapMusLengthening",   limit: 2
    t.integer "Proc_TVPapMusShortening",    limit: 2
    t.integer "Proc_TVPapMusReimplant",     limit: 2
    t.integer "Proc_TVLeafletRepair",       limit: 2
    t.integer "Proc_TVLeafletExtension",    limit: 2
    t.integer "Proc_TVCleftRepair",         limit: 2
    t.integer "Proc_TVOversewing",          limit: 2
    t.integer "Proc_TVRemoveThrombus",      limit: 2
    t.integer "Proc_TVRemoveVeg",           limit: 2
    t.integer "Proc_TVRepeatReplacement",   limit: 2
  end

  create_table "PedEchoSurgVentricle", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "ProcVSD1",                limit: 30
    t.varchar "ProcVSDType1",            limit: 30
    t.varchar "ProcVSD2",                limit: 30
    t.varchar "ProcVSDType2",            limit: 30
    t.varchar "ProcVSD3",                limit: 30
    t.varchar "ProcVSDType3",            limit: 30
    t.varchar "ProcVSDDefectType1",      limit: 25
    t.varchar "ProcVSDDefectType2",      limit: 25
    t.varchar "ProcVSDDefectType3",      limit: 25
    t.varchar "ProcVSDDeviceType1",      limit: 50
    t.varchar "ProcVSDDeviceType2",      limit: 50
    t.varchar "ProcVSDDeviceType3",      limit: 50
    t.varchar "ProcVSDDeviceType1Other", limit: 250
    t.varchar "ProcVSDDeviceType2Other", limit: 250
    t.varchar "ProcVSDDeviceType3Other", limit: 250
    t.integer "ProcVSDDeviceSize1",      limit: 2
    t.integer "ProcVSDDeviceSize2",      limit: 2
    t.integer "ProcVSDDeviceSize3",      limit: 2
    t.integer "VentricularEnlargement",  limit: 2
  end

  create_table "PedEchoTricuspidValve", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "Ebsteins",                       limit: 50
    t.integer    "EbsteinsAntLeafDistalLinearAch", limit: 2
    t.integer    "EbsteinsAntLeafHypoplastic",     limit: 2
    t.integer    "EbsteinsAntLeafImmobile",        limit: 2
    t.integer    "EbsteinsAntLeafLarge",           limit: 2
    t.integer    "EbsteinsAntLeafMobile",          limit: 2
    t.integer    "EbsteinsAntLeafObstRVOT",        limit: 2
    t.integer    "EbsteinsAntLeafRestricted",      limit: 2
    t.integer    "EbsteinsAntLeafUnobstRVOT",      limit: 2
    t.varchar    "EbsteinsLeafDysplasia",          limit: 50
    t.integer    "EbsteinsPostLeafDeficient",      limit: 2
    t.integer    "EbsteinsPostLeafHypoplastic",    limit: 2
    t.integer    "EbsteinsPostLeafImmobile",       limit: 2
    t.integer    "EbsteinsPostLeafMobile",         limit: 2
    t.integer    "EbsteinsPostLeafTethered",       limit: 2
    t.integer    "EbsteinsSeptLeafDeficient",      limit: 2
    t.float      "EbsteinsSeptLeafDisplaced"
    t.integer    "MiscTVAbnDeficiency",            limit: 2
    t.integer    "MiscTVAbnNonCoapt",              limit: 2
    t.integer    "MiscTVAbnPerforation",           limit: 2
    t.integer    "TVAccessoryTissue",              limit: 2
    t.integer    "TVAccessoryTissueAntLeaf",       limit: 2
    t.integer    "TVAccessoryTissuePostLeaf",      limit: 2
    t.integer    "TVAccessoryTissueSeptLeaf",      limit: 2
    t.varchar    "TVAnnulusSize",                  limit: 50
    t.varchar    "TVAnteriorLeafletMobility",      limit: 50
    t.varchar    "TVAtresia",                      limit: 50
    t.integer    "TVChordalAttachCrestSept",       limit: 2
    t.integer    "TVChordalAttachLVBody",          limit: 2
    t.integer    "TVChordalAttachLVSideSept",      limit: 2
    t.integer    "TVChordalAttachRVOT",            limit: 2
    t.integer    "TVChordalAttachTipOfSept",       limit: 2
    t.integer    "TVChordsAntInsertedIntoRVOT",    limit: 2
    t.integer    "TVChordsAntMuscularized",        limit: 2
    t.integer    "TVChordsAntNormal",              limit: 2
    t.integer    "TVChordsAntRedundant",           limit: 2
    t.integer    "TVChordsAntRuptured",            limit: 2
    t.integer    "TVChordsAntShortened",           limit: 2
    t.integer    "TVChordsAntThickened",           limit: 2
    t.integer    "TVChordsInsertedIntoRVOT",       limit: 2
    t.integer    "TVChordsMuscularized",           limit: 2
    t.integer    "TVChordsNormal",                 limit: 2
    t.integer    "TVChordsNotAssessed",            limit: 2
    t.integer    "TVChordsNWV",                    limit: 2
    t.integer    "TVChordsPostInsertedIntoRVOT",   limit: 2
    t.integer    "TVChordsPostMuscularized",       limit: 2
    t.integer    "TVChordsPostNormal",             limit: 2
    t.integer    "TVChordsPostRedundant",          limit: 2
    t.integer    "TVChordsPostRuptured",           limit: 2
    t.integer    "TVChordsPostShortened",          limit: 2
    t.integer    "TVChordsPostThickened",          limit: 2
    t.integer    "TVChordsRedundant",              limit: 2
    t.integer    "TVChordsSeptInsertedIntoRVOT",   limit: 2
    t.integer    "TVChordsSeptMuscularized",       limit: 2
    t.integer    "TVChordsSeptNormal",             limit: 2
    t.integer    "TVChordsSeptRedundant",          limit: 2
    t.integer    "TVChordsSeptRuptured",           limit: 2
    t.integer    "TVChordsSeptShortened",          limit: 2
    t.integer    "TVChordsSeptThickened",          limit: 2
    t.integer    "TVChordsShortened",              limit: 2
    t.integer    "TVChordsThickened",              limit: 2
    t.integer    "TVLeafDysplastic",               limit: 2
    t.integer    "TVLeafletAbsenceAntLeaf",        limit: 2
    t.integer    "TVLeafletAbsencePostLeaf",       limit: 2
    t.integer    "TVLeafletAbsenceSeptLeaf",       limit: 2
    t.integer    "TVLeafletDeficiency",            limit: 2
    t.integer    "TVLeafletDeficiencyAntLeaf",     limit: 2
    t.integer    "TVLeafletDeficiencyPostLeaf",    limit: 2
    t.integer    "TVLeafletDeficiencySeptLeaf",    limit: 2
    t.integer    "TVLeafletFenestrationAntLeaf",   limit: 2
    t.integer    "TVLeafletFenestrationPostLeaf",  limit: 2
    t.integer    "TVLeafletFenestrationSeptLeaf",  limit: 2
    t.varchar    "TVLeafletMobility",              limit: 50
    t.integer    "TVLeafletPerfAntLeaf",           limit: 2
    t.integer    "TVLeafletPerfPostLeaf",          limit: 2
    t.integer    "TVLeafletPerfSeptLeaf",          limit: 2
    t.integer    "TVLeafMildDysplastic",           limit: 2
    t.integer    "TVLeafMildThick",                limit: 2
    t.integer    "TVLeafModDysplastic",            limit: 2
    t.integer    "TVLeafModThick",                 limit: 2
    t.integer    "TVLeafNormal",                   limit: 2
    t.integer    "TVLeafNotAssessed",              limit: 2
    t.integer    "TVLeafNWV",                      limit: 2
    t.integer    "TVLeafRedundant",                limit: 2
    t.integer    "TVLeafSevDysplastic",            limit: 2
    t.integer    "TVLeafSevThick",                 limit: 2
    t.integer    "TVLeafThickened",                limit: 2
    t.text_basic "TVMassComments",                 limit: 2147483647
    t.varchar    "TVMassConsistency",              limit: 50
    t.varchar    "TVMassDiff",                     limit: 50
    t.float      "TVMassDim1"
    t.float      "TVMassDim2"
    t.varchar    "TVMassLocation",                 limit: 50
    t.varchar    "TVMassMobility",                 limit: 50
    t.varchar    "TVMassSize",                     limit: 50
    t.integer    "TVMorphArcade",                  limit: 2
    t.integer    "TVMorphDoubleOrifice",           limit: 2
    t.integer    "TVMorphIsolatedCleft",           limit: 2
    t.integer    "TVMorphMyxomatous",              limit: 2
    t.integer    "TVMorphNotAssessed",             limit: 2
    t.integer    "TVMorphNWV",                     limit: 2
    t.integer    "TVMorphParachute",               limit: 2
    t.integer    "TVNonCoapt",                     limit: 2
    t.integer    "TVNonCoaptAnnDil",               limit: 2
    t.integer    "EbsteinsSeptLeafHypoplastic",    limit: 2
    t.integer    "EbsteinsSeptLeafImmobile",       limit: 2
    t.integer    "EbsteinsSeptLeafMobile",         limit: 2
    t.integer    "EbsteinsSeptLeafTethered",       limit: 2
    t.varchar    "EbsteinsSevOfDisplace",          limit: 50
    t.integer    "TVNonCoaptLeafTethering",        limit: 2
    t.integer    "TVPapMuscCalc",                  limit: 2
    t.integer    "TVPapMuscCalcAnterior",          limit: 2
    t.integer    "TVPapMuscCalcInferior",          limit: 2
    t.integer    "TVPapMuscCalcMedial",            limit: 2
    t.integer    "TVPapMuscEFE",                   limit: 2
    t.integer    "TVPapMuscEFEAnterior",           limit: 2
    t.integer    "TVPapMuscEFEInferior",           limit: 2
    t.integer    "TVPapMuscEFEMedial",             limit: 2
    t.varchar    "TVPapMuscHypoplasiaMedial",      limit: 50
    t.varchar    "TVPapMuscNWVNotAssessed",        limit: 50
    t.varchar    "TVPosition",                     limit: 50
    t.varchar    "TVPosteriorLeafletMobility",     limit: 50
    t.varchar    "TVProlapsePosterior",            limit: 50
    t.varchar    "TVProlapseSeptal",               limit: 50
    t.varchar    "TVProlapseAnterior",             limit: 50
    t.integer    "TVProstheticValve",              limit: 2
    t.integer    "TVProsthLeakLocAnterior",        limit: 2
    t.integer    "TVProsthLeakLocLateral",         limit: 2
    t.integer    "TVProsthLeakLocMedial",          limit: 2
    t.integer    "TVProsthLeakLocPosterior",       limit: 2
    t.varchar    "TVProsthPerivalvarLeak",         limit: 50
    t.varchar    "TVProsthValveMobility",          limit: 50
    t.varchar    "TVRegurgJetDirection",           limit: 50
    t.integer    "TVRegurgMultiJets",              limit: 2
    t.varchar    "TVSeptalLeafletMobility",        limit: 50
    t.integer    "TVRegurgDescripMedial",          limit: 2
    t.integer    "TVRegurgDescripCentral",         limit: 2
    t.integer    "TVRegurgDescripLateral",         limit: 2
    t.integer    "TVRegurgDescripAnterior",        limit: 2
    t.integer    "TVRegurgDescripPosterior",       limit: 2
    t.integer    "TVPapMuscHypoplasiaInferior",    limit: 2
    t.integer    "TVPapMuscHypoplasiaAnterior",    limit: 2
    t.integer    "TVPapMuscHypoplasiaNotAssessed", limit: 2
    t.integer    "TVPapMuscHypoplasiaNWV",         limit: 2
    t.text_basic "Findings",                       limit: 2147483647
    t.integer    "TVMorphNormal",                  limit: 2
    t.integer    "TVBioprostheticValve",           limit: 2
    t.integer    "TVNormal",                       limit: 2
    t.varchar    "TVFlow",                         limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoVeins", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "DuctusVenosus",                   limit: 50
    t.integer    "Fontan_ThrombusDistal",           limit: 2
    t.integer    "Fontan_ThrombusMid",              limit: 2
    t.integer    "Fontan_ThrombusMultiples",        limit: 2
    t.integer    "Fontan_ThrombusNone",             limit: 2
    t.integer    "Fontan_ThrombusProximal",         limit: 2
    t.integer    "Fontan_ThrombusSuspectDistal",    limit: 2
    t.integer    "Fontan_ThrombusSuspectMid",       limit: 2
    t.integer    "Fontan_ThrombusSuspectMural",     limit: 2
    t.integer    "Fontan_ThrombusSuspectProx",      limit: 2
    t.integer    "FontanAppear_DiffToVisualize",    limit: 2
    t.integer    "FontanAppear_DiffToVisualDist",   limit: 2
    t.integer    "FontanAppear_DiffToVisualProx",   limit: 2
    t.integer    "FontanAppear_DistalNarrowing",    limit: 2
    t.integer    "FontanAppear_DistalObst",         limit: 2
    t.integer    "FontanAppear_Obstructed",         limit: 2
    t.integer    "FontanAppear_ProxNarrowing",      limit: 2
    t.integer    "FontanAppear_ProxObst",           limit: 2
    t.integer    "FontanAppear_Unobstructed",       limit: 2
    t.integer    "FontanAppear_WidelyPatent",       limit: 2
    t.varchar    "FontanFenestration",              limit: 50
    t.varchar    "FontanFenestrationClosure",       limit: 50
    t.float      "FontanFenestrationMnGrad"
    t.float      "FontanFenestrationPkGrad"
    t.varchar    "FontanFenestrationResShuntDir",   limit: 50
    t.float      "FontanFenestrationResShuntSize"
    t.varchar    "FontanFenestrationShuntDirect",   limit: 50
    t.float      "FontanFenestrationSize"
    t.varchar    "FontanFlow",                      limit: 50
    t.integer    "HepaticVeinDilatation",           limit: 2
    t.varchar    "HepaticVeins",                    limit: 50
    t.varchar    "HepVFlow",                        limit: 50
    t.integer    "HepVFlowReversal",                limit: 2
    t.integer    "InclStentPkGradLLPV",             limit: 2
    t.integer    "InclStentPkGradLUPV",             limit: 2
    t.integer    "InclStentPkGradObstructionSite",  limit: 2
    t.integer    "InclStentPkGradRLPV",             limit: 2
    t.integer    "InclStentPkGradRUPV",             limit: 2
    t.integer    "InclStentPkGradScimitar",         limit: 2
    t.integer    "InclStentPkGradVerticalvein",     limit: 2
    t.varchar    "InferiorVenaCava",                limit: 50
    t.varchar    "InnominateVein",                  limit: 20
    t.integer    "IVCAnomAtresia",                  limit: 2
    t.varchar    "IVCAnomLocation",                 limit: 50
    t.integer    "IVCAnomMildDilatation",           limit: 2
    t.integer    "IVCAnomMildStenosis",             limit: 2
    t.integer    "IVCAnomModDilatation",            limit: 2
    t.integer    "IVCAnomModStenosis",              limit: 2
    t.integer    "IVCAnomSevDilatation",            limit: 2
    t.integer    "IVCAnomSevStenosis",              limit: 2
    t.varchar    "IVCFlow",                         limit: 50
    t.integer    "IVCFlowReversal",                 limit: 2
    t.varchar    "LSVCFlow",                        limit: 50
    t.varchar    "LSVCFlowReversal",                limit: 50
    t.integer    "LTGlennAppearance",               limit: 2
    t.integer    "LTGlennCentralPASegment",         limit: 2
    t.varchar    "LTGlennShunt",                    limit: 50
    t.varchar    "LTGlennShuntFlow",                limit: 50
    t.varchar    "LTGlennShuntFlowReversal",        limit: 50
    t.integer    "NormalVeins",                     limit: 2
    t.integer    "PulmVeinAtresiaLLPV",             limit: 2
    t.integer    "PulmVeinAtresiaLUPV",             limit: 2
    t.integer    "PulmVeinAtresiaRLPV",             limit: 2
    t.integer    "PulmVeinAtresiaRUPV",             limit: 2
    t.integer    "PulmVeinDilAll4",                 limit: 2
    t.integer    "PulmVeinDilLUPV",                 limit: 2
    t.integer    "PulmVeinDilRLPV",                 limit: 2
    t.integer    "PulmVeinDilRUPV",                 limit: 2
    t.integer    "PulmVeinFloIncreased",            limit: 2
    t.integer    "PulmVeinFlowAccelAllVeins",       limit: 2
    t.integer    "PulmVeinFlowAccelLLPV",           limit: 2
    t.integer    "PulmVeinFlowAccelLMPV",           limit: 2
    t.integer    "PulmVeinFlowAccelLUPV",           limit: 2
    t.integer    "PulmVeinFlowAccelRLPV",           limit: 2
    t.integer    "PulmVeinFlowAccelRMPV",           limit: 2
    t.integer    "PulmVeinFlowAccelRUPV",           limit: 2
    t.integer    "PulmVeinNmlFlowAllVeins",         limit: 2
    t.integer    "PulmVeinNmlFlowLLPV",             limit: 2
    t.integer    "PulmVeinNmlFlowLMPV",             limit: 2
    t.integer    "PulmVeinNmlFlowLUPV",             limit: 2
    t.integer    "PulmVeinNmlFlowRLPV",             limit: 2
    t.integer    "PulmVeinNmlFlowRMPV",             limit: 2
    t.integer    "PulmVeinNmlFlowRUPV",             limit: 2
    t.integer    "PulmVeinUnobstAllVeins",          limit: 2
    t.integer    "PulmVeinUnobstLLPV",              limit: 2
    t.integer    "PulmVeinUnobstLMPV",              limit: 2
    t.integer    "PulmVeinUnobstLUPV",              limit: 2
    t.integer    "PulmVeinUnobstRLPV",              limit: 2
    t.integer    "PulmVeinUnobstRMPV",              limit: 2
    t.integer    "PulmVeinUnobstRUPV",              limit: 2
    t.varchar    "PulmVenStenosisLLPV",             limit: 50
    t.varchar    "PulmVenStenosisLUPV",             limit: 50
    t.varchar    "PulmVenStenosisRLPV",             limit: 50
    t.varchar    "PulmVenStenosisRUPV",             limit: 50
    t.varchar    "PulVenConn_LtPulVeins",           limit: 50
    t.varchar    "PulVenConn_RtPulVeins",           limit: 50
    t.varchar    "PulVenConnectLimitationsLt",      limit: 50
    t.varchar    "PulVenConnectLimitationsRt",      limit: 50
    t.varchar    "PulVenConnObst",                  limit: 50
    t.float      "PulVenConnObstGrad"
    t.varchar    "PulVenConnObstSite",              limit: 50
    t.varchar    "RSVCFlow",                        limit: 50
    t.varchar    "RSVCFlowReversal",                limit: 50
    t.integer    "RtGlennAppearance",               limit: 2
    t.integer    "RtGlennCentralPASegment",         limit: 2
    t.varchar    "RtGlennShunt",                    limit: 50
    t.varchar    "RtGlennShuntFlow",                limit: 50
    t.varchar    "RtGlennShuntFlowReversal",        limit: 50
    t.float      "StentPkGradLLPV"
    t.float      "StentPkGradLUPV"
    t.float      "StentPkGradObstructionSite"
    t.float      "StentPkGradRLPV"
    t.float      "StentPkGradRUPV"
    t.float      "StentPkGradScimitar"
    t.float      "StentPkGradVerticalvein"
    t.integer    "SVCAnomAtreticLSVC",              limit: 2
    t.integer    "SVCAnomAtreticRSVC",              limit: 2
    t.integer    "SVCAnomBilatSVCs",                limit: 2
    t.integer    "SVCAnomDilatationLSVC",           limit: 2
    t.integer    "SVCAnomDilatationRSVC",           limit: 2
    t.integer    "SVCAnomHypoplasticLSVC",          limit: 2
    t.integer    "SVCAnomHypoplasticRSVC",          limit: 2
    t.integer    "SVCAnomMildStenosisLSVC",         limit: 2
    t.integer    "SVCAnomMildStenosisRSVC",         limit: 2
    t.integer    "SVCAnomModStenosisLSVC",          limit: 2
    t.integer    "SVCAnomModStenosisRSVC",          limit: 2
    t.integer    "SVCAnomSevStenosisLSVC",          limit: 2
    t.integer    "SVCAnomSevStenosisRSVC",          limit: 2
    t.integer    "SVCAnomStenosisLSVC",             limit: 2
    t.integer    "SVCAnomStenosisRSVC",             limit: 2
    t.integer    "SVCConnNWV",                      limit: 2
    t.integer    "SVCConnLSVCCorSinRtSideAtrium",   limit: 2
    t.integer    "SVCConnLSVCtoLtSidedAtrium",      limit: 2
    t.integer    "SVCConnLSVCtoRtSidedAtrium",      limit: 2
    t.integer    "SVCConnNotAssessed",              limit: 2
    t.integer    "SVCConnRSVCCorSinLtSideAtrium",   limit: 2
    t.integer    "SVCConnRSVCtoLtSidedAtrium",      limit: 2
    t.integer    "SVCConnRSVCtoRtSidedAtrium",      limit: 2
    t.varchar    "TAPVCAnastFlow",                  limit: 50
    t.float      "TAPVCAnastFlowDiam"
    t.float      "TAPVCAnastFlowMnGrad"
    t.float      "TAPVCAnastFlowPkGrad"
    t.integer    "PulmVeinDilLLPV",                 limit: 2
    t.integer    "RtGlennAppUnObst",                limit: 2
    t.integer    "RtGlennAppWidelyPatent",          limit: 2
    t.integer    "RtGlennAppObst",                  limit: 2
    t.integer    "RtGlennAppNarrSVCPA",             limit: 2
    t.integer    "LtGlennAppUnObst",                limit: 2
    t.integer    "LtGlennAppWidelyPatent",          limit: 2
    t.integer    "LtGlennAppObst",                  limit: 2
    t.integer    "LtGlennAppNarrSVCPA",             limit: 2
    t.text_basic "Findings",                        limit: 2147483647
    t.varchar    "ExamCoronarySinusVeins",          limit: 100
    t.integer    "SystVeinFlow_ProbSVtoInnom",      limit: 2
    t.integer    "SystVeinFlow_ProbSVtoLSVC",       limit: 2
    t.integer    "SystVeinFlow_ProbSVtoRSVC",       limit: 2
    t.integer    "SystVeinFlow_ProbPVtoInnom",      limit: 2
    t.integer    "SystVeinFlow_ProbPVtoLSVC",       limit: 2
    t.integer    "SystVeinFlow_ProbPVtoRSVC",       limit: 2
    t.varchar    "InnominateVeinAppearance",        limit: 50
    t.integer    "NmlPulVenousAnatomy",             limit: 2
    t.integer    "PulmonaryVeinsNWV",               limit: 2
    t.integer    "PulVeinNWV_All",                  limit: 2
    t.integer    "PulVeinNWV_RUPV",                 limit: 2
    t.integer    "PulVeinNWV_RLPV",                 limit: 2
    t.integer    "PulVeinNWV_LUPV",                 limit: 2
    t.integer    "PulVeinNWV_LLPV",                 limit: 2
    t.integer    "PulmVeinUnobstOneRPV",            limit: 2
    t.integer    "PulmVeinUnobstOneLPV",            limit: 2
    t.integer    "VeinsNotImaged_RUPV",             limit: 2
    t.integer    "VeinsNotImaged_RMPV",             limit: 2
    t.integer    "VeinsNotImaged_RLPV",             limit: 2
    t.integer    "VeinsNotImaged_LUPV",             limit: 2
    t.integer    "VeinsNotImaged_LMPV",             limit: 2
    t.integer    "VeinsNotImaged_LLPV",             limit: 2
    t.integer    "TAPVCVeinsIdentified_All",        limit: 2
    t.integer    "TAPVCVeinsIdentified_RUPV",       limit: 2
    t.integer    "TAPVCVeinsIdentified_RLPV",       limit: 2
    t.integer    "TAPVCVeinsIdentified_OneRPV",     limit: 2
    t.integer    "TAPVCVeinsIdentified_LUPV",       limit: 2
    t.integer    "TAPVCVeinsIdentified_LMPV",       limit: 2
    t.integer    "TAPVCVeinsIdentified_LLPV",       limit: 2
    t.integer    "TAPVCVeinsIdentified_OneLPV",     limit: 2
    t.integer    "TAPVCVeinsIdentified_RMPV",       limit: 2
    t.integer    "PulmVeinNmlFlowOneLPV",           limit: 2
    t.integer    "PulmVeinFlowAccelOneLPV",         limit: 2
    t.integer    "PulmVeinFlowAccelOneRPV",         limit: 2
    t.integer    "PulmVeinNmlFlowOneRPV",           limit: 2
    t.integer    "RtGlennAppDiffToVisualize",       limit: 2
    t.integer    "RtGlennAppDiffToVisualizeProx",   limit: 2
    t.integer    "RtGlennAppDiffToVisualizeDistal", limit: 2
    t.integer    "RtGlennAppSeenByColor",           limit: 2
    t.integer    "LtGlennAppDiffToVisualize",       limit: 2
    t.integer    "LtGlennAppDiffToVisualizeProx",   limit: 2
    t.integer    "LtGlennAppDiffToVisualizeDistal", limit: 2
    t.integer    "LtGlennAppSeenByColor",           limit: 2
    t.text_basic "SystemicVeinComment",             limit: 2147483647
    t.text_basic "PulmVeinComments",                limit: 2147483647
    t.text_basic "CavopulmFontanComments",          limit: 2147483647
    t.text_basic "VenousMassComments",              limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoVenousLines", primary_key: "SS_PedEchoVL_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "VenousCatheterType",          limit: 40
    t.varchar "VenousCatheterPosition",      limit: 35
    t.integer "VenousCatheterNoThrombusVeg", limit: 2
    t.varchar "VenousCatheterMass",          limit: 40
    t.varchar "VenousCatheterMassSize",      limit: 20
    t.varchar "VenousCatheterMassLoc",       limit: 40
    t.varchar "VenousCatheterMassMobility",  limit: 25
    t.float   "VenousCatheterDim1"
    t.float   "VenousCatheterDim2"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoVenousMass", primary_key: "SS_PedEchoVenousMass_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "VenousMassAppearance", limit: 100
    t.float   "VenousMassDim1"
    t.float   "VenousMassDim2"
    t.varchar "VenousMassLocation",   limit: 100
    t.integer "MultipleVenousMasses", limit: 2
    t.varchar "VenousMassMobility",   limit: 100
    t.varchar "VenousMassObst",       limit: 100
    t.varchar "VenousMassSize",       limit: 100
    t.varchar "VenousMassType",       limit: 100
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_PedEchoVenousMass_ID"], name: "SS_PedEchoVenousMass_ID"
  end

  create_table "PedEchoVent_PatchLeak", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "NoVSDPatchLeak",             limit: 2
    t.varchar    "VSDPatchLeak1Type",          limit: 25
    t.varchar    "VSDPatchLeak1ResShunt",      limit: 25
    t.integer    "VSDPatchLeak1LocSuperior",   limit: 2
    t.integer    "VSDPatchLeak1LocSInferior",  limit: 2
    t.integer    "VSDPatchLeak1LocSAnterior",  limit: 2
    t.integer    "VSDPatchLeak1LocSPosterior", limit: 2
    t.float      "VSDPatchLeak1ShuntSize"
    t.varchar    "VSDPatchLeak1ShuntDir",      limit: 45
    t.varchar    "VSDPatchLeak1Restriction",   limit: 45
    t.integer    "VSDPatchMass1",              limit: 2
    t.varchar    "VSDPatchMass1Location",      limit: 20
    t.varchar    "VSDPatchMass1Diff",          limit: 20
    t.varchar    "VSDPatchLeak2Type",          limit: 25
    t.varchar    "VSDPatchLeak2ResShunt",      limit: 25
    t.integer    "VSDPatchLeak2LocSuperior",   limit: 2
    t.integer    "VSDPatchLeak2LocSInferior",  limit: 2
    t.integer    "VSDPatchLeak2LocSAnterior",  limit: 2
    t.integer    "VSDPatchLeak2LocSPosterior", limit: 2
    t.float      "VSDPatchLeak2ShuntSize"
    t.varchar    "VSDPatchLeak2ShuntDir",      limit: 45
    t.varchar    "VSDPatchLeak2Restriction",   limit: 45
    t.integer    "VSDPatchMass2",              limit: 2
    t.varchar    "VSDPatchMass2Location",      limit: 20
    t.varchar    "VSDPatchMass2Diff",          limit: 20
    t.varchar    "VSDClosureDev1Position",     limit: 25
    t.integer    "VSDClosureDev1TypeAmplatz",  limit: 2
    t.varchar    "VSDClosureDev1TypeOther",    limit: 200
    t.float      "VSDClosureDev1Size"
    t.varchar    "VSDClosureDev1Leak",         limit: 50
    t.integer    "VSDClosureDev1LocSuperior",  limit: 2
    t.integer    "VSDClosureDev1LocInferior",  limit: 2
    t.integer    "VSDClosureDev1LocAnterior",  limit: 2
    t.integer    "VSDClosureDev1LocPosterior", limit: 2
    t.float      "VSDClosureDev1ShuntSize"
    t.varchar    "VSDClosureDev1ShuntDir",     limit: 45
    t.varchar    "VSDClosureDev1Restrict",     limit: 45
    t.integer    "VSDClosureDev1Mass",         limit: 2
    t.varchar    "VSDClosureDev1MassLoc",      limit: 20
    t.varchar    "VSDClosureDev1MassDiff",     limit: 30
    t.varchar    "VSDClosureDev2Position",     limit: 35
    t.integer    "VSDClosureDev2TypeAmplatz",  limit: 2
    t.varchar    "VSDClosureDev2TypeOther",    limit: 200
    t.float      "VSDClosureDev2Size"
    t.varchar    "VSDClosureDev2Leak",         limit: 50
    t.integer    "VSDClosureDev2LocSuperior",  limit: 2
    t.integer    "VSDClosureDev2LocInferior",  limit: 2
    t.integer    "VSDClosureDev2LocAnterior",  limit: 2
    t.integer    "VSDClosureDev2LocPosterior", limit: 2
    t.float      "VSDClosureDev2ShuntSize"
    t.varchar    "VSDClosureDev2ShuntDir",     limit: 45
    t.varchar    "VSDClosureDev2Restrict",     limit: 45
    t.integer    "VSDClosureDev2Mass",         limit: 2
    t.varchar    "VSDClosureDev2MassLoc",      limit: 20
    t.varchar    "VSDClosureDev2MassDiff",     limit: 30
    t.varchar    "VSDClosureDev1Seating",      limit: 50
    t.varchar    "VSDClosureDev2Seating",      limit: 50
    t.integer    "MultiplePatchesNoLeaks",     limit: 2
    t.float      "VSDPatchMass1Dim1"
    t.float      "VSDPatchMass1Dim2"
    t.text_basic "VSDClosureDevMass1Comm",     limit: 2147483647
    t.float      "VSDPatchMass2Dim1"
    t.float      "VSDPatchMass2Dim2"
    t.text_basic "VSDPatchMass2Comments",      limit: 2147483647
    t.integer    "NoAdditionalVSDs",           limit: 2
    t.text_basic "VSDPatchMass1Comments",      limit: 2147483647
    t.float      "VSDClosureDevMass1Dim1"
    t.float      "VSDClosureDevMass1Dim2"
    t.text_basic "VSDClosureDevMass2Comm",     limit: 2147483647
    t.float      "VSDClosureDevMass2Dim1"
    t.float      "VSDClosureDevMass2Dim2"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID", unique: true
  end

  create_table "PedEchoVentricles", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "IndetermVentSiz",               limit: 50
    t.integer    "VentAnomNonObstMuscleBand",     limit: 2
    t.integer    "VentAnomPrimaryEFE",            limit: 2
    t.integer    "VentAnomSecondaryEFE",          limit: 2
    t.integer    "VentAnomPromTrab",              limit: 2
    t.integer    "VentAnomNonCompaction",         limit: 2
    t.integer    "VentAnomSinusoids",             limit: 2
    t.varchar    "VentHypertrophy",               limit: 50
    t.varchar    "VentGlobalSystFxn",             limit: 50
    t.varchar    "VentDiastolicFxn",              limit: 50
    t.text_basic "VentDiastolicFxnOther",         limit: 2147483647
    t.integer    "DominantRV",                    limit: 2
    t.varchar    "EstRVPress",                    limit: 50
    t.integer    "HVFlowDecDiast",                limit: 2
    t.integer    "HVFlowIncARev",                 limit: 2
    t.integer    "HVFlowNorm",                    limit: 2
    t.integer    "IVCFlowAbsentRespVar",          limit: 2
    t.integer    "IVCFlowDecDiast",               limit: 2
    t.integer    "IVCFlowDecRespVar",             limit: 2
    t.integer    "IVCFlowIncARev",                limit: 2
    t.integer    "IVCFlowIncRespVar",             limit: 2
    t.integer    "IVCFlowNorm",                   limit: 2
    t.varchar    "MPADiasFlow",                   limit: 50
    t.text_basic "RVAnomComments",                limit: 2147483647
    t.integer    "RVAnomCongenAneurysm",          limit: 2
    t.integer    "RVAnomCongenDiverticulum",      limit: 2
    t.integer    "RVAnomNonCompaction",           limit: 2
    t.integer    "RVAnomPrimaryEFE",              limit: 2
    t.integer    "RVAnomSecondaryEFE",            limit: 2
    t.integer    "RVAnomSinusoids",               limit: 2
    t.integer    "RVAnomUhls",                    limit: 2
    t.varchar    "RVAtrialized",                  limit: 50
    t.varchar    "RVCardiomyopathyType",          limit: 50
    t.text_basic "RVChamberSizeOther",            limit: 2147483647
    t.varchar    "RVCMKnownSuspected",            limit: 50
    t.varchar    "RVDiaphragmaticWallFX",         limit: 50
    t.varchar    "RVDiastolicFxn",                limit: 50
    t.text_basic "RVDiastolicFxnOther",           limit: 2147483647
    t.varchar    "RVFreeWallFx",                  limit: 50
    t.varchar    "RVFxnToPrev",                   limit: 50
    t.datetime   "RVFxnToPrevDate"
    t.varchar    "RVLateralWallFX",               limit: 50
    t.integer    "RVLatTDIAPrimeVel",             limit: 2
    t.integer    "RVLatTDILowEPrimeVel",          limit: 2
    t.integer    "RVLatTDINorm",                  limit: 2
    t.integer    "RVLatTDIRevEAPrimePattern",     limit: 2
    t.integer    "RVMorphology",                  limit: 2
    t.varchar    "RVOutflowFX",                   limit: 50
    t.varchar    "RVSeptalMotion",                limit: 50
    t.text_basic "RVSeptalMotionOther",           limit: 2147483647
    t.varchar    "TrueRVCavity",                  limit: 50
    t.integer    "TVInflowNorm",                  limit: 2
    t.integer    "TVInflowProlongedDecTime",      limit: 2
    t.integer    "TVInflowRevEAPattern",          limit: 2
    t.integer    "TVInflowShortDecTime",          limit: 2
    t.integer    "TVInflowShortInflowDur",        limit: 2
    t.float      "ApicalTrabVSD1Dim1"
    t.float      "ApicalTrabVSD1Dim2"
    t.varchar    "ApicalTrabVSD1Position",        limit: 50
    t.varchar    "ApicalTrabVSD1Size",            limit: 50
    t.float      "ApicalTrabVSD2Dim1"
    t.float      "ApicalTrabVSD2Dim2"
    t.varchar    "ApicalTrabVSD2Postion",         limit: 50
    t.varchar    "ApicalTrabVSD2Size",            limit: 50
    t.float      "ApicalTrabVSD3Dim1"
    t.float      "ApicalTrabVSD3Dim2"
    t.varchar    "ApicalTrabVSD3Position",        limit: 50
    t.varchar    "ApicalTrabVSD3size",            limit: 50
    t.text_basic "ApicalTrabVSDComments",         limit: 2147483647
    t.integer    "ApicalTrabVSDLimitationsShunt", limit: 2
    t.integer    "ApicalTrabVSDLimitationsSize",  limit: 2
    t.varchar    "ApicalTrabVSDNumber_Type",      limit: 50
    t.integer    "ApicalTrabVSDRemoteDOV",        limit: 2
    t.varchar    "ApicalTrabVSDRestriction",      limit: 50
    t.varchar    "ApicalTrabVSDShunt",            limit: 50
    t.varchar    "AsymLVHAnterior",               limit: 50
    t.varchar    "AsymLVHApical",                 limit: 50
    t.varchar    "AsymLVHBasalSeptal",            limit: 50
    t.varchar    "AsymLVHInferior",               limit: 50
    t.varchar    "AsymLVHLateral",                limit: 50
    t.varchar    "AsymLVHMidSeptal",              limit: 50
    t.varchar    "AsymLVHPosterior",              limit: 50
    t.varchar    "AsymLVHSeptal",                 limit: 50
    t.varchar    "AVSD_VSD",                      limit: 50
    t.varchar    "AVSD_VSDArtOverride",           limit: 50
    t.text_basic "AVSD_VSDComment",               limit: 2147483647
    t.float      "AVSD_VSDDim1"
    t.float      "AVSD_VSDDim2"
    t.float      "AVSD_VSDEffShuntOrifice"
    t.integer    "AVSD_VSDLimitationsExtension",  limit: 2
    t.integer    "AVSD_VSDLimitationsShunt",      limit: 2
    t.integer    "AVSD_VSDLimitationsSize",       limit: 2
    t.varchar    "AVSD_VSDMalalignment",          limit: 50
    t.varchar    "AVSD_VSDMechRestriction",       limit: 50
    t.varchar    "AVSD_VSDShunt",                 limit: 100
    t.varchar    "AVSD_VSDSize",                  limit: 50
    t.float      "DblCommVSD_Dimension1"
    t.float      "DblCommVSD_Dimension2"
    t.float      "DblCommVSDEffShuntOrifice"
    t.integer    "DblCommVSDExtension",           limit: 2
    t.integer    "DblCommVSDLimitationsShunt",    limit: 2
    t.integer    "DblCommVSDLimitationsSize",     limit: 2
    t.varchar    "DblCommVSDRestriction",         limit: 50
    t.varchar    "DblCommVSDShunt",               limit: 50
    t.varchar    "DblCommVSDSize",                limit: 50
    t.integer    "DominantLV",                    limit: 2
    t.integer    "IntactVentSeptum",              limit: 2
    t.varchar    "LAPressure",                    limit: 50
    t.integer    "LVAneurysmAnterior",            limit: 2
    t.integer    "LVAneurysmApical",              limit: 2
    t.integer    "LVAneurysmBasalSeptum",         limit: 2
    t.integer    "LVAneurysmInferior",            limit: 2
    t.integer    "LVAneurysmLateral",             limit: 2
    t.integer    "LVAneurysmPosterior",           limit: 2
    t.integer    "LVAneurysmSeptal",              limit: 2
    t.text_basic "LVAnomComments",                limit: 2147483647
    t.integer    "LVAnomCongenAneurysm",          limit: 2
    t.integer    "LVAnomCongenDiverticulum",      limit: 2
    t.integer    "LVAnomNonCompaction",           limit: 2
    t.integer    "LVAnomNonObstMuscleBand",       limit: 2
    t.integer    "LVAnomPrimaryEFE",              limit: 2
    t.integer    "LVAnomSecondaryEFE",            limit: 2
    t.integer    "LVAnomSinusoids",               limit: 2
    t.varchar    "LVCMKnownSuspected",            limit: 50
    t.varchar    "LVDiastolicFxn",                limit: 50
    t.text_basic "LVDiastolicFxnOther",           limit: 2147483647
    t.varchar    "LVFxnToPrev",                   limit: 50
    t.datetime   "LVFxnToPrevDate"
    t.integer    "LVMorphology",                  limit: 2
    t.integer    "LVPseudoaneurAnterior",         limit: 2
    t.integer    "LVPseudoaneurApical",           limit: 2
    t.integer    "LVPseudoaneurBasalSeptum",      limit: 2
    t.integer    "LVPseudoaneurInferior",         limit: 2
    t.integer    "LVPseudoaneurLateral",          limit: 2
    t.integer    "LVPseudoaneurPosterior",        limit: 2
    t.integer    "LVPseudoaneurSeptal",           limit: 2
    t.varchar    "LVSize",                        limit: 50
    t.text_basic "LVSizeOther",                   limit: 2147483647
    t.integer    "MultipleVSDs",                  limit: 2
    t.text_basic "MuscInletComments",             limit: 2147483647
    t.integer    "MuscInletLimitationShunt",      limit: 2
    t.integer    "MuscInletLimitationSize",       limit: 2
    t.varchar    "MuscInletMechRestriction",      limit: 50
    t.varchar    "MuscInletVSD",                  limit: 50
    t.float      "MuscInletVSD_Dimension1"
    t.float      "MuscInletVSD_Dimension2"
    t.float      "MuscInletVSDEffShuntOrifice"
    t.integer    "MuscInletVSDRemoteDOV",         limit: 2
    t.varchar    "MuscInletVSDRestriction",       limit: 50
    t.varchar    "MuscInletVSDShunt",             limit: 50
    t.varchar    "MuscInletVSDSize",              limit: 50
    t.varchar    "MuscOutletVSD",                 limit: 50
    t.float      "MuscOutletVSD_Dimension1"
    t.float      "MuscOutletVSD_Dimension2"
    t.varchar    "MuscOutletVSD_DOVCommitment",   limit: 50
    t.varchar    "MuscOutletVSDArtOverride",      limit: 50
    t.text_basic "MuscOutletVSDComments",         limit: 2147483647
    t.float      "MuscOutletVSDEffShuntOrifice"
    t.integer    "MuscOutletVSDLimitationsShunt", limit: 2
    t.integer    "MuscOutletVSDLimitationsSize",  limit: 2
    t.varchar    "MuscOutletVSDMalalignment",     limit: 50
    t.varchar    "MuscOutletVSDMechRestriction",  limit: 50
    t.varchar    "MuscOutletVSDRestriction",      limit: 50
    t.varchar    "MuscOutletVSDShunt",            limit: 50
    t.varchar    "MuscOutletVSDSize",             limit: 50
    t.integer    "MVInflowAbnormE_A",             limit: 2
    t.integer    "MVInflowDecE_A",                limit: 2
    t.integer    "MVInflowIncDecelTime",          limit: 2
    t.integer    "MVInflowNorm",                  limit: 2
    t.integer    "MVInflowNormDecelTime",         limit: 2
    t.integer    "MVInflowNormE_A",               limit: 2
    t.integer    "MVInflowPseudonormal",          limit: 2
    t.integer    "MVInflowShortDecelTime",        limit: 2
    t.integer    "MVLatTDIAPrimeVel",             limit: 2
    t.integer    "MVLatTDILowEPrimeVel",          limit: 2
    t.integer    "MVLatTDINorm",                  limit: 2
    t.integer    "MVLatTDIRevEAPrimePattern",     limit: 2
    t.varchar    "PMVSD",                         limit: 50
    t.float      "PMVSD_Dimension1"
    t.float      "PMVSD_Dimension2"
    t.varchar    "PMVSD_DOVCommitment",           limit: 50
    t.varchar    "PMVSDArtOverride",              limit: 50
    t.text_basic "PMVSDComments",                 limit: 2147483647
    t.float      "PMVSDEffShuntOrifice"
    t.integer    "PMVSDExtInlet",                 limit: 2
    t.integer    "PMVSDExtOutlet",                limit: 2
    t.integer    "PMVSDExtTrabecular",            limit: 2
    t.integer    "PMVSDLimitationsExtension",     limit: 2
    t.integer    "PMVSDLimitationsShunt",         limit: 2
    t.integer    "PMVSDLimitationsSize",          limit: 2
    t.varchar    "PMVSDMalalignment",             limit: 50
    t.varchar    "PMVSDMechRestriction",          limit: 50
    t.varchar    "PMVSDRestriction",              limit: 50
    t.varchar    "PMVSDShunt",                    limit: 50
    t.varchar    "PMVSDSize",                     limit: 50
    t.integer    "PVFlowDecDiastFlow",            limit: 2
    t.integer    "PVFlowDecSystFlow",             limit: 2
    t.integer    "PVFlowIncARev",                 limit: 2
    t.integer    "PVFlowNorm",                    limit: 2
    t.float      "TrabVSD1Dim1"
    t.float      "TrabVSD1Dim2"
    t.varchar    "TrabVSD1Position",              limit: 50
    t.varchar    "TrabVSD1RelationModBand",       limit: 50
    t.varchar    "TrabVSD1Size",                  limit: 50
    t.float      "TrabVSD2Dim1"
    t.float      "TrabVSD2Dim2"
    t.varchar    "TrabVSD2Postion",               limit: 50
    t.varchar    "TrabVSD2RelationModBand",       limit: 50
    t.varchar    "TrabVSD2Restriction",           limit: 50
    t.varchar    "TrabVSD2Size",                  limit: 50
    t.float      "TrabVSD3Dim1"
    t.float      "TrabVSD3Dim2"
    t.varchar    "TrabVSD3Position",              limit: 50
    t.varchar    "TrabVSD3RelationModBand",       limit: 50
    t.varchar    "TrabVSD3size",                  limit: 50
    t.text_basic "TrabVSDComment",                limit: 2147483647
    t.varchar    "TrabVSDestriction",             limit: 50
    t.integer    "TrabVSDLimitationsShunt",       limit: 2
    t.integer    "TrabVSDLimitationsSize",        limit: 2
    t.varchar    "TrabVSDNumber_Type",            limit: 50
    t.integer    "TrabVSDRemoteDOV",              limit: 2
    t.varchar    "TrabVSDShunt",                  limit: 50
    t.varchar    "VentSeptumIncompAssess",        limit: 50
    t.text_basic "TruncalValveMassComments",      limit: 2147483647
    t.varchar    "DblCommVSD",                    limit: 25
    t.varchar    "DblCommVSDDetails",             limit: 25
    t.varchar    "AVSD_VSDRestriction",           limit: 50
    t.text_basic "Findings",                      limit: 2147483647
    t.integer    "MVLatSepTDINorm",               limit: 2
    t.integer    "MVLatSepTDIRevEAPrimePattern",  limit: 2
    t.integer    "MVLatSepTDILowEPrimeVel",       limit: 2
    t.integer    "MVLatSepTDIAPrimeVel",          limit: 2
    t.varchar    "DblCommVSDArtOverride",         limit: 25
    t.text_basic "VentLVComments",                limit: 2147483647
    t.varchar    "TrabVSD1Restriction",           limit: 40
    t.integer    "PMVSDExtMuscular",              limit: 2
    t.integer    "LVAnomCongenNonCompPoss",       limit: 2
    t.integer    "LVAnomNonObstMuscleBundles",    limit: 2
    t.integer    "RVAnomNonObstMuscleBand",       limit: 2
    t.integer    "RVAnomNonObstMuscleBundle",     limit: 2
    t.varchar    "IndetermVentComment",           limit: 200
    t.integer    "VentAnomNonObstMuscleBundle",   limit: 2
    t.varchar    "VentAnomComments",              limit: 200
    t.text_basic "VentriclesGeneralComments",     limit: 2147483647
    t.text_basic "VentRVComments",                limit: 2147483647
    t.varchar    "IVCRespVariability",            limit: 35
    t.float      "IVCDiamMin"
    t.integer    "IVCDiamMinIncl",                limit: 2
    t.float      "IVCDiamMax"
    t.integer    "CDiamMaxIncl",                  limit: 2
    t.text_basic "VentriclesVSDComments",         limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEchoVentricles2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "RVMass",                      limit: 50
    t.varchar    "LVMass",                      limit: 50
    t.varchar    "RVMassDifferential",          limit: 50
    t.varchar    "LVMassDifferential",          limit: 50
    t.varchar    "RVMassMobility",              limit: 50
    t.varchar    "LVMassMobility",              limit: 50
    t.varchar    "RVMassLocation",              limit: 75
    t.varchar    "LVMassLocation",              limit: 75
    t.varchar    "RVMassLocOther",              limit: 250
    t.varchar    "LVMassLocOther",              limit: 250
    t.integer    "RVMassConsHomogeneous",       limit: 2
    t.integer    "LVMassConsHomogeneous",       limit: 2
    t.integer    "RVMassConsInhomogenous",      limit: 2
    t.integer    "LVMassConsInhomogenous",      limit: 2
    t.integer    "RVMassConsEchoBright",        limit: 2
    t.integer    "LVMassConsEchoBright",        limit: 2
    t.integer    "RVMassConsCalcified",         limit: 2
    t.integer    "LVMassConsCalcified",         limit: 2
    t.float      "RVMassDim1"
    t.float      "LVMassDim1"
    t.float      "RVMassDim2"
    t.float      "LVMassDim2"
    t.integer    "RVMassMultiple",              limit: 2
    t.integer    "LVMassMultiple",              limit: 2
    t.varchar    "RVMassMultiDiff",             limit: 75
    t.varchar    "LVMassMultiDiff",             limit: 75
    t.integer    "RVMassMultiConsHomogeneous",  limit: 2
    t.integer    "LVMassMultiConsHomogeneous",  limit: 2
    t.integer    "RVMassMultiConsInhomogenous", limit: 2
    t.integer    "LVMassMultiConsInhomogenous", limit: 2
    t.integer    "RVMassMultiConsEchoBright",   limit: 2
    t.integer    "LVMassMultiConsEchoBright",   limit: 2
    t.integer    "RVMassMultiConsCalcified",    limit: 2
    t.integer    "LVMassMultiConsCalcified",    limit: 2
    t.text_basic "RVMassMultiDescription",      limit: 2147483647
    t.text_basic "LVMassMultiDescription",      limit: 2147483647
    t.varchar    "RVMassInOutObst",             limit: 50
    t.varchar    "LVMassInOutObst",             limit: 50
    t.integer    "NoMyocardMass",               limit: 2
    t.varchar    "KnownSuspectedBiVCM",         limit: 25
    t.varchar    "BiVentCardiomyopathy",        limit: 40
    t.integer    "LVMassInOutObstInflow",       limit: 2
    t.integer    "LVMassInOutObstOutflow",      limit: 2
    t.integer    "RVMassInOutObstOutflow",      limit: 2
    t.integer    "RVMassInOutObstInflow",       limit: 2
    t.integer    "TVInflowBlended",             limit: 2
    t.integer    "RVLatTDIBlended",             limit: 2
    t.varchar    "RVSeptalCurvature",           limit: 50
    t.varchar    "RVPulmonaryHtn",              limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEcho_CDComplications", primary_key: "SS_PedEcho_CDComplication_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Complication",         limit: 55
    t.varchar "Result",               limit: 50
    t.varchar "Notes",                limit: 255
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "PedEcho_CDContrast", primary_key: "SS_PedEcho_CDContrast_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID"
    t.datetime   "TimeAdministered"
    t.varchar    "ContrastType",                limit: 20
    t.float      "ContrastAmount"
    t.varchar    "Units",                       limit: 20
    t.float      "TotalDose"
    t.varchar    "Notes",                       limit: 255
    t.varchar    "AdministeredBy",              limit: 50
    t.integer    "Contrast_BloodAdded",         limit: 2
    t.float      "Contrast_CardiacCycle"
    t.varchar    "Contrast_Conclusion",         limit: 25
    t.float      "Contrast_FluidVolume"
    t.float      "Contrast_GasVolume"
    t.varchar    "Contrast_InjectionSite",      limit: 35
    t.float      "Contrast_InjectionVolume"
    t.varchar    "Contrast_LineType",           limit: 25
    t.varchar    "Contrast_NumberOfInjections", limit: 25
    t.varchar    "Contrast_Result",             limit: 25
    t.varchar    "ContrastFluid",               limit: 30
    t.integer    "ContrastWithValsalva",        limit: 2
    t.varchar    "Gas",                         limit: 25
    t.text_basic "Findings",                    limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "PedEcho_PrevIntv", primary_key: "SS_Ped_Echo_PrevIntv_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "PrevInterventions",    limit: 255
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "PedEcho_PriorStudy", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "ComparisonStudy",    limit: 200
    t.datetime   "PriorStudyDate"
    t.text_basic "PriorStudyComments", limit: 2147483647
    t.text_basic "Findings",           limit: 2147483647
  end

  create_table "PedEcho_Stress_Meds", primary_key: "SS_PedEcho_Stress_Meds_ID", force: :cascade do |t|
    t.integer  "SS_Event_Ped_Echo_ID"
    t.varchar  "Medications",          limit: 50
    t.varchar  "Dose",                 limit: 10
    t.varchar  "DurationOnMedication", limit: 50
    t.datetime "CD_MedTime"
    t.varchar  "CD_MedName",           limit: 50
    t.float    "CD_MedDose"
    t.varchar  "CD_MedUnits",          limit: 20
    t.varchar  "CD_MedRoute",          limit: 20
    t.float    "CD_MedTotalDose"
    t.varchar  "Arrhythmias",          limit: 25
    t.varchar  "AdministeredBy",       limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "PedEcho_WallMotion", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "StressRestLongAxisMidAnt",       limit: 20
    t.varchar    "StressRestLongAxisBasalAnt",     limit: 20
    t.varchar    "StressRestLongAxisMidPost",      limit: 20
    t.varchar    "StressRestLongAxisBasalPost",    limit: 20
    t.varchar    "StressRestShortAxisMidAnt",      limit: 20
    t.varchar    "StressRestShortAxisMidLateral",  limit: 20
    t.varchar    "StressRestShortAxisMidPost",     limit: 20
    t.varchar    "StressRestShortAxisMidSeptal",   limit: 20
    t.varchar    "StressRestApical4ApSeptal",      limit: 20
    t.varchar    "StressRestApical4ApLateral",     limit: 20
    t.varchar    "StressRestApical4MidLateral",    limit: 20
    t.varchar    "StressRestApical4BasalLateral",  limit: 20
    t.varchar    "StressRestApical4BasalSeptal",   limit: 20
    t.varchar    "StressRestApical4MidSeptal",     limit: 20
    t.varchar    "StressRestApical2ApInferior",    limit: 20
    t.varchar    "StressRestApical2ApAnterior",    limit: 20
    t.varchar    "StressRestApical2MidAnt",        limit: 20
    t.varchar    "StressRestApical2BasalAnt",      limit: 20
    t.varchar    "StressRestApical2BasalInferio",  limit: 20
    t.varchar    "StressRestApical2MidInferior",   limit: 20
    t.varchar    "StressExerLongAxisMidAnt",       limit: 20
    t.varchar    "StressExerLongAxisBasalAnt",     limit: 20
    t.varchar    "StressExerLongAxisMidPost",      limit: 20
    t.varchar    "StressExerLongAxisBasalPost",    limit: 20
    t.varchar    "StressExerShortAxisMidAnt",      limit: 20
    t.varchar    "StressExerShortAxisMidLateral",  limit: 20
    t.varchar    "StressExerShortAxisMidPost",     limit: 20
    t.varchar    "StressExerShortAxisMidSeptal",   limit: 20
    t.varchar    "StressExerApical4ApSeptal",      limit: 20
    t.varchar    "StressExerApical4ApLateral",     limit: 20
    t.varchar    "StressExerApical4MidLateral",    limit: 20
    t.varchar    "StressExerApical4BasalLateral",  limit: 20
    t.varchar    "StressExerApical4BasalSeptal",   limit: 20
    t.varchar    "StressExerApical4MidSeptal",     limit: 20
    t.varchar    "StressExerApical2ApInferior",    limit: 20
    t.varchar    "StressExerApical2ApAnterior",    limit: 20
    t.varchar    "StressExerApical2MidAnt",        limit: 20
    t.varchar    "StressExerApical2BasalAnt",      limit: 20
    t.varchar    "StressExerApical2BasalInferio",  limit: 20
    t.varchar    "StressExerApical2MidInferior",   limit: 20
    t.varchar    "StressExerShortAxisMidAntSept",  limit: 20
    t.varchar    "StressRestShortAxisMidAntSept",  limit: 20
    t.varchar    "StressRestShortAxisMidInf",      limit: 20
    t.varchar    "StressExerShortAxisMidInf",      limit: 20
    t.varchar    "RestEchoParaLongMidAnt",         limit: 20
    t.varchar    "RestEchoParaLongBasalAnt",       limit: 20
    t.varchar    "RestEchoParaLongMidPost",        limit: 20
    t.varchar    "RestEchoParaLongBasalPost",      limit: 20
    t.varchar    "RestEchoParaShortMidAntSept",    limit: 20
    t.varchar    "RestEchoParaShortMidAnt",        limit: 20
    t.varchar    "RestEchoParaShortMidLateral",    limit: 20
    t.varchar    "RestEchoParaShortMidPost",       limit: 20
    t.varchar    "RestEchoParaShortMidInferior",   limit: 20
    t.varchar    "RestEchoParaShortMidSeptal",     limit: 20
    t.varchar    "RestEchoAp4ApicalSeptal",        limit: 20
    t.varchar    "RestEchoAp4ApicalLateral",       limit: 20
    t.varchar    "RestEchoAp4MidLateral",          limit: 20
    t.varchar    "RestEchoAp4BasalLateral",        limit: 20
    t.varchar    "RestEchoAp4BasalSeptal",         limit: 20
    t.varchar    "RestEchoAp4MidSeptal",           limit: 20
    t.varchar    "RestEchoAp2ApicalInferior",      limit: 20
    t.varchar    "RestEchoAp2ApicalAnterior",      limit: 20
    t.varchar    "RestEchoAp2MidAnterior",         limit: 50
    t.varchar    "RestEchoAp2BasalAnterior",       limit: 20
    t.varchar    "RestEchoAp2BasalInferior",       limit: 20
    t.varchar    "RestEchoAp2MidInferior",         limit: 20
    t.integer    "RestScoreCount",                 limit: 2
    t.integer    "RestScoreTotal",                 limit: 2
    t.real       "RestScoreIndex"
    t.integer    "StressScoreCount",               limit: 2
    t.integer    "StressScoreTotal",               limit: 2
    t.real       "StressScoreIndex"
    t.integer    "PSLowDoseScoreCount",            limit: 2
    t.integer    "PSLowDoseScoreTotal",            limit: 2
    t.real       "PSLowDoseScoreIndex"
    t.integer    "PSPeakDoseScoreCount",           limit: 2
    t.integer    "PSPeakDoseScoreTotal",           limit: 2
    t.real       "PSPeakDoseScoreIndex"
    t.text_basic "WallMotionFindings",             limit: 2147483647
    t.varchar    "PSLowDoseAp2ApicalAnterior",     limit: 20
    t.varchar    "PSLowDoseAp2ApicalInferior",     limit: 20
    t.varchar    "PSLowDoseAp2BasalAnterior",      limit: 20
    t.varchar    "PSLowDoseAp2BasalInferior",      limit: 20
    t.varchar    "PSLowDoseAp2MidAnterior",        limit: 20
    t.varchar    "PSLowDoseAp2MidInferior",        limit: 20
    t.varchar    "PSLowDoseAp4ApicalLateral",      limit: 20
    t.varchar    "PSLowDoseAp4ApicalSeptal",       limit: 20
    t.varchar    "PSLowDoseAp4BasalLateral",       limit: 20
    t.varchar    "PSLowDoseAp4BasalSeptal",        limit: 20
    t.varchar    "PSLowDoseAp4MidLateral",         limit: 20
    t.varchar    "PSLowDoseAp4MidSeptal",          limit: 20
    t.varchar    "PSLowDoseParaLongBasalAntSept",  limit: 20
    t.varchar    "PSLowDoseParaLongBasalPost",     limit: 20
    t.varchar    "PSLowDoseParaLongMidAntSept",    limit: 20
    t.varchar    "PSLowDoseParaLongMidPost",       limit: 20
    t.varchar    "PSPeakDoseAp2ApicalAnterior",    limit: 20
    t.varchar    "PSPeakDoseAp2ApicalInferior",    limit: 20
    t.varchar    "PSPeakDoseAp2BasalAnterior",     limit: 20
    t.varchar    "PSPeakDoseAp2BasalInferior",     limit: 20
    t.varchar    "PSPeakDoseAp2MidAnterior",       limit: 20
    t.varchar    "PSPeakDoseAp2MidInferior",       limit: 20
    t.varchar    "PSPeakDoseAp4ApicalLateral",     limit: 20
    t.varchar    "PSPeakDoseAp4ApicalSeptal",      limit: 20
    t.varchar    "PSPeakDoseAp4BasalLateral",      limit: 20
    t.varchar    "PSPeakDoseAp4BasalSeptal",       limit: 20
    t.varchar    "PSPeakDoseAp4MidLateral",        limit: 20
    t.varchar    "PSPeakDoseAp4MidSeptal",         limit: 20
    t.varchar    "PSPeakDoseParaLongBasalAntSept", limit: 20
    t.varchar    "PSPeakDoseParaLongBasalPost",    limit: 20
    t.varchar    "PSPeakDoseParaLongMidAntSept",   limit: 20
    t.varchar    "PSPeakDoseParaLongMidPost",      limit: 20
    t.varchar    "StressRecAp2Apex",               limit: 20
    t.varchar    "RestEchoAp2Apex",                limit: 20
    t.varchar    "StressExerApical2Apex",          limit: 20
    t.real       "StressRecoveryScoreIndex"
    t.integer    "StressRecoveryScoreTotal",       limit: 2
    t.integer    "StressRecoveryScoreCount",       limit: 2
    t.varchar    "StressRecAp2ApicalInferior",     limit: 20
    t.varchar    "StressRecAp2MidInferior",        limit: 20
    t.varchar    "StressRecAp2BasalInferior",      limit: 20
    t.varchar    "StressRecAp2ApicalAnterior",     limit: 20
    t.varchar    "StressRecAp2MidAnterior",        limit: 20
    t.varchar    "StressRecAp2BasalAnterior",      limit: 20
    t.varchar    "StressRecAp4ApicalSeptal",       limit: 20
    t.varchar    "StressRecAp4MidSeptal",          limit: 20
    t.varchar    "StressRecAp4BasalSeptal",        limit: 20
    t.varchar    "StressRecAp4ApicalLateral",      limit: 20
    t.varchar    "StressRecAp4MidLateral",         limit: 20
    t.varchar    "StressRecAp4BasalLateral",       limit: 20
    t.varchar    "StressRecLongAxisMidAntSept",    limit: 20
    t.varchar    "StressRecLongAxisBasalAntSept",  limit: 20
    t.varchar    "StressRecLongAxisMidPost",       limit: 20
    t.varchar    "StressRecLongAxisBasalPost",     limit: 20
    t.varchar    "PSLowDoseAp2Apex",               limit: 20
    t.varchar    "PSPeakDoseAp2Apex",              limit: 20
    t.varchar    "PSMidDoseAp2ApicalInferior",     limit: 20
    t.varchar    "PSMidDoseAp2MidInferior",        limit: 20
    t.varchar    "PSMidDoseAp2BasalInferior",      limit: 20
    t.varchar    "PSMidDoseAp2ApicalAnterior",     limit: 20
    t.varchar    "PSMidDoseAp2MidAnterior",        limit: 20
    t.varchar    "PSMidDoseAp2BasalAnterior",      limit: 20
    t.varchar    "PSMidDoseAp4ApicalSeptal",       limit: 20
    t.varchar    "PSMidDoseAp4MidSeptal",          limit: 20
    t.varchar    "PSMidDoseAp4BasalSeptal",        limit: 20
    t.varchar    "PSMidDoseAp4ApicalLateral",      limit: 20
    t.varchar    "PSMidDoseAp4MidLateral",         limit: 20
    t.varchar    "PSMidDoseAp4BasalLateral",       limit: 20
    t.varchar    "PSMidDoseParaLongBasalAntSept",  limit: 20
    t.varchar    "PSMidDoseParaLongBasalPost",     limit: 20
    t.varchar    "PSMidDoseParaLongMidAntSept",    limit: 20
    t.varchar    "PSMidDoseParaLongMidPost",       limit: 20
    t.integer    "PSMidDoseScoreCount",            limit: 2
    t.integer    "PSMidDoseScoreTotal",            limit: 2
    t.real       "PSMidDoseScoreIndex"
    t.varchar    "PSMidDoseAp2Apex",               limit: 20
    t.real       "PSRecoveryScoreIndex"
    t.integer    "PSRecoveryScoreTotal",           limit: 2
    t.integer    "PSRecoveryScoreCount",           limit: 2
    t.varchar    "PSRecAp2ApicalInferior",         limit: 20
    t.varchar    "PSRecAp2MidInferior",            limit: 20
    t.varchar    "PSRecAp2BasalInferior",          limit: 20
    t.varchar    "PSRecAp2ApicalAnterior",         limit: 20
    t.varchar    "PSRecAp2MidAnterior",            limit: 20
    t.varchar    "PSRecAp2BasalAnterior",          limit: 20
    t.varchar    "PSRecAp4ApicalSeptal",           limit: 20
    t.varchar    "PSRecAp4MidSeptal",              limit: 20
    t.varchar    "PSRecAp4BasalSeptal",            limit: 20
    t.varchar    "PSRecAp4ApicalLateral",          limit: 20
    t.varchar    "PSRecAp4MidLateral",             limit: 20
    t.varchar    "PSRecAp4BasalLateral",           limit: 20
    t.varchar    "PSRecLongAxisMidAntSept",        limit: 20
    t.varchar    "PSRecLongAxisBasalAntSept",      limit: 20
    t.varchar    "PSRecLongAxisMidPost",           limit: 20
    t.varchar    "PSRecLongAxisBasalPost",         limit: 20
    t.varchar    "PSRecAp2Apex",                   limit: 20
    t.real       "TEEScoreIndex"
    t.integer    "TEEScoreTotal",                  limit: 2
    t.integer    "TEEScoreCount",                  limit: 2
    t.varchar    "TEEAp2ApicalInferior",           limit: 20
    t.varchar    "TEEAp2MidInferior",              limit: 20
    t.varchar    "TEEAp2BasalInferior",            limit: 20
    t.varchar    "TEEAp2ApicalAnterior",           limit: 20
    t.varchar    "TEEAp2MidAnterior",              limit: 20
    t.varchar    "TEEAp2BasalAnterior",            limit: 20
    t.varchar    "TEEAp4ApicalSeptal",             limit: 20
    t.varchar    "TEEAp4MidSeptal",                limit: 20
    t.varchar    "TEEAp4BasalSeptal",              limit: 20
    t.varchar    "TEEAp4ApicalLateral",            limit: 20
    t.varchar    "TEEAp4MidLateral",               limit: 20
    t.varchar    "TEEAp4BasalLateral",             limit: 20
    t.varchar    "TEELongAxisMidAntSept",          limit: 20
    t.varchar    "TEELongAxisBasalAntSept",        limit: 20
    t.varchar    "TEELongAxisMidPost",             limit: 20
    t.varchar    "TEELongAxisBasalPost",           limit: 20
    t.varchar    "TEEAp2Apex",                     limit: 20
    t.integer    "ShowDiagrams",                   limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Ped_EchoSurgTricuspid", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar "Proc_TVSurgery",     limit: 150
    t.integer "Proc_TVReplacement", limit: 2
    t.varchar "Proc_TVProsthType",  limit: 150
    t.float   "Proc_TVProsthSize"
  end

  create_table "Ped_Echo_01", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float      "BPLeftLegSystolic"
    t.float      "BPLeftLegDiastolic"
    t.float      "BPRightLegSystolic"
    t.float      "BPRightLegDiastolic"
    t.float      "BPUmbilicalArterySystolic"
    t.float      "BPUmbilicalArteryDiastolic"
    t.float      "BPFemoralLineSystolic"
    t.float      "BPFemoralLineDiastolic"
    t.float      "BPRtBrachialSystolic"
    t.float      "BPRtBrachialDiastolic"
    t.float      "BPLtBrachialSystolic"
    t.float      "BPLtBrachialDiastolic"
    t.float      "BPCVPSystolic"
    t.float      "BPCVPDiastolic"
    t.varchar    "NeonatalStudy",                   limit: 50
    t.varchar    "FetalEcho",                       limit: 50
    t.varchar    "PatientType",                     limit: 50
    t.varchar    "OtherProvider1",                  limit: 255
    t.varchar    "OtherProvider2",                  limit: 255
    t.varchar    "OtherProvider3",                  limit: 255
    t.varchar    "OtherProvider4",                  limit: 255
    t.varchar    "ViewsNotObtained",                limit: 50
    t.varchar    "TEEProbeInsertedRole",            limit: 50
    t.varchar    "LimitedViews",                    limit: 50
    t.varchar    "TEEProbeInsertedMD",              limit: 100
    t.varchar    "LimitedStudyReason",              limit: 50
    t.integer    "TEE_CompDiffInsertion",           limit: 2
    t.integer    "TEE_CompEsophagealPerf",          limit: 2
    t.integer    "TEE_CompGastricPerf",             limit: 2
    t.integer    "TEE_CompBleeding",                limit: 2
    t.integer    "TEE_CompAirwayObst",              limit: 2
    t.integer    "TEE_CompAccidentalExtubation",    limit: 2
    t.float      "ArterialCatheterDim1"
    t.float      "ArterialCatheterDim2"
    t.varchar    "ArterialCatheterMass",            limit: 25
    t.varchar    "ArterialCatheterMassLoc",         limit: 35
    t.varchar    "ArterialCatheterMassMobility",    limit: 25
    t.varchar    "ArterialCatheterMassSize",        limit: 20
    t.integer    "ArterialCatheterNoThrombusVeg",   limit: 2
    t.varchar    "ArterialCatheterPosition",        limit: 20
    t.varchar    "ArterialCatheterType",            limit: 35
    t.varchar    "LVAD_AoCannula",                  limit: 25
    t.varchar    "LVAD_LVCannular",                 limit: 25
    t.varchar    "LVAD_PACannula",                  limit: 25
    t.varchar    "LVAD_RACannula",                  limit: 25
    t.varchar    "LVAD_RVCannula",                  limit: 25
    t.integer    "LVADDecompLA",                    limit: 2
    t.integer    "LVADDecompLV",                    limit: 2
    t.integer    "LVADDecompRA",                    limit: 2
    t.integer    "LVADDecompRV",                    limit: 2
    t.integer    "LVADNotDecompLA",                 limit: 2
    t.integer    "LVADNotDecompLV",                 limit: 2
    t.integer    "LVADNotDecompRA",                 limit: 2
    t.integer    "LVADNotDecompRV",                 limit: 2
    t.float      "VenousCatheterDim1"
    t.float      "VenousCatheterDim2"
    t.varchar    "VenousCatheterMass",              limit: 25
    t.varchar    "VenousCatheterMassLoc",           limit: 35
    t.varchar    "VenousCatheterMassMobility",      limit: 25
    t.varchar    "VenousCatheterMassSize",          limit: 20
    t.integer    "VenousCatheterNoThrombusVeg",     limit: 2
    t.varchar    "VenousCatheterPosition",          limit: 20
    t.varchar    "VenousCatheterType",              limit: 35
    t.varchar    "CardiologyConsult",               limit: 25
    t.varchar    "RepeatEcho",                      limit: 35
    t.text_basic "RepeatEchoReason",                limit: 2147483647
    t.varchar    "ResultsDiscussed",                limit: 25
    t.varchar    "BetaBlockersHeldGiven",           limit: 25
    t.float      "PredictedHR85Percent"
    t.varchar    "Protocol",                        limit: 50
    t.integer    "RatePressureProduct",             limit: 2
    t.varchar    "RestingArmBPRtLt",                limit: 10
    t.varchar    "RestingLegBPRtLt",                limit: 10
    t.float      "RestingLegBPSystolic"
    t.float      "RestingLegBPDiastolic"
    t.varchar    "StressArmBPRtLt",                 limit: 10
    t.integer    "StressBicycleWATTS",              limit: 2
    t.varchar    "StressLegBPRtLt",                 limit: 10
    t.float      "StressLegBPSystolic"
    t.float      "StressLegBPDiastolic"
    t.float      "StressPkSystolicBP"
    t.float      "StressPkDiastolicBP"
    t.text_basic "StressProtocolFindings",          limit: 2147483647
    t.float      "TestInfoMaxMETS"
    t.float      "TestInfoMaxPredictedHR"
    t.float      "TestInfoPeakHeartRate"
    t.float      "TestInfoPercentMaxHRAchieved"
    t.varchar    "TestInfoReasonForEnding",         limit: 100
    t.varchar    "TestInfoReasonForEndingOther",    limit: 100
    t.integer    "TtlStressMinutes",                limit: 2
    t.integer    "TtlStressSeconds",                limit: 2
    t.text_basic "PharmStressProtocolFindings",     limit: 2147483647
    t.varchar    "ReasonInfusionStopped",           limit: 100
    t.float      "MaxAtropineDose"
    t.float      "MaxDobutamineDose"
    t.float      "MaxMetoprololDose"
    t.varchar    "PharmProtocol",                   limit: 50
    t.text_basic "Findings",                        limit: 2147483647
    t.text_basic "FindingsLinesCatheters",          limit: 2147483647
    t.text_basic "FindingsSummary",                 limit: 2147483647
    t.varchar    "EchoSonographer2",                limit: 100
    t.varchar    "ReferringCardiologist",           limit: 100
    t.varchar    "WallMotionScoringModel",          limit: 50
    t.integer    "EchoSubProcPostop",               limit: 2
    t.integer    "EchoSubProcPreop",                limit: 2
    t.integer    "EchoSubProcIntraop",              limit: 2
    t.integer    "EchoSubProcTransplant",           limit: 2
    t.integer    "EchoSubProc3D",                   limit: 2
    t.integer    "EchoSubProcContrastStudy",        limit: 2
    t.integer    "EchoSubProcCombinedMRI",          limit: 2
    t.integer    "EchoSubProcMIBI",                 limit: 2
    t.integer    "EchoSubProcFunctionStudy",        limit: 2
    t.integer    "EchoSubProcTargetNeonat",         limit: 2
    t.integer    "EchoSubProcResearch",             limit: 2
    t.integer    "LimitedStudy_OpenChest",          limit: 2
    t.integer    "LimitedStudy_PostOpBandage",      limit: 2
    t.integer    "LimitedStudy_ECMO",               limit: 2
    t.integer    "LimitedStudy_Ventilator",         limit: 2
    t.integer    "LimitedStudy_UncooperativePt",    limit: 2
    t.integer    "LimitedStudy_PulmonaryCondition", limit: 2
    t.integer    "LimitedStudy_PoorWindow",         limit: 2
    t.integer    "LimitedStudy_ChestDeformity",     limit: 2
    t.integer    "LimitedStudy_BodyHabitus",        limit: 2
    t.integer    "LimitedStudy_PtPosition",         limit: 2
    t.integer    "ViewsNotObtain_PLAX",             limit: 2
    t.integer    "ViewsNotObtain_SAX",              limit: 2
    t.integer    "ViewsNotObtain_Apical",           limit: 2
    t.integer    "ViewsNotObtain_SupraNotch",       limit: 2
    t.integer    "ViewsNotObtain_Subostal",         limit: 2
    t.integer    "ViewsNotObtain_HighParasternal",  limit: 2
    t.integer    "ViewsNotObtain_Transgastric",     limit: 2
    t.integer    "ViewsNotObtain_Transesophageal",  limit: 2
    t.integer    "LimitedViews_PLAX",               limit: 2
    t.integer    "LimitedViews_SAX",                limit: 2
    t.integer    "LimitedViews_Apical",             limit: 2
    t.integer    "LimitedViews_Subcostal",          limit: 2
    t.integer    "LimitedViews_HighParasternal",    limit: 2
    t.integer    "LimitedViews_Transgastric",       limit: 2
    t.integer    "LimitedViews_Transesophageal",    limit: 2
    t.text_basic "TEE_Comments",                    limit: 2147483647
    t.text_basic "SonographerNotes",                limit: 2147483647
    t.text_basic "FindingsProcedureInfo",           limit: 2147483647
    t.integer    "LimitedViews_SupraNotch",         limit: 2
    t.integer    "TEEProbeInsertionDepth",          limit: 2
    t.float      "BPLASystolic"
    t.float      "BPLADiastolic"
    t.float      "BPLAMean"
    t.float      "BPRASystolic"
    t.float      "BPRADiastolic"
    t.float      "BPRAMean"
    t.float      "BPRightLegMean"
    t.float      "BPLeftLegMean"
    t.float      "BPUmbilicalArteryMean"
    t.float      "BPFemoralLineMean"
    t.float      "BPRtBrachialMean"
    t.float      "BPLtBrachialMean"
    t.float      "BPCVPMean"
    t.integer    "TeachingCase",                    limit: 2
    t.varchar    "TeachingCasePersonnel",           limit: 50
    t.text_basic "TeachingCaseComments",            limit: 2147483647
    t.text_basic "FindingsContrast",                limit: 2147483647
    t.datetime   "TestCompleteDate"
    t.datetime   "TestCompleteTime"
    t.varchar    "CriticalResultsCalledTo",         limit: 100
    t.datetime   "CriticalResultsCalledDate"
    t.datetime   "CriticalResultsCalledTime"
    t.varchar    "CriticalResultsReportedBy",       limit: 100
    t.text_basic "VenousLineComments",              limit: 2147483647
    t.text_basic "ArterialLineComments",            limit: 2147483647
    t.text_basic "VADComments",                     limit: 2147483647
    t.text_basic "RecommendationsComments",         limit: 2147483647
    t.integer    "AdmitToHospital",                 limit: 2
    t.integer    "DiscussedWithPt",                 limit: 2
    t.integer    "DiscussedWPatient",               limit: 2
    t.integer    "DiscussedWithRefMD",              limit: 2
    t.integer    "CritRsltsDiscussedWRefMD",        limit: 2
    t.integer    "NmlEcho",                         limit: 2
    t.integer    "TEENmlEcho",                      limit: 2
    t.integer    "NoValvePathology",                limit: 2
    t.integer    "NoCardiacSOE",                    limit: 2
    t.integer    "TEENoCardiacSOE",                 limit: 2
    t.integer    "TEENoClot",                       limit: 2
    t.integer    "Hypertensive",                    limit: 2
    t.integer    "InadequateDoppler",               limit: 2
    t.text_basic "FindingsTech",                    limit: 2147483647
    t.integer    "SonographerFinalized",            limit: 2
    t.integer    "ResearchStudy",                   limit: 2
    t.integer    "Cath",                            limit: 2
    t.integer    "Nuclear",                         limit: 2
    t.integer    "SurgicalIntervention",            limit: 2
    t.integer    "MarkforPeerReview",               limit: 2
    t.integer    "PeerReviewDone",                  limit: 2
    t.integer    "MarkforPeerReviewTech",           limit: 2
    t.integer    "PeerReviewDoneTech",              limit: 2
    t.text_basic "CathConclusions",                 limit: 2147483647
    t.text_basic "NuclearConclusions",              limit: 2147483647
    t.text_basic "SurgeryFindings",                 limit: 2147483647
    t.varchar    "PeerReviewAgreeDisagree",         limit: 50
    t.varchar    "PeerReviewStudyQuality",          limit: 50
    t.varchar    "PeerReviewAgreeDisagreeTech",     limit: 50
    t.text_basic "PeerReviewComments",              limit: 2147483647
    t.text_basic "PeerReviewCommentsTech",          limit: 2147483647
    t.datetime   "DateOfPreviousCath"
    t.datetime   "DateOfPreviousNuclear"
    t.datetime   "DateOfPreviousSurgery"
    t.float      "PreProcPhysioLVEFPercent"
    t.float      "RestEjectionFraction"
    t.float      "StressEjectionFraction"
    t.varchar    "OtherProvider5",                  limit: 255
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_AllMeasurements", primary_key: "SS_Ped_Echo_AllMeasurements_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID",                        null: false
    t.varchar    "StudyInstanceUID",         limit: 64,         null: false
    t.varchar    "SRInstanceUID",            limit: 64
    t.varchar    "MeasurementName",          limit: 50
    t.integer    "SSDICOMSRMappingID"
    t.float      "Value"
    t.varchar    "Units",                    limit: 50
    t.float      "DisplayValue"
    t.varchar    "DisplayUnit",              limit: 50
    t.varchar    "StringValue",              limit: 200
    t.varchar    "MeasurementType",          limit: 50
    t.varchar    "Derivation",               limit: 100
    t.integer    "CurrentlySelected",        limit: 2
    t.varchar    "SelectionStatus",          limit: 50
    t.varchar    "ReferencedSOPInstanceUID", limit: 64
    t.integer    "ReferencedFrame"
    t.varchar    "Creator",                  limit: 50
    t.datetime   "ModifiedDate"
    t.varchar    "DrawingKey",               limit: 200
    t.integer    "Flags"
    t.text_basic "Description",              limit: 2147483647
    t.index ["MeasurementName"], name: "Ped_Echo_MeasurementName"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_CAV_SNLog", primary_key: "SS_Ped_Echo_CAV_Snlog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",             limit: 255
    t.text_basic "TextField",            limit: 2147483647
    t.text_basic "Note",                 limit: 2147483647
    t.varchar    "EnteredBy",            limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",            limit: 50
    t.text_basic "NoteText",             limit: 2147483647
    t.integer    "BulletSequence",       limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Ped_Echo_CA_Aneurysm", primary_key: "SS_Ped_Echo_CA_Aneurysm_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Artery",               limit: 25
    t.varchar "Location",             limit: 15
    t.float   "AneurysmSize"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_Ped_Echo_CA_Aneurysm_ID"], name: "SS_Ped_Echo_CA_Aneurysm_ID"
  end

  create_table "Ped_Echo_CPT_Codes", primary_key: "SS_Ped_Echo_CPT_Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "CPT_Code",             limit: 20
    t.varchar "CPT_Description",      limit: 255
    t.index ["CPT_Code"], name: "CPT_Code"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Conclusions_SNLog", primary_key: "SS_Ped_Echo_Conclusions_Snlog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",             limit: 255
    t.text_basic "TextField",            limit: 2147483647
    t.text_basic "Note",                 limit: 2147483647
    t.varchar    "EnteredBy",            limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",            limit: 50
    t.text_basic "NoteText",             limit: 2147483647
    t.integer    "BulletSequence",       limit: 2
    t.text_basic "NoteRtf",              limit: 2147483647
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Ped_Echo_DICOM_Studies", primary_key: "SS_Ped_Echo_DICOM_ID", force: :cascade do |t|
    t.integer  "SS_Event_Ped_Echo_ID",             null: false
    t.varchar  "DICOM_UID",            limit: 100
    t.varchar  "FileName",             limit: 255
    t.varchar  "SS_SettingsKeyName",   limit: 50
    t.datetime "StudyDate"
    t.datetime "StudyTime"
    t.varchar  "StudyDescription",     limit: 80
    t.integer  "ExcludeFromReport",    limit: 2
    t.index ["DICOM_UID"], name: "DICOM_UID"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Doppler", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float      "DopplerAVPeakVelocity"
    t.float      "DopplerAVMeanVelocity"
    t.float      "DopplerAVPeakEstGradient"
    t.float      "DopplerAVMeanEstGradient"
    t.float      "DopplerAVPressureHalfTime"
    t.float      "DopplerAVAorticValveArea"
    t.float      "DopplerAVAreaIndex"
    t.varchar    "DopplerAVCrossSectionMethod",    limit: 25
    t.float      "DopplerAV_VTI"
    t.float      "DopplerAVDecelerationTime"
    t.float      "DopplerAVAccelerationTime"
    t.float      "DopplerAV_LVOT_VTI"
    t.float      "DopplerAVStrokeVolume"
    t.float      "DopplerAV_LVOTGradient"
    t.float      "DopplerAV_LVOTVelocity"
    t.float      "DopplerPVPeakVelocity"
    t.float      "DopplerPVMeanVelocity"
    t.float      "DopplerPVPeakEstGradient"
    t.float      "DopplerPVMeanEstGradient"
    t.float      "DopplerPVPressureHalfTime"
    t.float      "DopplerPVPulmonicValveArea"
    t.varchar    "DopplerPVCrossSectionMethod",    limit: 25
    t.float      "DopplerPV_SWaveVTI"
    t.float      "DopplerPV_DWaveVTI"
    t.float      "DopplerPV_AWaveInMPA"
    t.float      "DopplerPV_SDRatio"
    t.float      "DopplerPVRegurgitantVelocity"
    t.float      "DopplerMVPeakVelocityAWave"
    t.float      "DopplerMVPeakVelocityEWave"
    t.float      "DopplerMV_EARatio"
    t.float      "DopplerMVMeanVelocity"
    t.float      "DopplerMVPeakEstGradient"
    t.float      "DopplerMVMeanEstGradient"
    t.float      "DopplerMVPressureHalfTime"
    t.float      "DopplerMVMitralValveArea"
    t.varchar    "DopplerMVCrossSectionMethod",    limit: 25
    t.float      "DopplerMV_VTI"
    t.float      "DopplerMV_IVRT"
    t.float      "DopplerMVMitralSystolicGrad"
    t.float      "DopplerTVPeakVelocityAWave"
    t.float      "DopplerTVPeakVelocityEWave"
    t.float      "DopplerTV_EARatio"
    t.float      "DopplerTVMeanVelocity"
    t.float      "DopplerTVPeakEstGradient"
    t.float      "DopplerTVMeanEstGradient"
    t.float      "DopplerTVPressureHalfTime"
    t.float      "DopplerTVTricuspidValveArea"
    t.float      "DopplerTVIntersect"
    t.varchar    "DopplerTVCrossSectionMethod",    limit: 25
    t.float      "DopplerTV_RV_RASystolicGrad"
    t.float      "DopplerTV_RAPressureEst"
    t.float      "DopplerTVEstRVSytemPressure"
    t.float      "DopplerTVSystolicGradient"
    t.float      "DopplerAortaProximalDescAorta"
    t.float      "DopplerAortaCoarcVelocity"
    t.float      "DopplerAortaCorrectedCoarcGrad"
    t.float      "DopplerPulArteryPeakMPAVeloc"
    t.float      "DopplerPulArteryPeakRPAVeloc"
    t.float      "DopplerPulArteryPeakLPAVeloc"
    t.float      "DopplerPulArteryMPAPeakGrad"
    t.float      "DopplerPulArteryLPAPeakGrad"
    t.float      "DopplerPulArteryRPAPeakGrad"
    t.float      "DopplerPulArteryPDAPeakGrad"
    t.text_basic "DopplerNotes",                   limit: 2147483647
    t.float      "DopplerLVEFModSimp4C"
    t.float      "DopplerLeftAtrialVolume"
    t.float      "DopplerLVEFModSimp2C"
    t.float      "DopplerCardiacOutput"
    t.float      "DopplerBiplaneModSimp"
    t.float      "DopplerLVOTMeanVelocity"
    t.float      "DopplerLVOTMeanEstGrad"
    t.float      "DopplerARPeakVelocity"
    t.float      "DopplerARMeanVelocity"
    t.float      "DopplerARPeakEstGrad"
    t.float      "DopplerARMeanEstGrad"
    t.float      "DopplerARAorticValveArea"
    t.float      "DopplerTVPeakVelocity"
    t.float      "DopplerTRPeakVelocity"
    t.float      "DopplerTRPeakEstGrad"
    t.float      "DopplerPVMeanRPAVelocity"
    t.float      "DopplerPVRPAMeanEstGrad"
    t.float      "DopplerPVMeanLPAVelocity"
    t.float      "DopplerPVLPAMeanEstGrad"
    t.float      "DopplerPRPeakVelocity"
    t.float      "DopplerPRPeakEstGrad"
    t.float      "DopplerAscAortaPeakVelocity"
    t.float      "DopplerAscAortaMeanVelocity"
    t.float      "DopplerAscAortaPeakEstGrad"
    t.float      "DopplerAscAortaMeanEstGrad"
    t.float      "DopplerPRDecelSlope"
    t.float      "DopplerPRDecelTime"
    t.float      "DopplerPRPressureHalfTime"
    t.float      "DopplerAortaCoarcPeakEstGrad"
    t.float      "DopplerACRepPeakVelocity"
    t.float      "DopplerPVMeanMPAVelocity"
    t.float      "DopplerMVPeakVelocity"
    t.float      "DopplerMVMeanGradient"
    t.float      "DopplerMVDecelTime"
    t.float      "DopplerMVAWaveDuration"
    t.float      "DopplerMVPeakELatVelocity"
    t.float      "DopplerMVPeakEMedVelocity"
    t.float      "DopplerMVELatRatio"
    t.float      "DopplerMVEMedRatio"
    t.float      "DopplerMVPeakALatVelocity"
    t.float      "DopplerMVPeakAMedVelocity"
    t.float      "DopplerEARatio"
    t.float      "DopplerMRPeakVelocity"
    t.float      "DopplerMRMeanVelocity"
    t.float      "DopplerMRPeakEstGrad"
    t.float      "DopplerMRMeanEstGrad"
    t.float      "DopplerMRVolume"
    t.float      "DopplerMRFraction"
    t.float      "DopplerMRERO"
    t.float      "DopplerMRDpdt"
    t.float      "DopplerPVSWavePeak"
    t.float      "DopplerPVSDRatio"
    t.float      "DopplerVTI"
    t.float      "DopplerMRVTI"
    t.float      "DopplerARVTI"
    t.float      "DopplerTVTI"
    t.float      "DopplerTRVTI"
    t.float      "DopplerPRVTI"
    t.float      "DopplerQpQsRatio"
    t.float      "DopplerDecAOPeakVelocity"
    t.float      "DopplerDecAOMeanVelocity"
    t.float      "DopplerDecAOPeakEstGrad"
    t.float      "DopplerDecAOMeanEstGrad"
    t.float      "DopplerAorticArchPeakVelocity"
    t.float      "DopplerPVDWavePeak"
    t.float      "DopplerPVAWavePeak"
    t.float      "DopplerPREndDiastolicPoint"
    t.float      "DopplerPV_PDAPeakSys"
    t.float      "DopplerPV_PDAPeakDiast"
    t.float      "DopplerProxCoarcGrad"
    t.float      "DopplerCorrectedGradient"
    t.float      "DopplerPVRegurgitantGradient"
    t.float      "DopplerTVRegurgPeakGradient"
    t.float      "DopplerTVRegurgitantVelocity"
    t.integer    "RVBlendedEA"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Extension", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer "SSLock", limit: 2
  end

  create_table "Ped_Echo_History", primary_key: "SS_Ped_Echo_History_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Ped_Echo_ICD9Codes", primary_key: "SS_Ped_Echo_ICD9Codes_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "ICD9Code",             limit: 20
    t.varchar "ICD9Description",      limit: 255
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Nuclear_ID"
  end

  create_table "Ped_Echo_Image_Drawings", primary_key: "SS_Ped_Echo_Image_Drawings_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID",                    null: false
    t.varchar    "StudyUID",             limit: 100,        null: false
    t.varchar    "ImageUID",             limit: 100,        null: false
    t.integer    "FrameNumber",                             null: false
    t.varchar    "DrawingKey",           limit: 200,        null: false
    t.varchar    "DrawingType",          limit: 100,        null: false
    t.text_basic "Drawing",              limit: 2147483647, null: false
    t.index ["DrawingKey"], name: "Ped_Echo_Image_DrawingKey", unique: true
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "Ped_Echo_Images", primary_key: "SS_Ped_Echo_Images_ID", force: :cascade do |t|
    t.integer  "SS_Event_Ped_Echo_ID",              null: false
    t.varchar  "SS_SettingsKeyName",    limit: 50
    t.varchar  "Filename",              limit: 255
    t.varchar  "ImagingDevice",         limit: 30
    t.datetime "DateOfStudyComplete"
    t.datetime "TimeOfStudyComplete"
    t.varchar  "ImageType",             limit: 30
    t.varchar  "Caption",               limit: 255
    t.varchar  "Media_UID",             limit: 50
    t.varchar  "Location",              limit: 50
    t.varchar  "Status",                limit: 50
    t.datetime "SS_LastUpdateDateTime"
    t.datetime "SS_LastExportDateTime"
    t.integer  "ExcludeFromReport",     limit: 2
    t.varchar  "StudyInstanceUID",      limit: 255
    t.integer  "CaptureMask"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_ECG_ID"
  end

  create_table "Ped_Echo_Indications", primary_key: "SS_Ped_Echo_Indications_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "Indication",           limit: 50
    t.varchar "Comment",              limit: 50
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_Ped_Echo_Indications_ID"], name: "SS_Ped_Echo_Indications_ID"
  end

  create_table "Ped_Echo_Measurements", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float   "MModeRVAWd"
    t.float   "MModeAOValveCusp"
    t.float   "__2DRVAWd"
    t.float   "__2DRVIDd"
    t.float   "__2DIVSs"
    t.float   "__2DInterVentEndDiastThick"
    t.float   "__2DLVPWd"
    t.float   "__2DRVIDs"
    t.float   "__2DIVSd"
    t.float   "__2DInterVentEndSystolicThick"
    t.float   "__2DLVPWs"
    t.float   "__2DAoVlalveCuspSep"
    t.float   "__2DLAIDs"
    t.float   "__2DPercentFS"
    t.float   "__2DAorticRoot"
    t.float   "AscAortaDiameter"
    t.float   "AorticArchDiameter"
    t.float   "IVCDiameterWExpir"
    t.float   "DecendingAortaDiameter"
    t.float   "CoarctationDiamter"
    t.float   "LeftMainCoronaryArtery1"
    t.float   "LeftMainCoronaryArtery2"
    t.float   "LeftMainCoronaryArtery3"
    t.float   "LeftMainCoronaryArtery4"
    t.float   "LeftMainCoronaryArtery5"
    t.float   "RightMainCoronaryArtery1"
    t.float   "RightMainCoronaryArtery2"
    t.float   "RightMainCoronaryArtery3"
    t.float   "RightMainCoronaryArtery4"
    t.float   "RightMainCoronaryArtery5"
    t.float   "CircumflexDiamter1"
    t.float   "CircumflexDiamter2"
    t.float   "CircumflexDiamter3"
    t.float   "CircumflexDiamter4"
    t.float   "CircumflexDiamter5"
    t.float   "AnomalousCoronaryDiameter1"
    t.float   "AnomalousCoronaryDiameter2"
    t.float   "AnomalousCoronaryDiameter3"
    t.float   "AnomalousCoronaryDiameter4"
    t.float   "AnomalousCoronaryDiameter5"
    t.float   "RVOTStrokeVolume"
    t.float   "LVIDdIndex"
    t.float   "RVIDdIndex"
    t.float   "LAIDsIndex"
    t.float   "LVMass"
    t.float   "CardiacIndex"
    t.float   "IVCDiameterWInsp"
    t.float   "CoarctationDiameter"
    t.float   "DecAODiameter"
    t.float   "LAD1"
    t.float   "LAD2"
    t.float   "LAD3"
    t.float   "__2DAorticAnnulus"
    t.float   "LVMass2D"
    t.float   "LVMassVolumeRatio"
    t.float   "MeanArterialPressure"
    t.float   "RRInterval"
    t.float   "__2DTricuspidAnnulus2Chamber"
    t.float   "__2DAVAreaPlan"
    t.float   "__2DMVAreaPlan"
    t.float   "__2DTVAreaPlan"
    t.float   "__2DSinotubularJunction"
    t.float   "__2DMitralAnnulusLatMed"
    t.float   "__2DASDDiameterSupInf"
    t.varchar "AnomalousCoronary",             limit: 50
    t.float   "AscAortaPDAPeak"
    t.float   "AorticArchPDAPeak"
    t.float   "AorticArchIsthTranVel"
    t.float   "DoppMVPkGradWithStress"
    t.float   "DoppMVMnGradWithStress"
    t.float   "DopplerAVPeakEstGradient"
    t.float   "DopplerAVMeanEstGradient"
    t.float   "DoppLVMidCavityPkGrad"
    t.float   "DoppLVOTSubVPkGrad"
    t.float   "DoppLVOTSubVMnGrad"
    t.float   "DoppAoArchPkGrad"
    t.float   "DoppTricuspidEstRVSysPress"
    t.float   "DopplerPVPeakEstGradient"
    t.float   "MModeEjectionFractionStress"
    t.float   "LVEjectionFractionStress"
    t.float   "DoppAovPkGradStress"
    t.float   "DoppAoVMnGradStress"
    t.float   "DoppLVMidCavityPkGradStress"
    t.float   "DoppSubASPkGradStress"
    t.float   "DoppSubASMnGradStress"
    t.float   "DoppTVEstRVSysPressWithStress"
    t.float   "MModeFractionalShortStress"
    t.float   "DoppPVPkGradWithStress"
    t.float   "DoppAoArchPkGradStress"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Measurements1", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float   "AorticArchProxInnom"
    t.float   "AorticArchProxLCCA"
    t.float   "AorticIsthmusLength"
    t.float   "CircumflexAneurysm"
    t.float   "CommAVVAnnulus"
    t.float   "CommAVVArea"
    t.float   "DistalAorticArchProxLSCA"
    t.float   "DopplerCardiacOutput"
    t.float   "IVSDistalA4C"
    t.float   "IVSMidA4C"
    t.float   "IVSProximalA4C"
    t.float   "LAAreaDiastole"
    t.float   "LAAreaDiastoleA2C"
    t.float   "LAAreaDiastoleA4C"
    t.float   "LAAreaSystole"
    t.float   "LADDistalAneurysm"
    t.float   "LADProxAneurysm"
    t.float   "LAEjectionFraction"
    t.float   "LALengthMajorA2C"
    t.float   "LALengthMajorA4C"
    t.float   "LALengthMinorA2C"
    t.float   "LALengthMinorA4C"
    t.float   "LAVolumeDiastole2C"
    t.float   "LAVolumeDiastole4C"
    t.float   "LAVolumeIndex"
    t.float   "LAVolumeSystole4C"
    t.float   "LLPVDiameter"
    t.float   "LMCAAneurysm"
    t.float   "LUPVDiameter"
    t.float   "LVEDModSimp2C2D"
    t.float   "LVEDModSimp2C2DIndex"
    t.float   "LVEDModSimp4C2D"
    t.float   "LVEDModSimp4C2DIndex"
    t.float   "LVEDModSimpBiPlane"
    t.float   "LVEjectionFraction3D"
    t.float   "LVEjectionFractionALA2C"
    t.float   "LVEjectionFractionALA4C"
    t.float   "LVEjectionFractionAuto"
    t.float   "LVEjectionFractionBiplane"
    t.float   "LVEjectionFractionSPA2C"
    t.float   "LVEjectionFractionSPA4C"
    t.float   "LVEjectionTime"
    t.float   "LVEndDiastolicAreaA4C"
    t.float   "LVEndDiastolicAreaEpi"
    t.float   "LVEndDiastolicAreaPSAX"
    t.float   "LVEndDiastolicLength"
    t.float   "LVEndDiastolicLengthEpi"
    t.float   "LVEndDiastolicVolEpi"
    t.float   "LVEndSystolicAreaA2C"
    t.float   "LVEndSystolicAreaEpi"
    t.float   "LVEndSystolicAreaPSAX"
    t.float   "LvEndSystolicLength"
    t.float   "LVEndSystolicLengthEpi"
    t.float   "LVESModSimp2C2D"
    t.float   "LVESModSimp2C2DIndex"
    t.float   "LVESModSimp4C2D"
    t.float   "LVESModSimp4C2DIndex"
    t.float   "LVESModSimpBiPlane"
    t.float   "LVFractionalShortening3D"
    t.float   "LVFractionalShorteningAL"
    t.float   "LVFractionalShorteningAuto"
    t.float   "LVFractionalShorteningBiplane"
    t.float   "LVMajorAxisDiastoleA4C"
    t.float   "LVMajorAxisSystoleA4C"
    t.float   "LVMassDiastoleA4C"
    t.float   "LVMassDiastoleA4CIndex"
    t.float   "LVMassSystoleA4C"
    t.float   "LVMassSystoleA4CIndex"
    t.float   "LVPreEjectionTime"
    t.float   "LVStrokeIndex"
    t.float   "LVStrokeVolA2C"
    t.float   "LVStrokeVolA4C"
    t.float   "LVStrokeVolBiPlane"
    t.float   "LVWallStressDiast"
    t.float   "LVWallStressMean"
    t.float   "LVWallStressSyst"
    t.float   "MModeAoVClosureTime"
    t.float   "MModeAoVOpeningTime"
    t.float   "MModeCardiacIndex"
    t.float   "MModeEjectionFractionStress"
    t.float   "MModeFractionalShortenStress"
    t.float   "MModeHeartRate"
    t.float   "MModeMV_DtoESlope"
    t.float   "MModeMVClosureTime"
    t.float   "MModeMVD_EExcursion"
    t.float   "MModeMVOpeningTime"
    t.float   "MVAnnDiamA4C"
    t.float   "PosteriorDescending"
    t.float   "ProxAorticArch"
    t.float   "ProxAorticArchProxLSCA"
    t.float   "ProxLtSubclavianDiam"
    t.float   "RCADistalAneurysm"
    t.float   "RCAProxAneurysm"
    t.float   "RLPVDiameter"
    t.float   "RUPVDiameter"
    t.float   "TruncalValveAnnulus"
    t.float   "TruncalValveArea"
    t.float   "VCF"
    t.float   "VCFcorrected"
    t.float   "AVAContinuityVTI_Dopp"
    t.float   "MVAContinuity_Dopp"
    t.float   "MVAPHT_Dopp"
    t.float   "AIJetWidth"
    t.float   "AIJetWidth_AoVAnnRatio"
    t.float   "AoVERO_PISA"
    t.float   "AoVRegurgFraction"
    t.float   "AoVRegurgFraction_PISA"
    t.float   "AVAContinuityVMax_Dopp"
    t.float   "ColorMM_MVInflowSlope"
    t.float   "DoppAbdAoMnGrad"
    t.float   "DoppAbdAoMnVel"
    t.float   "DoppAbdAoPkGrad"
    t.float   "DoppAbdAoPkVel"
    t.float   "DoppAoArchMnGrad"
    t.float   "DoppAoArchMnVel"
    t.float   "DoppAoArchPkVel"
    t.float   "DoppAoVClosureTime"
    t.float   "DoppAoVOpeningTime"
    t.float   "DoppAoVRegurgVol"
    t.float   "DoppAscAoDVTI"
    t.float   "DoppAscAoDVTI_SVTIRatio"
    t.float   "DoppAscAoSVTI"
    t.float   "DoppAscAoTotalVTI"
    t.float   "DoppCorrectedArchGrad"
    t.float   "DoppDesAoPkVel"
    t.float   "DoppDescAoDVTI"
    t.float   "DoppDescAoDVTI_SVTIRatio"
    t.float   "DoppDescAoSVTI"
    t.float   "DoppDescAoTotalVTI"
    t.float   "DoppLAEndDiastPress"
    t.float   "DopplerAVMeanVelocity"
    t.float   "DopplerAVPeakVelocity"
    t.float   "DopplerMRERO"
    t.float   "DopplerMRFraction"
    t.float   "DopplerMRVolume"
    t.float   "DopplerMV_IVCT"
    t.float   "DopplerV_IVCT"
    t.float   "DoppLLPVMnGrad"
    t.float   "DoppLLPVPkGrad"
    t.float   "DoppLUPVMnGrad"
    t.float   "DoppLUPVPkGrad"
    t.float   "DoppLVEjectionTime"
    t.float   "DoppLVEndDiastPress"
    t.float   "DoppLVEndSystPress"
    t.float   "DoppLVMidCavityMnGrad"
    t.float   "DoppLVMidCavityMnVel"
    t.float   "DoppLVMidCavityPkVel"
    t.float   "DoppLVOTPk_PkGrad"
    t.float   "DoppLVOTSubVMnVel"
    t.float   "DoppLVOTSubVPkVel"
    t.float   "DoppLVOTSupraVMnGrad"
    t.float   "DoppLVOTSupraVMnVel"
    t.float   "DoppLVOTSupraVPkGrad"
    t.float   "DoppLVOTSupraVPkVel"
    t.float   "DoppMV_SV"
    t.float   "DoppMVAWaveVTI"
    t.float   "DoppMVClosureTime"
    t.float   "DoppMVEWaveVTI"
    t.float   "DoppMVOpeningTime"
    t.float   "DoppPulVeinAAwidth"
    t.float   "DoppPulVeinAWaveWidth"
    t.float   "DoppPulVeinDVTI"
    t.float   "DoppPulVeinSVTI"
    t.float   "DoppRLPVMnGrad"
    t.float   "DoppRLPVPkGrad"
    t.float   "DoppRUPVMnGrad"
    t.float   "DoppRUPVPkGrad"
    t.float   "LVMPI"
    t.float   "LVSystPressFromMR"
    t.float   "MitralInflowAWaveDuration"
    t.float   "MRJetArea_A2C"
    t.float   "MRJetArea_A4C"
    t.float   "MRJetArea_BSA"
    t.float   "MRJetArea_LAArea"
    t.float   "MRJetArea_PLAX"
    t.float   "MRJetWidth"
    t.float   "MRRegurgFraction_PISA"
    t.float   "MVAccelTime"
    t.float   "MVAPISA_Dopp"
    t.float   "MVClosureToOpen"
    t.float   "MVDecelSlop"
    t.float   "MVEWaveAccelTime"
    t.float   "MVRespVariation"
    t.float   "OutflowInflowCardiacIndexDopp"
    t.float   "LVEndSystolicAreaA4C"
    t.float   "LVEndDiastolicAreaA2C"
    t.integer "LVMVDT"
    t.integer "LVBlendedEA"
    t.integer "LVEDV3D"
    t.integer "LVESV3D"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Measurements2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float   "TDILVTorsion"
    t.float   "LVBasInfSeptumAPrimeVel_TDI"
    t.float   "LVBasInfSeptumEPrimeVel_TDI"
    t.float   "LVBasInfSeptumIVCT_TDI"
    t.float   "LVBasInfSeptumIVRT_TDI"
    t.float   "LVBasInfSeptumSPrime_TDI"
    t.float   "LVBasInfSeptumTimeToPkS_TDI"
    t.float   "LVBasInfSeptumTimeToOnsetS_TDI"
    t.float   "LVMidSeptumAPrimeVel_TDI"
    t.float   "LVMidSeptumEPrimeVel_TDI"
    t.float   "LVMidSeptumIVCT_TDI"
    t.float   "LVMidSeptumIVRT_TDI"
    t.float   "LVMidSeptumSPrimeVel_TDI"
    t.float   "LVMidSeptumTimeToPkS_TDI"
    t.float   "LVMidSeptumTimeToOnsetS_TDI"
    t.float   "LVBasLateralAPrimeVel_TDI"
    t.float   "LVBasLateralEPrimeVel_TDI"
    t.float   "LVBasLateralIVCT_TDI"
    t.float   "LVBasLateralIVRT_TDI"
    t.float   "LVBasLateralSPrimeVel_TDI"
    t.float   "LVBasLateralTimeToPkS_TDI"
    t.float   "LVBasLateralTimeToOnsetS_TDI"
    t.float   "LVMidLateralAPrimeVel_TDI"
    t.float   "LVMidLateralEPrimeVel_TDI"
    t.float   "LVMidLateralIVCT_TDI"
    t.float   "LVMidLateralIVRT_TDI"
    t.float   "LVMidLateralSPrimeVel_TDI"
    t.float   "LVMidLateralTimeToPkS_TDI"
    t.float   "LVMidLateralTimeToOnsetS_TDI"
    t.float   "LVBasInferiorAPrimeVel_TDI"
    t.float   "LVBasInferiorEPrimeVel_TDI"
    t.float   "LVBasInferiorIVCT_TDI"
    t.float   "LVBasInferiorIVRT_TDI"
    t.float   "LVBasInferiorSPrimeVel_TDI"
    t.float   "LVBasInferiorTimeToPkS_TDI"
    t.float   "LVBasInferiorTimeToOnsetS_TDI"
    t.float   "LVMidInferiorAPrimeVel_TDI"
    t.float   "LVMidInferiorEPrimeVel_TDI"
    t.float   "LVMidInferiorIVCT_TDI"
    t.float   "LVMidInferiorIVRT_TDI"
    t.float   "LVMidInferiorSPrimeVel_TDI"
    t.float   "LVMidInferiorTimeToPkS_TDI"
    t.float   "LVMidInferiorTimeToOnsetS_TDI"
    t.float   "LVBasAnteriorAPrimeVel_TDI"
    t.float   "LVBasAnteriorEPrimeVel_TDI"
    t.float   "LVBasAnteriorIVCT_TDI"
    t.float   "LVBasAnteriorIVRT_TDI"
    t.float   "LVBasAnteriorSPrimeVel_TDI"
    t.float   "LVBasAnteriorTimeToPkS_TDI"
    t.float   "LVBasAnteriorTimeToOnsetS_TDI"
    t.float   "LVMidAnteriorAPrimeVel_TDI"
    t.float   "LVMidAnteriorEPrimeVel_TDI"
    t.float   "LVMidAnteriorIVCT_TDI"
    t.float   "LVMidAnteriorIVRT_TDI"
    t.float   "LVMidAnteriorSPrimeVel_TDI"
    t.float   "LVMidAnteriorTimeToPkS_TDI"
    t.float   "LVMidAnteriorTimeToOnsetS_TDI"
    t.float   "LVBasPosteriorAPrimeVel_TDI"
    t.float   "LVBasPosteriorEPrimeVel_TDI"
    t.float   "LVBasPosteriorIVCT_TDI"
    t.float   "LVBasPosteriorIVRT_TDI"
    t.float   "LVBasPosteriorSPrimeVel_TDI"
    t.float   "LVBasPosteriorTimeToPkS_TDI"
    t.float   "LVBasPosteriorTimeToOnsetS_TDI"
    t.float   "LVMidPosteriorAPrimeVel_TDI"
    t.float   "LVMidPosteriorEPrimeVel_TDI"
    t.float   "LVMidPosteriorIVCT_TDI"
    t.float   "LVMidPosteriorIVRT_TDI"
    t.float   "LVMidPosteriorSPrimeVel_TDI"
    t.float   "LVMidPosteriorTimeToPkS_TDI"
    t.float   "LVMidPosteriorTimeToOnsetS_TDI"
    t.float   "LVBasAntSeptAPrimeVel_TDI"
    t.float   "LVBasAntSeptEPrimeVel_TDI"
    t.float   "LVBasAntSeptIVCT_TDI"
    t.float   "LVBasAntSeptIVRT_TDI"
    t.float   "LVBasAntSeptSPrimeVel_TDI"
    t.float   "LVBasAntSeptTimeToPkS_TDI"
    t.float   "LVBasAntSeptTimeToOnsetS_TDI"
    t.float   "LVMidAntSeptAPrimeVel_TDI"
    t.float   "LVMidAntSeptEPrimeVel_TDI"
    t.float   "LVMidAntSeptIVCT_TDI"
    t.float   "LVMidAntSeptIVRT_TDI"
    t.float   "LVMidAntSeptSPrimeVel_TDI"
    t.float   "LVMidAntSeptTimeToPkS_TDI"
    t.float   "LVMidAntSeptTimeToOnsetS_TDI"
    t.float   "LVMPI_TDI"
    t.float   "MVLatIVCT_TDI"
    t.float   "MVLatIVRT_TDI"
    t.float   "MVLatSPrimeVel_TDI"
    t.float   "MVLatTimeToPkS_TDI"
    t.float   "MVLatTimeToOnsetS_TDI"
    t.float   "LVLateralMPI_TDI"
    t.float   "MVBasInfSeptAPrimeVel_TDI"
    t.float   "MVBasInfSeptEPrimeVel_TDI"
    t.float   "MVBasInfSeptIVCT_TDI"
    t.float   "MVBasInfSeptIVRT_TDI"
    t.float   "MVBasInfSeptSPrimeVel_TDI"
    t.float   "MVBasInfSeptTimeToPkS_TDI"
    t.float   "MVBasInfSeptTimeToOnsetS_TDI"
    t.float   "LVSeptumMPI_TDI"
    t.float   "MVInferiorAPrimeVel_TDI"
    t.float   "MVInferiorEPrimeVel_TDI"
    t.float   "MVInferiorIVCT_TDI"
    t.float   "MVInferiorIVRT_TDI"
    t.float   "MVInferiorSPrimeVel_TDI"
    t.float   "MVInferiorTimeToPkS_TDI"
    t.float   "MVInferiorTimeToOnsetS_TDI"
    t.float   "LVInferiorMPI_TDI"
    t.float   "MVAnteriorAPrimeVel_TDI"
    t.float   "MVAnteriorEPrimeVel_TDI"
    t.float   "MVAnteriorIVCT_TDI"
    t.float   "MVAnteriorIVRT_TDI"
    t.float   "MVAnteriorSPrimeVel_TDI"
    t.float   "MVAnteriorTimeToPkS_TDI"
    t.float   "MVAnteriorTimeToOnsetS_TDI"
    t.float   "LVAnteriorMPI_TDI"
    t.float   "MVPosteriorAPrimeVel_TDI"
    t.float   "MVPosteriorEPrimeVel_TDI"
    t.float   "MVPosteriorIVCT_TDI"
    t.float   "MVPosteriorIVRT_TDI"
    t.float   "MVPosteriorSPrimeVel_TDI"
    t.float   "MVPosteriorTimeToPkS_TDI"
    t.float   "MVPosteriorTimeToOnsetS_TDI"
    t.float   "LVPosteriorMPI_TDI"
    t.float   "MVAntSeptIVCT_TDI"
    t.float   "MVAntSeptIVRT_TDI"
    t.float   "MVAntSeptSPrimeVel_TDI"
    t.float   "MVAntSeptTimeToPkS_TDI"
    t.float   "MVAntSeptTimeToOnsetS_TDI"
    t.float   "MModeRVAWs"
    t.float   "RVTAPSE_MM"
    t.float   "MMRV_EF"
    t.float   "MMRV_FS"
    t.float   "MMRV_ET"
    t.float   "MMRV_PreET"
    t.float   "RV_EF3D"
    t.float   "RV_FS3D"
    t.float   "RV_EFAL"
    t.float   "RV_FSAL"
    t.float   "RV_SV"
    t.float   "MMRV_Mass"
    t.float   "MMRV_MassIndex"
    t.float   "RVEDVolume"
    t.float   "RVESVolume"
    t.float   "RVESVolumeIndex"
    t.float   "RALengthMajorA4C"
    t.float   "RALengthMinorA4C"
    t.float   "IVCDiameterExp2D"
    t.float   "SVCDiameter2D"
    t.float   "CoronarySinusDiameter"
    t.float   "QtoTVOpening"
    t.float   "QtoPVClosure"
    t.float   "PADiastPress"
    t.float   "PAMeanPress"
    t.float   "DopplerTVPeakVelocity"
    t.float   "DopplerTVMeanVelocity"
    t.float   "DopplerTVPeakEstGradient"
    t.float   "DopplerTVMeanEstGradient"
    t.float   "DopplerTVTricuspidValveArea"
    t.float   "DopplerTVPressureHalfTime"
    t.float   "DoppTVDecelTime"
    t.float   "DoppTVAccelTime"
    t.float   "DoppRespVariation"
    t.float   "DoppTRDPDT"
    t.float   "DoppTVClosureToOpenTime"
    t.float   "DoppRVET"
    t.float   "DoppRVRR"
    t.float   "DoppRVMPI"
    t.float   "DoppTVEWaveVTI"
    t.float   "DoppTVAWaveVTI"
    t.float   "DoppTVAWaveDur"
    t.float   "DoppTVIVRT"
    t.float   "DopTVIVCT"
    t.float   "DoppTVStrokeVol"
    t.float   "DoppTVRegurgFraction"
    t.float   "DoppTVRegurgVol"
    t.float   "DoppTVRegurgJetArea"
    t.float   "DoppTVRegurgJetWidth"
    t.float   "DoppTRJetArea_RAAreaRatio"
    t.float   "DoppTRJetArea_BSARatio"
    t.float   "DoppRVOTPkVel"
    t.float   "DoppRVOTPkGrad"
    t.float   "Meas2DBasalRVEDD"
    t.float   "Meas2DMidRVEDD"
    t.float   "Meas2DRVMinorDim"
    t.float   "Meas2DRVEdLength"
    t.float   "Meas2DRVMajorDim"
    t.float   "Meas2DRVFAC"
    t.float   "Meas2DRVAWs"
    t.float   "Meas2DRAAreaDiastole"
    t.float   "Meas2DRAAreaSystole"
    t.float   "Meas2DRAVolumeDiastole"
    t.float   "Meas2DRAVolumeSystole"
    t.float   "Meas2DRAVolumeIndex"
    t.float   "Meas2DRA_EF"
    t.float   "Meas2DTVAnnulusAP"
    t.float   "Meas2DPVSinusOfValsalva"
    t.float   "Meas2DPVSinotubularJunct"
    t.float   "Meas2DDistalRPADiam"
    t.float   "Meas2DDistalLPADiam"
    t.float   "MVAnnulusLateralEEPrimeRatio"
    t.float   "TDIBasalSeptumEEPrimeRatio"
    t.float   "MVAnnulusAntSeptumMPI"
    t.integer "MVALBlendedEA"
    t.integer "MVALEE"
    t.integer "LVBSBlendedEA"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Measurements3", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float   "DoppRVOTMnGrad"
    t.float   "DoppRVOTSubValvarPkVel"
    t.float   "DoppRVOTSubValvarPkGrad"
    t.float   "DoppRVOTSubValvarMnGrad"
    t.float   "DoppRVOTSupraValvarPkVel"
    t.float   "DoppRVOTSupraValvarPkGrad"
    t.float   "DoppRVOTSupraValvarMnGrad"
    t.float   "DoppRVOTVTI"
    t.float   "DoppMPAVTI"
    t.float   "DoppLPAPkVel"
    t.float   "DoppLPAPkGrad"
    t.float   "DoppLPAMnGrad"
    t.float   "DoppRPAPkVel"
    t.float   "DoppRPAPkGrad"
    t.float   "DoppRPAMnGrad"
    t.float   "RVtoPAAnteDiastFlowPk"
    t.float   "RVtoPAAnteDiastFlowMn"
    t.float   "RVtoPAAnteDiastFlowWidth"
    t.float   "DoppRVCardiacOutput"
    t.float   "DoppRVCardiacIndex"
    t.float   "DopplerPVMeanEstGradient"
    t.float   "DoppPVAccelTime"
    t.float   "DoppIVCPkVel"
    t.float   "DoppIVCPkGrad"
    t.float   "DoppIVCMnGrad"
    t.float   "DoppIVCSystVel"
    t.float   "DoppIVCSystVTI"
    t.float   "DoppIVCDiastVel"
    t.float   "DoppIVCDiastVTI"
    t.float   "DoppIVCAWaveRevVel"
    t.float   "DoppIVCAWaveRevDur"
    t.float   "DoppSVCPkVel"
    t.float   "DoppSVCPkGrad"
    t.float   "DoppSVCMnGrad"
    t.float   "DoppSVCSystVel"
    t.float   "DoppSVCSystVTI"
    t.float   "DoppSVCDiastVel"
    t.float   "DoppSVCDiastVTI"
    t.float   "DoppSVCAWaveRevVel"
    t.float   "DoppSVCAWaveRevDur"
    t.float   "DoppLSVCPkVel"
    t.float   "DoppLSVCPkGrad"
    t.float   "DoppLSVCMnGrad"
    t.float   "DoppLSVCSystVel"
    t.float   "DoppLSVCSystVTI"
    t.float   "DoppLSVCDiastVel"
    t.float   "DoppLSVCDiastVTI"
    t.float   "DoppLSVCAWaveRevVel"
    t.float   "DoppLSVCAWaveRevDur"
    t.float   "DoppHepVPkVel"
    t.float   "DoppHepVPkGrad"
    t.float   "DoppHepVMnGrad"
    t.float   "DoppHepVSystVel"
    t.float   "DoppHepVSystVTI"
    t.float   "DoppHepVDiastVel"
    t.float   "DoppHepVDiastVTI"
    t.float   "DoppHepVAWaveRevVel"
    t.float   "DoppHepVAWaveRevDur"
    t.float   "TVAnnLatEVel_TDI"
    t.float   "TVAnnLatAVel_TDI"
    t.float   "TVAnnLatSVel_TDI"
    t.float   "TVIVRT_TDI"
    t.float   "TVIVCT_TDI"
    t.float   "TVMPI_TDI"
    t.float   "RVEtoEPrime"
    t.float   "RVAtoAPrime"
    t.float   "DysSynch_SeptFlashMMode"
    t.float   "DysSynch_SeptFlashTissueDop"
    t.float   "DysSynch_InterVentDelayPAtoAo"
    t.float   "DysSynch_MModeSeptToPostWallDe"
    t.float   "DysSynch_QRSDurration"
    t.float   "Strain_BasalGlobal"
    t.float   "Strain_MidGlobal"
    t.float   "Strain_ApicalGlobal"
    t.float   "Strain_BasalPkSystGlobal"
    t.float   "Strain_MidPkSystGlobal"
    t.float   "Strain_ApicalPkSystGlobal"
    t.float   "Strain_BasalPkEarlyDiastGlobal"
    t.float   "Strain_MidPkEarlyDiastGlobal"
    t.float   "Strain_ApicalPkEarlyDiastGlob"
    t.float   "Strain_BasalRotation"
    t.float   "Strain_BasalRotationRate"
    t.float   "Strain_BasalUntwistRate"
    t.float   "Strain_ApicalRotation"
    t.float   "Strain_ApicalRotationRate"
    t.float   "Strain_ApicalUntwistRate"
    t.float   "Strain_Torsion"
    t.float   "Strain_GlobalLongPkStrainLAX"
    t.float   "Strain_GlobalLongPkStrainA4C"
    t.float   "Strain_GlobalLongPkStrainA2C"
    t.float   "Strain_GlobalLongPkStrainAVE"
    t.float   "Strain_RVLatWallPkStrain"
    t.float   "Strain_LongPkSystGlobal"
    t.float   "Strain_LongPkEarlyDiastGlobal"
    t.float   "DoppBTShuntPkGrad"
    t.float   "DoppBTShuntMnGrad"
    t.float   "DoppASDShuntL_RPkVel"
    t.float   "DoppASDShuntL_RPkGrad"
    t.float   "DoppASDShuntL_RMnGrad"
    t.float   "DoppASDShuntR_LPkVel"
    t.float   "DoppASDShuntR_LPkGrad"
    t.float   "DoppASDShuntR_LMnGrad"
    t.float   "DoppVSDShuntL_RPkVel"
    t.float   "DoppVSDShuntL_RPkGrad"
    t.float   "DoppVSDShuntL_RMnGrad"
    t.float   "DoppVSDShuntR_LPkVel"
    t.float   "DoppVSDShuntR_LPkGrad"
    t.float   "DoppVSDShuntR_LMnGrad"
    t.float   "DoppPDAShuntL_RPkVel"
    t.float   "DoppPDAShuntL_RPkGrad"
    t.float   "DoppPDAShuntL_RMnGrad"
    t.float   "DoppPDAShuntR_LPkVel"
    t.float   "DoppPDAShuntR_LPkGrad"
    t.float   "DoppPDAShuntR_LMnGrad"
    t.float   "DoppRVtoAOPkVel"
    t.float   "DoppRVtoAOPkGrad"
    t.float   "DoppRVtoAOMnGrad"
    t.float   "DoppLVtoPAPkVel"
    t.float   "DoppLVtoPkGrad"
    t.float   "DoppLVtoMnGrad"
    t.float   "DoppLVtoTruncalVPkVel"
    t.float   "DoppLVtoTruncalVPkGrad"
    t.float   "DoppLVtoTruncalVMnGrad"
    t.float   "DoppVertVeinPkGrad"
    t.float   "DoppVertVeinMnGrad"
    t.float   "Meas2DBTShuntAoDiam"
    t.float   "Meas2DBTShuntPADiam"
    t.float   "Meas2DGlennAnastomosisPADiam"
    t.float   "Meas2DASDDiam_AP"
    t.float   "Meas2DASDDiam"
    t.float   "Meas2DASDDiam_SI"
    t.float   "Meas2DPFODiam"
    t.float   "Meas2DVSDDiam"
    t.float   "Meas2DPDAWidth"
    t.float   "Meas2DPDALength"
    t.float   "Meas2DPDAWidthWithColor"
    t.float   "Meas2DPericEffInfDiam"
    t.float   "Meas2DPericEffPostDiam"
    t.float   "Meas2DPericEffLatDiam"
    t.float   "Meas2DPericEffAntDiam"
    t.float   "Meas2DPericardDiam_RA"
    t.float   "SeptToPostWallDelayCirc_Strain"
    t.float   "DopplerMVRegurgitantVelocity"
    t.float   "Meas2DRVEndDiastolicArea"
    t.float   "Meas2DRVEndSystolicArea"
    t.float   "SeptToPostWallDelayRad_Strain"
    t.float   "SeptToLatWallDelayLong_Strain"
    t.float   "CStrain_BasalGlobal"
    t.float   "CStrain_MidGlobal"
    t.float   "CStrain_ApicalGlobal"
    t.float   "QP_QS"
    t.float   "MVEWaveAccelerationSlope"
    t.float   "LeftAtrialPressure"
    t.integer "RVPAConduitProx"
    t.integer "RVPAConduitDist"
    t.integer "BlendedEA"
    t.float   "Meas2DPericEffApicalDiam"
    t.float   "Meas2DPericardDiamAntRA"
    t.float   "LSVCBafflePkGrad"
    t.float   "LSVCBaffleMnGrad"
    t.float   "RSVCBafflePkGrad"
    t.float   "RSVCBaffleMnGrad"
    t.float   "LVEndDiastolicDimension2D"
    t.float   "LVEndSystolicDimension2D"
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Measurements_A_LVE", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float "AIAccelSP"
    t.float "AIDECSP"
    t.float "AIEDVP"
    t.float "AIEROAP"
    t.float "AIMEANGP"
    t.float "AIMNVP"
    t.float "AoAbdDiamDistP"
    t.float "AoAbdDiamMidP"
    t.float "AoAbdDiamProxP"
    t.float "AoAbdDiamPSVP"
    t.float "AOACSPEAKGRADP"
    t.float "AOASCMEANGRADP"
    t.float "AOASCPEAKVELP"
    t.float "AOTHORACICMEANGRADP"
    t.float "AOTHORACICPEAKGRADP"
    t.float "AOTHORACICPEAKVELP"
    t.float "ASDMEANGRADP"
    t.float "ASDMEANVELDP"
    t.float "ASDPEAKGRADP"
    t.float "ASDPEAKVELP"
    t.float "ASDVTIP"
    t.float "AVACCELSP"
    t.float "AVACONTVMNDP"
    t.float "AVANNVTIDP"
    t.float "AVAPISAP"
    t.float "AVCUSPSEPSMM"
    t.float "AVETMMP"
    t.float "AVETP"
    t.float "AVHRP"
    t.float "AVRACCTIMEDP"
    t.float "AVRDECTIMEDP"
    t.float "AVREGALIASDP"
    t.float "AVREGPKVDP"
    t.float "AVRFLOWDP"
    t.float "AVRGVOLPISADP"
    t.float "AVRPISADP"
    t.float "AVRRADPISADP"
    t.float "AVRWAVCTDPP"
    t.float "AVRWAVOTDPP"
    t.float "AVSIP"
    t.float "AVSVP"
    t.float "HVACRPVDP"
    t.float "HVEAKVELDP"
    t.float "HVSDVELRATIODP"
    t.float "HVSPEAKVELDP"
    t.float "ISLVPWTHICKRAT2D"
    t.float "ISLVPWTHICKRATGN"
    t.float "ISPERTHICK2D"
    t.float "ISPERTHICKGN"
    t.float "ISPERTHICKMM"
    t.float "IVCSDVELRATIODP"
    t.float "IVSLVPWRAT2DP"
    t.float "LA2CDVOLBP2D"
    t.float "LA2CVOL2D"
    t.float "LA2CVOLAL2D"
    t.float "LA2CVOLAL2DD"
    t.float "LA4CDAREA2D"
    t.float "LA4CVOLAL2D"
    t.float "LA4CVOLAL2DD"
    t.float "LAAORATIO2D"
    t.float "LAAREA2D"
    t.float "LAAS2DMODA2CP"
    t.float "LAAS2DMODA4CP"
    t.float "LABPVOLAL2D"
    t.float "LADIAMI2D"
    t.float "LAESV2DA2CMODINDP"
    t.float "LAESV2DA2CMODP"
    t.float "LAESV2DA4CMODINDP"
    t.float "LAESV2DA4CMODP"
    t.float "LAESV2DALA2CP"
    t.float "LAESV2DALA4CP"
    t.float "LAESV2DALBPP"
    t.float "LAESV2DBPMODINDP"
    t.float "LAESV2DMODBPP"
    t.float "LAMAJS2DA4CP"
    t.float "LAMAJS2DMODA2CP"
    t.float "LAMAJS2DMODA4CP"
    t.float "LASAREA2C2D"
    t.float "LASAREA4C2D"
    t.float "LMAAccelTP"
    t.float "LMADECTP"
    t.float "LVAD2DA2CP"
    t.float "LVAD2DA2DQSAMP"
    t.float "LVAD2DA4CP"
    t.float "LVAd2DaCMQSAXP"
    t.float "LVAd2DSPEP"
    t.float "LVADA2C2DP"
    t.float "LVADPSAX2DP"
    t.float "LVAREACH2C2D"
    t.float "LVAREACH2D"
    t.float "LVAREACH4C2D"
    t.float "LVAS2DSPEP"
    t.float "LVASA2C2DP"
    t.float "LVASPSAX2DP"
    t.float "LVCARDIND2CAL2D"
    t.float "LVCARDIND2CSSP2D"
    t.float "LVCARDIND4CAL2D"
    t.float "LVCARDIND4CSSP2D"
    t.float "LVCARDINDGN"
    t.float "LVCARDINDSBP2D"
    t.float "LVCARDINDSPE2D"
    t.float "LVCARDINDTEICH2D"
    t.float "LVCARDINDTEICHGN"
    t.float "LVCARDINDTEICHSAX2D"
    t.float "LVCARDOUT2C2D"
    t.float "LVCARDOUT2CAL2D"
    t.float "LVCARDOUT2CSSP2D"
    t.float "LVCARDOUT2D"
    t.float "LVCARDOUT4CAL2D"
    t.float "LVCARDOUT4CSSP2D"
    t.float "LVCARDOUTDP"
    t.float "LVCARDOUTSBP2D"
    t.float "LVCARDOUTSPE2D"
    t.float "LVCARDOUTTEICH2D"
    t.float "LVCARDOUTTEICHSAX2D"
    t.float "LVCI2DCP"
    t.float "LVCIMMCP"
    t.float "LVCIMODBPP"
    t.float "LVCO2DCP"
    t.float "LVCOMMCP"
    t.float "LVEDAREA2CMOD2D"
    t.float "LVEDAREA2D"
    t.float "LVEDAREA4CMOD2D"
    t.float "LVEDDIAMI2D"
    t.float "LVEDDIAMIMM"
    t.float "LVEDDIAMSAX2D"
    t.float "LVEDMJAX2C2D"
    t.float "LVEDMJAX2D"
    t.float "LVEDV2DSPEP"
    t.float "LVEDV3DQP"
    t.float "LVEDVA2DQA2CP"
    t.float "LVEDVA2DQA4CP"
    t.float "LVEDVA2DQP"
    t.float "LVEDVACMQA2CP"
    t.float "LVEDVACMQA4CP"
    t.float "LVEDVACMQP"
    t.float "LVEDVOL2CAL2D"
    t.float "LVEDVOL2CBUL2D"
    t.float "LVEDVOL3D"
    t.float "LVEDVOL4CAL2D"
    t.float "LVEDVOLBPAL2D"
    t.float "LVEDVOLCUBED2D"
    t.float "LVEDVOLCUBEMM"
    t.float "LVEDVOLTEICHGN"
    t.float "LVEDVOLTEICHMM"
    t.float "LVEDVOLTEICHSAX2D"
    t.float "LVEF2DA2DQA2CP"
    t.float "LVEF2DA2DQA4CP"
    t.float "LVEF2DA2DQP"
    t.float "LVEF2DACMQA2CP"
    t.float "LVEF2DACMQA4CP"
    t.float "LVEF2DACMQP"
    t.float "LVEF2DALBPP"
    t.float "LVEF2DSPEP"
    t.float "LVEF3DQP"
    t.float "LVEFCUBED2D"
    t.float "LVEFCUBEMM"
    t.float "LVEFDumesP"
    t.float "LVEFMODBPP"
    t.float "LVEFTEICHSAX2D"
    t.float "LVEPIADPSAX2DP"
    t.float "LVEPIASPSAX2DP"
    t.float "LVEPICAREA2D"
    t.float "LVESA2DA2DQSAMP"
    t.float "LVESA2DaCMQSAXP"
    t.float "LVESAREA2CMOD2D"
    t.float "LVESAREA2D"
    t.float "LVESAREA4CMOD2D"
    t.float "LVESDIAMGN"
    t.float "LVESDIAMIMM"
    t.float "LVESDIAMSAX2D"
    t.float "LVESV2DALBPP"
    t.float "LVESV2DSPEP"
    t.float "LVESV3DQP"
    t.float "LVESVA2DQA2CP"
    t.float "LVESVA2DQA4CP"
    t.float "LVESVA2DQP"
    t.float "LVESVACMQA2CP"
    t.float "LVESVACMQA4CP"
    t.float "LVESVACMQP"
    t.float "LVESVOL2CAL2D"
    t.float "LVESVOL3D"
    t.float "LVESVOL4CAL2D"
    t.float "LVESVOLCUBED2D"
    t.float "LVESVOLCUBEMM"
    t.float "LVESVOLTEICHGN"
    t.float "LVESVOLTEICHMM"
    t.float "LVESVOLTEICHSAX2D"
    t.float "LVETMMP"
    t.float "IVCARevsVelP"
    t.float "LVEF2DALA2CP"
  end

  create_table "Ped_Echo_Measurements_LVF_M", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float "LVFAC2DA2DQSAMP"
    t.float "LVFAC2DaCMQSAXP"
    t.float "LVFS2DCP"
    t.float "LVFS2DTP"
    t.float "LVFSMMCP"
    t.float "LVFSSAX2D"
    t.float "LVHRP"
    t.float "LVISBSTTPETDI"
    t.float "LVIVCTP"
    t.float "LVIVRTMMP"
    t.float "LVMAJd2DMODA2CP"
    t.float "LVMAJd2DMODA4CP"
    t.float "LVMAJd2DSPEP"
    t.float "LVMAJS2DA2CP"
    t.float "LVMAJs2DMODA2CP"
    t.float "LVMAJs2DMODA4CP"
    t.float "LVMAJS2DP"
    t.float "LVmajs2DSPEP"
    t.float "LVMALATEATDI"
    t.float "LVMAMEDEATDI"
    t.float "LVMASS2DINDP"
    t.float "LVMASS2DINDTroy"
    t.float "LVMASS2DP"
    t.float "LVMASSASE2D"
    t.float "LVMASSASE2DCORR"
    t.float "LVMASSASE2DIND"
    t.float "LVMASSASEMM"
    t.float "LVMASSASEMMCORR"
    t.float "LVMASSASEMMIND"
    t.float "LVMASSASSMMINDP"
    t.float "LVMassd2DALPED"
    t.float "LVMassd2DALPEDInd"
    t.float "LVMassd2DP"
    t.float "LVMASSDMMASEP"
    t.float "LVMassdMMCIndP"
    t.float "LVMassdMMCP"
    t.float "LVMASSINDP"
    t.float "LVMASSMMIND"
    t.float "LVMASSPENN2D"
    t.float "LVMASSPENN2DIND"
    t.float "LVMASSPENNMM"
    t.float "LVMASSPENNMMIND"
    t.float "LVMasss2DALPED"
    t.float "LVMasss2DP"
    t.float "LVMasssMMP"
    t.float "LVMWT2DPED"
    t.float "LVOTACCELSP"
    t.float "LVOTACCELTP"
    t.float "LVOTALIASVELDP"
    t.float "LVOTAP"
    t.float "LVOTCARDOUTDP"
    t.float "LVOTINSTFLOWDB"
    t.float "LVOTPISAP"
    t.float "LVOTPISARADP"
    t.float "LVOTSI2DP"
    t.float "LVOTSIDP"
    t.float "LVOTSIMMP"
    t.float "LVOTSV2DP"
    t.float "LVOTSVMMP"
    t.float "LVPEPETRatioP"
    t.float "LVPEPMMP"
    t.float "LVPWDTHICKSAX2D"
    t.float "LVPWPERTHICK2D"
    t.float "LVPWPERTHICKGN"
    t.float "LVPWPERTHICKMM"
    t.float "LVPWSTHICKSAX2D"
    t.float "LVRRINTERVAL3DP"
    t.float "LVSI2DCUBEP"
    t.float "LVSI2DSPEP"
    t.float "LVSI2DTP"
    t.float "LVSIALA2CP"
    t.float "LVSIALA4CP"
    t.float "LVSIALBPP"
    t.float "LVSIMMCubeP"
    t.float "LVSIMMTP"
    t.float "LVSIMODA2CP"
    t.float "LVSIMODA4CP"
    t.float "LVSIMODBPP"
    t.float "LVSTVOL2CAL2D"
    t.float "LVSTVOL3D"
    t.float "LVSTVOL4CAL2D"
    t.float "LVSTVOLBPAL2D"
    t.float "LVSTVOLCMM"
    t.float "LVSTVOLCUBED2D"
    t.float "LVSTVOLDP"
    t.float "LVSTVOLTEICH2D"
    t.float "LVSTVOLTEICHSAX2D"
    t.float "LVSTVOLTMM"
    t.float "LVSV2DSPEP"
    t.float "LVSV3DQP"
    t.float "LVSVMODBPP"
    t.float "LVSYSPRESSAVSTENOSISP"
    t.float "LVTEI"
    t.float "MAINSPACCELTTDI"
    t.float "MAINSPAVTITDI"
    t.float "MAINSPDECTTDI"
    t.float "MAINSPEATDI"
    t.float "MAINSPEVTITDI"
    t.float "MAINSPTTPETDI"
    t.float "MALATAVTITDIP"
    t.float "MALATEVTITDIP"
    t.float "MALATTTPETDI"
    t.float "MAMEDAVTITDIP"
    t.float "MAMEDEVTITDIP"
    t.float "MMAACCELTTDIP"
    t.float "MMADECTTDIP"
    t.float "MRMEANGP"
    t.float "MRMNVP"
    t.float "MRSVP"
    t.float "MVACCELSP"
    t.float "MVACCELTP"
    t.float "MVACINTERVALMMP"
    t.float "MVACTVTIP"
    t.float "MVALIASVELDP"
    t.float "MVANNAREA3DMVQP"
    t.float "MVANNCIRC2DMVQP"
    t.float "MVANNCIRC3DMVQP"
    t.float "MVANND2DP"
    t.float "MVANNDTP"
    t.float "MVANNELLIPSE2DMVQP"
    t.float "MVANNHEIGHT2DMVQP"
    t.float "MVANNHTDIAMRATIOMVQP"
    t.float "MVANNVTIP"
    t.float "MVANTLEAFANGLE2DMVQP"
    t.float "MVAOANNMVPLANANG2DMVQP"
    t.float "MVAPDIAM2DMVQP"
    t.float "MVCDIFUNANGLEP"
    t.float "MVCOP"
    t.float "MVDESLOPEMMP"
    t.float "MVEESEPARATIONMMP"
    t.float "MVEROADP"
    t.float "MVHRP"
    t.float "MVINSTFLOWDP"
    t.float "MVLEAFAREA3DMVQP"
    t.float "MVNONPLANEANG2DMVQP"
    t.float "MVPHT2DMVQP"
    t.float "MVPHTPKVP"
    t.float "MVPISADP"
    t.float "MVPISARADDP"
    t.float "MVPOSTLEAFANGLE2DMVQP"
    t.float "MVPVOL2DMVQP"
    t.float "MVREGALIASVELDP"
    t.float "MVREGPISADP"
    t.float "MVREGPISARAD"
    t.float "MVRFLOWDP"
    t.float "MVRGVOLPISADP"
    t.float "MVSIP"
    t.float "MVTENTHT2DMVQP"
    t.float "MVTENTVOL2DMVQP"
    t.float "MVTMADLT2Da2DQA4CP"
    t.float "MVTMADLT2DaCMQA4CP"
    t.float "MVTMADMLR2Da2DQA4CP"
    t.float "MVTMADMLR2DaCMQA4CP"
    t.float "MVTMADMLRNML2Da2DQA4CP"
    t.float "MVTMADMLRNML2DaCMQA4CP"
    t.float "MVTMADRT2Da2DQA4CP"
    t.float "MVTMADRT2DaCMQA4CP"
    t.float "MPAACCELTP"
    t.float "MRACCELSP"
    t.float "MTVADURDP"
  end

  create_table "Ped_Echo_Measurements_P_Z", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.float "PALPADIAMP"
    t.float "PAMAINAREA2DP"
    t.float "PAMAINMNGRADP"
    t.float "PAMAINPKGRADP"
    t.float "PatAgePedEcho"
    t.float "PULVLLPEAKDVELDP"
    t.float "PULVLLPEAKSVELDP"
    t.float "PULVLLSDVELRATIODP"
    t.float "PULVLUPEAKDVELDP"
    t.float "PULVLUPEAKSVELDP"
    t.float "PULVLUSDVELRATIODP"
    t.float "PULVRLPEAKDVELDP"
    t.float "PULVRLPEAKSVELDP"
    t.float "PULVRLSDVELRATIODP"
    t.float "PULVRUPEAKDVELDP"
    t.float "PULVRUPEAKSVELDP"
    t.float "PULVSDVELRATIODP"
    t.float "PVACCELSP"
    t.float "PVACONTIDDP"
    t.float "PVACONTVDDP"
    t.float "PVAPISADP"
    t.float "PVAWAVEAMPMMP"
    t.float "PVBCSLOPEMMP"
    t.float "PVDECTIMEDP"
    t.float "PVEINAREVSVELP"
    t.float "PVEJTIMEDP"
    t.float "PVEROPISADP"
    t.float "PVETMMP"
    t.float "PVHRP"
    t.float "PVLATEDIASTSLOPEMMP"
    t.float "PVRACCTIMEDP"
    t.float "PVREDVELDP"
    t.float "PVREGALIASDP"
    t.float "PVREGVTIDP"
    t.float "PVRFLOWDP"
    t.float "PVRGFRACPISADP"
    t.float "PVRGVOLPISADP"
    t.float "PVRPISA"
    t.float "QPQSDP"
    t.float "QWAVETOPVCLOSETIMEP"
    t.float "QWAVETOTVOPENTIMEP"
    t.float "RADIAM2DP"
    t.float "RSVCSDRATIOP"
    t.float "RVAWD2DP"
    t.float "RVAWDMMP"
    t.float "RVAWSTHICKGN"
    t.float "RVDDIAMGN"
    t.float "RVDDIAMI2D"
    t.float "RVDDIAMIMM"
    t.float "RVETMMP"
    t.float "RVHRP"
    t.float "RVMAJAXIS2DA4CP"
    t.float "RVMINAXIS2DA4CP"
    t.float "RVOTALIASVELDP"
    t.float "RVOTAP"
    t.float "RVOTCOP"
    t.float "RVOTINSTFLOWDB"
    t.float "RVOTMEANVELDP"
    t.float "RVOTPISADP"
    t.float "RVOTPISARADDP"
    t.float "RVOTSIP"
    t.float "RVOTSTVOLDP"
    t.float "RVOTVTIDP"
    t.float "RVPEPETRatioP"
    t.float "RVPEPMMP"
    t.float "RVSPVSDDP"
    t.float "RVTEI"
    t.float "TRMEANGP"
    t.float "TRMNVP"
    t.float "TVACCELSP"
    t.float "TVACCELTP"
    t.float "TVACINTERVALMMP"
    t.float "TVALIASVELDP"
    t.float "TVAPISAP"
    t.float "TVAREACONTDP"
    t.float "TVAREAPHTDP"
    t.float "TVCDIFUNANGLEP"
    t.float "TVDEEXCMM"
    t.float "TVDESLOPEMMP"
    t.float "TVEDECTIMEDP"
    t.float "TVEFSLOPEMMP"
    t.float "TVEROPISADP"
    t.float "TVHRP"
    t.float "TVINSTFLOWDP"
    t.float "TVPISADP"
    t.float "TVPISARADDP"
    t.float "TVRALIASVELDP"
    t.float "TVRDECTIMEDP"
    t.float "TVREGFRADPP"
    t.float "TVREGVTIDP"
    t.float "TVRFLOWDP"
    t.float "TVRGFRACPISADP"
    t.float "TVRGVOLPISADP"
    t.float "TVRPISA"
    t.float "TVSVP"
    t.float "TVVTIDP"
    t.float "PULVLLADURP"
    t.float "PULVLUADURP"
    t.float "PULVRLADURP"
    t.float "PULVRUADURP"
    t.float "RSVCADURP"
    t.float "RSVCAREVSVELP"
    t.float "RVOTACCELSP"
  end

  create_table "Ped_Echo_Pul_Ven_Drain", primary_key: "SS_Ped_Echo_Pul_Ven_Drain_ID", force: :cascade do |t|
    t.integer "SS_Event_Ped_Echo_ID"
    t.varchar "DrainFrom",            limit: 15
    t.varchar "DrainTo",              limit: 15
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
    t.index ["SS_Ped_Echo_Pul_Ven_Drain_ID"], name: "SS_Ped_Echo_Pul_Ven_Drain_ID"
  end

  create_table "Ped_Echo_SonoImp_SNLog", primary_key: "SS_Ped_Echo_SonoImp_Snlog_ID", force: :cascade do |t|
    t.integer    "SS_Event_Ped_Echo_ID"
    t.datetime   "DateField"
    t.datetime   "TimeField"
    t.varchar    "Category",             limit: 255
    t.text_basic "TextField",            limit: 2147483647
    t.text_basic "Note",                 limit: 2147483647
    t.varchar    "EnteredBy",            limit: 20
    t.integer    "CategorySequence"
    t.integer    "Sequence"
    t.varchar    "BackColor",            limit: 50
    t.text_basic "NoteText",             limit: 2147483647
    t.integer    "BulletSequence",       limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Echo_ID"
  end

  create_table "Ped_Echo_Valves_1", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.varchar    "ExamCardiacPositions",           limit: 150
    t.varchar    "ExamAtrialSitus",                limit: 20
    t.varchar    "ExamPulVenousDrain",             limit: 30
    t.varchar    "ExamSystemicVenousDrain",        limit: 10
    t.varchar    "ExamCoronarySinus",              limit: 100
    t.integer    "ExamSurgicalProcedure",          limit: 2
    t.varchar    "ExamCoronaryArteries",           limit: 50
    t.varchar    "ExamRightAtrium",                limit: 10
    t.varchar    "ExamLeftAtrium",                 limit: 10
    t.varchar    "ExamAVConnections",              limit: 10
    t.varchar    "ExamAtrialSeptum",               limit: 100
    t.varchar    "ExamTV",                         limit: 10
    t.varchar    "ExamMV",                         limit: 10
    t.varchar    "ExamRV",                         limit: 10
    t.varchar    "ExamLV",                         limit: 10
    t.varchar    "ExamUniventricleHeart",          limit: 25
    t.varchar    "ExamVentSeptum",                 limit: 12
    t.varchar    "ExamVAConnection",               limit: 255
    t.varchar    "ExamRVOutflowTract",             limit: 10
    t.varchar    "ExamLVOutflowTract",             limit: 100
    t.varchar    "ExamVAConnectMode",              limit: 10
    t.varchar    "ExamAorticPosition",             limit: 10
    t.varchar    "ExamAV",                         limit: 25
    t.varchar    "ExamAorticRootAscAorta",         limit: 100
    t.varchar    "ExamPV",                         limit: 10
    t.varchar    "ExamNonNativePV",                limit: 10
    t.varchar    "ExamAorticArch",                 limit: 255
    t.varchar    "ExamPatentDuctusArteriosis",     limit: 50
    t.varchar    "ExamMainPulmonaryArtery",        limit: 25
    t.varchar    "ExamLeftPulmonaryArtery",        limit: 25
    t.varchar    "ExamRightPulmonaryArtery",       limit: 25
    t.varchar    "ExamPericardium",                limit: 10
    t.varchar    "ExamAVValves",                   limit: 10
    t.integer    "ExamProstheticValves",           limit: 2
    t.integer    "ExamMasses",                     limit: 2
    t.integer    "ExamCatheters",                  limit: 2
    t.integer    "CardiacPositionLevocardia",      limit: 2
    t.integer    "CardiacPositionDextrocardia",    limit: 2
    t.integer    "CardiacPositionMesocardia",      limit: 2
    t.integer    "CardiacPositionMediastShift",    limit: 2
    t.text_basic "CardiacPositionNotes",           limit: 2147483647
    t.integer    "PulVenDrainToLA",                limit: 2
    t.integer    "PulVenDrainTotalAnomalous",      limit: 2
    t.varchar    "PulVenDrainTotalAnomalousDesc",  limit: 50
    t.integer    "PulVenDrainPartialAnomalous",    limit: 2
    t.integer    "PulVenDrainObstruction",         limit: 2
    t.varchar    "PulVenDrainObstructionLocation", limit: 10
    t.text_basic "PulVenDrainNotes",               limit: 2147483647
    t.integer    "SysVenDrainRightSVCToRA",        limit: 2
    t.integer    "SysVenDrainRightSVCToLA",        limit: 2
    t.integer    "SysVenDrainIVCToRA",             limit: 2
    t.integer    "SysVenDrainLeftSVCToCoronary",   limit: 2
    t.integer    "SysVenDrainRightSVCToCoronary",  limit: 2
    t.integer    "SysVenDrainLeftSVCToLAtrium",    limit: 2
    t.integer    "SysVenDrainLeftSVCToRAtrium",    limit: 2
    t.integer    "SysVenDrainBridgingVein",        limit: 2
    t.integer    "SysVenDrainHepaticRA",           limit: 2
    t.integer    "SysVenDrainHepaticLA",           limit: 2
    t.integer    "SysVenDrainHepaticCoroSinus",    limit: 2
    t.integer    "SysVenDrainInterruptedIVC",      limit: 2
    t.varchar    "SysVenDrainInterruptedIVCLoc",   limit: 10
    t.text_basic "SysVenDrainNotes",               limit: 2147483647
    t.integer    "CoronarySinusToRA",              limit: 2
    t.integer    "CoronarySinusUnroofed",          limit: 2
    t.varchar    "CoronarySinusUnroofedDegree",    limit: 10
    t.integer    "CoronarySinusDilated",           limit: 2
    t.integer    "CoronarySinusOther",             limit: 2
    t.text_basic "CoronarySinusNotes",             limit: 2147483647
    t.varchar    "SurgeryProcSystShunt",           limit: 50
    t.varchar    "SurgeryProcSiteOfEntry",         limit: 50
    t.varchar    "SurgeryProcPatency",             limit: 50
    t.integer    "SurgeryProcFontan",              limit: 2
    t.integer    "SurgeryProcNorwood",             limit: 2
    t.varchar    "SurgeryProcNorwoodStage",        limit: 10
    t.integer    "SurgeryProcDamusKaye",           limit: 2
    t.integer    "SurgeryProcBlalockTaussig",      limit: 2
    t.integer    "SurgeryProcCentralAPShunt",      limit: 2
    t.integer    "SurgeryProcModifiedBlalock",     limit: 2
    t.integer    "SurgeryProcGlenn",               limit: 2
    t.integer    "SurgeryProcTGAVenousSwitch",     limit: 2
    t.integer    "SurgeryProcTGAArtSwitch",        limit: 2
    t.integer    "SurgeryProcMPA_RV",              limit: 2
    t.integer    "SurgeryProcPostOp",              limit: 2
    t.integer    "SurgeryProcMustard",             limit: 2
    t.integer    "SurgeryProcSenning",             limit: 2
    t.integer    "SurgeryProcJatene",              limit: 2
    t.integer    "SurgeryProcAPShunt",             limit: 2
    t.integer    "SurgeryProcVSDRepair",           limit: 2
    t.integer    "SurgeryProcASDRepair",           limit: 2
    t.integer    "SurgeryProcTETRepair",           limit: 2
    t.integer    "SurgeryProcValvuloplasty",       limit: 2
    t.integer    "SurgeryProcAtrialSwitch",        limit: 2
    t.integer    "SurgeryProcArterialSwitch",      limit: 2
    t.integer    "SurgeryProcRVToPA",              limit: 2
    t.integer    "SurgeryProcOtherConduit",        limit: 2
    t.varchar    "SurgeryProcOtherConduitDesc",    limit: 50
    t.integer    "SurgeryProcRoss",                limit: 2
    t.integer    "SurgeryProcHomograft",           limit: 2
    t.varchar    "SurgeryProcOther",               limit: 30
    t.text_basic "SurgeryProcNotes",               limit: 2147483647
    t.varchar    "RightAtriumChamberSize",         limit: 20
    t.integer    "RightAtriumAppendageNormal",     limit: 2
    t.integer    "RightAtriumAppendageNotSeen",    limit: 2
    t.integer    "RightAtriumAppendageJuxtaposed", limit: 2
    t.integer    "RightAtriumCatheter",            limit: 2
    t.text_basic "RightAtriumNotes",               limit: 2147483647
    t.varchar    "LeftAtriumChamberSize",          limit: 20
    t.integer    "LeftAtriumAppendageNormal",      limit: 2
    t.integer    "LeftAtriumAppendageNotSeen",     limit: 2
    t.integer    "LeftAtriumAppendageJuxtaposed",  limit: 2
    t.integer    "LeftAtriumCorTriatriatum",       limit: 2
    t.varchar    "LeftAtriumOther",                limit: 50
    t.text_basic "LeftAtriumNotes",                limit: 2147483647
    t.integer    "AtrioventConnectionsBiYes",      limit: 2
    t.varchar    "AtrioventConnectionsBi",         limit: 25
    t.integer    "AtrioventConnectionsUniYes",     limit: 2
    t.varchar    "AtrioventConnectionsUni",        limit: 25
    t.text_basic "AtrioventConnectionsNotes",      limit: 2147483647
    t.integer    "AtrialSeptIntact",               limit: 2
    t.integer    "AtrialSeptInterAtrialDefect",    limit: 2
    t.float      "AtrialSeptInterAtrialDefSize"
    t.integer    "AtrialSeptOstiumPrimum",         limit: 2
    t.integer    "AtrialSeptOstiumSecundum",       limit: 2
    t.integer    "AtrialSeptPatentForamenOvale",   limit: 2
    t.integer    "AtrialSeptSinusVenosusSup",      limit: 2
    t.integer    "AtrialSeptSinusVenousInf",       limit: 2
    t.integer    "AtrialSeptLeftRightShunt",       limit: 2
    t.varchar    "AtrialSeptLeftRightShuntDesc",   limit: 10
    t.integer    "AtrialSeptRightLeftShunt",       limit: 2
    t.varchar    "AtrialSeptRightLeftShuntDesc",   limit: 10
    t.integer    "AtrialSeptBidirectionShunt",     limit: 2
    t.varchar    "AtrialSeptBidirectionShuntDesc", limit: 10
    t.varchar    "AtrialSeptShunt",                limit: 50
    t.integer    "AtrialSeptAneurysm",             limit: 2
    t.varchar    "AtrialSeptOther",                limit: 50
    t.text_basic "AtrialSeptNotes",                limit: 2147483647
    t.integer    "AtrialSitusSolitus",             limit: 2
    t.integer    "AtrialSitusInversus",            limit: 2
    t.integer    "AtrialSitusAmbiguous",           limit: 2
    t.text_basic "AtrialSitusNotes",               limit: 2147483647
    t.integer    "TVAssessThickened",              limit: 2
    t.integer    "TVAssessNotVisualized",          limit: 2
    t.integer    "TVImperforate",                  limit: 2
    t.integer    "TVStraddleToLV",                 limit: 2
    t.integer    "TVEbsteinsAnomaly",              limit: 2
    t.integer    "TVProlapse",                     limit: 2
    t.varchar    "TVStenosis",                     limit: 50
    t.varchar    "TVRegurgitation",                limit: 50
    t.integer    "TVSmall",                        limit: 2
    t.integer    "TVOther",                        limit: 2
    t.varchar    "TVOtherDesc",                    limit: 50
    t.text_basic "TVNotes",                        limit: 2147483647
    t.integer    "MVSmall",                        limit: 2
    t.integer    "MVSupravalveRing",               limit: 2
    t.integer    "MVImperforate",                  limit: 2
    t.integer    "MVParachute",                    limit: 2
    t.integer    "MVSubvalveStenosis",             limit: 2
    t.integer    "MVStraddleToRV",                 limit: 2
    t.integer    "MVThickened",                    limit: 2
    t.integer    "MVFlailLeafletAnterior",         limit: 2
    t.integer    "MVFlailLeafletPosterior",        limit: 2
    t.integer    "MVPapillaryMuscleDysfunction",   limit: 2
    t.varchar    "MVProlapse",                     limit: 10
    t.varchar    "MVStenosis",                     limit: 50
    t.varchar    "MVRegurgitation",                limit: 100
    t.integer    "MVVisualized",                   limit: 2
    t.integer    "MVCleft",                        limit: 2
    t.varchar    "MVOther",                        limit: 50
    t.varchar    "MVOtherDesc",                    limit: 50
    t.text_basic "MVNotes",                        limit: 2147483647
    t.integer    "MV_SAM",                         limit: 2
    t.integer    "VentSeptIntact",                 limit: 2
    t.integer    "VentSeptPerimemVSD",             limit: 2
    t.integer    "VentSeptMuscVSD",                limit: 2
    t.integer    "VentSeptApicalSeptum",           limit: 2
    t.integer    "VentSeptTrabecular",             limit: 2
    t.integer    "VentSeptInlet",                  limit: 2
    t.integer    "VentSeptOutlet",                 limit: 2
    t.integer    "VentSeptMultiple",               limit: 2
    t.integer    "VentSeptDORV",                   limit: 2
    t.varchar    "VentSeptDORVDesc",               limit: 20
    t.integer    "VentSeptAnteriorMalign",         limit: 2
    t.integer    "VentSeptPosteriorMalign",        limit: 2
    t.integer    "VentSeptSubarterialVSD",         limit: 2
    t.integer    "VentSeptLV_RAShunt",             limit: 2
    t.integer    "VentSeptLRShunt",                limit: 2
    t.varchar    "VentSeptLRShuntDesc",            limit: 10
    t.integer    "VentSeptBidirectionShunt",       limit: 2
    t.integer    "VentSeptAneurysm",               limit: 2
    t.float      "VentSeptVSDSize"
    t.float      "VentSeptVSDGradient"
    t.integer    "VentSeptBulboVentForamen",       limit: 2
    t.text_basic "VentSeptNotes",                  limit: 2147483647
    t.integer    "VentSeptPerimenbran",            limit: 2
    t.integer    "VentSeptAVCanalVSD",             limit: 2
    t.varchar    "VentSeptShunts",                 limit: 50
    t.integer    "VentSeptPeriOutlet",             limit: 2
    t.integer    "VentSeptPeriInlet",              limit: 2
    t.integer    "CardiacPositionsEctopiaCordis",  limit: 2
    t.varchar    "ConalTruncalVSDwDORV",           limit: 25
    t.varchar    "ConalTruncalTetralogyFallot",    limit: 100
    t.varchar    "ConalTruncalVesselPostion",      limit: 25
    t.integer    "CoronarySinusKawasaki",          limit: 2
    t.integer    "CoronarySinusAneurysm",          limit: 2
    t.varchar    "CoronarySinusAneurysmLocation",  limit: 25
    t.integer    "SysVenDrainNoLSVC",              limit: 2
    t.integer    "AtrialSeptum_Thick",             limit: 2
    t.integer    "AtrialSeptum_Aneurysmal",        limit: 2
    t.integer    "AtrialSeptum_PrematureClosePFO", limit: 2
    t.integer    "AtrialSeptum_PrematureRestPFO",  limit: 2
    t.integer    "AtrialSeptum_RtDeviation",       limit: 2
    t.integer    "AtrialSeptum_LtDeviation",       limit: 2
    t.integer    "AtrialSeptum_Bidirectional",     limit: 2
    t.integer    "MV_Prolapse_1",                  limit: 2
  end

  create_table "Ped_Echo_Valves_2", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "VAConnectConcordant",            limit: 2
    t.integer    "VAConnectDiscordant",            limit: 2
    t.integer    "VAConnectCommonTrunk",           limit: 2
    t.integer    "VAConnectDOutletLV",             limit: 2
    t.integer    "VAConnectDOutletRV",             limit: 2
    t.integer    "VAConnectDOutletIndeterm",       limit: 2
    t.text_basic "VAConnectNotes",                 limit: 2147483647
    t.integer    "VAConnectMode2VAValves",         limit: 2
    t.integer    "VAConnectMode1VAValve",          limit: 2
    t.integer    "VAConnectModeTruncalValve",      limit: 2
    t.text_basic "VAConnectModeNotes",             limit: 2147483647
    t.integer    "AVUnicommisural",                limit: 2
    t.integer    "AVBicommisural",                 limit: 2
    t.varchar    "AVBicommisuralType",             limit: 34
    t.integer    "AVVisualized",                   limit: 2
    t.varchar    "AVThickened",                    limit: 10
    t.varchar    "AVLeafletMotion",                limit: 22
    t.varchar    "AVStenosis",                     limit: 10
    t.integer    "AVRegurgitationYN",              limit: 2
    t.varchar    "AVRegurgitation",                limit: 10
    t.integer    "AVNormalImage",                  limit: 2
    t.integer    "AVOther",                        limit: 2
    t.varchar    "AVOtherDesc",                    limit: 50
    t.integer    "AVAorticAtresia",                limit: 2
    t.text_basic "AVNotes",                        limit: 2147483647
    t.integer    "AorticRootIntact",               limit: 2
    t.integer    "AorticRootDilated",              limit: 2
    t.integer    "AorticRootDilatProxlAorta",      limit: 2
    t.float      "AorticRootDilatProxlAortaSize"
    t.integer    "AorticRootDilatSinusValsalva",   limit: 2
    t.float      "AorticRootDilatSinusValSize"
    t.integer    "AorticRootSupraAorticStenosis",  limit: 2
    t.varchar    "AorticRootSupraAorticStenDesc",  limit: 50
    t.integer    "AorticRootHypoplasticAorta",     limit: 2
    t.varchar    "AorticRootOther",                limit: 50
    t.text_basic "AorticRootNotes",                limit: 2147483647
    t.integer    "AorticPositionPosterior",        limit: 2
    t.integer    "AorticPositionAnterior",         limit: 2
    t.integer    "AorticPositionLeft",             limit: 2
    t.integer    "AorticPositionRight",            limit: 2
    t.integer    "AorticPositionSideBySide",       limit: 2
    t.text_basic "AorticPositionNotes",            limit: 2147483647
    t.integer    "AscAortaNormalOrigin",           limit: 2
    t.integer    "AscAortaOverriding",             limit: 2
    t.integer    "AscAortaHypoplasticAorta",       limit: 2
    t.integer    "AscAortaNormalCoronaryDim",      limit: 2
    t.integer    "AscAortaDilatedLeftCoroArtery",  limit: 2
    t.integer    "AscAortaDilatedRightCoroArtery", limit: 2
    t.integer    "AscAortaAbnOriginLeft",          limit: 2
    t.integer    "AscAortaAbnOriginRight",         limit: 2
    t.integer    "AscAortaAneurysm",               limit: 2
    t.float      "AscAortaAneurysmSize"
    t.varchar    "AscAortaAneurysmLocation",       limit: 10
    t.integer    "AscAortaAneurysmNoEvid",         limit: 2
    t.integer    "AscAortaSingleCoronaryArtery",   limit: 2
    t.integer    "AscAortaOriginCoroArteryPulArt", limit: 2
    t.varchar    "AscAortaOriginCoroArteryType",   limit: 10
    t.integer    "AscAortaOriginLAD",              limit: 2
    t.integer    "AscAortaTranspositionYN",        limit: 2
    t.varchar    "AscAortaTransposition",          limit: 25
    t.integer    "AscAortaAortaPulmonaryWindow",   limit: 2
    t.integer    "AscAortaLCAFromPA",              limit: 2
    t.integer    "AscAortaRCAFromPA",              limit: 2
    t.varchar    "AscAortaOther",                  limit: 50
    t.integer    "PVVisualized",                   limit: 2
    t.integer    "PVBicommisural",                 limit: 2
    t.varchar    "PVStenosis",                     limit: 10
    t.varchar    "PVRegurgitation",                limit: 10
    t.integer    "PVOther",                        limit: 2
    t.varchar    "PVOtherDesc",                    limit: 50
    t.integer    "PVDysplastic",                   limit: 2
    t.integer    "PVAtresia",                      limit: 2
    t.integer    "PVAbsent",                       limit: 2
    t.varchar    "PVSupravalvePulmonSten",         limit: 10
    t.integer    "PVSupravalvePulmonStenYes",      limit: 2
    t.integer    "PVNormalImage",                  limit: 2
    t.text_basic "PVNotes",                        limit: 2147483647
    t.integer    "AorticArchRightArch",            limit: 2
    t.integer    "AorticArchLeftArch",             limit: 2
    t.integer    "AorticArchMirrorImageBranch",    limit: 2
    t.integer    "AorticArchAberRightSubArtery",   limit: 2
    t.integer    "AorticArchAberLeftSubArtery",    limit: 2
    t.integer    "AorticArchDoubleArch",           limit: 2
    t.integer    "AorticArchHypoplasticAscAorta",  limit: 2
    t.integer    "AorticArchHypoplasticAOArch",    limit: 2
    t.integer    "AorticArchHypoplasticIsthmus",   limit: 2
    t.integer    "AorticArchCoarctDiscrete",       limit: 2
    t.varchar    "AorticArchCoarctDiscreteDesc",   limit: 20
    t.integer    "AorticArchCoarctTubHypo",        limit: 2
    t.integer    "AorticArchInterruptedDistal",    limit: 2
    t.varchar    "AorticArchInterruptedDistalLoc", limit: 15
    t.text_basic "AorticArchNotes",                limit: 2147483647
    t.integer    "PericardThickened",              limit: 2
    t.integer    "PericardCalcified",              limit: 2
    t.integer    "PericardAbsent",                 limit: 2
    t.varchar    "PericardAbsentDegree",           limit: 100
    t.integer    "PericardEffusionYN",             limit: 2
    t.varchar    "PericardEffusion",               limit: 15
    t.integer    "PericardEffusionCircum",         limit: 2
    t.integer    "PericardEffusionLoculated",      limit: 2
    t.varchar    "PericardEffusionLoculatedText",  limit: 50
    t.integer    "PericardTamponadePhys",          limit: 2
    t.integer    "PericardRADiastolicCollapse",    limit: 2
    t.integer    "PericardRVDiastolicCollapse",    limit: 2
    t.integer    "PericardConstriction",           limit: 2
    t.varchar    "PericardPleuralEffusion",        limit: 15
    t.text_basic "PericardNotes",                  limit: 2147483647
    t.varchar    "ProstheticValve",                limit: 15
    t.varchar    "ProstheticValveType",            limit: 50
    t.varchar    "ProstheticValveSite",            limit: 50
    t.varchar    "ProstheticValveStenosis",        limit: 25
    t.varchar    "ProstheticValveRegurgitation",   limit: 25
    t.text_basic "ProstheticValveNotes",           limit: 2147483647
    t.varchar    "Masses",                         limit: 15
    t.varchar    "MassesSite",                     limit: 50
    t.varchar    "MassesType",                     limit: 15
    t.text_basic "MassesNotes",                    limit: 2147483647
    t.varchar    "Catheters",                      limit: 15
    t.integer    "CathetersNotSeen",               limit: 2
    t.varchar    "CathetersSite",                  limit: 50
    t.varchar    "CathetersAssociatedMasses",      limit: 50
    t.text_basic "CathetersNotes",                 limit: 2147483647
    t.integer    "AtrioventValve2AV",              limit: 2
    t.integer    "AtrioventValve1AV",              limit: 2
    t.integer    "AtrioventValveCommon",           limit: 2
    t.text_basic "AtrioventValveNotes",            limit: 2147483647
    t.integer    "AtrioventValveRegurg",           limit: 2
    t.varchar    "AtrioventValveRegurgDeg",        limit: 10
    t.integer    "UniventHeartRV",                 limit: 2
    t.integer    "UniventHeartLV",                 limit: 2
    t.integer    "UniventHeartIndeterm",           limit: 2
    t.text_basic "UniventHeartNotes",              limit: 2147483647
    t.varchar    "PatentDuctusArt",                limit: 50
    t.varchar    "PatentDuctusArtShunt",           limit: 25
    t.integer    "RPASmall",                       limit: 2
    t.integer    "RPAAbsent",                      limit: 2
    t.integer    "RPADilated",                     limit: 2
    t.integer    "RPAStenosed",                    limit: 2
    t.text_basic "RPANotes",                       limit: 2147483647
    t.integer    "LPASmall",                       limit: 2
    t.integer    "LPAAbsent",                      limit: 2
    t.integer    "LPADilated",                     limit: 2
    t.integer    "LPAStenosed",                    limit: 2
    t.integer    "LPASling",                       limit: 2
    t.text_basic "LPANotes",                       limit: 2147483647
    t.integer    "MPASmall",                       limit: 2
    t.integer    "MPAAbsent",                      limit: 2
    t.integer    "MPADilated",                     limit: 2
    t.integer    "MPAStenosed",                    limit: 2
    t.integer    "MPAPulArtBand",                  limit: 2
    t.text_basic "MPANotes",                       limit: 2147483647
    t.text_basic "AscAortaNotes",                  limit: 2147483647
    t.integer    "PDA_YN",                         limit: 2
    t.integer    "PDADuctalShunt",                 limit: 2
    t.text_basic "PDANotes",                       limit: 2147483647
    t.float      "AVPeakVelocity"
    t.float      "AVAnnulus"
    t.varchar    "AVLeaflets",                     limit: 50
    t.varchar    "AVProlapsed",                    limit: 50
    t.float      "AVGradient"
    t.varchar    "AVProsthetic",                   limit: 50
    t.varchar    "AVVegetation",                   limit: 50
    t.varchar    "AVNeoaorticvalve",               limit: 50
    t.float      "AVSubaorticVelocity"
    t.varchar    "AVSubaorticGradient",            limit: 50
    t.varchar    "AVSupravalvarStenosis",          limit: 50
    t.varchar    "AVSubaorticStenosis",            limit: 50
    t.integer    "AscAortaAneurysmLocRoot",        limit: 2
    t.integer    "AscAortaAneurysmLocAscAo",       limit: 2
  end

  create_table "Ped_Echo_Ventricle", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "RVOutflowTractOther",         limit: 2
    t.varchar    "RVOutflowTractOtherDesc",     limit: 50
    t.integer    "RVOutflowTetrology",          limit: 2
    t.integer    "RVOutflowDoubleChamber",      limit: 2
    t.integer    "RVOutflowDynamicObstruct",    limit: 2
    t.integer    "RVOutflowOtherObstruction",   limit: 2
    t.text_basic "RVOutflowNotes",              limit: 2147483647
    t.integer    "RVOutflowDilated",            limit: 2
    t.varchar    "RVOutflowDilatedDeg",         limit: 50
    t.integer    "RVOutflowOther",              limit: 2
    t.varchar    "RVOutflowOtherDesc",          limit: 50
    t.integer    "LVOutflowTractNormal",        limit: 2
    t.integer    "LVOutflowSubaorticFibroMusc", limit: 2
    t.integer    "LVOutflowTunnel",             limit: 2
    t.integer    "LVOutflowDynamicObstruct",    limit: 2
    t.integer    "LVOutflowOther",              limit: 2
    t.varchar    "LVOutflowOtherDesc",          limit: 50
    t.text_basic "LVOutflowNotes",              limit: 2147483647
    t.integer    "RVNormal",                    limit: 2
    t.integer    "RVChamberSizeNormal",         limit: 2
    t.integer    "RVChamberSizeEnlargedYN",     limit: 2
    t.varchar    "RVChamberSize",               limit: 15
    t.varchar    "RVChamberSizeEnlarged",       limit: 10
    t.integer    "RVChamberSizeHypoYN",         limit: 2
    t.varchar    "RVHypoplastic",               limit: 20
    t.integer    "RVHypertrophy",               limit: 2
    t.varchar    "RVHypertrophyChamber",        limit: 25
    t.varchar    "RVContraction",               limit: 20
    t.integer    "RVOutletChamber",             limit: 2
    t.integer    "RVVentricularMalposition",    limit: 2
    t.integer    "RVVentricularInversion",      limit: 2
    t.text_basic "RVNotes",                     limit: 2147483647
    t.integer    "LVNormal",                    limit: 2
    t.integer    "LVChamberSizeNormal",         limit: 2
    t.integer    "LVChamberSizeEnlargedYN",     limit: 2
    t.varchar    "LVChamberSizeEnlarged",       limit: 15
    t.integer    "LVChamberSizeHypo",           limit: 2
    t.varchar    "LVChamberSizeHypoDesc",       limit: 50
    t.varchar    "LVChamberSizeDegree",         limit: 10
    t.integer    "LVHypertrophy",               limit: 2
    t.varchar    "LVHypertrophyDegree",         limit: 15
    t.varchar    "LVHypertrophyAsymetricDeg",   limit: 10
    t.varchar    "LVContraction",               limit: 20
    t.varchar    "LVContractionIfSegmented",    limit: 20
    t.varchar    "LVCardiomyopathy",            limit: 30
    t.varchar    "LVHypokinesisIfSegLocation",  limit: 30
    t.text_basic "LVNotes",                     limit: 2147483647
    t.varchar    "LVFunction",                  limit: 25
    t.varchar    "LVFunctionDetail",            limit: 25
    t.varchar    "LVSegmentedWallMotion",       limit: 50
    t.varchar    "LVSegWallMotionDetail",       limit: 25
    t.varchar    "RVFunction",                  limit: 50
    t.varchar    "RVWallContractility",         limit: 25
    t.varchar    "RVRVOT",                      limit: 25
    t.integer    "AVOutflowTunnel",             limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID"
  end

  create_table "Ped_Echo_Ventricles3", primary_key: "SS_Event_Ped_Echo_ID", force: :cascade do |t|
    t.integer    "LVSize_Norm",                   limit: 2
    t.integer    "LVSize_Hypo",                   limit: 2
    t.integer    "LVSize_MildHypo",               limit: 2
    t.integer    "LVSize_MildToModHypo",          limit: 2
    t.integer    "LVSize_ModHypo",                limit: 2
    t.integer    "LVSize_ModToSevHypo",           limit: 2
    t.integer    "LVSize_SevHypo",                limit: 2
    t.integer    "LVSize_ApexForming",            limit: 2
    t.integer    "LVSize_NonApexForming",         limit: 2
    t.integer    "LVSize_SlitLike",               limit: 2
    t.integer    "LVSize_MildDil",                limit: 2
    t.integer    "LVSize_MildToModDil",           limit: 2
    t.integer    "LVSize_ModDil",                 limit: 2
    t.integer    "LVSize_ModToSevDil",            limit: 2
    t.integer    "LVSize_SevDil",                 limit: 2
    t.integer    "LVSize_NotAssessed",            limit: 2
    t.integer    "LVSize_NWV",                    limit: 2
    t.integer    "LVAnnomHypertrabeculation",     limit: 2
    t.integer    "MVInflowBlended",               limit: 2
    t.integer    "MVLatTDIBlended",               limit: 2
    t.integer    "MVSeptTDIBlended",              limit: 2
    t.float      "SupCristalVSD_Dimension1"
    t.float      "SupCristalVSD_Dimension2"
    t.float      "SupCristalVSDEffShuntOrifice"
    t.integer    "SupCristalVSDLimitationsSize",  limit: 2
    t.integer    "SupCristalVSDLimitationsShunt", limit: 2
    t.integer    "SupCristalVSDExtension",        limit: 2
    t.varchar    "LVDiastolicFunction",           limit: 30
    t.varchar    "ApicalTrabVSD1Restriction",     limit: 35
    t.varchar    "ApicalTrabVSD2Restriction",     limit: 35
    t.varchar    "PMVSDLVtoRAShunt",              limit: 45
    t.varchar    "SupCristalVSDSize",             limit: 35
    t.varchar    "SupCristalVSDArtOverride",      limit: 25
    t.varchar    "SupCristalVSDRestriction",      limit: 35
    t.text_basic "SupCristalVSDComments",         limit: 2147483647
    t.varchar    "SupCristalVSDShunt",            limit: 50
    t.varchar    "SupCristalVSD",                 limit: 35
    t.text_basic "DblCommVSDComments",            limit: 2147483647
    t.varchar    "AVSD_VSDLVtoRAShunt",           limit: 45
    t.integer    "RestrictiveFilling",            limit: 2
    t.integer    "HypoplasticLV",                 limit: 2
    t.index ["SS_Event_Ped_Echo_ID"], name: "SS_Event_Ped_Echo_ID", unique: true
  end

  create_table "Ped_Echo_Zscores", id: false, force: :cascade do |t|
    t.float "__2DSinotubularJunction"
    t.float "__2DMitralAnnulus2Chamber"
    t.float "__2DArteriesPulmonaryAnnulus"
    t.float "MModeIVSdMax"
    t.float "MModeIVSdMin"
    t.float "MModeLVIDdMax"
    t.float "MModeLVIDdMin"
    t.float "MModeLVPWdMax"
    t.float "MModeLVPWdMin"
    t.float "MModeLVMassMax"
    t.float "MModeLVMassMin"
    t.float "__2DLVIDdMax"
    t.float "__2DLVIDdMin"
    t.float "__2DLVIDsMax"
    t.float "__2DLVIDsMin"
    t.float "LVMass2DMax"
    t.float "LVMass2DMin"
    t.float "__2DAVAreaPlanMax"
    t.float "__2DAVAreaPlanMin"
    t.float "__2DAorticAnnulusMax"
    t.float "__2DAorticAnnulusMin"
    t.float "__2DAorticRootMax"
    t.float "__2DAorticRootMin"
    t.float "__2DSinotubularJunctionMax"
    t.float "__2DSinotubularJunctionMin"
    t.float "__2DAscendingAortaMax"
    t.float "__2DAscendingAortaMin"
    t.float "__2DTransverseArchMax"
    t.float "__2DTransverseArchMin"
    t.float "__2DAorticIsthmusMax"
    t.float "__2DAorticIsthmusMin"
    t.float "LeftMainCoronaryArtery1Max"
    t.float "LeftMainCoronaryArtery1Min"
    t.float "LAD1Max"
    t.float "LAD1Min"
    t.float "RightMainCoronaryArtery1Max"
    t.float "RightMainCoronaryArtery1Min"
    t.float "__2DMPADiameterMax"
    t.float "__2DMPADiameterMin"
    t.float "__2DLPADiameterMax"
    t.float "__2DLPADiameterMin"
    t.float "__2DRPADiameterMax"
    t.float "__2DRPADiameterMin"
    t.float "__2DTricuspidAnnulusMax"
    t.float "__2DTricuspidAnnulusMin"
    t.float "__2DTVAreaPlanMax"
    t.float "__2DTVAreaPlanMin"
    t.float "__2DMitralAnnulusMax"
    t.float "__2DMitralAnnulusMin"
    t.float "__2DMitralAnnulus2ChamberMax"
    t.float "__2DMitralAnnulus2ChamberMin"
    t.float "__2DMVAreaPlanMax"
    t.float "__2DMVAreaPlanMin"
    t.float "__2DPulmonaryAnnulusMax"
    t.float "__2DPulmonaryAnnulusMin"
    t.float "PVAreaPlan2DMax"
    t.float "PVAreaPlan2DMin"
    t.float "PVAreaPlan2D"
    t.float "__2DMitralAnnulus"
    t.float "MVAnnDiamA4C"
    t.float "MVAnnDiamA4CMax"
    t.float "MVAnnDiamA4CMin"
    t.float "RVEDD_sk"
    t.float "IVSd_sk"
    t.float "LVEDD_sk"
    t.float "LVPWd_sk"
    t.float "IVSs_sk"
    t.float "LVESD_sk"
    t.float "AVAnn_sk"
    t.float "PVAnn_sk"
    t.float "MVAnn_sk"
    t.float "TVAnn_sk"
    t.float "RPA_sk"
    t.float "AoSTJ_sk"
    t.float "AscAo_sk"
    t.float "Distal_sk"
    t.float "Isthmus_sk"
    t.float "DescAo_sk"
    t.float "LA_sk"
    t.float "LPA_sk"
    t.float "AoRoot_sk"
  end

  create_table "Report_List", primary_key: "SS_Report_ID", force: :cascade do |t|
    t.integer    "SS_Patient_ID"
    t.integer    "SS_Event_ID"
    t.integer    "SS_Patient_Reports_ID"
    t.varchar    "Title",                      limit: 100
    t.varchar    "Event",                      limit: 50
    t.datetime   "DateofCreation"
    t.datetime   "DateofEvent"
    t.datetime   "DateofFinal"
    t.varchar    "Status",                     limit: 50
    t.varchar    "Created_By",                 limit: 50
    t.varchar    "Signature",                  limit: 50
    t.text_basic "Edit_Log",                   limit: 2147483647
    t.datetime   "TimeOfSave"
    t.datetime   "TimeOfExport"
    t.varchar    "ExportStatus",               limit: 50
    t.float      "Copies"
    t.varchar    "Defer_Status",               limit: 20
    t.integer    "ReportLock",                 limit: 2
    t.datetime   "ReportDateLock"
    t.boolean    "Archived",                                      null: false
    t.boolean    "KeepMissingData",                               null: false
    t.varchar    "ReadPWD",                    limit: 25
    t.varchar    "WritePWD",                   limit: 25
    t.integer    "SSContextID"
    t.varchar    "ContextTable",               limit: 50
    t.datetime   "ContextDate"
    t.boolean    "MultipleReportsAllowed",                        null: false
    t.varchar    "OriginalReportTitle",        limit: 50
    t.integer    "SavBookmarks",               limit: 2
    t.varchar    "Signature_Approved",         limit: 50
    t.varchar    "Signature_Pending_Approval", limit: 50
    t.datetime   "Time_Pending_Approval"
    t.datetime   "Time_Approved"
    t.varchar    "UpdatedBy",                  limit: 50
    t.datetime   "TimeOfUpdate"
    t.index ["SSContextID"], name: "SSContextID"
    t.index ["SS_Event_ID"], name: "SS_Event_ID"
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
    t.index ["SS_Patient_Reports_ID"], name: "SS_Patient_Reports_ID"
  end

  create_table "SSAgentServiceRuleExpressions", primary_key: "SSAgentServiceRuleExpressionID", force: :cascade do |t|
    t.integer "SSAgentServiceRuleID",                 null: false
    t.integer "SSAgentServiceRuleFieldID",            null: false
    t.integer "Sequence",                             null: false
    t.varchar "Operator",                  limit: 20, null: false
    t.varchar "FieldValue",                limit: 50, null: false
    t.varchar "LogicalOperator",           limit: 20
    t.integer "GroupID",                              null: false
    t.index ["GroupID"], name: "GroupID"
    t.index ["SSAgentServiceRuleExpressionID"], name: "SSExpressionID"
    t.index ["SSAgentServiceRuleID", "SSAgentServiceRuleFieldID", "Sequence", "Operator", "FieldValue", "LogicalOperator"], name: "ID_Expressions", unique: true
    t.index ["SSAgentServiceRuleID"], name: "SSRuleID"
  end

  create_table "SSAgentServiceRuleFields", primary_key: "SSAgentServiceRuleFieldID", force: :cascade do |t|
    t.varchar "FieldName", limit: 50
    t.varchar "FieldType", limit: 50
    t.varchar "FieldTag",  limit: 50
    t.index ["FieldName", "FieldType", "FieldTag"], name: "AgentServiceGroupKeys", unique: true
    t.index ["SSAgentServiceRuleFieldID"], name: "SSAgentServiceRuleFieldID"
  end

  create_table "SSAgentServiceRules", primary_key: "SSAgentServiceRuleID", force: :cascade do |t|
    t.varchar "RuleName",     limit: 40, null: false
    t.integer "SSCDScriptID"
    t.varchar "Action",       limit: 50
    t.integer "Sequence",                null: false
    t.boolean "Active",                  null: false
    t.index ["RuleName"], name: "IX_DICOMRules", unique: true
  end

  create_table "SSAlerts", primary_key: ["ModuleName", "Category", "Description", "AlertType"], force: :cascade do |t|
    t.varchar    "ModuleName",  limit: 50,         null: false
    t.varchar    "Category",    limit: 50,         null: false
    t.varchar    "Description", limit: 250,        null: false
    t.varchar    "AlertType",   limit: 50,         null: false
    t.text_basic "Alert",       limit: 2147483647
    t.integer    "Sequence"
  end

  create_table "SSApReport", primary_key: "SS_ApReport_ID", force: :cascade do |t|
    t.varchar "UserNames", limit: 80
    t.varchar "FileName",  limit: 80
  end

  create_table "SSApplicationInfo", primary_key: "SS_Application_ID", force: :cascade do |t|
    t.varchar "Name",           limit: 25
    t.varchar "Abreviation",    limit: 15
    t.integer "ID"
    t.varchar "CaseNum_Prefix", limit: 2
    t.index ["Abreviation"], name: "Application_Abreviation", unique: true
    t.index ["ID"], name: "ID"
  end

  create_table "SSAttributes", primary_key: ["AttributeKey", "Attribute"], force: :cascade do |t|
    t.varchar "AttributeKey",  limit: 255, null: false
    t.integer "Attribute",     limit: 2,   null: false
    t.varchar "AttributeName", limit: 255
    t.varchar "Description",   limit: 255
  end

  create_table "SSAuditLogin", primary_key: "SSAuditLoginID", force: :cascade do |t|
    t.datetime "LoginTime"
    t.varchar  "Workstation",     limit: 50
    t.varchar  "WindowsUserName", limit: 50
    t.varchar  "UserName",        limit: 50
    t.varchar  "Status",          limit: 50
    t.varchar  "Application",     limit: 50
  end

  create_table "SSAuxTables", primary_key: "TableName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "Description",   limit: 50
    t.varchar "Alias",         limit: 8,  null: false
    t.varchar "ParentTable",   limit: 50
    t.varchar "KeyName",       limit: 50
    t.varchar "ParentKeyName", limit: 50
    t.index ["Alias"], name: "Alias", unique: true
  end

  create_table "SSCDFilterCategories", primary_key: "CategoryName", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer "Sequence"
    t.index ["CategoryName"], name: "GroupName", unique: true
  end

  create_table "SSCDFilters", primary_key: ["FilterNamespace", "FilterName"], force: :cascade do |t|
    t.varchar    "FilterNamespace", limit: 50,         null: false
    t.varchar    "FilterName",      limit: 50,         null: false
    t.text_basic "Query",           limit: 2147483647, null: false
    t.varchar    "TableName",       limit: 50,         null: false
    t.text_basic "JetQuery",        limit: 2147483647
    t.text_basic "Description",     limit: 2147483647
    t.integer    "Attributes"
    t.varchar    "ResultScript",    limit: 255
    t.index ["TableName", "FilterName"], name: "TableFilter", unique: true
  end

  create_table "SSCDFiltersJoin", primary_key: ["FilterNamespace", "FilterName", "CategoryName"], force: :cascade do |t|
    t.varchar "FilterNamespace", limit: 50, null: false
    t.varchar "FilterName",      limit: 50, null: false
    t.varchar "CategoryName",    limit: 50, null: false
    t.integer "Sequence"
  end

  create_table "SSCDMapping", primary_key: "SSCDMappingID", force: :cascade do |t|
    t.varchar    "SourceTableName",  limit: 50
    t.varchar    "SourceFieldName",  limit: 40
    t.varchar    "Alias",            limit: 50
    t.integer    "Sequence"
    t.varchar    "DestTableName",    limit: 50
    t.varchar    "DestFieldName",    limit: 50
    t.text_basic "Expression",       limit: 2147483647
    t.varchar    "Action",           limit: 30
    t.varchar    "ReplaceField",     limit: 30
    t.varchar    "ReplaceValue",     limit: 40
    t.varchar    "ReplaceField2",    limit: 30
    t.varchar    "ReplaceValue2",    limit: 40
    t.varchar    "Comment",          limit: 255
    t.integer    "InsertEmptyRows",  limit: 2
    t.varchar    "MappingGroupName", limit: 50
    t.integer    "Overwrite",        limit: 2
    t.index ["SourceTableName", "SourceFieldName", "Alias", "DestTableName", "DestFieldName", "MappingGroupName"], name: "UniqueKey", unique: true
  end

  create_table "SSCDMappingGroup", primary_key: "SSCDMappingGroupID", force: :cascade do |t|
    t.varchar "MappingGroupName", limit: 50
    t.varchar "RootSourceTable",  limit: 50
    t.varchar "RootDestTable",    limit: 50
    t.integer "Attributes"
    t.index ["MappingGroupName"], name: "mappingGroupName", unique: true
  end

  create_table "SSCDMappingTables", primary_key: "SSCDMappingTablesID", force: :cascade do |t|
    t.varchar    "MappingGroup",          limit: 50
    t.varchar    "SourceTable",           limit: 50
    t.varchar    "DestinationTable",      limit: 50
    t.text_basic "SourceExpression",      limit: 2147483647
    t.text_basic "DestinationExpression", limit: 2147483647
    t.text_basic "FilterExpression",      limit: 2147483647
    t.integer    "Attributes"
  end

  create_table "SSCDScripts", primary_key: "SSCDScriptID", force: :cascade do |t|
    t.varchar "ScriptName",   limit: 50
    t.varchar "ScriptGroup",  limit: 50
    t.varchar "DllName",      limit: 50
    t.varchar "FunctionName", limit: 50
    t.varchar "ClassName",    limit: 50
    t.integer "Sequence"
    t.integer "Attributes"
    t.index ["ScriptName", "ScriptGroup"], name: "ScriptNameScriptGroup", unique: true
  end

  create_table "SSCDTasks", primary_key: "TaskName", id: :varchar, limit: 255, force: :cascade do |t|
    t.integer    "Attributes"
    t.text_basic "TaskInfo",   limit: 2147483647
    t.index ["TaskName"], name: "DisplayName"
  end

  create_table "SSCDWorkFlowTasks", primary_key: ["WorkFlowName", "TaskName"], force: :cascade do |t|
    t.varchar    "WorkFlowName", limit: 150,        null: false
    t.varchar    "TaskName",     limit: 255,        null: false
    t.integer    "Sequence",                        null: false
    t.text_basic "TaskSettings", limit: 2147483647
    t.varchar    "DisplayName",  limit: 50
    t.index ["TaskName"], name: "TaskName"
    t.index ["WorkFlowName"], name: "WorkFlowName"
  end

  create_table "SSCDWorkFlows", primary_key: "WorkFlowName", id: :varchar, limit: 150, force: :cascade do |t|
    t.varchar "TableName",   limit: 50
    t.integer "Sequence"
    t.integer "Attributes"
    t.varchar "DisplayName", limit: 50
    t.varchar "ViewName",    limit: 50
    t.index ["WorkFlowName"], name: "Name"
  end

  create_table "SSCaseNumber", primary_key: "NextCaseNumber", force: :cascade do |t|
  end

  create_table "SSChangeLog", primary_key: "SSChangeLogID", force: :cascade do |t|
    t.integer  "PatientKey"
    t.varchar  "ChangeTable", limit: 50
    t.integer  "ChangeKey"
    t.datetime "ChangeTime"
    t.integer  "ChangeType"
    t.integer  "Status",      limit: 2
    t.varchar  "Source",      limit: 50
    t.varchar  "UserName",    limit: 50
    t.index ["ChangeKey"], name: "ChangeKey"
    t.index ["ChangeTable"], name: "ChangeTable"
    t.index ["PatientKey"], name: "PatientKey"
    t.index ["SSChangeLogID"], name: "SSModLogID"
  end

  create_table "SSCodeMappingTemplate", primary_key: "SSCodeMappingTemplate_ID", force: :cascade do |t|
    t.varchar "TemplateName", limit: 255
  end

  create_table "SSCodeMappingTemplateItems", primary_key: "SSCodeMappingTemplateItems_ID", force: :cascade do |t|
    t.integer "SSCodeMappingTemplate_ID"
    t.varchar "SourceTable",              limit: 255
    t.varchar "SourceField",              limit: 255
    t.varchar "DestinationTable",         limit: 255
    t.varchar "DestinationField",         limit: 255
  end

  create_table "SSCoroMapSegments", primary_key: "SSCoroMapSegmentID", force: :cascade do |t|
    t.varchar "Segment",       limit: 50
    t.integer "SegmentType",   limit: 2
    t.varchar "ParentSegment", limit: 50
    t.boolean "Parent",                   null: false
    t.integer "Segment_Order", limit: 2
    t.varchar "MajorArtery",   limit: 50
    t.index ["Segment"], name: "Segment", unique: true
    t.index ["Segment_Order"], name: "SegmentOrder"
  end

  create_table "SSDICOMAERoleDescriptions", primary_key: "AERoleDescription", id: :varchar, limit: 100, force: :cascade do |t|
    t.integer "SSDICOMAERoleDescriptionID", null: false
    t.index ["SSDICOMAERoleDescriptionID"], name: "SSDICOMAERoles_PK", unique: true
  end

  create_table "SSDICOMAERoles", primary_key: ["SSDICOMApplicationEntityID", "SSDICOMAERoleDescriptionID", "AEFunction"], force: :cascade do |t|
    t.boolean "Enabled",                    null: false
    t.integer "SSDICOMApplicationEntityID", null: false
    t.integer "SSDICOMAERoleDescriptionID", null: false
    t.integer "AEFunction",                 null: false
  end

  create_table "SSDICOMAETitleRules", primary_key: ["SSAgentServiceRuleID", "SSDICOMApplicationEntityID"], force: :cascade do |t|
    t.integer "SSAgentServiceRuleID",       null: false
    t.integer "SSDICOMApplicationEntityID", null: false
    t.index ["SSAgentServiceRuleID"], name: "SSDICOMAETRSSAgentServRuleID"
    t.index ["SSDICOMApplicationEntityID"], name: "SSDICOMAETRSSDICOMAppEntityID"
  end

  create_table "SSDICOMApplicationEntities", primary_key: "SSDICOMApplicationEntityID", force: :cascade do |t|
    t.varchar  "AEName",                  limit: 16, null: false
    t.varchar  "AEDescription",           limit: 60
    t.varchar  "AEIPAddress",             limit: 60, null: false
    t.integer  "AEPort",                             null: false
    t.datetime "ModifiedDate"
    t.integer  "QRSSApplicationEntityID"
    t.boolean  "MobileAE",                           null: false
    t.boolean  "NotificationXML",                    null: false
    t.boolean  "PreFetch",                           null: false
    t.varchar  "PreFetchSuffix",          limit: 50
    t.integer  "ForwardPriority"
    t.boolean  "DisableSRParse",                     null: false
    t.boolean  "UpdateStudyInfo",                    null: false
    t.integer  "ApplicationEntityType"
    t.index ["AEName"], name: "AE_Unique", unique: true
  end

  create_table "SSDICOMCMoveJobs", primary_key: "SS_CMoveJobs_ID", force: :cascade do |t|
    t.varchar  "CalledAEName",         limit: 16
    t.integer  "CalledAEID"
    t.varchar  "CallingAEName",        limit: 16
    t.datetime "LastUpdated"
    t.integer  "RequestType"
    t.integer  "NumberOfAttempts"
    t.integer  "Status"
    t.varchar  "StudyUID",             limit: 100
    t.varchar  "WorkstationName",      limit: 50
    t.varchar  "UserID",               limit: 50
    t.varchar  "PatientID",            limit: 50
    t.datetime "StudyDate"
    t.varchar  "Modality",             limit: 10
    t.varchar  "Description",          limit: 160
    t.varchar  "CMoveType",            limit: 50
    t.integer  "SSDICOMPreFetchJobID"
    t.index ["CalledAEName"], name: "IX_CallingAEName"
    t.index ["RequestType"], name: "IX_RequestType"
    t.index ["SSDICOMPreFetchJobID"], name: "SSDICOMPreFetchJobID"
    t.index ["Status"], name: "IX_Status"
    t.index ["StudyUID"], name: "IX_StudyUID"
  end

  create_table "SSDICOMCaching", primary_key: "SSDICOMCachingID", force: :cascade do |t|
    t.varchar "WorkstationName",   limit: 150, null: false
    t.varchar "QueryName",         limit: 50,  null: false
    t.integer "StorageThreshold",              null: false
    t.varchar "JobExecutionTime",  limit: 50,  null: false
    t.varchar "JobRecurranceType", limit: 50,  null: false
    t.boolean "JobEnabled",                    null: false
    t.integer "StorageSize",                   null: false
  end

  create_table "SSDICOMCommitmentRequests", primary_key: "TransactionUID", id: :varchar, limit: 64, force: :cascade do |t|
    t.varchar  "CalledAETitle",    limit: 16
    t.varchar  "CallingAETitle",   limit: 16
    t.datetime "LastUpdated",                 null: false
    t.integer  "RequestType",                 null: false
    t.integer  "NumberOfAttempts",            null: false
    t.integer  "Status",                      null: false
  end

  create_table "SSDICOMCommitmentRqstInstances", primary_key: ["TransactionUID", "ImageUID"], force: :cascade do |t|
    t.varchar "TransactionUID", limit: 64, null: false
    t.varchar "ImageUID",       limit: 64, null: false
    t.integer "StatusSent"
  end

  create_table "SSDICOMEventLog", primary_key: "SSEventLogID", force: :cascade do |t|
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "Source",      limit: 50
    t.varchar    "UserName",    limit: 50
    t.varchar    "Workstation", limit: 50
    t.integer    "EventType"
    t.varchar    "PatientID",   limit: 100
    t.varchar    "PatientName", limit: 100
    t.varchar    "StudyUID",    limit: 100
    t.text_basic "Description", limit: 2147483647
    t.text_basic "Details",     limit: 2147483647
    t.varchar    "DisplayName", limit: 50
    t.index ["PatientID"], name: "PatientID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "SSDICOMFormulaVariables", primary_key: ["MeasurementName", "VariableName"], force: :cascade do |t|
    t.varchar "MeasurementName", limit: 50, null: false
    t.varchar "VariableName",    limit: 50, null: false
    t.varchar "Units",           limit: 25
    t.integer "Sequence",        limit: 2
  end

  create_table "SSDICOMFormulas", primary_key: "MeasurementName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "Formula",        limit: 255
    t.varchar "Units",          limit: 25
    t.varchar "Expression",     limit: 100
    t.varchar "Reference",      limit: 255
    t.varchar "StudyType",      limit: 25
    t.varchar "EventTable",     limit: 30
    t.varchar "Variables",      limit: 255
    t.boolean "FactoryDefined",             null: false
    t.index ["EventTable"], name: "EventTable"
  end

  create_table "SSDICOMForwardAETitles", primary_key: "SSDICOMForwardAETitleID", force: :cascade do |t|
    t.varchar  "CStoreUID",                  limit: 100, null: false
    t.integer  "SSDICOMApplicationEntityID",             null: false
    t.datetime "ModifiedDate",                           null: false
    t.integer  "SSDICOMImageID",                         null: false
    t.index ["CStoreUID"], name: "IX_CStoreUID"
    t.index ["SSDICOMApplicationEntityID"], name: "IX_SSDICOMApplicationEntityID"
    t.index ["SSDICOMImageID"], name: "IX_SSDICOMImageID"
  end

  create_table "SSDICOMForwardQueue", primary_key: "SSDICOMForwardQueueID", force: :cascade do |t|
    t.integer  "SSDICOMImageID",               null: false
    t.datetime "ModifiedDate",                 null: false
    t.integer  "ForwardAttempts",              null: false
    t.boolean  "ForwardCompleted",             null: false
    t.varchar  "CStoreUID",        limit: 100, null: false
    t.varchar  "Description",      limit: 255
    t.integer  "Priority"
    t.datetime "CreatedDate"
    t.index ["CStoreUID", "SSDICOMImageID"], name: "IX_DICOMForwardQueue", unique: true
    t.index ["CStoreUID"], name: "IX_CStoreUID"
    t.index ["ForwardAttempts"], name: "IX_ForwardAttempts"
    t.index ["ForwardCompleted"], name: "IX_ForwardCompleted"
  end

  create_table "SSDICOMGroupDefinition", primary_key: "SSDICOMGroupDefinitionID", force: :cascade do |t|
    t.varchar "GroupName", limit: 50, null: false
    t.index ["GroupName"], name: "SSDICOMGroupDefinitionGroup", unique: true
  end

  create_table "SSDICOMImageMask", primary_key: "SS_DicomImageMask_ID", force: :cascade do |t|
    t.varchar "MaskName", limit: 50
    t.index ["SS_DicomImageMask_ID"], name: "MaskId", unique: true
  end

  create_table "SSDICOMInviaMapping", primary_key: "SSDICOMInviaMappingID", force: :cascade do |t|
    t.varchar "InviaMeasurementName", limit: 150
    t.varchar "InviaXMLTreeLocation", limit: 150
    t.varchar "MeasurementName",      limit: 150
    t.varchar "Script",               limit: 150
    t.varchar "ElementGroupName",     limit: 255
    t.index ["InviaMeasurementName"], name: "IX_InviaMeasurementName", unique: true
    t.index ["MeasurementName"], name: "IX_MeasurementName", unique: true
  end

  create_table "SSDICOMLicensing", primary_key: "SSDICOMLicenseID", force: :cascade do |t|
    t.varchar  "MachineName",       limit: 50,  null: false
    t.varchar  "MachineID",         limit: 100
    t.boolean  "LicenseState",                  null: false
    t.datetime "ExpirationDate",                null: false
    t.integer  "LicensedFunctions"
    t.string   "LicenseToken"
  end

  create_table "SSDICOMMaskROI", primary_key: "SS_DicomMaskRoll_ID", force: :cascade do |t|
    t.float   "StartPointX"
    t.float   "StartPointY"
    t.float   "EndPointX"
    t.float   "EndPointY"
    t.integer "SS_DicomImageMask_ID"
    t.index ["SS_DicomImageMask_ID"], name: "MaskId"
    t.index ["SS_DicomMaskRoll_ID"], name: "ROIId"
  end

  create_table "SSDICOMMeasurementDefGroup", primary_key: ["MeasurementName", "GroupName"], force: :cascade do |t|
    t.varchar "MeasurementName", limit: 50, null: false
    t.integer "Sequence",                   null: false
    t.varchar "GroupName",       limit: 50, null: false
  end

  create_table "SSDICOMMeasurementDefinition", primary_key: "MeasurementName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "MeasurementLabel",      limit: 50
    t.varchar "TreeRoot",              limit: 255
    t.varchar "Derivation",            limit: 50
    t.varchar "DefaultSelectionOrder", limit: 100
    t.varchar "Tool",                  limit: 30
    t.varchar "StandardTemplateLabel", limit: 30
    t.varchar "MeasurementType",       limit: 20
    t.varchar "StudyType",             limit: 100
    t.integer "DisplayPrecision"
    t.varchar "DisplayUnit",           limit: 50
    t.varchar "EventTable",            limit: 30
    t.varchar "AllMeasurementsTable",  limit: 30
    t.varchar "ReportingField",        limit: 60
    t.integer "IsAbsolute",            limit: 2
    t.varchar "ReportingUnit",         limit: 50
    t.boolean "Enabled",                           null: false
    t.boolean "FactoryDefined",                    null: false
    t.varchar "RangeCaption",          limit: 255
    t.varchar "RangeExpression",       limit: 255
    t.boolean "QuickMenu",                         null: false
    t.index ["Enabled"], name: "IX_Enabled"
    t.index ["EventTable"], name: "IX_EventTable"
    t.index ["MeasurementLabel", "StudyType"], name: "IX_UniqueKeyLabelType", unique: true
    t.index ["MeasurementName", "StudyType"], name: "IX_UniqueKeyNameType", unique: true
    t.index ["StudyType"], name: "IX_StudyType"
  end

  create_table "SSDICOMMeasurementFieldMapping", primary_key: ["MeasurementName", "ReportingTable", "Field1", "Field2"], force: :cascade do |t|
    t.varchar "MeasurementName", limit: 50,  null: false
    t.varchar "ReportingTable",  limit: 255, null: false
    t.varchar "Field1",          limit: 255, null: false
    t.varchar "Field2",          limit: 255, null: false
    t.varchar "Value",           limit: 255, null: false
  end

  create_table "SSDICOMMeasurementFilterGroup", primary_key: ["MeasurementGroup", "UserProperty"], force: :cascade do |t|
    t.varchar "MeasurementGroup", limit: 50, null: false
    t.varchar "UserProperty",     limit: 50, null: false
    t.varchar "StudyType",        limit: 50
    t.integer "Sequence"
  end

  create_table "SSDICOMMeasurementFilterGroupElements", primary_key: ["MeasurementGroup", "MeasurementName"], force: :cascade do |t|
    t.varchar "MeasurementGroup", limit: 50, null: false
    t.varchar "MeasurementName",  limit: 50, null: false
  end

  create_table "SSDICOMMigrationPendings", primary_key: "SSDICOMMigrationPendingID", force: :cascade do |t|
    t.integer  "StudyUID",                                                              null: false
    t.integer  "SeriesUID",                           default: 0,                       null: false
    t.integer  "ImageUID",                            default: 0,                       null: false
    t.text     "Name",             limit: 2147483647
    t.text     "PatientID",        limit: 2147483647
    t.integer  "FrameCount",                          default: 0,                       null: false
    t.integer  "ImageSize",                           default: 0,                       null: false
    t.integer  "Volume",                              default: 0,                       null: false
    t.text     "FileName",         limit: 2147483647
    t.text     "AETitle",          limit: 2147483647
    t.datetime "ArchiveTimeUTC",                      default: '01-01-1900 00:00:00.0'
    t.datetime "ProcessedTimeUTC",                    default: '01-01-1900 00:00:00.0'
    t.text     "Status",           limit: 2147483647
    t.text     "Description",      limit: 2147483647
    t.datetime "StudyTime"
  end

  create_table "SSDICOMModalities", primary_key: "SSModalityID", force: :cascade do |t|
    t.varchar "ModalityType",        limit: 16, null: false
    t.varchar "ModalityDescription", limit: 60
    t.index ["ModalityType"], name: "IX_Modalities", unique: true
  end

  create_table "SSDICOMPendingImages", primary_key: "SSDICOMPendingImagesID", force: :cascade do |t|
    t.datetime    "ArchiveTimeUTC",                      null: false
    t.varchar     "StudyUID",         limit: 100,        null: false
    t.varchar     "SeriesUID",        limit: 100,        null: false
    t.varchar     "ImageUID",         limit: 100,        null: false
    t.integer     "ImageStatus",                         null: false
    t.integer     "ImageSize"
    t.datetime    "ProcessedTimeUTC"
    t.varchar     "ProcessID",        limit: 100
    t.varchar     "SourceAETitle",    limit: 16
    t.varchar     "OriginalVolume",   limit: 255
    t.varchar     "SubFolder",        limit: 255
    t.varchar     "FullPath",         limit: 255
    t.varchar_max "Description",      limit: 2147483647
    t.index ["ImageUID"], name: "ImageUID"
    t.index ["ProcessID"], name: "ProcessID"
    t.index ["SeriesUID"], name: "SeriesUID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "SSDICOMPreFetchJobs", primary_key: "SSDICOMPreFetchJobID", force: :cascade do |t|
    t.integer  "SS_Patient_ID"
    t.datetime "ModifiedDate"
    t.integer  "Status"
    t.varchar  "Description",        limit: 50
    t.varchar  "Modality",           limit: 50
    t.varchar  "PreFetchType",       limit: 50
    t.varchar  "StudyUID",           limit: 100
    t.integer  "SS_Admit_Orders_ID"
    t.integer  "ScheduleID"
    t.index ["SS_Admit_Orders_ID"], name: "SS_Admit_Orders_ID"
    t.index ["ScheduleID"], name: "ScheduleID"
    t.index ["StudyUID"], name: "StudyUID"
  end

  create_table "SSDICOMSRJobs", primary_key: "InstanceUID", id: :varchar, limit: 64, force: :cascade do |t|
    t.datetime "LastUpdated",                   null: false
    t.integer  "NumberOfAttempts",              null: false
    t.integer  "Status",                        null: false
    t.varchar  "SeriesUID",         limit: 64,  null: false
    t.varchar  "StudyUID",          limit: 64,  null: false
    t.varchar  "Description",       limit: 150
    t.boolean  "StoreDiscreteData"
    t.index ["Status"], name: "IX_Status"
  end

  create_table "SSDICOMSRMapping", primary_key: "SSDICOMSRMappingID", force: :cascade do |t|
    t.varchar "SRMeasurementName",      limit: 64
    t.varchar "AnatomicSite",           limit: 64
    t.varchar "CardiacPoint",           limit: 64
    t.varchar "Derivation",             limit: 64
    t.varchar "FindingSite",            limit: 64
    t.varchar "FlowDirection",          limit: 64
    t.varchar "ImageMode",              limit: 64
    t.varchar "ImageView",              limit: 64
    t.varchar "Method",                 limit: 64
    t.varchar "Respiration",            limit: 64
    t.varchar "TopographicalModifier",  limit: 64
    t.varchar "Laterality",             limit: 64
    t.varchar "VesselBranch",           limit: 64
    t.varchar "EchoMeasurementName",    limit: 50
    t.varchar "PvdMeasurementName",     limit: 50
    t.varchar "PedEchoMeasurementName", limit: 50
    t.boolean "Ignore"
    t.varchar "Comments",               limit: 255
    t.boolean "FactoryDefined",                     null: false
    t.varchar "IndexType",              limit: 40
    t.varchar "Disk",                   limit: 20
    t.index ["SRMeasurementName", "AnatomicSite", "CardiacPoint", "Derivation", "FindingSite", "FlowDirection", "ImageMode", "ImageView", "Method", "Respiration", "TopographicalModifier", "Laterality", "VesselBranch", "IndexType", "Disk"], name: "IX_UniqueKey", unique: true
  end

  create_table "SSDICOMSRSchemes", primary_key: "CodingScheme", id: :varchar, limit: 64, force: :cascade do |t|
    t.boolean "enabled", null: false
  end

  create_table "SSDICOMSession", primary_key: "SSDICOMSessionID", force: :cascade do |t|
    t.varchar  "Username",           limit: 20,  null: false
    t.varchar  "SessionToken",       limit: 255, null: false
    t.datetime "SessionStartedTime",             null: false
    t.datetime "SessionRefreshTime",             null: false
  end

  create_table "SSDICOMStudyTypes", primary_key: "SSDICOMStudyTypeID", force: :cascade do |t|
    t.varchar "StudyType",     limit: 50, null: false
    t.varchar "StudyTypeDesc", limit: 64
    t.index ["StudyTypeDesc"], name: "StudyTypeDesc", unique: true
  end

  create_table "SSDashboardLayout", primary_key: "DashboardName", id: :varchar, limit: 200, force: :cascade do |t|
    t.varchar    "ModuleName", limit: 50
    t.text_basic "XMLLayout",  limit: 2147483647
    t.boolean    "EditMode",                      null: false
  end

  create_table "SSDashboardWidgetTemplates", primary_key: ["ModuleName", "Name"], force: :cascade do |t|
    t.varchar    "ModuleName", limit: 50,         null: false
    t.varchar    "Name",       limit: 100,        null: false
    t.integer    "WidgetType"
    t.varchar    "TableName",  limit: 50
    t.varchar    "FieldName",  limit: 50
    t.varchar    "ZVersion",   limit: 50
    t.varchar    "TableName2", limit: 50
    t.varchar    "FieldName2", limit: 50
    t.varchar    "ZVersion2",  limit: 50
    t.text_basic "SQLQuery",   limit: 2147483647
    t.text_basic "XMLLayout",  limit: 2147483647
  end

  create_table "SSDashboardWidgets", primary_key: ["DashboardName", "WidgetName"], force: :cascade do |t|
    t.varchar    "DashboardName",     limit: 200,        null: false
    t.varchar    "WidgetName",        limit: 50,         null: false
    t.integer    "Sequence"
    t.varchar    "ModuleName",        limit: 50
    t.integer    "WidgetType"
    t.varchar    "TableName",         limit: 50
    t.varchar    "FieldName",         limit: 50
    t.varchar    "ZVersion",          limit: 50
    t.varchar    "TableName2",        limit: 50
    t.varchar    "FieldName2",        limit: 50
    t.varchar    "ZVersion2",         limit: 50
    t.varchar    "Description",       limit: 100
    t.text_basic "SQLQuery",          limit: 2147483647
    t.text_basic "XMLLayout",         limit: 2147483647
    t.boolean    "ExcludeFromReport",                    null: false
  end

  create_table "SSDeferredReportRules", primary_key: "SSDeferredReportsID", force: :cascade do |t|
    t.integer    "Sequence",     limit: 2
    t.varchar    "Event",        limit: 50
    t.varchar    "Workstation",  limit: 25
    t.text_basic "SQL",          limit: 2147483647
    t.text_basic "SQLJet",       limit: 2147483647
    t.varchar    "OutputDevice", limit: 80
  end

  create_table "SSDeleteFieldData", primary_key: ["ModuleName", "TableName", "TabCaption"], force: :cascade do |t|
    t.varchar    "ModuleName", limit: 50,         null: false
    t.varchar    "TableName",  limit: 50,         null: false
    t.text_basic "FieldName",  limit: 2147483647
    t.text_basic "Exclude",    limit: 2147483647
    t.varchar    "TabCaption", limit: 50,         null: false
    t.index ["ModuleName"], name: "IX_SSDeleteFieldData"
  end

  create_table "SSDocumentParagraphs", primary_key: ["ParagraphGroup", "ParagraphName"], force: :cascade do |t|
    t.integer "SSDocumentParagraphsID",             null: false
    t.varchar "ParagraphGroup",         limit: 255, null: false
    t.varchar "ParagraphName",          limit: 100, null: false
    t.varchar "Header",                 limit: 255
    t.integer "Sequence",               limit: 2
    t.varchar "TableName",              limit: 100
    t.varchar "ExternalCode",           limit: 255
    t.varchar "Method",                 limit: 255
    t.varchar "CriteriaExpression",     limit: 100
    t.varchar "Expression",             limit: 100
    t.integer "Attributes"
    t.index ["ExternalCode"], name: "ExternalCode"
    t.index ["ParagraphName"], name: "ParagraphName", unique: true
    t.index ["SSDocumentParagraphsID"], name: "SSDocumentParagraphsID"
  end

  create_table "SSDocumentParagraphsJoin", primary_key: ["ParagraphGroup", "ParagraphName", "ParentParagraphGroup", "ParentParagraphName"], force: :cascade do |t|
    t.integer "SSParagraphsJoinID",               null: false
    t.varchar "ParagraphGroup",       limit: 255, null: false
    t.varchar "ParagraphName",        limit: 255, null: false
    t.varchar "ParentParagraphGroup", limit: 255, null: false
    t.varchar "ParentParagraphName",  limit: 255, null: false
    t.integer "Sequence",             limit: 2
    t.integer "Attributes"
    t.index ["SSParagraphsJoinID"], name: "SSParagraphsJoinID"
  end

  create_table "SSDocumentSentences", primary_key: ["SentenceGroup", "SentenceName"], force: :cascade do |t|
    t.integer "SSDocumentSentencesID",             null: false
    t.varchar "SentenceGroup",         limit: 255, null: false
    t.varchar "SentenceName",          limit: 255, null: false
    t.integer "Sequence",              limit: 2
    t.varchar "TableName",             limit: 100
    t.varchar "ExternalCode",          limit: 255
    t.varchar "Method",                limit: 255
    t.varchar "CriteriaExpression",    limit: 100
    t.varchar "Expression",            limit: 100
    t.integer "Attributes"
    t.index ["ExternalCode"], name: "ExternalCode"
    t.index ["SSDocumentSentencesID"], name: "SSDocumentSentencesID"
  end

  create_table "SSDocumentSentencesJoin", primary_key: ["SentenceGroup", "SentenceName", "ParentParagraphGroup", "ParentParagraphName"], force: :cascade do |t|
    t.integer "SSParagraphsJoinID",               null: false
    t.varchar "SentenceGroup",        limit: 255, null: false
    t.varchar "SentenceName",         limit: 255, null: false
    t.varchar "ParentParagraphGroup", limit: 255, null: false
    t.varchar "ParentParagraphName",  limit: 255, null: false
    t.integer "Sequence",             limit: 2
    t.integer "Attributes"
    t.index ["SSParagraphsJoinID"], name: "SSParagraphsJoinID"
  end

  create_table "SSDocumentTableFields", primary_key: ["DocumentGroup", "DocumentName", "TableName", "FieldName"], force: :cascade do |t|
    t.integer "SSDocumentTableFieldsID",             null: false
    t.varchar "DocumentGroup",           limit: 255, null: false
    t.varchar "DocumentName",            limit: 255, null: false
    t.varchar "TableName",               limit: 255, null: false
    t.varchar "FieldName",               limit: 255, null: false
  end

  create_table "SSDocumentsMonitor", primary_key: ["ParagraphGroup", "ParagraphName", "TableName", "FieldName"], force: :cascade do |t|
    t.integer "SSDocumentMonitorID",             null: false
    t.varchar "ParagraphGroup",      limit: 255, null: false
    t.varchar "ParagraphName",       limit: 255, null: false
    t.varchar "TableName",           limit: 255, null: false
    t.varchar "FieldName",           limit: 255, null: false
    t.integer "Attributes"
    t.index ["SSDocumentMonitorID"], name: "SSFindingsMonitorID"
  end

  create_table "SSDrillDowns", primary_key: "DrillDownName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "TableName", limit: 50
    t.varchar "KeyField",  limit: 50
    t.varchar "FormName",  limit: 50
    t.index ["KeyField"], name: "KeyField"
  end

  create_table "SSEvals", primary_key: "SSEvalsID", force: :cascade do |t|
    t.varchar "TableName",  limit: 50
    t.varchar "FieldName",  limit: 50
    t.varchar "Expression", limit: 255
    t.integer "Sequence",   limit: 2
    t.index ["TableName", "FieldName", "Expression"], name: "LookupTableField"
  end

  create_table "SSEvalsReplace", primary_key: "SSEvalsReplaceID", force: :cascade do |t|
    t.integer "SSEvalsID"
    t.varchar "ReplaceTable", limit: 50
    t.varchar "ReplaceField", limit: 50
    t.varchar "ReplaceValue", limit: 255
    t.index ["SSEvalsID", "ReplaceTable", "ReplaceField"], name: "ssreplaceIndexOne", unique: true
  end

  create_table "SSEventDataLog", primary_key: "SSEventDataLogID", force: :cascade do |t|
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "Source",      limit: 50
    t.varchar    "UserName",    limit: 50
    t.varchar    "Workstation", limit: 50
    t.integer    "EventType"
    t.varchar    "Action",      limit: 50
    t.integer    "SSPatientID"
    t.varchar    "PatientID",   limit: 50
    t.varchar    "TableName",   limit: 50
    t.integer    "KeyValue"
    t.varchar    "Description", limit: 255
    t.varchar    "DisplayName", limit: 50
    t.text_basic "Details",     limit: 2147483647
  end

  create_table "SSEventLog", primary_key: "SSEventLogID", force: :cascade do |t|
    t.datetime   "EventDate"
    t.datetime   "EventTime"
    t.varchar    "Source",      limit: 50
    t.varchar    "UserName",    limit: 50
    t.varchar    "Workstation", limit: 50
    t.integer    "EventType"
    t.varchar    "Description", limit: 1000
    t.varchar    "DisplayName", limit: 50
    t.text_basic "Details",     limit: 2147483647
  end

  create_table "SSExpressions", primary_key: "ExpressionName", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer    "SSExpressions_ID",                    null: false
    t.varchar    "Expression",       limit: 255
    t.integer    "Flags"
    t.varchar    "GroupName",        limit: 50
    t.integer    "Attributes"
    t.text_basic "ExpressionText",   limit: 2147483647
    t.index ["SSExpressions_ID"], name: "ExpressionID", unique: true
  end

  create_table "SSFieldTriggerJoin", primary_key: ["TriggerSetName", "TriggerName"], force: :cascade do |t|
    t.varchar "TriggerSetName", limit: 100, null: false
    t.varchar "TriggerName",    limit: 100, null: false
    t.integer "Sequence",       limit: 2
  end

  create_table "SSFieldTriggerSets", primary_key: "TriggerSetName", id: :varchar, limit: 100, force: :cascade do |t|
    t.varchar "GroupName", limit: 100
  end

  create_table "SSFieldTriggerTypes", primary_key: "TypeName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "AssemblyName", limit: 100
    t.varchar "NameSpace",    limit: 100
    t.varchar "FriendlyName", limit: 50
  end

  create_table "SSFieldTriggers", primary_key: "TriggerName", id: :varchar, limit: 100, force: :cascade do |t|
    t.varchar    "GroupName",          limit: 50
    t.text_basic "CriteriaExpression", limit: 2147483647
    t.text_basic "InputExpression",    limit: 2147483647
    t.varchar    "TriggerTypeName",    limit: 50
    t.text_basic "ProcessInfo",        limit: 2147483647
  end

  create_table "SSForms", primary_key: "FormName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar    "Caption",     limit: 50
    t.varchar    "FileName",    limit: 50
    t.text_basic "SQL",         limit: 2147483647
    t.integer    "FormStyle",   limit: 2
    t.varchar    "MasterTable", limit: 50
    t.varchar    "TableList",   limit: 255
    t.index ["FileName"], name: "FileName", unique: true
  end

  create_table "SSHTML", primary_key: "SS_HTML_ID", force: :cascade do |t|
    t.varchar    "QueryTitle",     limit: 50
    t.text_basic "SQLJet",         limit: 2147483647
    t.text_basic "SQL",            limit: 2147483647
    t.varchar    "AccessGroup",    limit: 50
    t.integer    "Sequence",       limit: 2
    t.varchar    "Template",       limit: 50
    t.varchar    "Module",         limit: 50
    t.boolean    "AllowSelectAll",                    null: false
    t.index ["QueryTitle", "Template"], name: "UniqueKey", unique: true
  end

  create_table "SSLookupQueries", primary_key: ["TableName", "FieldName"], force: :cascade do |t|
    t.varchar "TableName",         limit: 100, null: false
    t.varchar "FieldName",         limit: 100, null: false
    t.varchar "ExpressionName",    limit: 100, null: false
    t.varchar "ExpressionNameJet", limit: 100, null: false
  end

  create_table "SSLookupTree", primary_key: "SS_SelSetTree_ID", force: :cascade do |t|
    t.varchar "KeyField",               limit: 25,  null: false
    t.varchar "LookupTable",            limit: 50
    t.varchar "TreeTitle",              limit: 50
    t.varchar "TreeViewList",           limit: 255
    t.varchar "DetailList",             limit: 255
    t.varchar "DetailHeaders",          limit: 255
    t.varchar "DetailWidths",           limit: 255
    t.varchar "ReplaceList",            limit: 255
    t.varchar "SortOrder",              limit: 255
    t.varchar "UniqueLookup",           limit: 250
    t.varchar "LUTableKeyFieldName",    limit: 50
    t.varchar "GroupFieldName",         limit: 50
    t.varchar "GroupExpressionName",    limit: 50
    t.varchar "GroupExpressionNameJet", limit: 50
    t.index ["KeyField"], name: "KeyField", unique: true
  end

  create_table "SSMeasurementViewFields", primary_key: ["ViewName", "Category", "SubCategory", "SubCategory2", "SubCategory3", "MeasurementName"], force: :cascade do |t|
    t.varchar "ViewName",        limit: 50,  null: false
    t.varchar "Category",        limit: 50,  null: false
    t.varchar "SubCategory",     limit: 50,  null: false
    t.varchar "SubCategory2",    limit: 50,  null: false
    t.varchar "SubCategory3",    limit: 50,  null: false
    t.varchar "MeasurementName", limit: 50,  null: false
    t.integer "Sequence",        limit: 2
    t.varchar "RangeExpression", limit: 255
    t.varchar "RangeCaption",    limit: 255
    t.index ["ViewName"], name: "ViewName"
  end

  create_table "SSMeasurementViews", primary_key: ["ViewName", "Category", "SubCategory", "SubCategory2", "SubCategory3"], force: :cascade do |t|
    t.varchar "ViewName",     limit: 50, null: false
    t.varchar "Category",     limit: 50, null: false
    t.varchar "SubCategory",  limit: 50, null: false
    t.varchar "SubCategory2", limit: 50, null: false
    t.varchar "SubCategory3", limit: 50, null: false
    t.integer "Sequence",     limit: 2
  end

  create_table "SSMessaging", primary_key: "SS_Message_ID", force: :cascade do |t|
    t.varchar    "ThreadID",        limit: 50
    t.varchar    "UserName",        limit: 255
    t.varchar    "WorkstationName", limit: 255
    t.text_basic "Message",         limit: 2147483647
    t.integer    "MessageType",     limit: 2
    t.index ["SS_Message_ID"], name: "ThreadID"
    t.index ["ThreadID"], name: "ThreadID1"
  end

  create_table "SSObjectTypePrivileges", primary_key: ["ObjectType", "Privilege"], force: :cascade do |t|
    t.varchar "ObjectType",    limit: 50,  null: false
    t.integer "Privilege",                 null: false
    t.varchar "PrivilegeName", limit: 50
    t.varchar "Description",   limit: 255
    t.index ["ObjectType"], name: "SSObjectTypeFlagsObjectType"
  end

  create_table "SSObjectTypes", primary_key: "ObjectType", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "Description", limit: 255
    t.varchar "Application", limit: 50
    t.index ["Application"], name: "Application"
  end

  create_table "SSObjects", primary_key: ["ObjectType", "ObjectKey"], force: :cascade do |t|
    t.varchar "ObjectType", limit: 50,  null: false
    t.varchar "ObjectKey",  limit: 255, null: false
    t.varchar "ObjectName", limit: 255
  end

  create_table "SSPatientSummary", primary_key: "SS_PatientSummary_ID", force: :cascade do |t|
    t.varchar    "SummaryMode",             limit: 50
    t.boolean    "Exclude",                                    null: false
    t.integer    "SequenceNumber",          limit: 2
    t.varchar    "EventName",               limit: 50
    t.boolean    "CreateHeader",                               null: false
    t.varchar    "SectionTitle",            limit: 50
    t.text_basic "SQL",                     limit: 2147483647
    t.text_basic "SQLJet",                  limit: 2147483647
    t.text_basic "HTMLText",                limit: 2147483647
    t.varchar    "ConcatenateCharacter",    limit: 10
    t.varchar    "FieldSeparatorCharacter", limit: 10
    t.varchar    "ReplaceField",            limit: 50
    t.varchar    "DisplayView",             limit: 50
  end

  create_table "SSPersonnelFieldAssociations", primary_key: "SS_SSPersonnelFieldAssociations_ID", force: :cascade do |t|
    t.varchar "PersonnelNameTable",    limit: 50
    t.varchar "PersonnelNameField",    limit: 50
    t.varchar "PersonnelNumberField",  limit: 50
    t.varchar "LookupResolutionField", limit: 50
    t.varchar "PresentationFilter",    limit: 50
  end

  create_table "SSPicklistLinks", primary_key: "SSPicklistLinkID", force: :cascade do |t|
    t.integer "SS_User_ID"
    t.integer "SS_NoteID"
    t.varchar "NoteLabel",  limit: 50
    t.integer "Sequence"
    t.index ["SS_User_ID"], name: "SS_User_ID"
  end

  create_table "SSPluginGroups", primary_key: "GroupName", id: :varchar, limit: 255, force: :cascade do |t|
    t.integer "Sequence"
  end

  create_table "SSPlugins", primary_key: "PluginName", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer    "Type"
    t.varchar    "Command",    limit: 255
    t.varchar    "ClassName",  limit: 255
    t.varchar    "MethodName", limit: 255
    t.varchar    "Parameters", limit: 255
    t.varchar    "Caption",    limit: 50
    t.varchar    "Icon",       limit: 255
    t.integer    "Attributes"
    t.text_basic "ConfigInfo", limit: 2147483647
  end

  create_table "SSPluginsJoin", primary_key: ["GroupName", "PluginName"], force: :cascade do |t|
    t.varchar "GroupName",  limit: 50, null: false
    t.varchar "PluginName", limit: 50, null: false
    t.integer "Sequence"
    t.index ["PluginName"], name: "SSPlugInsID"
  end

  create_table "SSProcedureTechniqueLinks", primary_key: "SSProcedureTechniqueLinksID", force: :cascade do |t|
    t.integer "SS_User_ID"
    t.varchar "ProcedureName", limit: 50
    t.varchar "PicklistNotes", limit: 50
    t.index ["SS_User_ID"], name: "SS_User_ID"
  end

  create_table "SSQueries", primary_key: "QueryName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar    "Description", limit: 250
    t.text_basic "SQL",         limit: 2147483647
    t.text_basic "SQLJet",      limit: 2147483647
    t.integer    "Attributes"
    t.varchar    "Category",    limit: 25
    t.integer    "Sequence"
  end

  create_table "SSREMonitor", primary_key: ["ModuleName", "MonitorTableName", "ScriptName"], force: :cascade do |t|
    t.varchar    "ModuleName",          limit: 50,         null: false
    t.varchar    "MonitorTableName",    limit: 50,         null: false
    t.varchar    "ScriptName",          limit: 100,        null: false
    t.varchar    "ScriptTableNameList", limit: 250
    t.text_basic "FieldList",           limit: 2147483647
    t.varchar    "WorkflowNameList",    limit: 100
  end

  create_table "SSRETemplates", primary_key: ["ModuleName", "TemplateName", "TableName", "FieldName", "ID1"], force: :cascade do |t|
    t.varchar "ModuleName",      limit: 50,  null: false
    t.varchar "TemplateName",    limit: 100, null: false
    t.varchar "TableName",       limit: 50,  null: false
    t.varchar "FieldName",       limit: 50,  null: false
    t.varchar "ID1",             limit: 100, null: false
    t.varchar "FieldValue",      limit: 255
    t.integer "Field_Type_Code", limit: 2
  end

  create_table "SSRecordLinkTypes", primary_key: ["SSRecordLinkTypesID", "LinkType"], force: :cascade do |t|
    t.integer    "SSRecordLinkTypesID",                    null: false
    t.varchar    "LinkType",            limit: 50,         null: false
    t.varchar    "PrimaryTable",        limit: 50
    t.varchar    "SecondaryTable",      limit: 50
    t.varchar    "Description",         limit: 250
    t.text_basic "PrimaryColumns",      limit: 2147483647
    t.text_basic "SecondaryColumns",    limit: 2147483647
    t.varchar    "ViewString",          limit: 255
    t.integer    "Attributes",          limit: 2
    t.index ["LinkType"], name: "LinkType", unique: true
  end

  create_table "SSRecordLinks", primary_key: "SSRecordLinksID", force: :cascade do |t|
    t.integer    "SS_Patient_ID1",                       null: false
    t.varchar    "PrimaryTableName1", limit: 50,         null: false
    t.integer    "PrimaryKeyValue1",                     null: false
    t.integer    "SS_Patient_ID2",                       null: false
    t.varchar    "PrimaryTableName2", limit: 50,         null: false
    t.integer    "PrimaryKeyValue2",                     null: false
    t.varchar    "LinkType",          limit: 50
    t.varchar    "Description",       limit: 250
    t.integer    "Attributes"
    t.text_basic "Comments",          limit: 2147483647
    t.index ["LinkType"], name: "SSRecordLinksLinkType"
  end

  create_table "SSRecordStatus", primary_key: "SSRecordStatusID", force: :cascade do |t|
    t.integer  "KeyValue"
    t.varchar  "TableName",       limit: 50
    t.integer  "SS_User_ID"
    t.datetime "Date"
    t.datetime "Time"
    t.integer  "Status",          limit: 2
    t.varchar  "WorkstationName", limit: 50
    t.varchar  "UserName",        limit: 50
    t.datetime "StatusTime"
    t.varchar  "ContextId",       limit: 50
    t.index ["ContextId"], name: "ContextId"
    t.index ["SSRecordStatusID"], name: "SSRecordStatusID"
    t.index ["SS_User_ID"], name: "SS_User_ID"
    t.index ["TableName", "KeyValue"], name: "RecordKey"
  end

  create_table "SSRelations", primary_key: ["RelationName", "KeyName", "ForeignKeyName"], force: :cascade do |t|
    t.varchar "RelationName",     limit: 120, null: false
    t.varchar "TableName",        limit: 50
    t.varchar "KeyName",          limit: 50,  null: false
    t.varchar "ForeignTableName", limit: 50
    t.varchar "ForeignKeyName",   limit: 50,  null: false
    t.integer "Attributes"
    t.integer "Sequence"
    t.index ["ForeignTableName"], name: "ForeignTableName"
    t.index ["TableName"], name: "TableName"
  end

  create_table "SSReportConsoleFavorites", primary_key: ["SS_Stats_ID", "SSUserName"], force: :cascade do |t|
    t.integer "SS_Stats_ID",             null: false
    t.varchar "SSUserName",  limit: 255, null: false
  end

  create_table "SSReportEditorTemplates", primary_key: ["ModuleName", "TemplateName", "TableName", "FieldName"], force: :cascade do |t|
    t.varchar "ModuleName",      limit: 50,  null: false
    t.varchar "TemplateName",    limit: 50,  null: false
    t.varchar "TableName",       limit: 50,  null: false
    t.varchar "FieldName",       limit: 50,  null: false
    t.varchar "FieldValue",      limit: 255
    t.integer "Field_Type_Code", limit: 2
  end

  create_table "SSRulesCodeMapping", primary_key: "SSRulesCodeMapping_ID", force: :cascade do |t|
    t.integer "Rule_ID",                     null: false
    t.varchar "SourceTable",      limit: 50
    t.varchar "SourceField",      limit: 50
    t.varchar "DestinationTable", limit: 50
    t.varchar "DestinationField", limit: 50
    t.index ["Rule_ID"], name: "Rule_ID"
  end

  create_table "SSScripts", primary_key: ["TableName", "Prompt"], force: :cascade do |t|
    t.integer "SS_Scripts_ID",             null: false
    t.integer "Sequence"
    t.varchar "TableName",     limit: 50,  null: false
    t.varchar "Prompt",        limit: 50,  null: false
    t.varchar "ScriptCommand", limit: 255
    t.index ["SS_Scripts_ID"], name: "SS_Scripts_ID", unique: true
  end

  create_table "SSScriptsViewLink", primary_key: ["ViewName", "SS_Scripts_ID"], force: :cascade do |t|
    t.integer "SS_ScriptsView_ID",            null: false
    t.integer "Sequence"
    t.varchar "ViewName",          limit: 50, null: false
    t.integer "SS_Scripts_ID",                null: false
    t.index ["SS_ScriptsView_ID"], name: "SS_ScriptsView_ID", unique: true
  end

  create_table "SSSettings", primary_key: ["GroupName", "KeyName"], force: :cascade do |t|
    t.varchar    "GroupName",   limit: 255,        null: false
    t.varchar    "KeyName",     limit: 255,        null: false
    t.varchar    "KeyValue",    limit: 255
    t.text_basic "StringValue", limit: 2147483647
    t.string     "BinaryValue"
    t.varchar    "Description", limit: 255
    t.index ["KeyValue"], name: "KeyValue"
  end

  create_table "SSSmartNoteScripts", primary_key: ["TableName", "FieldName", "ScriptName"], force: :cascade do |t|
    t.varchar "TableName",  limit: 50, null: false
    t.varchar "FieldName",  limit: 50, null: false
    t.varchar "ScriptName", limit: 50, null: false
    t.integer "LookupKey"
    t.integer "Sequence"
  end

  create_table "SSSmartNoteScriptsLookup", primary_key: ["LookupKey", "LookupElement"], force: :cascade do |t|
    t.integer "LookupKey",                null: false
    t.varchar "LookupElement", limit: 50, null: false
    t.varchar "ReplaceValue",  limit: 50
    t.integer "Sequence"
  end

  create_table "SSStatisticsTests", primary_key: "SS_Stats_ID", force: :cascade do |t|
    t.integer    "Sequence",         limit: 2
    t.varchar    "Application",      limit: 50
    t.varchar    "Event",            limit: 50
    t.integer    "QueryType",        limit: 2
    t.varchar    "Category",         limit: 50
    t.varchar    "Title",            limit: 50
    t.varchar    "Query",            limit: 75
    t.varchar    "Report",           limit: 64
    t.varchar    "ExcelFile",        limit: 50
    t.varchar    "WorkSheet",        limit: 50
    t.text_basic "SQL",              limit: 2147483647
    t.varchar    "NoAccess",         limit: 255
    t.text_basic "RestrictAccess",   limit: 2147483647
    t.integer    "ProcessReport",    limit: 2
    t.varchar    "FileName",         limit: 255
    t.integer    "ErrorEncountered"
    t.varchar    "ErrorDescription", limit: 255
    t.integer    "UserType",         limit: 2
    t.varchar    "Description",      limit: 250
    t.datetime   "DateCreated"
    t.index ["QueryType", "Category", "Title"], name: "Index1", unique: true
    t.index ["Sequence"], name: "Sequence"
  end

  create_table "SSStatisticsTests_CustomCat", primary_key: "SSStatisticsTests_CustomCat_ID", force: :cascade do |t|
    t.integer "SS_Stats_ID",            null: false
    t.varchar "Category",    limit: 50, null: false
    t.varchar "SSUserName",  limit: 50, null: false
    t.index ["SS_Stats_ID", "Category", "SSUserName"], name: "UniqueIndex", unique: true
  end

  create_table "SSStdArteries", primary_key: "SSStdArteryID", force: :cascade do |t|
    t.integer "ObjectID"
    t.integer "ObjectType"
    t.varchar "ObjectName",  limit: 50
    t.varchar "SectionName", limit: 50
    t.index ["ObjectID"], name: "ObjectID"
    t.index ["SSStdArteryID"], name: "SSStdArteryID"
  end

  create_table "SSStdPhotoArteries", primary_key: ["PhotoName", "SSStdArteryID"], force: :cascade do |t|
    t.varchar "PhotoName",     limit: 50, null: false
    t.integer "SSStdArteryID",            null: false
    t.index ["SSStdArteryID"], name: "SSStdArteryID"
  end

  create_table "SSStdPhotos", primary_key: "PhotoName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "BaseMask", limit: 30
    t.varchar "BareMask", limit: 30
    t.varchar "FullMask", limit: 30
  end

  create_table "SSTableTriggers", primary_key: "SSTableTriggerID", force: :cascade do |t|
    t.varchar "TableName",    limit: 64
    t.integer "Attributes"
    t.varchar "AssemblyName", limit: 255
    t.varchar "ClassName",    limit: 255
    t.varchar "MethodName",   limit: 255
    t.index ["TableName", "AssemblyName", "ClassName", "MethodName"], name: "UniqueKey", unique: true
  end

  create_table "SSTemplates", primary_key: "SSTemplateID", force: :cascade do |t|
    t.varchar "Name",                   limit: 50
    t.varchar "TableName",              limit: 50
    t.varchar "Template_Table",         limit: 30
    t.varchar "Template_KeyField",      limit: 30
    t.integer "Template_KeyValue"
    t.varchar "Template_SequenceField", limit: 30
    t.varchar "Views",                  limit: 120
    t.varchar "Module",                 limit: 50
    t.integer "Sequence"
    t.index ["Name", "TableName"], name: "UniqueKey", unique: true
    t.index ["Sequence"], name: "Sequence"
  end

  create_table "SSTreeView", primary_key: "SSViewID", force: :cascade do |t|
    t.integer "TreeView_Order",  limit: 2
    t.varchar "TreeView_View",   limit: 50
    t.varchar "TreeView_File",   limit: 50
    t.varchar "LeftMain",        limit: 50
    t.boolean "CXDOm",                      null: false
    t.boolean "RCADom",                     null: false
    t.varchar "LAD",             limit: 50
    t.varchar "RCASize",         limit: 50
    t.integer "NumberDiagonals", limit: 2
    t.integer "NumberMarginals", limit: 2
    t.integer "NumberPLVs",      limit: 2
    t.index ["TreeView_Order"], name: "TreeView_Order"
  end

  create_table "SSTreeViewMap", primary_key: "SSMapID", force: :cascade do |t|
    t.integer "SSViewID"
    t.varchar "Segment",  limit: 50
    t.varchar "Label",    limit: 50
    t.integer "Color",    limit: 2
    t.index ["SSViewID"], name: "SSViewID"
    t.index ["Segment"], name: "Segment"
  end

  create_table "SSTreeViewMapPoints", primary_key: "SSMapPointID", force: :cascade do |t|
    t.integer "SSViewID"
    t.integer "SSMapID"
    t.varchar "Segment",  limit: 50
    t.real    "X"
    t.real    "Y"
    t.index ["SSMapID"], name: "SSMapID"
    t.index ["SSViewID", "Segment"], name: "Index1"
    t.index ["SSViewID"], name: "SSViewID"
    t.index ["Segment"], name: "Segment"
  end

  create_table "SSTreeViewMidPoints", primary_key: "SSMidPointID", force: :cascade do |t|
    t.integer "SSViewID"
    t.integer "SSMapID"
    t.varchar "Segment",  limit: 50
    t.real    "X"
    t.real    "Y"
    t.index ["SSMapID"], name: "SSMapID"
    t.index ["SSViewID", "Segment"], name: "Index1"
    t.index ["SSViewID"], name: "SSViewID"
    t.index ["Segment"], name: "Segment"
  end

  create_table "SSUnitConversionFactors", primary_key: ["FromType", "ToType"], force: :cascade do |t|
    t.integer "FromType",         null: false
    t.integer "ToType",           null: false
    t.float   "ConversionFactor", null: false
  end

  create_table "SSUnitDefinition", primary_key: "Type", force: :cascade do |t|
    t.varchar "Value",          limit: 20
    t.varchar "DisplayValue",   limit: 20
    t.boolean "FactoryDefined",            null: false
    t.index ["DisplayValue"], name: "IX_DisplayValue"
    t.index ["Value"], name: "IX_Value", unique: true
  end

  create_table "SSUnitMapping", primary_key: ["Type", "Value"], force: :cascade do |t|
    t.integer "Type",                      null: false
    t.varchar "Value",          limit: 20, null: false
    t.boolean "FactoryDefined",            null: false
  end

  create_table "SSUserTokens", primary_key: "SecurityToken", id: :varchar, limit: 255, force: :cascade do |t|
    t.integer  "SS_User_ID",                null: false
    t.datetime "CreateTime"
    t.varchar  "Application",    limit: 50
    t.varchar  "Workstation",    limit: 50
    t.datetime "LastAccessTime"
  end

  create_table "SSValidationDriver", primary_key: "SSValidationDriverID", force: :cascade do |t|
    t.varchar    "Validation_Name",     limit: 50
    t.varchar    "Event_Fields",        limit: 50
    t.varchar    "ParticipantIDTable",  limit: 50
    t.varchar    "ParticipantIDField",  limit: 50
    t.varchar    "KeyDateField",        limit: 50
    t.varchar    "CompanionClass",      limit: 50
    t.text_basic "AdditionalCondition", limit: 2147483647
    t.varchar    "QueryName",           limit: 50
    t.varchar    "Version",             limit: 50
    t.varchar    "Registry",            limit: 50
    t.index ["Validation_Name"], name: "Validation_Name", unique: true
  end

  create_table "SSValidationOutput", primary_key: "SSValidationOutputID", force: :cascade do |t|
    t.varchar    "Last_Name",           limit: 50
    t.varchar    "First_Name",          limit: 50
    t.varchar    "Middle_Name",         limit: 50
    t.varchar    "Patient_ID",          limit: 50
    t.integer    "SS_Patient_ID"
    t.integer    "SS_Event_ID"
    t.varchar    "TableName",           limit: 50
    t.varchar    "FieldName",           limit: 50
    t.varchar    "FieldValue",          limit: 255
    t.text_basic "Message",             limit: 2147483647
    t.varchar    "Type",                limit: 50
    t.integer    "ParentID"
    t.integer    "CurrentID"
    t.varchar    "ValidationType",      limit: 50
    t.datetime   "EventDate"
    t.varchar    "Registry",            limit: 50
    t.varchar    "MessageType",         limit: 50
    t.varchar    "Grouping",            limit: 255
    t.varchar    "SubGrouping",         limit: 255
    t.varchar    "FieldLabelDisplay",   limit: 255
    t.varchar    "ValidationRuleName",  limit: 255
    t.integer    "SSValidationRulesID"
    t.varchar    "ParticipantID",       limit: 20
    t.varchar    "Hospital",            limit: 100
    t.varchar    "aaa",                 limit: 50
  end

  create_table "SSValidationRules", primary_key: "ValidationRuleName", id: :varchar, limit: 255, force: :cascade do |t|
    t.integer    "SSValidationRulesID",                         null: false
    t.varchar    "RegistryName",             limit: 50
    t.varchar    "EventType",                limit: 255
    t.varchar    "Version",                  limit: 255
    t.varchar    "ApolloTable",              limit: 255
    t.varchar    "ApolloField",              limit: 255
    t.varchar    "MessageType",              limit: 255
    t.varchar    "ParentApolloTable",        limit: 255
    t.varchar    "ParentApolloField",        limit: 255
    t.text_basic "ParentValue",              limit: 2147483647
    t.text_basic "FieldValue",               limit: 2147483647
    t.integer    "Sequence"
    t.varchar    "ValidationType",           limit: 255
    t.varchar    "Message",                  limit: 255
    t.boolean    "UseDLL",                                      null: false
    t.text_basic "ValidationClause",         limit: 2147483647
    t.varchar    "QualifyExpression",        limit: 255
    t.varchar    "Grouping",                 limit: 255
    t.varchar    "FieldLabelDisplay",        limit: 255
    t.boolean    "FlagForCompleteness",                         null: false
    t.boolean    "IncludeRule",                                 null: false
    t.float      "ThirdPartySequenceNumber"
    t.varchar    "ThirdPartyName",           limit: 50
  end

  create_table "SSViewEvals", primary_key: ["SSEvalsID", "ViewName"], force: :cascade do |t|
    t.integer "SSEvalsID",                null: false
    t.varchar "ViewName",     limit: 50,  null: false
    t.varchar "FieldName",    limit: 255
    t.varchar "Expression",   limit: 255
    t.integer "Sequence",     limit: 2
    t.varchar "ReplaceTable", limit: 255
    t.varchar "ReplaceField", limit: 255
    t.varchar "ReplaceValue", limit: 255
  end

  create_table "SSViewFields", primary_key: ["ViewName", "Table_Name", "Field_Name"], force: :cascade do |t|
    t.integer    "SSViewFieldsID",                       null: false
    t.varchar    "ViewName",          limit: 50,         null: false
    t.varchar    "Table_Name",        limit: 50,         null: false
    t.varchar    "Field_Name",        limit: 50,         null: false
    t.varchar    "Alias",             limit: 50
    t.varchar    "Selection_Set",     limit: 50
    t.varchar    "PickList",          limit: 50
    t.boolean    "VNonNullRequired",                     null: false
    t.float      "VRangeMin"
    t.float      "VRangeMax"
    t.varchar    "DrillDownTable",    limit: 30
    t.varchar    "Formula",           limit: 250
    t.varchar    "ReplaceField",      limit: 250
    t.text_basic "Triggers",          limit: 2147483647
    t.varchar    "ValidationClause",  limit: 250
    t.varchar    "ValidationText",    limit: 250
    t.varchar    "ValidationScript",  limit: 250
    t.varchar    "TriggerScript",     limit: 250
    t.varchar    "SmartNoteFileName", limit: 255
    t.varchar    "MaskType",          limit: 50
    t.varchar    "EditMask",          limit: 255
    t.float      "NormalRangeMin"
    t.float      "NormalRangeMax"
    t.index ["SSViewFieldsID"], name: "SSFieldsID"
  end

  create_table "SSViewForms", primary_key: ["ViewName", "FormName"], force: :cascade do |t|
    t.varchar "ViewName",      limit: 50, null: false
    t.varchar "FormName",      limit: 50, null: false
    t.integer "Sequence",      limit: 2
    t.integer "ViewFormStyle"
    t.index ["FormName"], name: "FormName"
    t.index ["Sequence"], name: "Sequence"
  end

  create_table "SSViews", primary_key: "ViewName", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer    "Sequence",              limit: 2
    t.varchar    "ViewTable",             limit: 50
    t.integer    "ViewStyle",             limit: 2
    t.varchar    "UserList",              limit: 255
    t.varchar    "NoAccess",              limit: 255
    t.text_basic "RestrictAccess",        limit: 2147483647
    t.integer    "GlobalSeq",             limit: 2
    t.varchar    "GlobalSQL",             limit: 255
    t.integer    "SS_Patient_Reports_ID"
    t.index ["Sequence"], name: "Sequence"
  end

  create_table "SSZScore", primary_key: "SSZScoreID", force: :cascade do |t|
    t.varchar "Version",         limit: 50
    t.integer "LumedxAdded",     limit: 2
    t.integer "Fetal",           limit: 2
    t.varchar "MenuPrompt",      limit: 255
    t.float   "RegNum"
    t.varchar "YLongName",       limit: 255
    t.varchar "YShortName",      limit: 255
    t.varchar "Yunit",           limit: 255
    t.varchar "YfileName",       limit: 255
    t.varchar "XLongName",       limit: 255
    t.varchar "XShortName",      limit: 255
    t.varchar "Xunit",           limit: 255
    t.varchar "XfileName",       limit: 255
    t.varchar "ZLongName",       limit: 255
    t.varchar "ZShortName",      limit: 255
    t.varchar "Zunit",           limit: 255
    t.varchar "ZfileName",       limit: 255
    t.float   "MinGX"
    t.float   "MaxGX"
    t.varchar "OutFile",         limit: 255
    t.float   "RegType"
    t.float   "A1"
    t.float   "A2"
    t.float   "A3"
    t.float   "ResMS"
    t.float   "NPts"
    t.float   "MeanX"
    t.float   "SumXsq"
    t.float   "CIslope"
    t.float   "CIint"
    t.float   "A10"
    t.float   "A11"
    t.float   "Xcolumn"
    t.float   "Ycolumn"
    t.float   "Zcolumn"
    t.float   "MinAge"
    t.float   "MaxAge"
    t.float   "CIMethod"
    t.float   "MinBSA"
    t.float   "MaxBSA"
    t.varchar "NormalTableName", limit: 255
    t.varchar "XSourceTable",    limit: 255
    t.float   "XSourceColumn"
    t.varchar "YSourceTable",    limit: 255
    t.float   "YSourceColumn"
    t.varchar "ZSourceTable",    limit: 255
    t.varchar "ZSourceColumn",   limit: 255
    t.float   "Sexstratified"
    t.float   "A1M"
    t.float   "A2M"
    t.float   "A3M"
    t.float   "ResMSM"
    t.float   "NptsM"
    t.float   "MeanXM"
    t.float   "SumXsqM"
    t.float   "CISlopeM"
    t.float   "CIintM"
    t.float   "A10M"
    t.float   "A11M"
    t.float   "A1F"
    t.float   "A2F"
    t.float   "A3F"
    t.float   "ResMSF"
    t.float   "NptsF"
    t.float   "MeanXF"
    t.float   "SumXsqF"
    t.float   "CISlopeF"
    t.float   "CIintF"
    t.float   "A10F"
    t.float   "A11F"
    t.index ["MenuPrompt", "Version"], name: "MenuPrompt", unique: true
    t.index ["MenuPrompt"], name: "SSZScoreMenuPrompt"
    t.index ["RegNum"], name: "RegNum"
  end

  create_table "SSZScoreCentile", primary_key: "SSZScoreCentileID", force: :cascade do |t|
    t.float "ZScore"
    t.float "Centile"
    t.index ["ZScore", "Centile"], name: "UniqueKey", unique: true
  end

  create_table "SSZScoreInfo", primary_key: "SSZScoreInfoID", force: :cascade do |t|
    t.varchar "MenuPrompt",   limit: 100
    t.varchar "XTable",       limit: 50
    t.varchar "XField",       limit: 50
    t.varchar "YTable",       limit: 50
    t.varchar "YField",       limit: 50
    t.varchar "ZTable",       limit: 50
    t.varchar "ZField",       limit: 50
    t.varchar "AgeTable",     limit: 50
    t.varchar "AgeField",     limit: 50
    t.varchar "BSATable",     limit: 50
    t.varchar "BSAField",     limit: 50
    t.varchar "zScoreTable",  limit: 50
    t.varchar "zScoreField",  limit: 50
    t.varchar "CentileTable", limit: 50
    t.varchar "CentileField", limit: 50
    t.varchar "VersionField", limit: 50
    t.integer "LumedxAdded",  limit: 2
    t.integer "IsFetal",      limit: 2
    t.varchar "MinCITable",   limit: 50
    t.varchar "MinCIField",   limit: 50
    t.varchar "MaxCITable",   limit: 50
    t.varchar "MaxCIField",   limit: 50
    t.index ["MenuPrompt"], name: "SSZScoreInfoMenuPrompt"
    t.index ["zScoreTable", "zScoreField"], name: "UniqueKey", unique: true
  end

  create_table "SSZScoreLMS", primary_key: "SSZScoreLMSID", force: :cascade do |t|
    t.integer "IsFetal",     limit: 2
    t.integer "LumedxAdded", limit: 2
    t.varchar "Version",     limit: 50
    t.float   "RegNum"
    t.float   "Gender"
    t.float   "X"
    t.float   "L"
    t.float   "M"
    t.float   "S"
    t.index ["RegNum", "Gender", "X"], name: "UniqueKey", unique: true
    t.index ["RegNum"], name: "RegNum"
  end

  create_table "SSZScoreVersions", primary_key: "VersionName", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer "Sequence"
  end

  create_table "SS_Active_Users", primary_key: ["User_Name", "Workstation_Name", "Application_Name"], force: :cascade do |t|
    t.varchar  "User_Name",        limit: 50, null: false
    t.varchar  "Workstation_Name", limit: 50, null: false
    t.datetime "Login_Date"
    t.datetime "Login_Time"
    t.varchar  "Application_Name", limit: 50, null: false
    t.varchar  "License",          limit: 50
  end

  create_table "SS_CN_CoroAnatomy_Lookup", primary_key: "MajorArtery", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "FieldName", limit: 50
  end

  create_table "SS_CN_Source_Entries", primary_key: "EntryLabel", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer "EntryType",      limit: 2
    t.varchar "SelectionSet",   limit: 50
    t.boolean "MultiplePick",               null: false
    t.varchar "DefaultVal",     limit: 255
    t.boolean "DBRead",                     null: false
    t.varchar "ReadTable",      limit: 50
    t.varchar "ReadField",      limit: 50
    t.varchar "ReadExpr",       limit: 255
    t.boolean "DBWrite",                    null: false
    t.varchar "WriteTable",     limit: 50
    t.varchar "WriteField",     limit: 50
    t.varchar "WriteExpr",      limit: 255
    t.boolean "ReadOnly",                   null: false
    t.boolean "AlternateValue",             null: false
    t.boolean "NoPrompt",                   null: false
    t.boolean "AddRecord",                  null: false
    t.varchar "CN_Module",      limit: 50,  null: false
    t.varchar "ReadScript",     limit: 255
    t.varchar "WriteScript",    limit: 255
    t.index ["CN_Module"], name: "CN_Module"
  end

  create_table "SS_CN_Source_Notes", primary_key: ["CN_Module", "NoteLabel"], force: :cascade do |t|
    t.integer    "SS_NoteID",                         null: false
    t.varchar    "CN_Module",      limit: 50,         null: false
    t.varchar    "NoteLabel",      limit: 50,         null: false
    t.text_basic "Note_Text",      limit: 2147483647
    t.float      "Timer"
    t.boolean    "Highlight",                         null: false
    t.integer    "NoteType",       limit: 2
    t.integer    "SelectType",     limit: 2
    t.varchar    "PopupClassName", limit: 255
    t.varchar    "PopupTitle",     limit: 50
  end

  create_table "SS_CN_Template_Notes", primary_key: "SS_CN_Template_NotesID", force: :cascade do |t|
    t.varchar "CN_Module",        limit: 50, null: false
    t.varchar "NoteLabel_Module", limit: 50, null: false
    t.varchar "TemplateName",     limit: 50, null: false
    t.varchar "NoteLabel",        limit: 50, null: false
    t.integer "Note_Order",       limit: 2,  null: false
    t.boolean "Auto",                        null: false
    t.index ["CN_Module", "TemplateName", "NoteLabel"], name: "Unique_Note", unique: true
    t.index ["Note_Order"], name: "Note_Order"
  end

  create_table "SS_CN_Templates", primary_key: ["CN_Module", "TemplateName"], force: :cascade do |t|
    t.varchar "CN_Module",        limit: 50, null: false
    t.varchar "TemplateName",     limit: 50, null: false
    t.integer "TemplateType",     limit: 2
    t.varchar "UserName",         limit: 50
    t.integer "Template_Order"
    t.varchar "Category",         limit: 50
    t.integer "CategorySequence", limit: 2
    t.index ["Template_Order"], name: "Template_Order"
  end

  create_table "SS_Coronary_BMP", primary_key: "SS_Coronary_BMP_ID", force: :cascade do |t|
    t.varchar "Picture",       limit: 50
    t.varchar "VesselSegment", limit: 50
    t.float   "X1"
    t.float   "Y1"
    t.float   "X2"
    t.float   "Y2"
  end

  create_table "SS_Field_Info", primary_key: ["Table_Name", "Field_Name", "Topic"], force: :cascade do |t|
    t.varchar    "Table_Name",               limit: 50,         null: false
    t.varchar    "Field_Name",               limit: 50,         null: false
    t.varchar    "Topic",                    limit: 50,         null: false
    t.integer    "Topic_Order",              limit: 2
    t.text_basic "Topic_Text",               limit: 2147483647, null: false
    t.float      "ThirdPartySequenceNumber"
    t.varchar    "ThirdPartyName",           limit: 50
    t.index ["Table_Name", "Field_Name", "Topic_Order"], name: "TableField"
  end

  create_table "SS_Fields", primary_key: ["Table_Name", "Field_Name"], force: :cascade do |t|
    t.integer    "SSFieldsID",                           null: false
    t.varchar    "Table_Name",        limit: 50,         null: false
    t.varchar    "Field_Name",        limit: 50,         null: false
    t.varchar    "Field_Type",        limit: 20
    t.integer    "Field_Type_Code",   limit: 2
    t.integer    "Field_Width",       limit: 2
    t.integer    "Field_Attribute",   limit: 2
    t.varchar    "Selection_Set",     limit: 50
    t.varchar    "PickList",          limit: 50
    t.boolean    "VNonNullRequired",                     null: false
    t.float      "VRangeMin"
    t.float      "VRangeMax"
    t.boolean    "Orphan",                               null: false
    t.varchar    "Unit_Expression",   limit: 50
    t.varchar    "Mask",              limit: 50
    t.varchar    "DrillDownTable",    limit: 30
    t.varchar    "Formula",           limit: 250
    t.varchar    "ReplaceField",      limit: 250
    t.boolean    "UserDefined",                          null: false
    t.float      "Missing"
    t.float      "Missing_Threshold"
    t.float      "Date_Calculated"
    t.text_basic "Triggers",          limit: 2147483647
    t.varchar    "ValidationClause",  limit: 250
    t.varchar    "ValidationText",    limit: 250
    t.text_basic "Description",       limit: 2147483647
    t.integer    "Attributes"
    t.varchar    "Alias",             limit: 50
    t.float      "NormalRangeMin"
    t.float      "NormalRangeMax"
    t.varchar    "ValidationScript",  limit: 250
    t.varchar    "TriggerScript",     limit: 250
    t.varchar    "SmartNoteFileName", limit: 255
    t.varchar    "MaskType",          limit: 255
    t.varchar    "EditMask",          limit: 255
    t.varchar    "DefaultValue",      limit: 50
    t.index ["SSFieldsID"], name: "SSFieldsID"
  end

  create_table "SS_Filters", primary_key: "SS_Filter_ID", force: :cascade do |t|
    t.integer    "Sequence",       limit: 2
    t.varchar    "Filter_User",    limit: 255
    t.varchar    "Filter_Table",   limit: 50
    t.varchar    "QueryName",      limit: 50
    t.boolean    "Locked",                            null: false
    t.varchar    "NoAccess",       limit: 255
    t.text_basic "SQL",            limit: 2147483647
    t.text_basic "SQLJet",         limit: 2147483647
    t.text_basic "Layout",         limit: 2147483647
    t.text_basic "RestrictAccess", limit: 2147483647
    t.index ["Filter_Table", "QueryName"], name: "UniqueKey", unique: true
    t.index ["Filter_Table"], name: "Module"
    t.index ["Sequence"], name: "Sequence"
  end

  create_table "SS_MasterTables", primary_key: "SS_Module_ID", force: :cascade do |t|
    t.integer "Master_Order",         limit: 2
    t.integer "Registration_ID"
    t.varchar "Module",               limit: 50
    t.varchar "Master_Table",         limit: 50
    t.varchar "KeyName",              limit: 50
    t.varchar "ParentTable",          limit: 50
    t.varchar "ParentKeyName",        limit: 50
    t.integer "NodeType",             limit: 2
    t.varchar "Node_Description",     limit: 50
    t.varchar "Alias",                limit: 8
    t.varchar "Description",          limit: 50
    t.varchar "ViewString",           limit: 255
    t.varchar "DateField",            limit: 25
    t.varchar "SecondField",          limit: 25
    t.varchar "FieldList",            limit: 120
    t.varchar "DateField2",           limit: 30
    t.integer "SS_Export_Management", limit: 2
    t.varchar "TimeField",            limit: 50
    t.integer "Attributes"
    t.varchar "UniqueConstraints",    limit: 255
    t.index ["Alias"], name: "Alias", unique: true
    t.index ["KeyName"], name: "KeyName"
    t.index ["Master_Table"], name: "Table_Field", unique: true
    t.index ["Registration_ID"], name: "Registration_ID"
  end

  create_table "SS_Menu_Run", primary_key: "SS_Run_ID", force: :cascade do |t|
    t.integer "RunAttribute"
    t.varchar "TabType",         limit: 50
    t.integer "Sequence",        limit: 2
    t.varchar "Menu_Table",      limit: 255
    t.varchar "Prompt",          limit: 25
    t.varchar "Run_File",        limit: 50
    t.varchar "Path",            limit: 50
    t.integer "Internal",        limit: 2
    t.varchar "Run_Parameters",  limit: 120
    t.boolean "PassParameters",              null: false
    t.boolean "ChangeDirectory",             null: false
    t.varchar "IconFile",        limit: 255
    t.integer "IconIndex",       limit: 2
    t.varchar "InstalledKey",    limit: 200
    t.index ["Menu_Table", "Prompt"], name: "Unique_Key", unique: true
    t.index ["Prompt"], name: "Unique_Prompt", unique: true
  end

  create_table "SS_Modules", primary_key: "Module_Name", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "Version",        limit: 15
    t.varchar "Module_Code",    limit: 50
    t.integer "Module_Order",   limit: 2
    t.boolean "Bypass",                     null: false
    t.varchar "ClinDoc_Code",   limit: 50
    t.varchar "ClinDoc_Log",    limit: 50
    t.varchar "Reporting_Code", limit: 100
    t.integer "Attributes"
  end

  create_table "SS_NewPatient", primary_key: "SS_ID", force: :cascade do |t|
    t.integer "Sequence",        limit: 2
    t.varchar "Prompt",          limit: 50
    t.varchar "Field",           limit: 50
    t.boolean "Verify",                     null: false
    t.integer "NewPatient_Top",  limit: 2
    t.integer "NewPatient_Left", limit: 2
    t.integer "Width",           limit: 2
    t.integer "Height",          limit: 2
    t.integer "txtTop",          limit: 2
    t.integer "txtLeft",         limit: 2
    t.integer "txtHeight",       limit: 2
    t.integer "txtWidth",        limit: 2
    t.varchar "Mask",            limit: 50
  end

  create_table "SS_Parser_Rules", primary_key: "SS_ID", force: :cascade do |t|
    t.varchar    "Keyword_ID",   limit: 50
    t.varchar    "Parser_Table", limit: 50
    t.varchar    "Field",        limit: 50
    t.varchar    "Parser_Rule",  limit: 255
    t.varchar    "DoCom",        limit: 150
    t.text_basic "SQL",          limit: 2147483647
    t.integer    "RuleType",     limit: 2
    t.varchar    "Concatenate",  limit: 20
    t.varchar    "ParseLabel",   limit: 255
    t.integer    "ExecuteOrder", limit: 2
    t.text_basic "Comments",     limit: 2147483647
    t.index ["Keyword_ID"], name: "Keyword_ID"
  end

  create_table "SS_Patient_Reports", primary_key: "SS_Patient_Reports_ID", force: :cascade do |t|
    t.integer    "Sequence",                 limit: 2
    t.varchar    "Report",                   limit: 50
    t.varchar    "Filename",                 limit: 50
    t.varchar    "Type",                     limit: 50
    t.varchar    "Report_Table",             limit: 50
    t.varchar    "Context_Table",            limit: 50
    t.boolean    "Multiple_Reports_Allowed",                    null: false
    t.text_basic "Header",                   limit: 2147483647
    t.text_basic "HeaderJet",                limit: 2147483647
    t.boolean    "KeepMissingData",                             null: false
    t.integer    "Copies",                   limit: 2
    t.boolean    "Locked",                                      null: false
    t.text_basic "SignatureSQL",             limit: 2147483647
    t.varchar    "SignatureMessage",         limit: 250
    t.integer    "AddendumChildID"
    t.integer    "AddendumParentID"
    t.integer    "ApplicationMask",          limit: 2
    t.integer    "SSADDistributionListID"
    t.varchar    "ScriptName",               limit: 101
    t.integer    "ApplicationMask1",         limit: 2
    t.integer    "Attributes",               limit: 2
    t.varchar    "GroupName",                limit: 255
    t.index ["Report", "Filename", "Report_Table"], name: "UniqueKey", unique: true
  end

  create_table "SS_Replace", primary_key: "SS_Replace_ID", force: :cascade do |t|
    t.varchar "LookupTable",   limit: 50
    t.varchar "LookupField",   limit: 50
    t.varchar "LookupValue",   limit: 250
    t.varchar "Replace_Table", limit: 50
    t.varchar "Field",         limit: 50
    t.varchar "Replace_Value", limit: 250
    t.index ["LookupTable", "LookupField", "LookupValue"], name: "LookupTableField"
  end

  create_table "SS_Report_Bookmarks", primary_key: "Bookmark_Name", id: :varchar, limit: 40, force: :cascade do |t|
    t.varchar    "Table_Name",   limit: 50
    t.varchar    "Field_Name",   limit: 50
    t.varchar    "Field_Decode", limit: 250
    t.integer    "Attributes"
    t.text_basic "SQL",          limit: 2147483647
    t.text_basic "SQLJet",       limit: 2147483647
    t.index ["Table_Name", "Field_Name"], name: "TableFieldName"
  end

  create_table "SS_RiskBayesCPM", primary_key: "ID", force: :cascade do |t|
    t.integer "Bayes_Order",  limit: 2
    t.varchar "LookupKey",    limit: 50
    t.varchar "Risk_Factor",  limit: 50
    t.real    "Probability1"
    t.real    "Probability2"
    t.real    "Probability3"
    t.varchar "Bayes_Table",  limit: 50
    t.varchar "Expression",   limit: 250
    t.index ["Expression"], name: "Expression", unique: true
    t.index ["LookupKey"], name: "LookupKey"
  end

  create_table "SS_RiskCodes", primary_key: "SS_RiskCodes_ID", force: :cascade do |t|
    t.varchar "LookupKey",   limit: 50
    t.float   "Low"
    t.float   "High"
    t.varchar "Description", limit: 50
    t.index ["LookupKey", "Description"], name: "Unique_Key", unique: true
    t.index ["LookupKey"], name: "LookupKey"
  end

  create_table "SS_RiskStratificationTests", primary_key: "SS_Risk_ID", force: :cascade do |t|
    t.integer    "Sequence",       limit: 2
    t.varchar    "Title",          limit: 50
    t.varchar    "TestType",       limit: 50
    t.varchar    "LookupKey",      limit: 50
    t.boolean    "DefaultTest",                       null: false
    t.float      "CF"
    t.varchar    "RiskFieldName",  limit: 50
    t.varchar    "RiskFormatStr",  limit: 50
    t.text_basic "SQLFrom",        limit: 2147483647
    t.varchar    "SQLKeyField",    limit: 50
    t.varchar    "VariableName",   limit: 50
    t.varchar    "WhereClause",    limit: 120
    t.text_basic "SQLProbability", limit: 2147483647
    t.float      "Prior1"
    t.float      "Prior2"
    t.boolean    "ProtectedTest",                     null: false
    t.index ["LookupKey"], name: "LookupKey"
    t.index ["Sequence"], name: "Sequence"
    t.index ["Title"], name: "Title", unique: true
  end

  create_table "SS_RiskWeighted", primary_key: "SS_RiskWeighted_ID", force: :cascade do |t|
    t.varchar "LookupKey",   limit: 50
    t.varchar "Risk_Factor", limit: 50
    t.varchar "Expression",  limit: 250
    t.float   "Weight"
    t.index ["LookupKey", "Risk_Factor"], name: "Unique_Key", unique: true
    t.index ["LookupKey"], name: "LookupKey"
  end

  create_table "SS_SelSetTranslations", primary_key: ["Source", "Selection_Set", "Element_Text", "Alias"], force: :cascade do |t|
    t.varchar "Source",                   limit: 50, null: false
    t.varchar "Selection_Set",            limit: 50, null: false
    t.varchar "Element_Text",             limit: 60, null: false
    t.varchar "Alias",                    limit: 50, null: false
    t.integer "SS_SelSet_Translation_ID"
    t.integer "SS_Source_ID"
    t.integer "SSSelectionSetID"
    t.varchar "SelectionSet",             limit: 50
    t.varchar "ElementText",              limit: 60
    t.index ["Source", "Selection_Set", "Element_Text", "Alias"], name: "Index1"
  end

  create_table "SS_Selection_Set_Elements", primary_key: "SSSelectionSetID", force: :cascade do |t|
    t.varchar "Selection_Set", limit: 50
    t.varchar "Element_Text",  limit: 255
    t.float   "Element_Order"
    t.index ["Selection_Set", "Element_Text"], name: "SSIndex1", unique: true
  end

  create_table "SS_Selection_Sets", primary_key: "Selection_Set", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer "SS_Selection_Sets_ID", null: false
    t.boolean "Form_Lock",            null: false
    t.boolean "User_Lock",            null: false
    t.boolean "Clinical_Doc",         null: false
    t.integer "Attributes"
    t.index ["SS_Selection_Sets_ID"], name: "SS_Selection_Sets_ID"
  end

  create_table "SS_Sources", primary_key: "Source", id: :varchar, limit: 50, force: :cascade do |t|
    t.integer "Type",            limit: 2
    t.varchar "TypeDescription", limit: 50
    t.integer "SS_Source_ID"
  end

  create_table "SS_SysTables", primary_key: "TableName", id: :varchar, limit: 30, force: :cascade do |t|
    t.integer "Sequence"
    t.varchar "Alias",      limit: 50
    t.integer "Attributes"
  end

  create_table "SS_UserHx", primary_key: "SS_UserHx_ID", force: :cascade do |t|
    t.integer  "SS_User_ID"
    t.datetime "ChangeTime"
    t.varchar  "Password",   limit: 15
    t.index ["SS_User_ID"], name: "SS_User_ID"
  end

  create_table "SS_UserList", primary_key: "SS_User_ID", force: :cascade do |t|
    t.varchar "List_User",         limit: 50
    t.varchar "Password",          limit: 15
    t.integer "UserType",          limit: 2
    t.varchar "GroupName",         limit: 50
    t.varchar "SignaturePassword", limit: 15
    t.varchar "Alias",             limit: 50
    t.varchar "Windows_UserName",  limit: 50
    t.varchar "Description",       limit: 255
    t.integer "Attributes"
    t.integer "Sequence"
    t.index ["List_User"], name: "List_User", unique: true
  end

  create_table "SS_UserMembership", primary_key: ["SS_User_ID", "SSGroupID"], force: :cascade do |t|
    t.integer "SS_User_ID", null: false
    t.integer "SSGroupID",  null: false
    t.index ["SSGroupID"], name: "SSGroupID"
    t.index ["SS_User_ID"], name: "SS_User_ID"
  end

  create_table "SS_UserObjects", primary_key: ["SS_User_ID", "ObjectType", "ObjectKey"], force: :cascade do |t|
    t.integer "SS_User_ID",             null: false
    t.varchar "ObjectType", limit: 50,  null: false
    t.varchar "ObjectKey",  limit: 255, null: false
    t.integer "GrantFlags"
    t.integer "DenyFlags"
  end

  create_table "SS_UserProperties", primary_key: ["SS_User_ID", "PropertyName"], force: :cascade do |t|
    t.integer "SS_UserPropertiesID",             null: false
    t.integer "SS_User_ID",                      null: false
    t.varchar "PropertyName",        limit: 50,  null: false
    t.varchar "PropertyValue",       limit: 255
    t.index ["SS_UserPropertiesID"], name: "SSUserSettingID", unique: true
    t.index ["SS_User_ID"], name: "SSUserID"
  end

  create_table "SS_UserPropertyList", primary_key: "PropertyName", id: :varchar, limit: 50, force: :cascade do |t|
    t.varchar "DefaultValue", limit: 255
    t.varchar "Description",  limit: 255
    t.integer "Attributes"
  end

  create_table "SS_UserRights", primary_key: "SS_UserRights_ID", force: :cascade do |t|
    t.integer "SS_User_ID",       null: false
    t.integer "SS_Permission_ID", null: false
    t.index ["SS_Permission_ID"], name: "SS_Permission_ID"
    t.index ["SS_User_ID"], name: "SS_User_ID"
  end

  create_table "SS_UserRightsDescription", primary_key: "SS_Permission_ID", force: :cascade do |t|
    t.integer "SS_AvailableRightsGroup_ID"
    t.integer "Sequence",                   limit: 2
    t.varchar "Description",                limit: 50
    t.index ["SS_AvailableRightsGroup_ID"], name: "SS_ID"
  end

  create_table "SS_UserRightsGroups", primary_key: "SS_AvailableRightsGroup_ID", force: :cascade do |t|
    t.integer "Sequence",    limit: 2
    t.varchar "Description", limit: 50
    t.varchar "Application", limit: 50
  end

  create_table "SoftLinks", primary_key: ["Primary_Table_Name", "Primary_Key_Value", "Foreign_Table_Name", "Foreign_Key_Value"], force: :cascade do |t|
    t.integer "SS_Patient_ID",                 null: false
    t.varchar "Primary_Table_Name", limit: 30, null: false
    t.integer "Primary_Key_Value",             null: false
    t.varchar "Foreign_Table_Name", limit: 30, null: false
    t.integer "Foreign_Key_Value",             null: false
    t.index ["SS_Patient_ID"], name: "SS_Patient_ID"
  end

  create_table "__MigrationHistory", primary_key: ["MigrationId", "ContextKey"], force: :cascade do |t|
    t.string "MigrationId",    limit: 150,        null: false
    t.string "ContextKey",     limit: 300,        null: false
    t.binary "Model",          limit: 2147483647, null: false
    t.string "ProductVersion", limit: 32,         null: false
  end

  add_foreign_key "SSAgentServiceRuleExpressions", "SSAgentServiceRuleFields", column: "SSAgentServiceRuleFieldID", primary_key: "SSAgentServiceRuleFieldID", name: "SSAgentServiceRuleFieldID_FK"
  add_foreign_key "SSAgentServiceRuleExpressions", "SSAgentServiceRules", column: "SSAgentServiceRuleID", primary_key: "SSAgentServiceRuleID", name: "SSAgentServiceRuleID_FK"
  add_foreign_key "SSDICOMAETitleRules", "SSDICOMApplicationEntities", column: "SSDICOMApplicationEntityID", primary_key: "SSDICOMApplicationEntityID", name: "SSDICOMApplicationEntityID_FK"
end
