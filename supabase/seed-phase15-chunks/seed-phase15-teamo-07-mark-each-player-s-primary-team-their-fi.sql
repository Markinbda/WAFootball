begin;

-- --------------------------------------------------------------
-- Mark each player's primary team (their first Playing Team row)
-- --------------------------------------------------------------
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '5e152151-57d9-5ac5-854a-8d6a2b3b1497';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = '9b093601-8f03-5b77-a797-1985d96b21c9';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = 'd37196f4-361c-5904-9c95-d4777c26866b';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '3e98d993-2201-5926-bbaa-68b69525ffe4';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '967e4a40-35fc-512a-a013-ee509ef84966';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '65ff8171-8356-5264-9caa-bcee73d771ad';
update public.player_teams
   set is_primary = (team_id = 'b6cdce3b-d0b8-5300-ac78-a87171506878')
 where player_id = '1abd0f76-7570-5271-84a5-6f23147bed97';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'e5b7091b-d070-512d-a97f-8e19d1723e1a';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '81d9ff56-4c6c-5879-8604-baabca917559';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '6a9f7271-226a-5162-8987-cf22a7600999';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'c1209a5a-eaad-5c41-958f-c15d878f2b59';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '786b9e02-d8fc-5e9f-aad9-8de00202e1a9';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'be183c28-81c3-53b0-a7c0-df74ee897e46';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'ee1bd706-703e-5398-a12c-f2171e04d3f6';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '9eee43e0-a92d-5db3-9429-39db1da7fef6';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '6aa947bd-c701-5851-9b59-cacba4c087b3';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '12290d72-2498-5639-8cfc-5d59b553431f';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'f3311e52-77d8-5981-b636-6c2d1312edf4';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '31b0b659-6310-55e6-9ce9-d8c94226f70b';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '055364d8-31af-5a6c-947e-691b0c584f26';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '5c9460f7-c42b-5add-ab97-0a570aec731f';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'a883b50e-77d1-5ee0-9f04-2be04760f0f8';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'bcdaff3d-a167-5b53-894a-baa6564d1519';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'f55d8765-d483-5376-bc29-6e68c3861bd6';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = '59f007c2-d254-5872-9c4f-1a7e0866ae02';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'f563ead6-1feb-5e6a-9b7e-e20bc2760918';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '893bb10b-57ff-5424-aa39-b4e4f5fcc682';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '143dd3ca-d91e-58f5-9a8a-3b3b32eed270';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '9cd50455-5410-501a-b2a9-f319751b1766';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '8221b25f-5986-5a13-84b1-312962d63b8b';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '86f8f193-0fc5-574e-94a7-dd119e8c9719';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'e79b0394-a462-5c24-a8f4-5a5cc576b44a';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'b3b85887-5641-5bef-bb9c-9e70e0308e8e';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '842195c9-f42b-5a9a-9b25-be29fb27305b';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '1ff740dd-9f1e-586b-a136-6d7c3445c83b';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '8c028681-b5b4-5058-b086-7cca511735bf';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = 'fe01980a-4476-50aa-af56-7f77a5a75b6e';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '14a1353e-66b4-55e3-aea4-f3a50d5106d0';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '1c0e6761-a8bd-53e2-90ef-8bf4abc2883e';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'ecdff891-5e22-5375-b5aa-8ce352211d76';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '1751fd44-a113-504f-88db-73781a4aebdf';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '0548ad4d-4071-5fb6-8fab-cde4fdb34f22';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '0548ad4d-4071-5fb6-8fab-cde4fdb34f22';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = 'a84b4643-7eb0-5706-8770-b6f0fc6caed0';
update public.player_teams
   set is_primary = (team_id = 'b6cdce3b-d0b8-5300-ac78-a87171506878')
 where player_id = '23e0fe9e-32c3-56f6-a968-8de910195319';
update public.player_teams
   set is_primary = (team_id = 'fa778b9e-136f-599d-b72a-98394a06fe96')
 where player_id = '23e0fe9e-32c3-56f6-a968-8de910195319';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '363b40ec-bbd3-52f9-832b-e1818326868c';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '3bee9833-8096-52f6-a922-6b38742cd1ca';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'ff120724-c495-562d-994e-939d1cd4164b';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '6fadfb89-6dd0-5e50-a2f2-53b4ed2dde00';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'b94ea220-2d0f-5078-81e5-cb5d73d7f7b6';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '80dcfdf1-9a00-5ff4-a2b8-584f94183976';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = 'f0d0885c-66be-52dd-9291-1ab0aacc788d';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '516b758c-b07c-5e31-93a2-85a6afdf1b58';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'f6d9fd1b-57fa-5cc6-ae73-dfedd01f1350';
update public.player_teams
   set is_primary = (team_id = '93b36d13-689b-5d09-a662-3a2323785090')
 where player_id = '8b0f6390-813a-5d40-b634-a1a26a265023';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = 'a86af933-a3c2-52f4-b217-ababd666f964';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '5ae13327-7d5c-537a-8882-0f17fc7c175c';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = 'db5cac0a-5f58-5578-a0dd-75eb6a91de98';
