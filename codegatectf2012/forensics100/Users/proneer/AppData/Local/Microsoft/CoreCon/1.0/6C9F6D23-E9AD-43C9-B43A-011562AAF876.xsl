<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<ADDONCONTAINER>
			<ADDON Priority="200">
				<PLATFORMCONTAINER>
					<PLATFORM _InstallChildrenOnly="false" Name="Windows Mobile 5.0 Pocket PC SDK" ID="4118C335-430C-497f-BE48-11C3316B135E">
						<DEVICECONTAINER>
							<DEVICE Protected="true" Name="USA Windows Mobile 5.0 Pocket PC R2 Emulator" ID="25D984D9-0DFE-4DB1-A5A0-9A4F660BF2CE">
								<PROPERTYCONTAINER>
									<PROPERTY ID="OS_Version">5000</PROPERTY>
									<PROPERTY ID="OS">default</PROPERTY>
									<PROPERTY ID="Emulator" Protected="true">true</PROPERTY>
									<PROPERTY ID="CpuName">ARMV4I</PROPERTY>
									<PROPERTY ID="LocalClientFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteClientFile" Protected="true">\Windows\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="LocalShutdownFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteShutdownFile" Protected="true">\Windows\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcClientFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteCcShutdownFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcTransportLoaderFile" Protected="true">%CSIDL_WINDOWS%\eDbgTL.dll</PROPERTY>
									<PROPERTY ID="RemoteCcCMAcceptFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\CMAccept.exe</PROPERTY>
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B" Protected="false">26753017-B5BB-4b67-BEE3-862676DE23DC</PROPERTY>
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203" Protected="true">ECDA0E20-34EF-41CD-9574-A51C52B45037</PROPERTY>
									<!-- Transport service property overrides -->
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B_ALL">
										<PROPERTYCONTAINER>
											<!-- TCP Transport -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/TRANSPORT_TRANSPORTNAME_TCPCONNECT"/>
												</xsl:attribute>
												<xsl:attribute name="ID">D8E78E43-D8D6-4e57-8AD4-2164254C16D5
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="LocalTransportFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\tcpconnectiona.dll</PROPERTY>
													<PROPERTY ID="RemoteTransportFile" Protected="true">%CSIDL_WINDOWS%\tcpconnectiona.dll</PROPERTY>
													<PROPERTY ID="ip" Protected="false">127.0.0.1</PROPERTY>
													<PROPERTY ID="port" Protected="false">5654</PROPERTY>
													<PROPERTY ID="useCustomPort" Protected="false">no</PROPERTY>
													<PROPERTY ID="authenticate" Protected="false">false</PROPERTY>
													<PROPERTY ID="disableauthentication" Protected="false">yes</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
											<!-- DMA Transport -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/TRANSPORT_TRANSPORTNAME_DMA"/>
												</xsl:attribute>
												<xsl:attribute name="ID">26753017-B5BB-4b67-BEE3-862676DE23DC
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="LocalTransportFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\devicedma.dll</PROPERTY>
													<PROPERTY ID="RemoteTransportFile" Protected="true">%CSIDL_WINDOWS%\devicedma.dll</PROPERTY>
													<PROPERTY ID="ip" Protected="false">127.0.0.1</PROPERTY>
													<PROPERTY ID="port" Protected="false">5654</PROPERTY>
													<PROPERTY ID="authenticate" Protected="false">false</PROPERTY>
													<PROPERTY ID="disableauthentication" Protected="false">yes</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<!-- Bootstrap service property overrides -->
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203_ALL">
										<PROPERTYCONTAINER>
											<!-- Device Emulation Bootstrap -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_VISUALSTUDIO_SERVICECATEGORIES_8_0/STARTUP_STARTUPNAME_DEVICEEMULATION"/>
												</xsl:attribute>
												<xsl:attribute name="ID">ECDA0E20-34EF-41CD-9574-A51C52B45037
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="VMID" Protected="false">
                                                                        {25D984D9-0DFE-4DB1-A5A0-9A4F660BF2CE}
                                                                    </PROPERTY>
													<PROPERTY ID="AdditionalParameters" Protected="false">
                                                                                /funckey 193
                                                                            </PROPERTY>
													<PROPERTY ID="OSBinImage" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\0409\PPC_USA.BIN</PROPERTY>
													<PROPERTY ID="ScreenWidth" Protected="false">240</PROPERTY>
													<PROPERTY ID="ScreenHeight" Protected="false">320</PROPERTY>
													<PROPERTY ID="ColorDepth" Protected="false">16</PROPERTY>
													<PROPERTY ID="EthernetEnabled" Protected="false">no</PROPERTY>
													<PROPERTY ID="RAMSize" Protected="false">128</PROPERTY>
													<PROPERTY ID="HostKey" Protected="false">165</PROPERTY>
													<PROPERTY ID="UseDefaultSaveState" Protected="false">true</PROPERTY>
													<PROPERTY ID="SerialPort0" Name="SerialPort0"></PROPERTY>
													<PROPERTY ID="SerialPort1" Protected="false"></PROPERTY>
													<PROPERTY ID="SerialPort2" Protected="false"></PROPERTY>
													<PROPERTY ID="ParallelPort" Protected="false"></PROPERTY>
													<PROPERTY ID="AlwaysOnTop" Name="AlwaysOnTop">no</PROPERTY>
													<PROPERTY ID="CreateConsole" Name="CreateConsole">no</PROPERTY>
													<PROPERTY ID="CS8900Adapter" Name="CS8900Adapter">000000000000</PROPERTY>
													<PROPERTY ID="CS8900EthernetEnabled" Name="CS8900EthernetEnabled">no</PROPERTY>
													<PROPERTY ID="EnableToolTips" Name="EnableToolTips">no</PROPERTY>
													<PROPERTY ID="FlashFile" Name="FlashFile"></PROPERTY>
													<PROPERTY ID="HostOnlyEthernetEnabled" Name="HostOnlyEthernetEnabled">no</PROPERTY>
													<PROPERTY ID="ImageAddress" Name="ImageAddress"></PROPERTY>
													<PROPERTY ID="NE2000Adapter" Name="NE2000Adapter">000000000000</PROPERTY>
													<PROPERTY ID="Orientation" Name="Orientation">0</PROPERTY>
													<PROPERTY ID="ShowSkin" Name="ShowSkin">yes</PROPERTY>
													<PROPERTY ID="SpecifyAddress" Name="SpecifyAddress">no</PROPERTY>
													<PROPERTY ID="Zoom2x" Name="Zoom2x">no</PROPERTY>
													<PROPERTY ID="Skin" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\Pocket_PC\Pocket_PC.xml</PROPERTY>
													<PROPERTY ID="SkinEngine" Protected="false" _UseVSRelativePath="true">smartdevices\emulators\skin.dll</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<PROPERTY ID="OutputLocation">%CSIDL_PROGRAM_FILES%</PROPERTY>
									<PROPERTY ID="OutputLocation_ALL">
										<PROPERTYCONTAINER>
											<PROPERTY ID="\">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_ROOT"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PERSONAL%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PERSONAL"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAMS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAMS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAM_FILES%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAM_FILES"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_COMMON_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_COMMON_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_WINDOWS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_WINDOWS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_FONTS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_FONTS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTMENU%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTMENU"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTUP%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTUP"/>
												</xsl:attribute>
											</PROPERTY>
										</PROPERTYCONTAINER>
									</PROPERTY>
								</PROPERTYCONTAINER>
							</DEVICE>
							<DEVICE Protected="true" Name="USA Windows Mobile 5.0 Pocket PC R2 Square Emulator" ID="C0619473-063B-4391-B7E2-F318DD1BFFDE">
								<PROPERTYCONTAINER>
									<PROPERTY ID="OS_Version">5000</PROPERTY>
									<PROPERTY ID="OS">default</PROPERTY>
									<PROPERTY ID="Emulator" Protected="true">true</PROPERTY>
									<PROPERTY ID="CpuName">ARMV4I</PROPERTY>
									<PROPERTY ID="LocalClientFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteClientFile" Protected="true">\Windows\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="LocalShutdownFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteShutdownFile" Protected="true">\Windows\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcClientFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteCcShutdownFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcTransportLoaderFile" Protected="true">%CSIDL_WINDOWS%\eDbgTL.dll</PROPERTY>
									<PROPERTY ID="RemoteCcCMAcceptFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\CMAccept.exe</PROPERTY>
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B" Protected="false">26753017-B5BB-4b67-BEE3-862676DE23DC</PROPERTY>
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203" Protected="true">ECDA0E20-34EF-41CD-9574-A51C52B45037</PROPERTY>
									<!-- Transport service property overrides -->
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B_ALL">
										<PROPERTYCONTAINER>
											<!-- TCP Transport -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/TRANSPORT_TRANSPORTNAME_TCPCONNECT"/>
												</xsl:attribute>
												<xsl:attribute name="ID">D8E78E43-D8D6-4e57-8AD4-2164254C16D5
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="LocalTransportFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\tcpconnectiona.dll</PROPERTY>
													<PROPERTY ID="RemoteTransportFile" Protected="true">%CSIDL_WINDOWS%\tcpconnectiona.dll</PROPERTY>
													<PROPERTY ID="ip" Protected="false">127.0.0.1</PROPERTY>
													<PROPERTY ID="port" Protected="false">5654</PROPERTY>
													<PROPERTY ID="useCustomPort" Protected="false">no</PROPERTY>
													<PROPERTY ID="authenticate" Protected="false">false</PROPERTY>
													<PROPERTY ID="disableauthentication" Protected="false">yes</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
											<!-- DMA Transport -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/TRANSPORT_TRANSPORTNAME_DMA"/>
												</xsl:attribute>
												<xsl:attribute name="ID">26753017-B5BB-4b67-BEE3-862676DE23DC
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="LocalTransportFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\devicedma.dll</PROPERTY>
													<PROPERTY ID="RemoteTransportFile" Protected="true">%CSIDL_WINDOWS%\devicedma.dll</PROPERTY>
													<PROPERTY ID="ip" Protected="false">127.0.0.1</PROPERTY>
													<PROPERTY ID="port" Protected="false">5654</PROPERTY>
													<PROPERTY ID="authenticate" Protected="false">false</PROPERTY>
													<PROPERTY ID="disableauthentication" Protected="false">yes</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<!-- Bootstrap service property overrides -->
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203_ALL">
										<PROPERTYCONTAINER>
											<!-- Device Emulation Bootstrap -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_VISUALSTUDIO_SERVICECATEGORIES_8_0/STARTUP_STARTUPNAME_DEVICEEMULATION"/>
												</xsl:attribute>
												<xsl:attribute name="ID">ECDA0E20-34EF-41CD-9574-A51C52B45037
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">emulator</PROPERTY>
													<PROPERTY ID="VMID" Protected="false">
                                                                        {C0619473-063B-4391-B7E2-F318DD1BFFDE}
                                                                    </PROPERTY>
													<PROPERTY ID="AdditionalParameters" Protected="false">
                                                                                /funckey 193
                                                                            </PROPERTY>
													<PROPERTY ID="OSBinImage" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\0409\PPC_USA.BIN</PROPERTY>
													<PROPERTY ID="ScreenWidth" Protected="false">240</PROPERTY>
													<PROPERTY ID="ScreenHeight" Protected="false">240</PROPERTY>
													<PROPERTY ID="ColorDepth" Protected="false">16</PROPERTY>
													<PROPERTY ID="EthernetEnabled" Protected="false">no</PROPERTY>
													<PROPERTY ID="RAMSize" Protected="false">128</PROPERTY>
													<PROPERTY ID="HostKey" Protected="false">165</PROPERTY>
													<PROPERTY ID="UseDefaultSaveState" Protected="false">true</PROPERTY>
													<PROPERTY ID="SerialPort0" Name="SerialPort0"></PROPERTY>
													<PROPERTY ID="SerialPort1" Protected="false"></PROPERTY>
													<PROPERTY ID="SerialPort2" Protected="false"></PROPERTY>
													<PROPERTY ID="ParallelPort" Protected="false"></PROPERTY>
													<PROPERTY ID="AlwaysOnTop" Name="AlwaysOnTop">no</PROPERTY>
													<PROPERTY ID="CreateConsole" Name="CreateConsole">no</PROPERTY>
													<PROPERTY ID="CS8900Adapter" Name="CS8900Adapter">000000000000</PROPERTY>
													<PROPERTY ID="CS8900EthernetEnabled" Name="CS8900EthernetEnabled">no</PROPERTY>
													<PROPERTY ID="EnableToolTips" Name="EnableToolTips">no</PROPERTY>
													<PROPERTY ID="FlashFile" Name="FlashFile"></PROPERTY>
													<PROPERTY ID="HostOnlyEthernetEnabled" Name="HostOnlyEthernetEnabled">no</PROPERTY>
													<PROPERTY ID="ImageAddress" Name="ImageAddress"></PROPERTY>
													<PROPERTY ID="NE2000Adapter" Name="NE2000Adapter">000000000000</PROPERTY>
													<PROPERTY ID="Orientation" Name="Orientation">0</PROPERTY>
													<PROPERTY ID="ShowSkin" Name="ShowSkin">yes</PROPERTY>
													<PROPERTY ID="SpecifyAddress" Name="SpecifyAddress">no</PROPERTY>
													<PROPERTY ID="Zoom2x" Name="Zoom2x">no</PROPERTY>
													<PROPERTY ID="Skin" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\Pocket_PC_Square_Screen\Pocket_PC_Square_Screen.xml</PROPERTY>
													<PROPERTY ID="SkinEngine" Protected="false" _UseVSRelativePath="true">smartdevices\emulators\skin.dll</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<PROPERTY ID="OutputLocation">%CSIDL_PROGRAM_FILES%</PROPERTY>
									<PROPERTY ID="OutputLocation_ALL">
										<PROPERTYCONTAINER>
											<PROPERTY ID="\">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_ROOT"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PERSONAL%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PERSONAL"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAMS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAMS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAM_FILES%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAM_FILES"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_COMMON_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_COMMON_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_WINDOWS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_WINDOWS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_FONTS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_FONTS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTMENU%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTMENU"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTUP%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTUP"/>
												</xsl:attribute>
											</PROPERTY>
										</PROPERTYCONTAINER>
									</PROPERTY>
								</PROPERTYCONTAINER>
							</DEVICE>
							<DEVICE Protected="true" Name="Windows Mobile 5.0 Pocket PC Device R2" ID="4118C335-430C-497f-BE48-11C3316B135E84C861BE-14F9-4bfe-85D1-158180C89455">
								<PROPERTYCONTAINER>
									<PROPERTY ID="OS_Version" Protected="false">5000</PROPERTY>
									<PROPERTY ID="OS" Protected="false">default</PROPERTY>
									<PROPERTY ID="CpuName">ARMV4I</PROPERTY>
									<PROPERTY ID="LocalClientFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteClientFile" Protected="true">\Windows\CoreCon%CcVersion%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="LocalShutdownFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteShutdownFile" Protected="true">\Windows\CoreCon%CcVersion%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcClientFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ConManClient2.exe</PROPERTY>
									<PROPERTY ID="RemoteCcShutdownFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\ClientShutdown.exe</PROPERTY>
									<PROPERTY ID="RemoteCcTransportLoaderFile" Protected="true">%CSIDL_WINDOWS%\eDbgTL.dll</PROPERTY>
									<PROPERTY ID="RemoteCcCMAcceptFile" Protected="true">%CSIDL_WINDOWS%\CoreCon%CcVersion%\CMAccept.exe</PROPERTY>
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B" Protected="false">D8E78E43-D8D6-4e57-8AD4-2164254C16D5</PROPERTY>
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203" Protected="false">6CFC41FD-50BA-43d2-9ACD-6A2A874D2853</PROPERTY>
									<!-- Transport Service property overrides -->
									<PROPERTY ID="B333580E-3924-492e-98E5-DF57E787591B_ALL">
										<PROPERTYCONTAINER>
											<!-- TCP Connect Transport -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/TRANSPORT_TRANSPORTNAME_TCPCONNECT"/>
												</xsl:attribute>
												<xsl:attribute name="ID">D8E78E43-D8D6-4e57-8AD4-2164254C16D5
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">true
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">tcp_connect</PROPERTY>
													<PROPERTY ID="ip" Protected="false">127.0.0.1</PROPERTY>
													<PROPERTY ID="port" Protected="false">5655</PROPERTY>
													<PROPERTY ID="authenticate" Protected="false">false</PROPERTY>
													<PROPERTY ID="useAutoAddress" Protected="false">yes</PROPERTY>
													<PROPERTY ID="useCustomPort" Protected="false">no</PROPERTY>
													<PROPERTY ID="LocalTransportFile" Protected="true" _UseCcRelativePath="true">target\wce400\%cpu%\TcpConnectionA.dll</PROPERTY>
													<PROPERTY ID="RemoteTransportFile" Protected="true">%CSIDL_WINDOWS%\TcpConnectionA.dll</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<!-- Bootstrap service property overrides -->
									<PROPERTY ID="D7C86969-EB5F-41e2-96CC-290683622203_ALL">
										<PROPERTYCONTAINER>
											<!-- ActiveSync Bootstrap -->
											<xsl:element name="PROPERTY">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_SERVICECATEGORIES_8_0/STARTUP_STARTUPNAME_ACTIVESYNC"/>
												</xsl:attribute>
												<xsl:attribute name="ID">6CFC41FD-50BA-43d2-9ACD-6A2A874D2853
                                                                </xsl:attribute>
												<xsl:attribute name="Protected">false
                                                                </xsl:attribute>
												<PROPERTYCONTAINER>
													<PROPERTY ID="default" Protected="false">no</PROPERTY>
													<PROPERTY ID="type" Protected="false">activesync</PROPERTY>
												</PROPERTYCONTAINER>
											</xsl:element>
										</PROPERTYCONTAINER>
									</PROPERTY>
									<PROPERTY ID="OutputLocation">%CSIDL_PROGRAM_FILES%</PROPERTY>
									<PROPERTY ID="OutputLocation_ALL">
										<PROPERTYCONTAINER>
											<PROPERTY ID="\">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_ROOT"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PERSONAL%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PERSONAL"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAMS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAMS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_PROGRAM_FILES%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_PROGRAM_FILES"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_COMMON_APPDATA%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_COMMON_APPDATA"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_WINDOWS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_WINDOWS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_FONTS%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_FONTS"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTMENU%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTMENU"/>
												</xsl:attribute>
											</PROPERTY>
											<PROPERTY ID="%CSIDL_STARTUP%">
												<xsl:attribute name="Name">
													<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/CSIDL_STARTUP"/>
												</xsl:attribute>
											</PROPERTY>
										</PROPERTYCONTAINER>
									</PROPERTY>
								</PROPERTYCONTAINER>
							</DEVICE>
						</DEVICECONTAINER>
						<PROJECTCONTAINER>
							<PROJECT ID="Windows Application">
								<xsl:attribute name="Name">
									<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/PLATFORM_PROJECTNAME_WINDOWSAPP"/>
								</xsl:attribute>
								<PROPERTYCONTAINER>
									<PROPERTY ID="Directory">Windows Application</PROPERTY>
									<PROPERTY ID="SortIndex">10</PROPERTY>
								</PROPERTYCONTAINER>
							</PROJECT>
							<PROJECT ID="Class Library">
								<xsl:attribute name="Name">
									<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/PLATFORM_PROJECTNAME_CLASSLIBRARY"/>
								</xsl:attribute>
								<PROPERTYCONTAINER>
									<PROPERTY ID="Directory">Class Library</PROPERTY>
									<PROPERTY ID="SortIndex">20</PROPERTY>
								</PROPERTYCONTAINER>
							</PROJECT>
							<PROJECT ID="Windows Control Library">
								<xsl:attribute name="Name">
									<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/PLATFORM_PROJECTNAME_WINDOWSCTRLLIB"/>
								</xsl:attribute>
								<PROPERTYCONTAINER>
									<PROPERTY ID="Directory">Windows Control Library</PROPERTY>
									<PROPERTY ID="SortIndex">25</PROPERTY>
								</PROPERTYCONTAINER>
							</PROJECT>
							<PROJECT ID="Console Application">
								<xsl:attribute name="Name">
									<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/PLATFORM_PROJECTNAME_CONSOLEAPP"/>
								</xsl:attribute>
								<PROPERTYCONTAINER>
									<PROPERTY ID="Directory">Console Application</PROPERTY>
									<PROPERTY ID="SortIndex">40</PROPERTY>
								</PROPERTYCONTAINER>
							</PROJECT>
							<PROJECT ID="Empty Project">
								<xsl:attribute name="Name">
									<xsl:value-of select="LANGUAGE/MICROSOFT_WINDOWSCE_2_0/PLATFORM_PROJECTNAME_EMPTY"/>
								</xsl:attribute>
								<PROPERTYCONTAINER>
									<PROPERTY ID="Directory">Empty Project</PROPERTY>
									<PROPERTY ID="SortIndex">50</PROPERTY>
								</PROPERTYCONTAINER>
							</PROJECT>
						</PROJECTCONTAINER>
						<FORMFACTORCONTAINER>
							<FORMFACTOR ID="Pocket_PC" Name="Windows Mobile 5.0 Pocket PC" Protected="true">
								<PROPERTYCONTAINER>
									<PROPERTY ID="DPIX">96</PROPERTY>
									<PROPERTY ID="DPIY">96</PROPERTY>
									<PROPERTY ID="SHOWSKIN">true</PROPERTY>
									<PROPERTY ID="SupportRotation">true</PROPERTY>
									<PROPERTY ID="DisplayWidth">240</PROPERTY>
									<PROPERTY ID="DisplayHeight">320</PROPERTY>
									<PROPERTY ID="ColorDepth">16</PROPERTY>
									<PROPERTY ID="Skin" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\Pocket_PC\Pocket_PC.xml</PROPERTY>
									<PROPERTY ID="KeyMapping"></PROPERTY>
								</PROPERTYCONTAINER>
							</FORMFACTOR>
							<FORMFACTOR ID="Pocket_PC_Square_Screen" Name="Windows Mobile 5.0 Pocket PC Square" Protected="true">
								<PROPERTYCONTAINER>
									<PROPERTY ID="DPIX">96</PROPERTY>
									<PROPERTY ID="DPIY">96</PROPERTY>
									<PROPERTY ID="SHOWSKIN">true</PROPERTY>
									<PROPERTY ID="SupportRotation">true</PROPERTY>
									<PROPERTY ID="DisplayWidth">240</PROPERTY>
									<PROPERTY ID="DisplayHeight">240</PROPERTY>
									<PROPERTY ID="ColorDepth">16</PROPERTY>
									<PROPERTY ID="Skin" Protected="false">c:\Program Files\Windows Mobile 5.0 SDK R2\PocketPC\DeviceEmulation\Pocket_PC_Square_Screen\Pocket_PC_Square_Screen.xml</PROPERTY>
									<PROPERTY ID="KeyMapping"></PROPERTY>
								</PROPERTYCONTAINER>
							</FORMFACTOR>
						</FORMFACTORCONTAINER>
						<PROPERTYCONTAINER>
							<PROPERTY ID="OSVersion">5.01</PROPERTY>
							<PROPERTY ID="SupportedProfile" Protected="false">E2BECB1F-8C8C-41ba-B736-9BE7D946A398</PROPERTY>
							<PROPERTY ID="Profile" Protected="false">yes</PROPERTY>
							<PROPERTY ID="SupportedProfile" Protected="false">Generic Compact Profile</PROPERTY>
							<PROPERTY ID="COM+ReferenceDir" Protected="false" _UseCcRelativePath="true">v1.0.5000\Windows CE</PROPERTY>
							<PROPERTY ID="NDPVersion" Protected="false">v2.0.3600</PROPERTY>
							<PROPERTY ID="DefaultPlatform" Protected="false">4118C335-430C-497f-BE48-11C3316B135E</PROPERTY>
							<PROPERTY ID="MinVSVersion" Protected="false">8.0</PROPERTY>
							<PROPERTY ID="ShowInNewProjectDialog" Protected="false">true</PROPERTY>
							<PROPERTY ID="SupportedLanguages">
								<PROPERTYCONTAINER>
									<PROPERTY ID="CSharp" Protected="false">CSharp</PROPERTY>
									<PROPERTY ID="VisualBasic" Protected="false">VisualBasic</PROPERTY>
									<PROPERTY ID="C++" Protected="false">C++</PROPERTY>
								</PROPERTYCONTAINER>
							</PROPERTY>
							<PROPERTY ID="SupportedNETCFVersions">
								<PROPERTYCONTAINER>
									<PROPERTY Protected="false" ID="2.0">2.0</PROPERTY>
									<PROPERTY Protected="false" ID="3.5">3.5</PROPERTY>
								</PROPERTYCONTAINER>
							</PROPERTY>
							<PROPERTY ID="DefaultDevice" Protected="false">25D984D9-0DFE-4DB1-A5A0-9A4F660BF2CE</PROPERTY>
							<PROPERTY ID="WizardSortOrder" Protected="false">30</PROPERTY>
							<PROPERTY ID="UserListed" Protected="false">yes</PROPERTY>
							<PROPERTY ID="ShortName" Protected="false">WCE4</PROPERTY>
							<PROPERTY ID="Directory" Protected="false">Windows CE</PROPERTY>
							<PROPERTY ID="DefaultFormFactor" Protected="false">Pocket_PC</PROPERTY>
							<PROPERTY ID="PlatformFamily" Protected="false">PocketPC</PROPERTY>
							<PROPERTY ID="SelfRegister" Protected="false">true</PROPERTY>
						</PROPERTYCONTAINER>
					</PLATFORM>
				</PLATFORMCONTAINER>
				<FILECONTAINER>
					<FILE ID="Microsoft.WindowsMobile, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.PocketOutlook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.Configuration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.Telephony, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.Utilities, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
					<FILE ID="Microsoft.WindowsMobile.Status, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
						<PROPERTYCONTAINER>
						</PROPERTYCONTAINER>
					</FILE>
				</FILECONTAINER>
			</ADDON>
		</ADDONCONTAINER>
	</xsl:template>
</xsl:stylesheet>
