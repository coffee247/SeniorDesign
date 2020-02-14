<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Message Center" Type="Folder">
			<Item Name="Ballistics Message Center.vi" Type="VI" URL="../Ballistics Message Center.vi"/>
			<Item Name="MC - Create INI.vi" Type="VI" URL="../MC - Create INI.vi"/>
			<Item Name="MC - Fill Default Values.vi" Type="VI" URL="../MC - Fill Default Values.vi"/>
			<Item Name="MC - Get Data From Key Value.vi" Type="VI" URL="../MC - Get Data From Key Value.vi"/>
			<Item Name="MC - Read INI.vi" Type="VI" URL="../MC - Read INI.vi"/>
			<Item Name="MC - String To Date.vi" Type="VI" URL="../MC - String To Date.vi"/>
			<Item Name="MC - Test Date String.vi" Type="VI" URL="../MC - Test Date String.vi"/>
			<Item Name="MC - Test Interval String.vi" Type="VI" URL="../MC - Test Interval String.vi"/>
			<Item Name="MC - Test Key Names.vi" Type="VI" URL="../MC - Test Key Names.vi"/>
			<Item Name="MC - Test Message String.vi" Type="VI" URL="../MC - Test Message String.vi"/>
		</Item>
		<Item Name="Collector Functions" Type="Folder">
			<Item Name="Database" Type="Folder">
				<Item Name="Continue DB Error Dialog.vi" Type="VI" URL="../Continue DB Error Dialog.vi"/>
				<Item Name="Check SSIS Import Table.vi" Type="VI" URL="../Check SSIS Import Table.vi"/>
				<Item Name="Create Threats table from Server DB.vi" Type="VI" URL="../Create Threats table from Server DB.vi"/>
				<Item Name="Create Calibers table from Server DB.vi" Type="VI" URL="../Create Calibers table from Server DB.vi"/>
				<Item Name="Create local tables from Server DB.vi" Type="VI" URL="../Create local tables from Server DB.vi"/>
				<Item Name="Export New Records.vi" Type="VI" URL="../Export New Records.vi"/>
				<Item Name="Fetch Data (SubVI).vi" Type="VI" URL="../Fetch Data (SubVI).vi"/>
				<Item Name="Fetch List Items From Lookup (SubVI).vi" Type="VI" URL="../Fetch List Items From Lookup (SubVI).vi"/>
				<Item Name="Fetch List Items From Table (SubVI).vi" Type="VI" URL="../Fetch List Items From Table (SubVI).vi"/>
				<Item Name="Fetch Data from Server.vi" Type="VI" URL="../Fetch Data from Server.vi"/>
				<Item Name="Fetch records from DB.vi" Type="VI" URL="../Fetch records from DB.vi"/>
				<Item Name="Fill List from DB (SubVI).vi" Type="VI" URL="../Fill List from DB (SubVI).vi"/>
				<Item Name="Fill Lists from DB (1st Pass).vi" Type="VI" URL="../Fill Lists from DB (1st Pass).vi"/>
				<Item Name="Fill Lists from DB (2nd Pass).vi" Type="VI" URL="../Fill Lists from DB (2nd Pass).vi"/>
				<Item Name="Fill Lists From DB (3rd Pass).vi" Type="VI" URL="../Fill Lists From DB (3rd Pass).vi"/>
				<Item Name="Fill Stitch Lists.vi" Type="VI" URL="../Fill Stitch Lists.vi"/>
				<Item Name="Format Site Specific Query (SubVI).vi" Type="VI" URL="../Format Site Specific Query (SubVI).vi"/>
				<Item Name="Get BIMS UDL File Path.vi" Type="VI" URL="../Get BIMS UDL File Path.vi"/>
				<Item Name="Get New Records for Posting.vi" Type="VI" URL="../Get New Records for Posting.vi"/>
				<Item Name="Get Sample Style Atributes.vi" Type="VI" URL="../Get Sample Style Atributes.vi"/>
				<Item Name="Get Last Record (SubVI).vi" Type="VI" URL="../Get Last Record (SubVI).vi"/>
				<Item Name="Get Projectile Atributes.vi" Type="VI" URL="../Get Projectile Atributes.vi"/>
				<Item Name="Get Projectile Atributes from ThreatGroupDetail.vi" Type="VI" URL="../Get Projectile Atributes from ThreatGroupDetail.vi"/>
				<Item Name="Get Threats (SubVI).vi" Type="VI" URL="../Get Threats (SubVI).vi"/>
				<Item Name="Load LayerStitch.vi" Type="VI" URL="../Load LayerStitch.vi"/>
				<Item Name="Load People.vi" Type="VI" URL="../Load People.vi"/>
				<Item Name="Load Shots (SubVI).vi" Type="VI" URL="../Load Shots (SubVI).vi"/>
				<Item Name="Load Threats.vi" Type="VI" URL="../Load Threats.vi"/>
				<Item Name="Load Vendors.vi" Type="VI" URL="../Load Vendors.vi"/>
				<Item Name="queryModel (SubVI).vi" Type="VI" URL="../queryModel (SubVI).vi"/>
				<Item Name="queryPanels (SubVI).vi" Type="VI" URL="../queryPanels (SubVI).vi"/>
				<Item Name="queryVendorFabricStyle (SubVI).vi" Type="VI" URL="../queryVendorFabricStyle (SubVI).vi"/>
				<Item Name="queryWorkType (SubVI).vi" Type="VI" URL="../queryWorkType (SubVI).vi"/>
				<Item Name="Select Sample Style.vi" Type="VI" URL="../Select Sample Style.vi"/>
				<Item Name="Select Projectile Type.vi" Type="VI" URL="../Select Projectile Type.vi"/>
				<Item Name="SQL Server Execute (test).vi" Type="VI" URL="../SQL Server Execute (test).vi"/>
				<Item Name="Update local DB (SubVI).vi" Type="VI" URL="../Update local DB (SubVI).vi"/>
				<Item Name="Update Metadata using table names.vi" Type="VI" URL="../Update Metadata using table names.vi"/>
				<Item Name="Update Site Lists From BIMS Server.vi" Type="VI" URL="../Update Site Lists From BIMS Server.vi"/>
				<Item Name="Fetch Lists From Local DB.vi" Type="VI" URL="../Fetch Lists From Local DB.vi"/>
				<Item Name="Update Metadata using listbox names.vi" Type="VI" URL="../Update Metadata using listbox names.vi"/>
				<Item Name="SQL Statement for Sample Descritpion.vi" Type="VI" URL="../SQL Statement for Sample Descritpion.vi"/>
				<Item Name="Prepare DB Connect Path (SubVI).vi" Type="VI" URL="../Prepare DB Connect Path (SubVI).vi"/>
			</Item>
			<Item Name="Panel" Type="Folder">
				<Item Name="Get Model Construction.vi" Type="VI" URL="../Get Model Construction.vi"/>
				<Item Name="Get Number of Layers (SubVI).vi" Type="VI" URL="../Get Number of Layers (SubVI).vi"/>
			</Item>
			<Item Name="Timing Board" Type="Folder">
				<Item Name="Counter Aux Line (NI-TIO).ctl" Type="VI" URL="../counter/ni-tio.llb/Counter Aux Line (NI-TIO).ctl"/>
				<Item Name="Counter Aux Line (NI-TIO).vi" Type="VI" URL="../counter/ni-tio.llb/Counter Aux Line (NI-TIO).vi"/>
				<Item Name="Counter Gate (NI-TIO).vi" Type="VI" URL="../counter/ni-tio.llb/Counter Gate (NI-TIO).vi"/>
				<Item Name="Counter Gate (NI-TIO).ctl" Type="VI" URL="../counter/ni-tio.llb/Counter Gate (NI-TIO).ctl"/>
				<Item Name="Counter Source (NI-TIO).vi" Type="VI" URL="../counter/ni-tio.llb/Counter Source (NI-TIO).vi"/>
				<Item Name="Counter Source (NI-TIO).ctl" Type="VI" URL="../counter/ni-tio.llb/Counter Source (NI-TIO).ctl"/>
				<Item Name="Arm TIO Channel.vi" Type="VI" URL="../Arm TIO Channel.vi"/>
				<Item Name="Check DAQ Status.vi" Type="VI" URL="../Check DAQ Status.vi"/>
				<Item Name="Counter Get Attribute.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Get Attribute.vi"/>
				<Item Name="Config Counter to Measure Two Edge Separation.vi" Type="VI" URL="../Config Counter to Measure Two Edge Separation.vi"/>
				<Item Name="Read TIO Count.vi" Type="VI" URL="../Read TIO Count.vi"/>
			</Item>
			<Item Name="Velocity" Type="Folder">
				<Item Name="2nd screen effect (SubVI).vi" Type="VI" URL="../2nd screen effect (SubVI).vi"/>
				<Item Name="Compute Strike Velocity.vi" Type="VI" URL="../Compute Strike Velocity.vi"/>
				<Item Name="Compute V50.vi" Type="VI" URL="../Compute V50.vi"/>
				<Item Name="Get Shell Speed.vi" Type="VI" URL="../Get Shell Speed.vi"/>
				<Item Name="Get V50s (SubVI).vi" Type="VI" URL="../Get V50s (SubVI).vi"/>
				<Item Name="Split Factor Array.vi" Type="VI" URL="../Split Factor Array.vi"/>
				<Item Name="Velocity Correction.vi" Type="VI" URL="../Velocity Correction.vi"/>
				<Item Name="Update Shot Table.vi" Type="VI" URL="../Update Shot Table.vi"/>
				<Item Name="Update Shot Table (DKC).vi" Type="VI" URL="../Update Shot Table (DKC).vi"/>
				<Item Name="Update Shot Table (HIIT).vi" Type="VI" URL="../Update Shot Table (HIIT).vi"/>
			</Item>
			<Item Name="Report Generation" Type="Folder">
				<Item Name="Lab" Type="Folder">
					<Item Name="V50 Report Part 1 (SubVI).vi" Type="VI" URL="../V50 Report Part 1 (SubVI).vi"/>
					<Item Name="V50 Report Results (SubVI).vi" Type="VI" URL="../V50 Report Results (SubVI).vi"/>
					<Item Name="V50 Report Range (SubVI).vi" Type="VI" URL="../V50 Report Range (SubVI).vi"/>
					<Item Name="V50 Report Sample (SubVI).vi" Type="VI" URL="../V50 Report Sample (SubVI).vi"/>
					<Item Name="V50 Report Threat (SubVI).vi" Type="VI" URL="../V50 Report Threat (SubVI).vi"/>
					<Item Name="V50 Report Fabric (SubVI).vi" Type="VI" URL="../V50 Report Fabric (SubVI).vi"/>
					<Item Name="V50 Report Shot Table (SubVI).vi" Type="VI" URL="../V50 Report Shot Table (SubVI).vi"/>
				</Item>
				<Item Name="Client" Type="Folder"/>
				<Item Name="Copy_Sheet_In_Excel 2010.vi" Type="VI" URL="../Copy_Sheet_In_Excel 2010.vi"/>
				<Item Name="Delete_Sheet_In_Excel 2010.vi" Type="VI" URL="../Delete_Sheet_In_Excel 2010.vi"/>
				<Item Name="Project V50 Report (SubVI).vi" Type="VI" URL="../Project V50 Report (SubVI).vi"/>
				<Item Name="Rename_Sheet_In_Excel 2010.vi" Type="VI" URL="../Rename_Sheet_In_Excel 2010.vi"/>
				<Item Name="TestReport_XL.vi" Type="VI" URL="../TestReport_XL.vi"/>
			</Item>
		</Item>
		<Item Name="Error Handling" Type="Folder">
			<Item Name="Error Check (SubVI).vi" Type="VI" URL="../Error Check (SubVI).vi"/>
			<Item Name="Where Am I (SubVI).vi" Type="VI" URL="../Where Am I (SubVI).vi"/>
		</Item>
		<Item Name="Initialization" Type="Folder">
			<Item Name="Fill Lists from INI (SubVI).vi" Type="VI" URL="../Fill Lists from INI (SubVI).vi"/>
			<Item Name="Get INI Section.vi" Type="VI" URL="../Get INI Section.vi"/>
			<Item Name="Initialize (SubVI).vi" Type="VI" URL="../Initialize (SubVI).vi"/>
			<Item Name="Read Defaults.vi" Type="VI" URL="../Read Defaults.vi"/>
			<Item Name="Read INI Section 2.vi" Type="VI" URL="../Read INI Section 2.vi"/>
			<Item Name="Read Parameters.vi" Type="VI" URL="../Read Parameters.vi"/>
			<Item Name="InitStringValuesFromRegistry(SubVI).vi" Type="VI" URL="../InitStringValuesFromRegistry(SubVI).vi"/>
			<Item Name="RegReadConfigName.vi" Type="VI" URL="../RegReadConfigName.vi"/>
			<Item Name="RegReadParams.vi" Type="VI" URL="../RegReadParams.vi"/>
			<Item Name="RegWriteParams.vi" Type="VI" URL="../RegWriteParams.vi"/>
		</Item>
		<Item Name="Type Definitions" Type="Folder">
			<Item Name="Connection - Command reference.ctl" Type="VI" URL="../Connection - Command reference.ctl"/>
			<Item Name="DataSource.ctl" Type="VI" URL="../DataSource.ctl"/>
			<Item Name="Collector State.ctl" Type="VI" URL="../Collector State.ctl"/>
			<Item Name="shotsArr.ctl" Type="VI" URL="../shotsArr.ctl"/>
			<Item Name="Shot Record.ctl" Type="VI" URL="../Shot Record.ctl"/>
		</Item>
		<Item Name="Utilities" Type="Folder">
			<Item Name="Dropdown Selection (SubVI).vi" Type="VI" URL="../Dropdown Selection (SubVI).vi"/>
			<Item Name="Remove Blanks.vi" Type="VI" URL="../Remove Blanks.vi"/>
			<Item Name="multicolumn listbox sort.vi" Type="VI" URL="../multicolumn listbox sort.vi"/>
			<Item Name="sort and index.vi" Type="VI" URL="../sort and index.vi"/>
			<Item Name="Trim String.vi" Type="VI" URL="../Trim String.vi"/>
		</Item>
		<Item Name="data" Type="Folder">
			<Item Name="VsVr_BallisticTestReport.xlt" Type="Document" URL="../Ballistics/VsVr_BallisticTestReport.xlt"/>
			<Item Name="V50_BallisticTestReport.xlt" Type="Document" URL="../Ballistics/V50_BallisticTestReport.xlt"/>
		</Item>
		<Item Name="BIMS_Collector.vi" Type="VI" URL="../BIMS_Collector.vi"/>
		<Item Name="BIMS_Collector Globals.vi" Type="VI" URL="../BIMS_Collector Globals.vi"/>
		<Item Name="BIMS_Collector (2010_03).vi" Type="VI" URL="../BIMS_Collector (2010_03).vi"/>
		<Item Name="BIMS_Collector (2010_08).vi" Type="VI" URL="../BIMS_Collector (2010_08).vi"/>
		<Item Name="BIMS_Collector (2012_01).vi" Type="VI" URL="../BIMS_Collector (2012_01).vi"/>
		<Item Name="BIMS_Collector (2014_10).vi" Type="VI" URL="../BIMS_Collector (2014_10).vi"/>
		<Item Name="BIMS_Collector (2015_06).vi" Type="VI" URL="../BIMS_Collector (2015_06).vi"/>
		<Item Name="BIMS_Collector (BRZ).vi" Type="VI" URL="../BIMS_Collector (BRZ).vi"/>
		<Item Name="BIMS_Collector (DKC).vi" Type="VI" URL="../BIMS_Collector (DKC).vi"/>
		<Item Name="BIMS_Collector (SPR).vi" Type="VI" URL="../BIMS_Collector (SPR).vi"/>
		<Item Name="Select Threat Details.vi" Type="VI" URL="../Select Threat Details.vi"/>
		<Item Name="Test Publish Folder Naming.vi" Type="VI" URL="../Test Publish Folder Naming.vi"/>
		<Item Name="BIMS for Export Control.vi" Type="VI" URL="../BIMS for Export Control.vi"/>
		<Item Name="Meas_Two_Edge_Separation-Buffered-Finite.vi" Type="VI" URL="../Meas_Two_Edge_Separation-Buffered-Finite.vi"/>
		<Item Name="TwoEdgeSepCtr0" Type="NI-DAQmx Task">
			<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
			<Property Name="\0\CI.Max" Type="Str">0.0050000000000000001</Property>
			<Property Name="\0\CI.MeasType" Type="Str">Two Edge Separation</Property>
			<Property Name="\0\CI.Min" Type="Str">9.9999999999999995E-007</Property>
			<Property Name="\0\CI.TwoEdgeSep.First.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Second.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Units" Type="Str">Seconds</Property>
			<Property Name="\0\Name" Type="Str">TwoEdgeSepCtr0/TwoEdgeSeparation</Property>
			<Property Name="\0\PhysicalChanName" Type="Str">LightScreens/ctr0</Property>
			<Property Name="Channels" Type="Str">TwoEdgeSepCtr0/TwoEdgeSeparation</Property>
			<Property Name="Name" Type="Str">TwoEdgeSepCtr0</Property>
			<Property Name="SampQuant.SampPerChan" Type="Str">1</Property>
		</Item>
		<Item Name="TwoEdgeSepCtr1" Type="NI-DAQmx Task">
			<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
			<Property Name="\0\CI.Max" Type="Str">0.0050000000000000001</Property>
			<Property Name="\0\CI.MeasType" Type="Str">Two Edge Separation</Property>
			<Property Name="\0\CI.Min" Type="Str">9.9999999999999995E-007</Property>
			<Property Name="\0\CI.TwoEdgeSep.First.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Second.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Units" Type="Str">Seconds</Property>
			<Property Name="\0\Name" Type="Str">TwoEdgeSepCtr1/TwoEdgeSeparation</Property>
			<Property Name="\0\PhysicalChanName" Type="Str">LightScreens/ctr1</Property>
			<Property Name="Channels" Type="Str">TwoEdgeSepCtr1/TwoEdgeSeparation</Property>
			<Property Name="Name" Type="Str">TwoEdgeSepCtr1</Property>
			<Property Name="SampQuant.SampPerChan" Type="Str">1</Property>
		</Item>
		<Item Name="TwoEdgeSepCtr3" Type="NI-DAQmx Task">
			<Property Name="\0\ChanType" Type="Str">Counter Input</Property>
			<Property Name="\0\CI.Max" Type="Str">0.0050000000000000001</Property>
			<Property Name="\0\CI.MeasType" Type="Str">Two Edge Separation</Property>
			<Property Name="\0\CI.Min" Type="Str">9.9999999999999995E-007</Property>
			<Property Name="\0\CI.TwoEdgeSep.First.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Second.Edge" Type="Str">Rising</Property>
			<Property Name="\0\CI.TwoEdgeSep.Units" Type="Str">Seconds</Property>
			<Property Name="\0\Name" Type="Str">TwoEdgeSepCtr3/TwoEdgeSeparation</Property>
			<Property Name="\0\PhysicalChanName" Type="Str">LightScreens/ctr3</Property>
			<Property Name="Channels" Type="Str">TwoEdgeSepCtr3/TwoEdgeSeparation</Property>
			<Property Name="Name" Type="Str">TwoEdgeSepCtr3</Property>
			<Property Name="SampQuant.SampPerChan" Type="Str">1</Property>
		</Item>
		<Item Name="test selector.vi" Type="VI" URL="../test selector.vi"/>
		<Item Name="save stats to INI (SubVI).vi" Type="VI" URL="../save stats to INI (SubVI).vi"/>
		<Item Name="Simultaneous_2_Edge_Sep_example.vi" Type="VI" URL="../Simultaneous_2_Edge_Sep_example.vi"/>
		<Item Name="2206273_Two_Edge_Separation.vi" Type="VI" URL="../2206273_Two_Edge_Separation.vi"/>
		<Item Name="check timing board (SubVI).vi" Type="VI" URL="../check timing board (SubVI).vi"/>
		<Item Name="state selection.vi" Type="VI" URL="../state selection.vi"/>
		<Item Name="updateScrnSep.vi" Type="VI" URL="../updateScrnSep.vi"/>
		<Item Name="Write Parameters.vi" Type="VI" URL="../Write Parameters.vi"/>
		<Item Name="Commercial Report (SubVI).vi" Type="VI" URL="../Commercial Report (SubVI).vi"/>
		<Item Name="range distances (SubVI).vi" Type="VI" URL="../range distances (SubVI).vi"/>
		<Item Name="prep cmrcial shots report (SubVI).vi" Type="VI" URL="../prep cmrcial shots report (SubVI).vi"/>
		<Item Name="create workbook filename (SubVI).vi" Type="VI" URL="../create workbook filename (SubVI).vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LV70U32ToDateRec.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70U32ToDateRec.vi"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Write Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple.vi"/>
				<Item Name="Write Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple STR.vi"/>
				<Item Name="Write Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value.vi"/>
				<Item Name="Write Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value STR.vi"/>
				<Item Name="Write Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value DWORD.vi"/>
				<Item Name="Write Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple U32.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Create Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Create Registry Key.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="ex_ExpandPathIfRelative.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ExpandPathIfRelative.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="NI_Word.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Word/NI_Word.lvclass"/>
				<Item Name="Word Open method.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_office/word.llb/Word Open method.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="ex_SetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetAllExpressAttribs.vi"/>
				<Item Name="Build Exp Wvfrm (Wvfrm).vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Build Exp Wvfrm (Wvfrm).vi"/>
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Counter Set Attribute.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Set Attribute.vi"/>
				<Item Name="Counter Control.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Control.vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Set CJC Parameters (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Set CJC Parameters (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create AO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create DI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create DO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create CI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CI Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create CO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create AI Channel TEDS(sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel TEDS(sub).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Strain Rosette AI Channels (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Strain Rosette AI Channels (sub).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="Get DAQ Device Information.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/misc.llb/Get DAQ Device Information.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="Waveform Min Max.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Min Max.vi"/>
				<Item Name="Move t0 to the end.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Move t0 to the end.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="StatisticsType.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/StatisticsType.ctl"/>
				<Item Name="subStatistics.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/StatisticsBlock.llb/subStatistics.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Collector09" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{4E675C03-EC3F-4BAE-A2A9-111780578885}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F56E115E-67D4-4FF9-AC17-44D7DCED9C6E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{31E27424-F267-46C4-9000-38D3641CDA24}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Collector09</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C95F7FBB-50A4-4288-9F83-260ECB28EEF5}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Collector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/Collector.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Report</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/Report.dll</Property>
				<Property Name="Destination[2].type" Type="Str">LLB</Property>
				<Property Name="Destination[3].destName" Type="Str">NI_Excel</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/NI_Excel.dll</Property>
				<Property Name="Destination[3].type" Type="Str">LLB</Property>
				<Property Name="Destination[4].destName" Type="Str">NI_Word</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/NI_Word.dll</Property>
				<Property Name="Destination[4].type" Type="Str">LLB</Property>
				<Property Name="Destination[5].destName" Type="Str">NI_HTML</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/NI_HTML.dll</Property>
				<Property Name="Destination[5].type" Type="Str">LLB</Property>
				<Property Name="Destination[6].destName" Type="Str">NI_Standard_Report</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09/NI_Standard_Report.dll</Property>
				<Property Name="Destination[6].type" Type="Str">LLB</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[0].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E77F2BB7-3F8A-4E6B-B616-53F9D1B70D41}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/BIMS_Collector (2010_08).vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Arm TIO Channel.vi</Property>
				<Property Name="Source[10].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[10].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[10].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[10].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[10].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref"></Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[4].itemID" Type="Ref"></Property>
				<Property Name="Source[4].type" Type="Str">Library</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[5].itemID" Type="Ref"></Property>
				<Property Name="Source[5].type" Type="Str">Library</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[6].itemID" Type="Ref"></Property>
				<Property Name="Source[6].type" Type="Str">Library</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Config Counter to Measure Two Edge Separation.vi</Property>
				<Property Name="Source[7].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[7].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[7].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[7].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[7].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Read TIO Count.vi</Property>
				<Property Name="Source[8].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[8].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[8].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[8].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[8].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Check DAQ Status.vi</Property>
				<Property Name="Source[9].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[9].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[9].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[9].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[9].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">11</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_internalName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2009 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C4A52E88-3DD2-4764-BD95-3E1518F25085}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Collector.exe</Property>
			</Item>
			<Item Name="Collector09_Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">DuPont_BIMS09</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">data</Property>
				<Property Name="Destination[1].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[1].tag" Type="Str">{EA332A46-D2A2-44D4-AAEA-D52441EF4DC3}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">NI_Excel</Property>
				<Property Name="Destination[2].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[2].tag" Type="Str">{8D484BE3-1373-4E25-AD34-AE58577DA4FF}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">NI_HTML</Property>
				<Property Name="Destination[3].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[3].tag" Type="Str">{30359654-3DD9-4A34-941D-232E097E15DE}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">NI_report</Property>
				<Property Name="Destination[4].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[4].tag" Type="Str">{F073A552-29F8-4DAA-BD75-84E4ED2FFB5F}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">NI_Standard Report</Property>
				<Property Name="Destination[5].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[5].tag" Type="Str">{2BD21C0F-0CA1-4EC8-A2CE-0E4768291F33}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">NI_Word</Property>
				<Property Name="Destination[6].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[6].tag" Type="Str">{DF85D63C-813E-48AA-8EBE-02E38B42AB61}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{FC7E30E4-E72F-45EC-9822-FC41C41E9DFA}</Property>
				<Property Name="DistPart[0].productName" Type="Str">Traditional NI-DAQ 7.4.4 (Legacy)</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{0CF31B15-A8BD-47E4-A4EC-B46CDD56C724}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{E0F9FCA8-6328-406D-A403-4681859CBF74}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW Runtime 2015 SP1 f1</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{CA8FF739-2EDA-4134-9A70-0F5DD933FDED}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../Builds/BIMS_Collector/Collector09_Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Collector09_Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="INST_productName" Type="Str">BIMS_Collector</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.12</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">15018007</Property>
				<Property Name="MSI_arpCompany" Type="Str">DuPont Company</Property>
				<Property Name="MSI_arpContact" Type="Str">Daniel J Kraus</Property>
				<Property Name="MSI_arpPhone" Type="Str">302 695-2330</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.DuPontCompany.com/</Property>
				<Property Name="MSI_distID" Type="Str">{C84DE85C-D31B-4378-B4E9-83F0B3D59056}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{0C416F92-74C7-4667-84F6-2B35DA77A7C4}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Welcome to the installer for the Sample Performance Data Collector client software program for the DuPont Ballistics Information Management System.  This client program uses data acquisition hardware to generate ballistic measurement records to characterize samples of apparrel and other armor materials used in R&amp;D projects concerned with developing life protection products.</Property>
				<Property Name="MSI_windowTitle" Type="Str">BIMS Sample Performance Data Collector</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDest[1].dirName" Type="Str">DuPont</Property>
				<Property Name="RegDest[1].dirTag" Type="Str">{43BDEFA2-E421-41E9-BCDD-5966ED172B45}</Property>
				<Property Name="RegDest[1].parentTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[2].dirName" Type="Str">BIMS-08</Property>
				<Property Name="RegDest[2].dirTag" Type="Str">{691B7AE1-2371-4BC9-9A8C-6D3FD6B7AAB5}</Property>
				<Property Name="RegDest[2].parentTag" Type="Str">{43BDEFA2-E421-41E9-BCDD-5966ED172B45}</Property>
				<Property Name="RegDest[3].dirName" Type="Str">Collector</Property>
				<Property Name="RegDest[3].dirTag" Type="Str">{24F6B84D-503A-4AB1-803C-2D6920B8D0DC}</Property>
				<Property Name="RegDest[3].parentTag" Type="Str">{691B7AE1-2371-4BC9-9A8C-6D3FD6B7AAB5}</Property>
				<Property Name="RegDestCount" Type="Int">4</Property>
				<Property Name="RegGroup[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegGroup[0].RegData[0].name" Type="Str">New Value</Property>
				<Property Name="RegGroup[0].RegData[0].type" Type="Str">String</Property>
				<Property Name="RegGroup[0].RegDataCount" Type="Int">1</Property>
				<Property Name="RegGroup[1].dirTag" Type="Str">{24F6B84D-503A-4AB1-803C-2D6920B8D0DC}</Property>
				<Property Name="RegGroup[1].RegData[0].data" Type="Str">YES</Property>
				<Property Name="RegGroup[1].RegData[0].name" Type="Str">InterlockExist</Property>
				<Property Name="RegGroup[1].RegData[0].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[1].data" Type="Str">E357/105</Property>
				<Property Name="RegGroup[1].RegData[1].name" Type="Str">ConfigName</Property>
				<Property Name="RegGroup[1].RegData[1].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[2].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[2].name" Type="Str">ScreenSetAveraging</Property>
				<Property Name="RegGroup[1].RegData[2].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[3].data" Type="Str">esvrs11</Property>
				<Property Name="RegGroup[1].RegData[3].name" Type="Str">Server</Property>
				<Property Name="RegGroup[1].RegData[3].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[4].data" Type="Str">ICE1</Property>
				<Property Name="RegGroup[1].RegData[4].name" Type="Str">Site</Property>
				<Property Name="RegGroup[1].RegData[4].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[5].data" Type="Str">YES</Property>
				<Property Name="RegGroup[1].RegData[5].name" Type="Str">useBallistician</Property>
				<Property Name="RegGroup[1].RegData[5].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[6].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[6].name" Type="Str">useRecorder</Property>
				<Property Name="RegGroup[1].RegData[6].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[7].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[7].name" Type="Str">useShooter</Property>
				<Property Name="RegGroup[1].RegData[7].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[8].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[8].name" Type="Str">useBMC</Property>
				<Property Name="RegGroup[1].RegData[8].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegDataCount" Type="Int">9</Property>
				<Property Name="RegGroupCount" Type="Int">2</Property>
				<Property Name="Source[0].dest" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Collector.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Collector1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">BIMS_Collector</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{443EF3FF-6605-4D77-AB23-0F02FB54647B}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Collector09_BRZ</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Collector09_BRZ</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="Collector09_DKC" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{80D0D8BB-01AE-4B59-97F8-851EFF59FC9A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{CE1CE0AC-DE51-414D-A46A-605746ED363A}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CA16F082-2A85-448F-9AB8-A805D7F690B1}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Collector09_DKC</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{27A693EF-142A-4DCA-93FF-6128E6060E61}</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Collector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/Collector.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Report</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/Report.dll</Property>
				<Property Name="Destination[2].type" Type="Str">LLB</Property>
				<Property Name="Destination[3].destName" Type="Str">NI_Excel</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/NI_Excel.dll</Property>
				<Property Name="Destination[3].type" Type="Str">LLB</Property>
				<Property Name="Destination[4].destName" Type="Str">NI_Word</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/NI_Word.dll</Property>
				<Property Name="Destination[4].type" Type="Str">LLB</Property>
				<Property Name="Destination[5].destName" Type="Str">NI_HTML</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/NI_HTML.dll</Property>
				<Property Name="Destination[5].type" Type="Str">LLB</Property>
				<Property Name="Destination[6].destName" Type="Str">NI_Standard_Report</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_DKC/NI_Standard_Report.dll</Property>
				<Property Name="Destination[6].type" Type="Str">LLB</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[0].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{6FEB4C70-CA14-4867-9F7E-5C3C36452008}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/BIMS_Collector (2010_08).vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Arm TIO Channel.vi</Property>
				<Property Name="Source[10].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[10].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[10].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[10].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[10].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/BIMS_Collector.vi</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/Collector Functions/Velocity/Update Shot Table (DKC).vi</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[12].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref"></Property>
				<Property Name="Source[3].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[4].itemID" Type="Ref"></Property>
				<Property Name="Source[4].type" Type="Str">Library</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[5].itemID" Type="Ref"></Property>
				<Property Name="Source[5].type" Type="Str">Library</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[6].itemID" Type="Ref"></Property>
				<Property Name="Source[6].type" Type="Str">Library</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Config Counter to Measure Two Edge Separation.vi</Property>
				<Property Name="Source[7].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[7].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[7].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[7].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[7].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Read TIO Count.vi</Property>
				<Property Name="Source[8].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[8].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[8].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[8].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[8].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Check DAQ Status.vi</Property>
				<Property Name="Source[9].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[9].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[9].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[9].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[9].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">13</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_internalName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2009 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{CA240349-49E2-4D0D-B265-932D888B3735}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Collector.exe</Property>
			</Item>
			<Item Name="Collector09_BRZ" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{71F68003-8847-4510-BB0D-9164862A220D}</Property>
				<Property Name="App_INI_GUID" Type="Str">{1CA13A95-2D40-412A-B8B7-351D2E5E7CAD}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3689FFA8-EF7F-41FB-A94F-5AD78264239B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Collector09_BRZ</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{192753DC-9641-49EE-A260-C7A66FCA9B4C}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Collector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/Collector.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Report</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/Report.dll</Property>
				<Property Name="Destination[2].type" Type="Str">LLB</Property>
				<Property Name="Destination[3].destName" Type="Str">NI_Excel</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/NI_Excel.dll</Property>
				<Property Name="Destination[3].type" Type="Str">LLB</Property>
				<Property Name="Destination[4].destName" Type="Str">NI_Word</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/NI_Word.dll</Property>
				<Property Name="Destination[4].type" Type="Str">LLB</Property>
				<Property Name="Destination[5].destName" Type="Str">NI_HTML</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/NI_HTML.dll</Property>
				<Property Name="Destination[5].type" Type="Str">LLB</Property>
				<Property Name="Destination[6].destName" Type="Str">NI_Standard_Report</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector09_BRZ/NI_Standard_Report.dll</Property>
				<Property Name="Destination[6].type" Type="Str">LLB</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Exe_iconItemID" Type="Ref"></Property>
				<Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[0].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{DCD40D30-9EA2-4964-84D8-C074A0CF8DCF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/BIMS_Collector (2010_08).vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Config Counter to Measure Two Edge Separation.vi</Property>
				<Property Name="Source[2].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[2].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[2].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[2].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Read TIO Count.vi</Property>
				<Property Name="Source[3].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[3].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[3].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[3].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[3].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Check DAQ Status.vi</Property>
				<Property Name="Source[4].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[4].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[4].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[4].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[4].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Arm TIO Channel.vi</Property>
				<Property Name="Source[5].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[5].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[5].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[5].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[5].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/BIMS_Collector (BRZ).vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">7</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_internalName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2009 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">Collector-2008</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{443EF3FF-6605-4D77-AB23-0F02FB54647B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Collector.exe</Property>
			</Item>
			<Item Name="Collector15" Type="EXE">
				<Property Name="App_includeHWConfig" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{2DC7CF60-F1B6-4A8C-B815-969294991221}</Property>
				<Property Name="App_INI_GUID" Type="Str">{1E2A8665-82C3-4799-B1B3-CE4A55E6D952}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{5252045B-1D0B-4ED4-AA39-21F393602E77}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Collector15</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B9FA9DB0-A58A-478A-85A7-217E00C5FA00}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Collector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/Collector.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Report</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/Report.dll</Property>
				<Property Name="Destination[2].type" Type="Str">LLB</Property>
				<Property Name="Destination[3].destName" Type="Str">NI_Excel</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/NI_Excel.dll</Property>
				<Property Name="Destination[3].type" Type="Str">LLB</Property>
				<Property Name="Destination[4].destName" Type="Str">NI_Word</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/NI_Word.dll</Property>
				<Property Name="Destination[4].type" Type="Str">LLB</Property>
				<Property Name="Destination[5].destName" Type="Str">NI_HTML</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/NI_HTML.dll</Property>
				<Property Name="Destination[5].type" Type="Str">LLB</Property>
				<Property Name="Destination[6].destName" Type="Str">NI_Standard_Report</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/NI_AB_PROJECTNAME/Collector15/NI_Standard_Report.dll</Property>
				<Property Name="Destination[6].type" Type="Str">LLB</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[0].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{8B74F8FF-194F-498C-914B-4798730F932F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/BIMS_Collector (2010_08).vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Config Counter to Measure Two Edge Separation.vi</Property>
				<Property Name="Source[2].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[2].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[2].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[2].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Read TIO Count.vi</Property>
				<Property Name="Source[3].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[3].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[3].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[3].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[3].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Check DAQ Status.vi</Property>
				<Property Name="Source[4].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[4].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[4].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[4].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[4].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Collector Functions/Timing Board/Arm TIO Channel.vi</Property>
				<Property Name="Source[5].properties[0].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[5].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[5].properties[1].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[5].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[5].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/BIMS_Collector (2014_10).vi</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/BIMS_Collector.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Collector-2015</Property>
				<Property Name="TgtF_internalName" Type="Str">Collector-2015</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">Collector-2015</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{90ABCBFC-2D44-4655-9483-A1DA6AEED8BB}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Collector.exe</Property>
			</Item>
			<Item Name="Collector15_Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">DuPont_BIMS_15</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">data</Property>
				<Property Name="Destination[1].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[1].tag" Type="Str">{EA332A46-D2A2-44D4-AAEA-D52441EF4DC3}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">NI_Excel</Property>
				<Property Name="Destination[2].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[2].tag" Type="Str">{8D484BE3-1373-4E25-AD34-AE58577DA4FF}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">NI_HTML</Property>
				<Property Name="Destination[3].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[3].tag" Type="Str">{30359654-3DD9-4A34-941D-232E097E15DE}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">NI_report</Property>
				<Property Name="Destination[4].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[4].tag" Type="Str">{F073A552-29F8-4DAA-BD75-84E4ED2FFB5F}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">NI_Standard Report</Property>
				<Property Name="Destination[5].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[5].tag" Type="Str">{2BD21C0F-0CA1-4EC8-A2CE-0E4768291F33}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">NI_Word</Property>
				<Property Name="Destination[6].parent" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Destination[6].tag" Type="Str">{DF85D63C-813E-48AA-8EBE-02E38B42AB61}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="Destination[7].name" Type="Str">c:\New Path</Property>
				<Property Name="Destination[7].path" Type="Path">/c/New Path</Property>
				<Property Name="Destination[7].tag" Type="Str">{1E57F6E7-68F6-41BE-A3BD-C5DF6809298F}</Property>
				<Property Name="Destination[7].type" Type="Str">absFolder</Property>
				<Property Name="DestinationCount" Type="Int">8</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{E0F9FCA8-6328-406D-A403-4681859CBF74}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Runtime 2015 SP1 f1</Property>
				<Property Name="DistPart[0].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[0].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[0].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI System Web Server 15.5</Property>
				<Property Name="DistPart[0].SoftDep[1].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[0].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[10].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[0].SoftDep[10].upgradeCode" Type="Str">{4C0854AD-9BFC-4494-A4E0-D96C0C07F1F2}</Property>
				<Property Name="DistPart[0].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[11].productName" Type="Str">NI LabVIEW Web Server 2015</Property>
				<Property Name="DistPart[0].SoftDep[11].upgradeCode" Type="Str">{78AAB900-C712-11E3-9C1A-0800200C9A66}</Property>
				<Property Name="DistPart[0].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[12].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2015</Property>
				<Property Name="DistPart[0].SoftDep[12].upgradeCode" Type="Str">{25643B9A-90E8-4100-B30C-10EC4DE2EE68}</Property>
				<Property Name="DistPart[0].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI Logos 5.7</Property>
				<Property Name="DistPart[0].SoftDep[2].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[0].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI TDM Streaming 15.2</Property>
				<Property Name="DistPart[0].SoftDep[3].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[0].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[0].SoftDep[4].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[0].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[0].SoftDep[5].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[0].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[6].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[0].SoftDep[6].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[0].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[7].productName" Type="Str">NI Deployment Framework 2015</Property>
				<Property Name="DistPart[0].SoftDep[7].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[0].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[8].productName" Type="Str">NI Error Reporting 2015</Property>
				<Property Name="DistPart[0].SoftDep[8].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[0].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[9].productName" Type="Str">NI LabVIEW Runtime 2015 SP1 Non-English Support.</Property>
				<Property Name="DistPart[0].SoftDep[9].upgradeCode" Type="Str">{128ABF1E-5F69-40D1-8A81-33DCF8229F08}</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">13</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{CA8FF739-2EDA-4134-9A70-0F5DD933FDED}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{580228AF-16FF-43D1-A451-8E2A4142A2FB}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime with Configuration Support 15.1.1</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{9856368A-ED47-4944-87BE-8EF3472AE39B}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{D661826B-27F4-4C32-8245-F6738E5FCBE3}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-DAQmx Runtime 15.1.1</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{641F4263-089D-4FF9-B41B-ED854717DB26}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI-DAQmx Application Development Support 15.1.1</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{DBA9D0BD-729E-494F-AFA2-0BA464B875C2}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[4].productID" Type="Str">{85C138EF-C28D-4841-AD19-6A2A62F0F515}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI-VISA Remote Server 15.5</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{951E7F56-F1CD-403C-B138-9BEFC6CEB343}</Property>
				<Property Name="DistPart[5].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[5].productID" Type="Str">{36AADB39-88B7-4228-8421-F4EBD0B8D826}</Property>
				<Property Name="DistPart[5].productName" Type="Str">NI-VISA Runtime 15.5</Property>
				<Property Name="DistPart[5].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[6].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[6].productID" Type="Str">{9B25EA87-AE7A-4939-9D4A-0BE34A5856B7}</Property>
				<Property Name="DistPart[6].productName" Type="Str">NI-VISA Configuration Support 15.5</Property>
				<Property Name="DistPart[6].upgradeCode" Type="Str">{093EECCF-DE2B-4226-B7E5-B1FD4028A783}</Property>
				<Property Name="DistPart[7].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[7].productID" Type="Str">{73B2E96E-1E3C-4728-9408-BAD86361F00E}</Property>
				<Property Name="DistPart[7].productName" Type="Str">NI Measurement &amp; Automation Explorer 15.3</Property>
				<Property Name="DistPart[7].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[0].productName" Type="Str">NI Error Reporting</Property>
				<Property Name="DistPart[7].SoftDep[0].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[7].SoftDepCount" Type="Int">1</Property>
				<Property Name="DistPart[7].upgradeCode" Type="Str">{AE940F24-CC0E-4148-9A96-10FB04D9796D}</Property>
				<Property Name="DistPart[8].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[8].productID" Type="Str">{F6E7429B-3726-44D4-8512-BCCC74C6991E}</Property>
				<Property Name="DistPart[8].productName" Type="Str">NI System Configuration Runtime 15.3.0</Property>
				<Property Name="DistPart[8].upgradeCode" Type="Str">{0E192465-CC28-4C84-BE81-710B71C595A3}</Property>
				<Property Name="DistPartCount" Type="Int">9</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/BIMS_Collector/Collector15_Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Collector15_Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="INST_productName" Type="Str">BIMS_Collector</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.16</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">15018007</Property>
				<Property Name="MSI_arpCompany" Type="Str">DuPont Company</Property>
				<Property Name="MSI_arpContact" Type="Str">Daniel J Kraus</Property>
				<Property Name="MSI_arpPhone" Type="Str">302 695-2330</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.DuPontCompany.com/</Property>
				<Property Name="MSI_distID" Type="Str">{D4CB7679-DE15-42B0-A28F-3F906A90D61E}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{55742C2B-182E-4DDD-B831-B7DC044055D5}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Welcome to the installer for the Sample Performance Data Collector client software program for the DuPont Ballistics Information Management System.  This client program uses data acquisition hardware to generate ballistic measurement records to characterize samples of apparrel and other armor materials used in R&amp;D projects concerned with developing life protection products.</Property>
				<Property Name="MSI_windowTitle" Type="Str">BIMS Sample Performance Data Collector</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDest[1].dirName" Type="Str">DuPont</Property>
				<Property Name="RegDest[1].dirTag" Type="Str">{43BDEFA2-E421-41E9-BCDD-5966ED172B45}</Property>
				<Property Name="RegDest[1].parentTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[2].dirName" Type="Str">BIMS-08</Property>
				<Property Name="RegDest[2].dirTag" Type="Str">{691B7AE1-2371-4BC9-9A8C-6D3FD6B7AAB5}</Property>
				<Property Name="RegDest[2].parentTag" Type="Str">{43BDEFA2-E421-41E9-BCDD-5966ED172B45}</Property>
				<Property Name="RegDest[3].dirName" Type="Str">Collector</Property>
				<Property Name="RegDest[3].dirTag" Type="Str">{24F6B84D-503A-4AB1-803C-2D6920B8D0DC}</Property>
				<Property Name="RegDest[3].parentTag" Type="Str">{691B7AE1-2371-4BC9-9A8C-6D3FD6B7AAB5}</Property>
				<Property Name="RegDestCount" Type="Int">4</Property>
				<Property Name="RegGroup[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegGroup[0].RegData[0].name" Type="Str">New Value</Property>
				<Property Name="RegGroup[0].RegData[0].type" Type="Str">String</Property>
				<Property Name="RegGroup[0].RegDataCount" Type="Int">1</Property>
				<Property Name="RegGroup[1].dirTag" Type="Str">{24F6B84D-503A-4AB1-803C-2D6920B8D0DC}</Property>
				<Property Name="RegGroup[1].RegData[0].data" Type="Str">YES</Property>
				<Property Name="RegGroup[1].RegData[0].name" Type="Str">InterlockExist</Property>
				<Property Name="RegGroup[1].RegData[0].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[1].data" Type="Str">E357/105</Property>
				<Property Name="RegGroup[1].RegData[1].name" Type="Str">ConfigName</Property>
				<Property Name="RegGroup[1].RegData[1].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[2].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[2].name" Type="Str">ScreenSetAveraging</Property>
				<Property Name="RegGroup[1].RegData[2].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[3].data" Type="Str">esvrs11</Property>
				<Property Name="RegGroup[1].RegData[3].name" Type="Str">Server</Property>
				<Property Name="RegGroup[1].RegData[3].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[4].data" Type="Str">ICE1</Property>
				<Property Name="RegGroup[1].RegData[4].name" Type="Str">Site</Property>
				<Property Name="RegGroup[1].RegData[4].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[5].data" Type="Str">YES</Property>
				<Property Name="RegGroup[1].RegData[5].name" Type="Str">useBallistician</Property>
				<Property Name="RegGroup[1].RegData[5].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[6].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[6].name" Type="Str">useRecorder</Property>
				<Property Name="RegGroup[1].RegData[6].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[7].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[7].name" Type="Str">useShooter</Property>
				<Property Name="RegGroup[1].RegData[7].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegData[8].data" Type="Str">NO</Property>
				<Property Name="RegGroup[1].RegData[8].name" Type="Str">useBMC</Property>
				<Property Name="RegGroup[1].RegData[8].type" Type="Str">String</Property>
				<Property Name="RegGroup[1].RegDataCount" Type="Int">9</Property>
				<Property Name="RegGroupCount" Type="Int">2</Property>
				<Property Name="Source[0].dest" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Collector.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Collector</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">BIMS_Collector</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{90ABCBFC-2D44-4655-9483-A1DA6AEED8BB}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Collector15</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Collector15</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">Collector.exe</Property>
				<Property Name="Source[1].File[0].tag" Type="Str">{90ABCBFC-2D44-4655-9483-A1DA6AEED8BB}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{45D372EC-41BE-42FA-9D70-5583B79C1F04}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">Collector.exe</Property>
				<Property Name="Source[2].File[0].tag" Type="Str">{90ABCBFC-2D44-4655-9483-A1DA6AEED8BB}</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="Auto 2 Timers Test" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{B86F225E-A0B9-4843-A966-A8528133F1F3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{64D12C04-837E-4BBB-BE72-ABDDCF10A901}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{FD66995E-922B-402C-BBA8-B488543B8B4B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Auto 2 Timers Test</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Auto 2 Timers Test</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{93AEB0E6-044F-4472-8089-B59BFBD3B229}</Property>
				<Property Name="Bld_version.build" Type="Int">7</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Auto-2-timers.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Auto 2 Timers Test/Auto-2-timers.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Auto 2 Timers Test/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D5905F3A-E7BB-408E-A054-3E83AE82BF68}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Simultaneous_2_Edge_Sep_example.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/2206273_Two_Edge_Separation.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_fileDescription" Type="Str">2 Timers Test</Property>
				<Property Name="TgtF_internalName" Type="Str">2 Timers Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">2 Timers Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{47E5461D-90E5-4B88-BCC0-8E7FB8FF4EE4}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Auto-2-timers.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