update public.player_teams
   set is_primary = (team_id = 'fa778b9e-136f-599d-b72a-98394a06fe96')
 where player_id = 'e4d232a3-fc65-5dfe-b429-8feb5686e05b';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '95653d96-7df9-568b-b7d1-e69f50b0e408';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '13504d67-1be8-5b72-9045-a11ad6988c1b';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = 'fb46c283-c20a-5849-8ab4-27b956caa9d5';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '074cbb58-94c2-54d2-8c98-08734b607949';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = 'cb9a1f0c-5191-5c9f-b684-d89e9dc254b1';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '6fbff24f-d05d-5142-92cb-0e0ff899091c';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '98f37386-d635-5f75-92d2-6df9d4ef494d';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'ea366fac-a446-58cc-bf6e-e5142519e9b1';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'dd7f934e-596b-5735-8a79-ddde3e2a0641';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'aeed4228-ac92-592d-bfa0-edbffff82006';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'af98dfe1-ed1d-54e2-a3e0-4b8fe0c6da1f';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'bd17d5be-9446-59e4-b361-9b582c242ae2';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '4e24d855-7c95-5962-8368-bad48f5c4cf3';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '7284d396-c389-5bd6-92c8-bb718a6d1628';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '7f754141-f1d5-5aed-8307-864b6710e797';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'e4cd3fb7-3483-5365-8baf-d6c67faf3c88';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '721c0792-4ebb-5894-bf30-6db88a666b3a';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'fd96d2a6-722c-52df-96be-59a22484eb3b';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '5aabac1f-6392-5541-b004-b458a601491e';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'aa830753-face-5056-a6df-620fe957a1c7';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = 'c70ea1e7-c034-5e80-9bea-fd142f3702d3';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'c350ecb1-d125-5c20-8d45-016421795ae5';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = 'bcd167ba-b346-573e-b6f3-006fb6f4dac8';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'b4eae147-ea12-5579-b5f6-e01ce92ca20a';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = '721868fe-f08d-59cc-84d0-79aa9c630f13';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '55fb3633-94c1-556a-a4f8-a88ba0f20de3';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '41532cf3-468f-5ed7-bfa1-cfe556b614d8';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '798b4493-6bef-596f-9ef7-b26529577e48';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '4cbb51ca-8aa9-559c-8068-516d29529095';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '8a786e70-0204-592f-a919-3d9a1d72bf9b';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = 'b94a4849-64bf-561f-813d-7040e593ee8f';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '9c8bf86b-738e-583f-accc-6f0473bffe52';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '9c8a01e6-3786-59e7-9935-e18ae44d8e05';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '3660f69a-3bce-51f7-ade2-855c3edd9802';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = 'df4a1ed1-58bb-57d1-acb3-ab4a4581cce8';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '515aa137-0e00-5322-bbf2-758b514c4bec';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'f65b0aa8-9d59-569d-a999-d572aeb5b69a';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = 'fc150945-ddc9-5a61-8a76-81c995e93e56';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'c9d5d4ea-46e0-5609-a19b-490f45ff147b';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'de28db52-1717-5bf1-b508-a1630eba23a9';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '92c06bf5-2e46-5f82-8f82-2e728853b351';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'e6e4dbf7-79ae-5e71-b6d9-b2b355657df7';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = 'e04c2837-727f-5b82-b3e5-9e474f112590';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '7ba4c87b-ce86-5cab-bf33-3df0903d1519';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '7ba4c87b-ce86-5cab-bf33-3df0903d1519';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '8b280b52-156c-5ee5-930a-8d24c3463c09';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'c231c491-d4c4-5d1b-9045-d2ee8235848a';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = '70453719-31ff-576d-b42e-02a6d901e8a3';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '4a73bbe3-7364-52da-9c0f-9534cec3dda1';
