<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       editServerSet.tpl                                           ##
##  Developed by:  ronix                                                       ##
##  License:       TravianZ Project                                            ##
##  Copyright:     TravianZ (c) 2010-2014. All rights reserved.                ##
##                                                                             ##
#################################################################################
if (!isset($_SESSION)) {
 session_start();
}
if($_SESSION['access'] < 9) die(ACCESS_DENIED_ADMIN);
?>
<script LANGUAGE="JavaScript">
function refresh(tz) {
	document.getElementById('tz').innerHTML=tz;
}
</script>
<h2><center><?php echo SERV_CONFIG ?></center></h2>
	<form action="../GameEngine/Admin/Mods/editServerSet.php" method="POST">
		<input type="hidden" name="id" id="id" value="<?php echo $_SESSION['id']; ?>">
			<br />
			<table id="profile" cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th colspan="2"><?php echo EDIT_SERV_SETT ?></th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td width="50%"><?php echo CONF_SERV_NAME ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NAME_TOOLTIP ?></span></em></td>
					<td width="50%"><input class="fm" name="servername" value="<?php echo SERVER_NAME;?>" style="width: 70%;"></td>
				</tr>
				<tr>
					<td><?php echo CONF_SERV_STARTED ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_STARTED_TOOLTIP ?></span></em></td>
					<td><?php echo "Date:".START_DATE." Time:".START_TIME;?></td>
				</tr>
					<tr>
						<td><?php echo CONF_SERV_TIMEZONE ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_TIMEZONE_TOOLTIP ?></span></em></td>
						<td>
							<select name="tzone" onChange="refresh(this.value)">
								<option value="Africa/Dakar" <?php if (TIMEZONE=="Africa/Dakar") echo "selected";?>>Africa</option>
								<option value="America/Sao_Paulo" <?php if (TIMEZONE=="America/Sao_Paulo") echo "selected";?>>America</option>
								<option value="Antarctica/Casey" <?php if (TIMEZONE=="Antarctica/Casey") echo "selected";?>>Antarctica</option>
								<option value="Arctic/Longyearbyen" <?php if (TIMEZONE=="Arctic/Longyearbyen") echo "selected";?>>Arctic</option>
								<option value="Asia/Kuala_Lumpur" <?php if (TIMEZONE=="Asia/Kuala_Lumpur") echo "selected";?>>Asia</option>
								<option value="Atlantic/Azores" <?php if (TIMEZONE=="Atlantic/Azores") echo "selected";?>>Atlantic</option>
								<option value="Australia/Melbourne" <?php if (TIMEZONE=="Australia/Melbourne") echo "selected";?>>Australia</option>
								<option value="Europe/Bucharest" <?php if (TIMEZONE=="Europe/Bucharest") echo "selected";?>>Europe (Bucharest)</option>
								<option value="Europe/London" <?php if (TIMEZONE=="Europe/London") echo "selected";?>>Europe (London)</option>
								<option value="Indian/Maldives" <?php if (TIMEZONE=="Indian/Maldives") echo "selected";?>>Indian</option>
								<option value="Pacific/Fiji" <?php if (TIMEZONE=="Pacific/Fiji") echo "selected";?>>Pacific</option>
							</select>
							<span id="tz" name="tz"><?php echo TIMEZONE;?></span>
						</td>
					</tr>
					<tr>
                        <td><?php echo CONF_SERV_LANG ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_LANG_TOOLTIP ?></span></em></td>
                        <td>
                            <select name="lang">
                                <option value="en" <?php if (LANG=="en") echo "selected";?>>English</option>
                                <option value="es" <?php if (LANG=="es") echo "selected";?>>Spain</option>
                                <option value="rs" <?php if (LANG=="rs") echo "selected";?>>Serbian</option>
                                <option value="ru" <?php if (LANG=="ru") echo "selected";?>>Russian</option>
                                <option value="zh_tw" <?php if (LANG=="zh_tw") echo "selected";?>>Taiwanese</option>
                                <option value="pt_br" <?php if (LANG=="pt_br") echo "selected";?>>Portugues</option>
							</select>
                        </td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_SERVSPEED ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_SERVSPEED_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="speed" value="<?php echo SPEED;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_TROOPSPEED ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_TROOPSPEED_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="incspeed" value="<?php echo INCREASE_SPEED;?>" style="width: 20%;"></td>
					</tr>
                    <tr>
						<td><?php echo CONF_SERV_EVASIONSPEED ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_EVASIONSPEED_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="evasionspeed" value="<?php echo EVASION_SPEED;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_STORMULTIPLER ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_STORMULTIPLER_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="storage_multiplier" value="<?php echo STORAGE_MULTIPLIER;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_TRADCAPACITY ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_TRADCAPACITY_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="tradercap" value="<?php echo TRADER_CAPACITY;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_CRANCAPACITY ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_CRANCAPACITY_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="crannycap" value="<?php echo CRANNY_CAPACITY;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_TRAPCAPACITY ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_TRAPCAPACITY_TOOLTIP ?></td>
						<td><input class="fm" name="trappercap" value="<?php echo TRAPPER_CAPACITY;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NATUNITSMULTIPLIER ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NATUNITSMULTIPLIER_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="natars_units" value="<?php echo NATARS_UNITS;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NATARS_SPAWN_TIME ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NATARS_SPAWN_TIME_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="natars_spawn_time" value="<?php echo NATARS_SPAWN_TIME;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NATARS_WW_SPAWN_TIME ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NATARS_WW_SPAWN_TIME_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="natars_ww_spawn_time" value="<?php echo NATARS_WW_SPAWN_TIME;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NATARS_WW_BUILDING_PLAN_SPAWN_TIME ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NATARS_WW_BUILDING_PLAN_SPAWN_TIME_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="natars_ww_building_plan_spawn_time" value="<?php echo NATARS_WW_BUILDING_PLAN_SPAWN_TIME;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_MAPSIZE ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_MAPSIZE_TOOLTIP ?></span></em></td>
						<td><?php echo WORLD_MAX;?>x<?php echo WORLD_MAX;?></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_VILLEXPSPEED ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_VILLEXPSPEED_TOOLTIP ?></span></em></td>
						<td>
							<select name="village_expand">
								<option value="1" <?php if (CP=="1") echo "selected";?>>Slow</option>
								<option value="0" <?php if (CP=="0") echo "selected";?>>Fast</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_BEGINPROTECT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_BEGINPROTECT_TOOLTIP ?></span></em></td>
						<td>
							<select name="beginner">
								<option value="7200" <?php if (PROTECTION=="7200") echo "selected";?>>2 hours</option>
								<option value="10800" <?php if (PROTECTION=="10800") echo "selected";?>>3 hours</option>
								<option value="18000" <?php if (PROTECTION=="18000") echo "selected";?>>5 hours</option>
								<option value="28800" <?php if (PROTECTION=="28800") echo "selected";?>>8 hours</option>
								<option value="36000" <?php if (PROTECTION=="36000") echo "selected";?>>10 hours</option>
								<option value="43200" <?php if (PROTECTION=="43200") echo "selected";?>>12 hours</option>
								<option value="86400" <?php if (PROTECTION=="86400") echo "selected";?>>24 hours (1 day)</option>
								<option value="172800" <?php if (PROTECTION=="172800") echo "selected";?>>48 hours (2 days)</option>
								<option value="259200" <?php if (PROTECTION=="259200") echo "selected";?>>72 hours (3 days)</option>
								<option value="432000" <?php if (PROTECTION=="432000") echo "selected";?>>120 hours (5 days)</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_REGOPEN ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_REGOPEN_TOOLTIP ?></span></em></td>
						<td>
							<select name="reg_open">
								<option value="True" <?php if(REG_OPEN==true) echo "selected";?>>True</option>
								<option value="False" <?php if(REG_OPEN==false) echo "selected";?>>False</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_ACTIVMAIL ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_ACTIVMAIL_TOOLTIP ?></span></em></td>
						<td>
							<select name="activate">
								<option value="true" <?php if (AUTH_EMAIL==true) echo "selected";?>>Yes</option>
								<option value="false" <?php if (AUTH_EMAIL==false) echo "selected";?>>No</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_QUEST ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_QUEST_TOOLTIP ?></span></em></td>
						<td>
							<select name="quest">
								<option value="true" <?php if(QUEST == true) echo "selected";?>>Yes</option>
								<option value="false" <?php if(QUEST == false) echo "selected";?>>No</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_QTYPE ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_QTYPE_TOOLTIP ?></span></em></td>
						<td>
							<select name="qtype">
								<option value="25" <?php if(QTYPE == 25) echo "selected";?>>Travian Official</option>
								<option value="37" <?php if(QTYPE == 37) echo "selected";?>>TravianZ Extended</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_DLR ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_DLR_TOOLTIP ?></span></em></td>
						<td>
							<select name="demolish">
								<option value="5" <?php if(DEMOLISH_LEVEL_REQ == "5") echo "selected";?>>5</option>
								<option value="10" <?php if(DEMOLISH_LEVEL_REQ == "10") echo "selected";?>>10 - Default</option>
								<option value="15" <?php if(DEMOLISH_LEVEL_REQ == "15") echo "selected";?>>15</option>
								<option value="20" <?php if(DEMOLISH_LEVEL_REQ == "20") echo "selected";?>>20</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_WWSTATS ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_WWSTATS_TOOLTIP ?></span></em></td>
						<td>
							<select name="ww">
								<option value="True" <?php if(WW == true) echo "selected";?>>True</option>
								<option value="False" <?php if(WW == false) echo "selected";?>>False</option>
							</select>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NTRTIME ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NTRTIME_TOOLTIP ?></span></em></td>
						<td>
							<select name="nature_regtime">
								<option value="28800" <?php if(NATURE_REGTIME == 28800) echo "selected";?>>8 hours</option>
								<option value="36000" <?php if(NATURE_REGTIME == 36000) echo "selected";?>>10 hours</option>
								<option value="43200" <?php if(NATURE_REGTIME == 43200) echo "selected";?>>12 hours</option>
                                <option value="57600" <?php if(NATURE_REGTIME == 57600) echo "selected";?>>16 hours</option>
                                <option value="72000" <?php if(NATURE_REGTIME == 72000) echo "selected";?>>20 hours</option>
								<option value="86400" <?php if(NATURE_REGTIME == 86400) echo "selected";?>>24 hours (1 day)</option>
								<option value="172800" <?php if(NATURE_REGTIME == 172800) echo "selected";?>>48 hours (2 days)</option>
								<option value="259200" <?php if(NATURE_REGTIME == 259200) echo "selected";?>>72 hours (3 days)</option>
								<option value="432000" <?php if(NATURE_REGTIME == 432000) echo "selected";?>>120 hours (5 days)</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_OASIS_WOOD_PROD_MULT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_OASIS_WOOD_PROD_MULT_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="oasis_wood_multiplier" value="<?php echo OASIS_WOOD_MULTIPLIER;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_OASIS_CLAY_PROD_MULT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_OASIS_CLAY_PROD_MULT_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="oasis_clay_multiplier" value="<?php echo OASIS_CLAY_MULTIPLIER;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_OASIS_IRON_PROD_MULT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_OASIS_IRON_PROD_MULT_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="oasis_iron_multiplier" value="<?php echo OASIS_IRON_MULTIPLIER;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_OASIS_CROP_PROD_MULT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_OASIS_CROP_PROD_MULT_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="oasis_crop_multiplier" value="<?php echo OASIS_CROP_MULTIPLIER;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_MEDALINTERVAL ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_MEDALINTERVAL_TOOLTIP ?></span></em></td>
						<td>
							<select name="medalinterval">
								<option value="0" <?php if(MEDALINTERVAL==0) echo "selected";?>>none</option>
								<option value="(3600*24)" <?php if(MEDALINTERVAL==86400) echo "selected";?>>1 day</option>
								<option value="(3600*24*2)" <?php if(MEDALINTERVAL==172800) echo "selected";?>>2 days</option>
								<option value="(3600*24*3)" <?php if(MEDALINTERVAL==259200) echo "selected";?>>3 days</option>
								<option value="(3600*24*4)" <?php if(MEDALINTERVAL==345600) echo "selected";?>>4 days</option>
								<option value="(3600*24*5)" <?php if(MEDALINTERVAL==432000) echo "selected";?>>5 days</option>
								<option value="(3600*24*6)" <?php if(MEDALINTERVAL==518400) echo "selected";?>>6 days</option>
								<option value="(3600*24*7)" <?php if(MEDALINTERVAL==604800) echo "selected";?>>7 days</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_TOURNTHRES ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_TOURNTHRES_TOOLTIP ?></span></em></td>
						<td><input class="fm" name="ts_threshold" value="<?php echo TS_THRESHOLD;?>" style="width: 20%;"></td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_GWORKSHOP ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_GWORKSHOP_TOOLTIP ?></span></em></td>
						<td>
							<select name="great_wks">
								<option value="True" <?php if(GREAT_WKS==true) echo "selected";?>>True</option>
								<option value="False" <?php if(GREAT_WKS==false) echo "selected";?>>False</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_NATARSTAT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_NATARSTAT_TOOLTIP ?></span></em></td>
						<td>
							<select name="show_natars">
								<option value="True" <?php if(SHOW_NATARS==true) echo "selected";?>>True</option>
								<option value="False" <?php if(SHOW_NATARS==false) echo "selected";?>>False</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_PEACESYST ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_PEACESYST_TOOLTIP ?></span></em></td>
						<td>
							<select name="peace">
								<option value="0" <?php if(PEACE==0) echo "selected";?>>None</option>
								<option value="1" <?php if(PEACE==1) echo "selected";?>>Normal</option>
								<option value="2" <?php if(PEACE==2) echo "selected";?>>Christmas</option>
								<option value="3" <?php if(PEACE==3) echo "selected";?>>New Year</option>
								<option value="4" <?php if(PEACE==4) echo "selected";?>>Easter</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_GRAPHICPACK ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_GRAPHICPACK_TOOLTIP ?></span></em></td>
						<td>
							<select name="gpack">
								<option value="true" <?php if(GP_ENABLE==true) echo "selected";?>>Yes</option>
								<option value="false" <?php if(GP_ENABLE==false) echo "selected";?>>No</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo CONF_SERV_ERRORREPORT ?> <em class="tooltip">?<span class="classic"><?php echo CONF_SERV_ERRORREPORT_TOOLTIP ?></span></em></td>
						<td><select name="error">
							<option value="error_reporting (E_ALL ^ E_NOTICE);" <?php if(ERROR_REPORT=="error_reporting (E_ALL ^ E_NOTICE);") echo "selected";?>>Yes</option>
							<option value="error_reporting (0);" <?php if(ERROR_REPORT=="error_reporting (0);") echo "selected";?>>No</option>
						</select>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<table width="100%">
				<tr><td align="left"><a href="../Admin/admin.php?p=config"><< <?php echo EDIT_BACK ?></a></td>
					<td align="right"><input type="image" border="0" src="../img/admin/b/ok1.gif"></td>
				</tr>
			</table>
		</form>