update public.player_teams
   set is_primary = (team_id = 'fa778b9e-136f-599d-b72a-98394a06fe96')
 where player_id = '3c2b522b-b0aa-5b53-99c5-6950b340f8f1';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'ebb787a7-b608-5d1c-85e7-2a88e29ede59';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '910ab91a-b676-542f-a472-4f25a83d8d18';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '738cde3b-e4df-53b9-a0a9-d32a7dffdf05';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '248aec8d-4488-58e1-b064-0abe4c348e5d';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'af841826-e988-5330-9f5f-b558558c70bc';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b7274f19-dd57-5e72-b1a3-0caa30c21b38';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'bac0636b-c413-501a-a1c3-c59c3890acf3';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = 'bac0636b-c413-501a-a1c3-c59c3890acf3';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'be108759-2f02-572b-a643-97639f6f2331';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '2059b362-e631-5f30-8e6c-479171a2ae72';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '9d393a98-aa44-5429-a295-c42917f6a37f';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '728df03d-0add-5499-bafa-c70301c8768f';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '349ab520-9b7d-5eb5-ae99-92bdb8985651';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'a0e4c016-ee33-5747-9004-8957b80ade8b';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'c57d9c56-d994-503f-ba0c-904e70efd349';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '1ce90eeb-d7b3-5602-848a-3c5605a40192';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '397d117e-832f-5d88-a4c9-0187636dc200';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '9f531953-2d08-5665-a9c5-051dca3afb2c';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'f5264c76-d811-58f5-9faa-bbf6d1d4c573';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = '02550e63-19d2-51fc-a57a-43f9900ec567';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '1c25df15-d5b4-5811-bebd-d96bbbd2badd';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '11057ecb-d321-5c62-b5e2-aff76f738bbf';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '09d3221a-0df9-59d9-9a1d-069746b3a1ce';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '66e778cb-6789-5207-b08b-33f6da5f871a';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '86f85ef7-c26c-5b1e-a0db-983206de63bd';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'e4a71635-d8d4-5f3e-ace2-1adb8e94780a';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '71f4fc11-b3d7-5edf-bca2-5200a68e6f62';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '9a06a464-8d7e-5534-bad8-dc8ec1c1f090';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'e76a0577-cfc6-517d-878c-35a269345f6f';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'ff76a4d8-5d37-5ee6-a9a4-3d586028f6c7';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '1d8be3a6-b804-5524-b0fe-c3a71617531d';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '68bb26f3-72c5-56b0-bf35-d2256976d2e1';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'bc4ac85e-a4dc-53d8-8e6b-2617913b56b4';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'eddc76af-e091-5320-a20d-fab50e72b1ea';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = '25172d33-7821-5934-9a72-8a30dff936d9';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'a7f852b5-70ca-5bd0-ba36-27e232e9cc50';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '42f7a79c-8673-539f-aaab-8ec1ce85e477';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '5a6299cf-7ca6-5273-8284-3401a569d2f7';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '0b7e1372-8a01-5abe-90ad-adcd40102d90';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '18df82ab-c448-5a57-a0b8-5c01a5246d7c';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '7df73d0d-76c4-54d7-9a4f-5df132abbffe';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '673036ab-0149-54a6-8fb4-5e5b49a949d6';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'fcb62382-6601-5642-a787-c910e0c4d166';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '86b80bde-f840-55fd-b517-1fea3825a1c3';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'f530d272-0386-59fb-8c95-8f236640bd06';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '22329006-cbfa-5c41-a01d-85f4e27faa44';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'e643ba8e-c593-5ea8-9152-eeef95e244a1';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '8cf12749-55f4-586e-9830-148df38ccce1';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'a2e1f2df-eb5c-5e08-9167-8cde7371c272';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '96c58539-749e-5a90-be35-6de25dc1b252';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '3efc671f-7bf6-5b65-967d-be176592861d';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '267181b9-390f-58ed-906f-db1f60ac707b';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = 'da5a6f40-bf4d-5246-ab13-21ad1e844942';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'd96c1eeb-4d2d-5ad2-8bd7-82828b896c74';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = 'aa777833-9a90-5eab-bb6b-f39847849be0';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '14413f5d-a90a-5e28-ab68-1be165c36e0a';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '8f29eb4f-9750-51c4-96e0-fde95fd8cb56';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '968d4275-fc29-55aa-af35-9fa11897f0da';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '80590dde-bd9b-57fa-8885-831f04d1f117';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '77930f2a-c9dd-59d7-9680-252b36912223';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '75597304-5511-5a10-9f18-d453329e94b7';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'e9a5a24e-7da4-5e06-baac-1ad48e67e5bf';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = '85d3901a-24ce-575c-9534-e2a416b6f54e';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '10db1869-c011-5514-a0a0-4f988604c492';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '3afbe9c1-cbf3-51d7-9a63-346f5f510692';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'b2574d71-38f4-5208-b5b0-b7de388a9358';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '16e2802f-be3d-540f-9f23-3a91e319e0ba';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '7122ffc3-42d2-584b-aff0-99900bb28710';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '46c140d1-8171-59a6-9ce1-d8bad2ab3f20';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = '90a0baa4-0b59-56f4-9fc6-f85da1f7a821';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '29533d00-d286-59b3-8fd0-bbd2cf522d74';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '8b1d94da-27ea-5032-b430-a40613c0732d';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '1d482bba-09dd-56df-a9ab-6aafe3209b91';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '1d73c709-fc9b-5233-9cd6-b7357ea74b0e';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '57347a63-a410-59c0-830c-29b18c1ed37d';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '6d05cb95-3a97-5268-80ba-6d7149ff32bb';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = '54c355ad-4ef7-548f-a21a-1d5d42babf4f';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '5db8a455-3047-59df-bf5b-6ff070ab6fc2';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'db4d7107-4211-57ce-9ba5-4213313c4a21';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '022f8144-164f-528b-a5be-e2cdc6f1346e';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '9cc41e27-b47c-5ad3-b4b0-0a390bcec910';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = '96dfaecd-1a9b-58cd-8378-7a62104aba95';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = 'e8a58e96-7194-5350-bbef-e8f449d568e1';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '4c663925-5dc0-5fe0-8e22-7494ed1c21f3';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '4714649e-d2c4-58d5-b69e-03386944efcc';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '4e617f55-c967-5133-bd24-1a5fb30cf683';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = 'ec70e6c7-809c-587a-a46c-259a74ce80e8';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '5ad53a9d-ae15-5e15-a880-f3be0d490fc9';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = '24df5d46-df9f-59d1-a06b-bd439a035833';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '261feef9-9ed0-5e0d-a751-1b7d383c35e6';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '261feef9-9ed0-5e0d-a751-1b7d383c35e6';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '020a0987-b368-58b6-bd00-212aaf960c59';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '7e351d31-8753-571e-9720-8554e2ba0353';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = '55449e30-6d33-52a4-97ec-99fbc6fac475';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'ee84ebd9-2136-54f8-b734-ced968356c0d';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'b0cff1f4-e151-55ab-94b7-68012d66fbbe';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = '6d3a6b1b-90a3-506c-9108-674372413b24';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '847e9a91-af85-5418-b4a2-071b93215730';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = 'c8484b64-a79a-5d1c-85db-ad5dda7ff182';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '8cb20e7e-bdcd-5494-a260-0c92e892f380';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '89b7d78b-6c4c-5b23-934a-4ff507c9f35d';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = '87042eb2-fc2c-5407-8f67-008a156699dd';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '7ddaa62a-c490-51cd-8fc6-590b0819c4a0';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'f1648a61-beba-596b-af87-fa35f6455c0c';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '72ac8d6f-6111-5b44-9af5-2885730cf1ee';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'c985c5d3-9940-5f09-9b99-e5ab8b225442';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'cfe82441-a92d-566f-accf-b806798fe288';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '475ce980-35c5-5772-962b-effb5928ced6';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '4e5dd99c-eae3-5236-b02a-e89edc9edecd';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '0504a4d1-e764-51c7-ab58-ba5d15266535';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = 'd1980217-59d6-5ec3-8826-6f5b2a1098e5';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '34048e3c-e792-5f50-af89-11de0b264280';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'e8a818a4-062f-54ba-8904-8a4aae86d82e';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = 'ec1c9152-f822-59df-9a4c-c5499040cabb';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '14186bc8-3a68-572b-b1e6-2ab461709499';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '893e08e5-5f45-529e-b677-ddffe1fadd5d';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'e5724a31-11c1-5586-b302-9ec6e5e47257';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = '24986009-8615-533a-9442-0a38f81ff8bc';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = '24986009-8615-533a-9442-0a38f81ff8bc';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = '7b200ebb-7396-5d45-86b0-e68d013c2fc9';
update public.player_teams
   set is_primary = (team_id = 'b6cdce3b-d0b8-5300-ac78-a87171506878')
 where player_id = '7b200ebb-7396-5d45-86b0-e68d013c2fc9';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '87d27f54-288b-5fb8-9f3f-10a77d33aa1a';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '9edd1daf-92c5-5134-aece-054ff4415f46';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '74719f37-0d3c-573c-98f1-d2fee940f8b4';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = '84a0c88c-82f4-594b-b267-df244e02c1b9';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = '09a27caf-13d0-5ad0-a857-17d0a70c78f5';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '61bdf130-24ab-5db4-8613-26ffd7c981b0';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = 'e9ee7d76-7538-5b64-8222-281cd85385dc';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '4720f096-ce1d-57fc-96a0-24f226c6a518';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '3ad6cfcf-c9eb-5d03-adce-664b20cfaea7';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '70365bb8-f94b-58f4-835a-9786b4ccb133';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '0fe97380-3602-55f8-a505-c1e1f2dec853';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '16493453-cc88-5a14-a55e-ee468942fba9';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '74e54ab6-a867-5ecd-8ec2-58043ccec70e';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '269960a2-b54f-5468-9a4c-fd0ef54c8f2a';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '207f46f7-69ec-5015-bb20-a9567b31a4f9';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'ee7aa22c-1b66-5ec5-bbd9-8ec3db0f6900';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '18598115-6ffb-5b27-8291-464dba3ec587';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = '32052cd6-f214-5bd6-9d9b-46836acc3893';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = '7c79409d-1816-5dd3-b306-3b95034087d6';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'bb39fa18-288b-51bd-b91e-262e594f26a0';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'a482284e-aa76-543a-88c1-a75ce9e1afa8';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = 'ef34a716-22b0-5565-a2d3-5b0863fe7362';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '7605753f-5437-555d-81ad-4c523fcc364f';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '7605753f-5437-555d-81ad-4c523fcc364f';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '5242ab96-46ce-533b-b39e-53db7715c560';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = 'c88d7457-8b64-59f7-9545-6223e9b6a9ab';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = 'be5dbabf-3f8b-5087-88cc-74e38a571467';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '82b5af6a-67ef-579f-bec2-fffb18b19b54';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = 'e5670784-e455-53e5-973c-ba4a102a97e7';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '89b423ee-08b5-59aa-8543-ffe792576394';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '8660b42b-f011-5475-84bb-f7de8b7df4d4';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = '4745bf5e-d536-5afe-866f-32944fd493d9';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b365964c-594b-5f41-a202-d0d456d9486f';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'cbccba11-359f-5286-ab6f-d7417675f474';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '909a8772-e4e2-513a-aabc-05f7d16a0c84';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '5fad023d-aeb3-5297-96cc-678249b96d24';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'd26fa2ac-24fc-50cb-a087-c1a6ad23f2a9';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '65426883-2f34-5576-b09c-22f2a311426e';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '6468287f-e96f-5d84-a85d-5f2a8df8ee9d';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '48bac52b-f67e-55ef-89e3-f036e5db7668';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '37b0ca02-ded2-52da-b894-2b1235c4bda9';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = 'f7a5e7ce-8e93-5511-a90e-fbfa73b35f53';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = '19778fc8-9705-568d-b15d-fc523e392ed6';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '3e653cdb-0ea4-5b9f-9545-d6ff7fe49c81';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = '906ec451-8b43-53dc-bb69-8a5ac4d08c7a';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '45648259-e49b-50f1-a832-1fc8240b00d6';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '7dc670c0-28e9-534f-b7de-0a12520455d4';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = 'bdf2f768-ebe2-55d1-a356-974eb3c4a899';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = 'f5c5c2a6-d747-535b-9089-38b4a323d4b6';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'baca6eec-74b2-5602-b2fc-683b61eea09f';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = '292aca58-e983-56c8-a0cc-67d67b84e476';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'd775f4ae-d233-5835-926a-6e55d2fe1524';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'a9fb6d05-b163-5a2d-9149-05722e2e0584';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '73018665-791b-5d03-9c6a-ffcbbd8af0b4';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = '8d6f5b56-549e-51ee-8347-b54b9c8eccd7';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b4d9686a-2956-5819-bdd6-4549c929eb93';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '2086e886-f221-56fe-8d00-f15e964ddf5d';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '8cc77b0e-4d0d-57fc-a616-240956da6917';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '99a17b40-27cc-5afd-a8a8-a0e42b8cd281';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '0183ce8c-53b1-5287-948f-b0e734d768ab';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = 'caeea1fb-5910-54d0-a856-b485d294f309';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '345d867f-775d-5ae4-ba42-b57f8b7be60f';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'c05a7ab9-9eca-568c-80bc-29c63c77d6bd';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = 'd1cbc4e9-aafd-591c-9d66-011fab0705a1';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '8b2a7f1e-2867-5401-b74d-59e1c3b241b2';
update public.player_teams
   set is_primary = (team_id = '5c9202f4-a20a-5379-85d3-73fce1d68664')
 where player_id = '69924e4b-1a19-50a8-93e9-d6ba42a534a8';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '0cb6114f-be5c-53ab-aa23-0e543e51cf26';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '93380d98-efc5-569c-b890-4e8d9139c036';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'd1070fbc-8620-53c0-8055-a5861e8004ed';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '42e232dd-cdbf-5793-9c12-e57fd04acea8';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'f5c42d69-d88c-586a-9152-4dc7faf1c95f';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '51cc7782-5e8c-5d30-a79c-435f50ac1828';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '520dd8e3-f038-5bc3-a816-24f73a16a494';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '8c0f1d59-2601-5012-bdc0-a67d83378be1';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '69b4564d-d655-5230-8807-2998988cbfcc';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '4352ec85-4b7b-5521-8e25-35ccfe7e310f';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'dc0a7ce9-6ba3-544a-ab75-24acc0696956';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = 'cbaf5661-2631-5223-bffd-b72a23504f81';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'bc34df30-0214-5471-8563-728919201031';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'd483e025-2f50-563e-baf8-fdd66232144f';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '8d6a1808-3373-5e3b-8575-ec757a592694';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '51ec0b61-44b9-5075-945f-66f2dc561633';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'd644b446-34f5-5d01-831d-59e0eb15a89d';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '14b44cce-0e32-5ef6-a268-d185c785151f';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = 'f1a056d0-8400-5376-aca4-f84c3872d941';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'e269fedd-4413-5f62-8bbf-74b476818f77';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '2da9b3b5-8f55-5c4a-a586-1cacbe122c23';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '54682ffe-d36c-54da-b32d-f55f6773ce19';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'e4e19228-143f-5adc-9aa6-21e431a9663f';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'f2e8a492-1a30-5916-aed9-6502924db602';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a';
update public.player_teams
   set is_primary = (team_id = 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6')
 where player_id = 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b5952fc5-fd71-56f2-a07a-0f9b6c612363';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b5952fc5-fd71-56f2-a07a-0f9b6c612363';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '0a8e5555-e1e6-5381-905d-f36a7d571ff7';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '41bfdee6-e11e-516b-bb0a-83f9992ddb7f';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '75ea0cc7-9ce5-5587-883a-0a7ee636f757';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '338f0ff5-6299-56ea-937f-6e3948c3a8c3';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = '2fa76faa-4264-5b1b-9195-b7aadfbe091f';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '1153b981-f86a-5497-917c-b4d1fb28ecb6';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '28a96007-d2ae-57c8-916a-68ef181a34ee';
update public.player_teams
   set is_primary = (team_id = 'fa778b9e-136f-599d-b72a-98394a06fe96')
 where player_id = '8a184e23-4f08-50a6-9882-c8ab52949adf';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '389b78c0-aec6-586a-87f9-73b643899c20';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '7a9c31e4-8541-5df5-8b66-15c3b7cbe0fb';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '072c82c8-65a9-53b6-bd59-1557bf709135';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '37d62637-5514-581a-b547-b2d128897bd5';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '9919c475-10c7-5916-ba70-9e3f97812da8';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'f4cf22af-ad2a-5c74-83db-14e0f0658140';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '506c687d-090f-57dc-a924-6dfd6e71e13b';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '99ae1282-e442-52db-9f24-390b8f1b23f3';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'e8b0bfa7-dc77-5869-91b7-32e4d2d11170';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '730d388b-dafe-52cf-87b8-4a8aeb8e5099';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '730d388b-dafe-52cf-87b8-4a8aeb8e5099';
update public.player_teams
   set is_primary = (team_id = '4d8cf9af-1962-5d46-8fcc-d5ad74b08181')
 where player_id = 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = 'd2abaff2-7212-5905-90fa-1674f7de6f29';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '030a6df3-df8a-5522-879c-f6b3f4979709';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'd8562340-772f-582a-85e3-bcf5b7ccd19e';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = 'd8562340-772f-582a-85e3-bcf5b7ccd19e';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '9555bf95-6350-5e61-89b5-6e15a5312557';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '45ae7b1b-51c3-587d-b6da-12ed714421af';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'afca7a66-c3ce-5f08-92dd-46881cf1ba46';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '21f94594-ada2-5a24-bf7a-c57b46efb927';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '61e658c0-7050-54b6-8e06-61edbf47d9b0';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '01e88696-bc99-5fda-b820-0e17469f58b5';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = 'b7157502-dc1e-5bf9-a2f3-13555333e0c1';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '450175ba-a3c9-5440-9a96-09b745c727dc';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '97ed902f-ae41-58de-a2bc-60c85cd0d5f1';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '0dadcb2c-45d6-5317-9373-0837b68dddf5';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b002d9b8-2a8a-5043-9ff3-dc435291a5c2';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '6bce2204-b1f1-58bc-a8af-e736717b63af';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = '91c5f86c-4179-517e-a1df-433af4c6bed0';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'defbbae5-8b73-502a-ae78-991d0a8944b3';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '7bb31037-102c-5416-9c5f-9f864dce0848';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '81d88d8a-8a9e-5a86-9065-3cf064d8920b';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = '92403401-fce8-5a9b-b035-5d9ef0994ab4';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = '71d31fa9-786d-5958-8c21-6478e94c54c3';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '446f2701-8cd7-5239-891c-5a97b650af05';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = '768ff813-e5d7-5939-b569-68ccb5b81c3b';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '98ab6fd6-31dd-5a53-8168-d0b7462adc85';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = 'af628e8d-5192-5bbe-927f-d2973c14bc84';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '145a0014-64c8-56c9-8dba-2f74e3d0ebdd';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '145a0014-64c8-56c9-8dba-2f74e3d0ebdd';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '95b250da-918e-5855-9dc1-8b2ee9e83cc9';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '9cb0defb-97bb-580a-be19-5fa850e7c9f0';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '2bac191a-5c95-56ec-8070-ecb33dc3e660';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'ef962756-73ae-584e-82cb-db72831ba8f2';
update public.player_teams
   set is_primary = (team_id = '0a68fc72-f605-54ea-a91e-29c42e272f94')
 where player_id = '2ba04f92-7848-588e-81e3-5257ffde9fd7';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '6ab529c6-13da-5758-9d40-026c7293a328';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '80fd3dbf-dde0-5a1a-adad-f4bf3929c627';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '7e21071b-9951-5d95-8185-50120743a070';
update public.player_teams
   set is_primary = (team_id = 'dab4ed08-ca1d-5263-8b5b-71703e7aef80')
 where player_id = '64940f99-cb35-5f69-9a79-96594f569d31';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7';
update public.player_teams
   set is_primary = (team_id = '93b36d13-689b-5d09-a662-3a2323785090')
 where player_id = 'b78eed33-fa04-56e2-83dc-fde2963ff824';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '81c532b2-623d-5d7d-806c-de7bff4b287e';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '123dab8b-1478-5a2a-ac7d-431b67f59348';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '8c93c219-9039-5448-bb86-97f8bb5e5ba4';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '706b8279-f37d-50e3-9c09-53fe65d453d4';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'bbc66e94-6de6-5edd-9847-a781b83efbd7';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'bbab054b-e127-5d28-9228-4913340f355b';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '97251655-7ebe-5ece-8835-32b08fe83074';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = '97251655-7ebe-5ece-8835-32b08fe83074';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '5db32778-b4e4-597d-8ffe-fe1754f3e55e';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = 'c157f807-0695-5cdf-b56e-95cefabb877a';
update public.player_teams
   set is_primary = (team_id = 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8')
 where player_id = 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '63f770f5-08e9-54eb-be61-87416921b0b0';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '0e93d3c5-54fb-58d2-b844-641af3bc7a85';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'a479360c-6cfa-5473-a486-db5837193f02';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = '1fde7850-cf05-5282-8756-9c752c4399c3';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = 'd4cf2bca-fc38-5525-b36a-60120a6444c4';
update public.player_teams
   set is_primary = (team_id = 'b6cdce3b-d0b8-5300-ac78-a87171506878')
 where player_id = 'deb7f292-f34a-5510-be7c-c1168706f643';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '09179fe5-a0ae-5edc-bd24-73f9c0b97046';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'fbbe1890-4752-5627-925d-adbd9ca1930b';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '828f04d4-a6f8-581c-a217-559ed0659cce';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = '28e12fa8-63f2-53d9-b811-34fd67076268';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '21dbd8cd-9b16-5af1-b7df-304d1d620ca7';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '1af8919f-cb53-57a2-a691-bc9a57c0aefe';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '836e20ae-d602-5ed0-8f9f-f3d2138c5b25';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '595fddd1-e69a-579e-86a1-3ee96a27ca60';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'a959ca75-49ef-5fe0-aec1-f26a2bd02283';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = 'b0c7b338-4c70-54d1-ae2c-79509c7da989';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'f20e98a8-65f6-571f-a1d8-c7a2a4a3d244';
update public.player_teams
   set is_primary = (team_id = 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3')
 where player_id = '76bd99ff-b7d3-5111-8963-68def6a11f0e';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'c3c96070-57b6-50d4-9fda-ca400a0e333d';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb';
update public.player_teams
   set is_primary = (team_id = '13996698-0676-530d-b767-bf32d51648cb')
 where player_id = 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a';
update public.player_teams
   set is_primary = (team_id = '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1')
 where player_id = 'af7555f3-99fd-5dec-b306-667103dde3a5';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '6af19bc3-d5ff-5718-ac7f-42e4788ee663';
update public.player_teams
   set is_primary = (team_id = 'd63a09a8-9cbf-579b-90f0-f61d632dfe90')
 where player_id = 'afe717be-4ddb-5b41-8c8c-b32869d4cc05';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '50a6892b-8453-5e72-9e69-36b2c96fdbc0';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '5b572886-577e-5b49-88c2-adc00e33fe49';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'ca5c6c52-643c-5db5-ad9e-9c09906f598c';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = 'bf02a695-0877-5b65-b696-230e0c0c3848';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'e2209776-9d5b-5694-8d6e-493582c51cbf';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'cdb2e3ed-1ad4-55fe-871d-1c8cc1b12ddc';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = '3b706ba3-ea1a-5bea-af55-2360450f1e10';
update public.player_teams
   set is_primary = (team_id = '592537b2-aa53-5623-b5ed-1863ebc853e2')
 where player_id = 'e2f18ede-667e-5208-b9e6-6e5a702f593a';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = '026ca572-acc7-5b6d-a9ef-8055126c58e3';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '3a453e04-914b-576a-8b23-0eaac4e0fade';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = '639335b7-22d4-5ff0-a893-41dc12df5862';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '07cccecb-81fb-5941-8300-8276f9a200fc';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '96121571-db6d-5e78-98c6-24bdda4684f6';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = 'ba43f4a9-c863-5f38-8f20-02e08658a1bf';
update public.player_teams
   set is_primary = (team_id = '9f3d869d-fbf4-51a6-8b23-24a30be88214')
 where player_id = '656355ae-4986-5060-866d-a56d4b736262';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '6283144f-d17d-5444-a82a-e9c4f71f89b3';
update public.player_teams
   set is_primary = (team_id = '43513f55-d4e0-56d8-9f6a-f3b5935beadd')
 where player_id = '913c284c-7b61-5111-8e00-da193678c4f1';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '3569a89c-c748-52e5-8c9e-16d678b2225b';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = '633482fb-1801-5b0a-83cd-254139a8eaa8';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'ab442ff2-814b-50fd-9c79-694fe7221c53';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = '68c82400-d066-5c2c-9de5-65c04a6cc7db';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = '4f96f59c-587e-5426-a547-84191b800f30';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'f99fd381-408c-5f98-bab3-ba0fce2513ac';
update public.player_teams
   set is_primary = (team_id = '6a206973-9b48-5779-830a-7e9c58c1c367')
 where player_id = 'b3877c51-eb63-53a7-8bfc-845178c02f7b';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '9e987734-33b3-5c53-826b-38d2eb500e53';
update public.player_teams
   set is_primary = (team_id = 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc')
 where player_id = '42b9600e-67e1-59d2-a210-58562e646bf2';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '367c3964-57a5-5a60-b09c-f72f3f7d40ce';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '1aac7d92-3d67-5dcb-bf19-9c094181189d';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '253060aa-bfaa-52f7-8c32-74257f5eb636';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '253060aa-bfaa-52f7-8c32-74257f5eb636';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '4cd7770a-1198-5afc-b284-bcc0bc3aeb88';
update public.player_teams
   set is_primary = (team_id = '93b36d13-689b-5d09-a662-3a2323785090')
 where player_id = '479bbb1d-bbef-5f9d-aad3-4d793d2cee02';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a';
update public.player_teams
   set is_primary = (team_id = 'd869fc17-388d-58db-a7e2-c4abbb5a9b37')
 where player_id = 'b61e9c48-31ae-5d43-bb2e-7472c0ee4f62';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = 'b7702901-225a-5856-a7fd-70e45e0ec47e';
update public.player_teams
   set is_primary = (team_id = 'd54156e1-d5f0-52db-a6c2-128299971aca')
 where player_id = 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = 'f6072636-cc07-5412-a351-2b83155f79c8';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '6156d37a-33c3-5c2c-b789-669db02ce88a';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'a8998af1-4ae6-5b6c-8385-217ac94c54b9';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = '2a1cfaa2-32f9-544d-800d-b42864d13698';
update public.player_teams
   set is_primary = (team_id = 'dfaa089b-cc95-56aa-a63f-47afd05e4772')
 where player_id = 'bf60297b-ceeb-5c47-8a90-ffb6d6d08821';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '29d030e4-60aa-5190-a663-26c2f93349c4';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '083a0878-4d15-5658-81df-707a995bc1a0';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '66ac5f10-416e-5cff-99b4-fc626479d356';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '05eaaeab-cb7b-5f04-9292-ed3867409dfb';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = '05eaaeab-cb7b-5f04-9292-ed3867409dfb';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '7df7e59e-7a3a-5a20-aebd-b376cf0774fc';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '3fb1b3ec-4097-5b77-a449-b88f15d1d11d';
update public.player_teams
   set is_primary = (team_id = 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08')
 where player_id = 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253';
update public.player_teams
   set is_primary = (team_id = '78bb41ca-cf27-53dc-808d-f39794248027')
 where player_id = 'b4fe9a5b-8f84-500e-8811-79a9113b381e';
update public.player_teams
   set is_primary = (team_id = '85848519-a741-5999-8633-31d5fe0bfd54')
 where player_id = '00ceab57-a71c-5798-89d0-01223878ec61';
update public.player_teams
   set is_primary = (team_id = 'c811e6c2-76b0-57a9-821c-3de9f5706f4a')
 where player_id = '638228a4-ad9f-53b5-84de-edacec116df4';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = '83b27f4d-62fd-5668-bbd5-d4a64923f4ea';
update public.player_teams
   set is_primary = (team_id = '2599ff26-c327-5a9a-8363-e645555d32c5')
 where player_id = 'aa22478f-7ff5-5597-bb7b-abc14116ff16';
update public.player_teams
   set is_primary = (team_id = '47ea47cf-73a8-5496-9cfa-52055d2ec0be')
 where player_id = '4a57fafd-212d-5fc2-80aa-117906e034ab';
update public.player_teams
   set is_primary = (team_id = 'b7dccf23-4263-5536-ac73-7e8cd84de16d')
 where player_id = '5accd2e9-de4f-53d4-ae98-a5fc5df69c27';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = '9811f143-7eed-59d7-a699-4f05fbf06197';
update public.player_teams
   set is_primary = (team_id = 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47')
 where player_id = 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc';
update public.player_teams
   set is_primary = (team_id = 'b4dd8004-bf90-5284-8d50-4e9857519b35')
 where player_id = 'ffc55e88-628d-5b9e-b218-f70a9292fe03';
update public.player_teams
   set is_primary = (team_id = 'd429f04b-ccfe-5075-95b2-8025c5579420')
 where player_id = 'ecb7866a-5879-5873-8e92-d11f407b6779';
update public.player_teams
   set is_primary = (team_id = 'ceb5095d-934e-528f-9586-8438fb95180d')
 where player_id = '73516539-22cd-5303-b1ba-00f0d76de573';
update public.player_teams
   set is_primary = (team_id = 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4')
 where player_id = 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a';
update public.player_teams
   set is_primary = (team_id = 'bdb6fe27-1760-54c2-8521-da0632661582')
 where player_id = '452ede10-4072-5b66-a193-9935b6595347';
update public.player_teams
   set is_primary = (team_id = 'b475d58e-b9ac-515a-934f-4947683cec94')
 where player_id = 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0';


commit;
