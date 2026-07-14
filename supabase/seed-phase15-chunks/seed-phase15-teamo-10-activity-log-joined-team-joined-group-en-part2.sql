begin;

insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('80a64e34-e3ff-5a37-aaee-bda8e464f700', 'e5670784-e455-53e5-973c-ba4a102a97e7', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('78e01656-ee13-5c88-8098-b99a840e3583', '89b423ee-08b5-59aa-8543-ffe792576394', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a3a57bc4-e28b-5039-9ee5-c54ce6141b28', '89b423ee-08b5-59aa-8543-ffe792576394', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b7de4511-db77-5676-a140-97c3d1a4967a', '89b423ee-08b5-59aa-8543-ffe792576394', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('832ef735-5f9e-555e-9003-529a9128af2c', '89b423ee-08b5-59aa-8543-ffe792576394', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e2afd180-fa81-55cc-93d6-852e52aadc94', '8660b42b-f011-5475-84bb-f7de8b7df4d4', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7f1a6d8d-8bcf-5a4d-affb-ab98c6f92196', '8660b42b-f011-5475-84bb-f7de8b7df4d4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('05c2caa7-b76d-5fbc-aed8-551c34426d91', '8660b42b-f011-5475-84bb-f7de8b7df4d4', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b62456bf-b9ce-58ac-b610-a027c1f8cdd8', '4745bf5e-d536-5afe-866f-32944fd493d9', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2024-08-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9f8902f8-1ab5-57c5-b5c5-521e726ad8bf', '4745bf5e-d536-5afe-866f-32944fd493d9', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2024-08-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a562a660-68a6-5cbe-a7bf-5eb0d9aec4e4', '4745bf5e-d536-5afe-866f-32944fd493d9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-08-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cab05263-e6ee-5067-bce9-00e89fbe2528', '4745bf5e-d536-5afe-866f-32944fd493d9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2024-08-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('052db090-79d4-5ffa-ba1e-4275c3fa7fb1', '4745bf5e-d536-5afe-866f-32944fd493d9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2024-08-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7fe225f8-ee10-53ea-8539-7f72d2c84d61', 'b365964c-594b-5f41-a202-d0d456d9486f', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d8a3b86f-8def-552b-893e-bd711779964a', 'b365964c-594b-5f41-a202-d0d456d9486f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('54bfccff-5abc-5206-a4ef-2dcf70ddc71b', 'b365964c-594b-5f41-a202-d0d456d9486f', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('46091956-b994-5440-b899-3428fa8fa829', 'cbccba11-359f-5286-ab6f-d7417675f474', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c4be8618-0bff-5ecc-a4b7-4bda247e2aba', 'cbccba11-359f-5286-ab6f-d7417675f474', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aac0ee74-f103-56be-a8f8-ae65d6a764d5', 'cbccba11-359f-5286-ab6f-d7417675f474', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('04ccc71b-6a5e-5675-b687-f3f25b088f1b', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0288dc6b-2161-5fcc-9656-46a269db84df', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4391a807-9f84-55ef-9723-0eb8f5e14b74', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e31d0d6c-8fd1-5cc8-9474-9adb1303d710', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('81bca6ed-b3e6-5ab5-9716-efa4d78097ea', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ba116ee9-5559-58a5-9ac0-d3fe484b79b1', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3966ea54-5242-59c9-b7a3-4efbb217efb0', '909a8772-e4e2-513a-aabc-05f7d16a0c84', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2c8616a9-ddb9-5f9d-80e3-552d347b4924', '5fad023d-aeb3-5297-96cc-678249b96d24', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('030f8fa3-4dfc-5ec4-b1e2-55158408e2dd', '5fad023d-aeb3-5297-96cc-678249b96d24', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('50ef9e7c-0808-50ba-8f3f-7e4b1a337532', 'd26fa2ac-24fc-50cb-a087-c1a6ad23f2a9', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('72080b74-7d5f-5248-a180-546319ede653', 'd26fa2ac-24fc-50cb-a087-c1a6ad23f2a9', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e905497e-7b61-5668-92e9-f10031431d47', '65426883-2f34-5576-b09c-22f2a311426e', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('83c98731-cf0a-5c26-947e-76638171c6bd', '65426883-2f34-5576-b09c-22f2a311426e', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c12813fa-d41a-5668-a31a-305fc16e0a31', '65426883-2f34-5576-b09c-22f2a311426e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bff8a321-de82-5376-aa7d-1e04a340c333', '65426883-2f34-5576-b09c-22f2a311426e', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('39056398-0e52-5c8e-bf7f-4e282d8075ba', '65426883-2f34-5576-b09c-22f2a311426e', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0c14998f-a83d-560d-86e6-e59e8ffe3126', '6468287f-e96f-5d84-a85d-5f2a8df8ee9d', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6436d09b-223b-55e4-b747-3620be7a2fda', '6468287f-e96f-5d84-a85d-5f2a8df8ee9d', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('80a650b3-ad07-5fd2-9220-acc15485f1e1', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49a5127b-c16c-5583-8f60-ca93189489e7', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0d10371-613d-5f62-b086-f68549471d40', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1da63459-67f9-5b22-9851-d13f92ee295b', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9f7c2a9-8f51-56a5-bda2-29ecef62f0b3', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1bc2f0af-d811-5812-af91-7335de5a2d71', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4fc79a2f-0a60-54da-bf87-2b2228310e78', '48bac52b-f67e-55ef-89e3-f036e5db7668', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c72bd525-4808-50fb-bdd6-f06413b55d10', '37b0ca02-ded2-52da-b894-2b1235c4bda9', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('284cc3ca-12d2-533e-867f-61efbee13941', '37b0ca02-ded2-52da-b894-2b1235c4bda9', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3c00be60-e9aa-5398-85f8-e57deda94184', '37b0ca02-ded2-52da-b894-2b1235c4bda9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('65331526-8175-59db-b1ee-6e54690b640f', '37b0ca02-ded2-52da-b894-2b1235c4bda9', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('183a6e40-1336-578b-a8e0-3a9e5238dc24', '37b0ca02-ded2-52da-b894-2b1235c4bda9', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6099af08-440e-5904-9159-060bbb272c0e', 'f7a5e7ce-8e93-5511-a90e-fbfa73b35f53', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('177bb062-91a5-57bd-ae98-15732fb497c0', 'f7a5e7ce-8e93-5511-a90e-fbfa73b35f53', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15a5fc85-a06f-56ef-aaae-46bec2db2ce5', 'f7a5e7ce-8e93-5511-a90e-fbfa73b35f53', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1bd74218-6f63-5f90-8a11-95b4bafb02bf', 'f7a5e7ce-8e93-5511-a90e-fbfa73b35f53', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f7351bb1-e70a-5ea3-9b2f-5dabde1189fc', '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2777df48-63cc-5285-867b-37f11637437c', '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ec7905e9-2db8-5141-92ec-81f8a0c40367', '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6af6aac2-d3b6-5bfb-89cc-a539cf427b9a', '19778fc8-9705-568d-b15d-fc523e392ed6', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8be53ad3-dc65-5422-acda-53007cdc3042', '19778fc8-9705-568d-b15d-fc523e392ed6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3cfdc34d-d467-56aa-8f39-1cb4753dbf5b', '19778fc8-9705-568d-b15d-fc523e392ed6', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b1faed0b-7e49-5366-b03d-e5f85b604717', '19778fc8-9705-568d-b15d-fc523e392ed6', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ad9ca00e-1da0-5f0a-823f-c85e89054bcf', '3e653cdb-0ea4-5b9f-9545-d6ff7fe49c81', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e80842a1-e99f-5028-92cb-728ef34de2b9', '3e653cdb-0ea4-5b9f-9545-d6ff7fe49c81', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a5e6336-eb77-5df7-b1c5-754803361ec5', '3e653cdb-0ea4-5b9f-9545-d6ff7fe49c81', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('380c8bd8-f4fc-5d7b-8eab-d38bc9db3024', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8141b422-0837-5a08-a277-46a8b30c1da4', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('047f4169-6ff3-5c17-b3a7-9189e3190fea', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e8107cd8-f6db-5a59-8268-bb4342045afc', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1fd2e7e0-d281-53d0-bbe4-296b590f792f', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('13459f5b-62ae-5fc4-ad77-7449a28940ad', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6085f01e-fe4a-55fc-a1b4-7e0b6f42b837', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('64cc85db-398a-5155-98dc-36658d56bc78', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('67171267-02d3-5491-ab31-4f545bf5954d', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cac803dc-5822-5e6d-ba81-579f2d8a6c2c', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4572ea7e-ee74-5c95-ac80-c83ce796c2bb', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('37bef7d1-4fc9-5d70-ae0f-3b6f35494411', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3f9f696e-8515-5b68-ac63-ec54486d5477', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('584686c7-d1b9-5a2f-b820-9aa8e53d1f16', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('70d580ac-4507-597c-a1a1-9d60c4d0f280', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5fb59724-3f76-52b2-aed3-9b5314e7f63d', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3ac76587-edce-5543-a5de-acdd840d0745', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ac074ed2-735b-5d75-954c-ca3ee28d8c13', '45648259-e49b-50f1-a832-1fc8240b00d6', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2ba14f11-d383-551d-9121-3e2c1fa10011', '45648259-e49b-50f1-a832-1fc8240b00d6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('74ca5c3a-68e7-5d8f-933f-768409702cfa', '45648259-e49b-50f1-a832-1fc8240b00d6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a94fb99-774a-539f-ad30-c09364841248', '45648259-e49b-50f1-a832-1fc8240b00d6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('628bf667-9a4b-5d38-ad88-637456f2093c', '7dc670c0-28e9-534f-b7de-0a12520455d4', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e40565e2-46cb-5fba-9d64-de70d492e99a', '7dc670c0-28e9-534f-b7de-0a12520455d4', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('01d96af5-40bd-5397-81d0-23d5c23560ac', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('974ce87b-dc5b-59a0-8c17-bc8e8668bb32', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1ccbbcf-c29c-5cd6-ab51-2fe417dbd0fd', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d0765080-e201-53c3-bb2b-e1b66aea8884', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6bd8ddb2-56d7-5b57-9342-32a15316ef44', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de1da430-a6a0-5b02-acfe-65af790f2e0a', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('254ce65f-0314-5c46-b224-9c180195fccc', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c0a0704-c943-5a2d-a541-cbc1f2005d3e', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('78fbc198-8530-5482-b878-713ad5ad8b2e', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('caa2a737-0110-5758-9915-594e53dafcc2', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4214944d-8b36-53b1-aff5-e2bca1566ade', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0d46c71d-5662-5899-b017-0db52fb44f79', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('50c7bc32-90fc-5dbd-b46a-28c20715acf5', 'baca6eec-74b2-5602-b2fc-683b61eea09f', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1f8b8048-a845-5bc8-8c12-9d015255e9a8', 'baca6eec-74b2-5602-b2fc-683b61eea09f', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('46527b18-ac8a-5bb4-8840-a0c8122f3988', 'baca6eec-74b2-5602-b2fc-683b61eea09f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3901108d-9db0-5e73-b1bc-b15c0ccd62b9', 'baca6eec-74b2-5602-b2fc-683b61eea09f', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b4be2b2-7bd3-5188-a980-65a1e9fc8500', 'baca6eec-74b2-5602-b2fc-683b61eea09f', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d2e88dbc-5958-51a8-8e7f-07e4c72a28d8', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ad322352-e969-5245-a2d7-d3c106732478', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ebadba25-7b36-5aaa-931d-881c8dec2a40', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7d6c99a5-5484-541b-98bd-88e57b1179e6', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e5d0402e-04e6-5d27-9187-c45cbe7bd6a1', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9ca39bbc-c399-5c06-8e72-a61544420765', '292aca58-e983-56c8-a0cc-67d67b84e476', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6252f75f-47aa-5cb4-adea-e57337f36b2c', 'd775f4ae-d233-5835-926a-6e55d2fe1524', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2432a950-bbf4-5d87-a16d-ff8015a54540', 'd775f4ae-d233-5835-926a-6e55d2fe1524', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('755afd84-0361-52d7-b33f-f0628a5205e9', 'd775f4ae-d233-5835-926a-6e55d2fe1524', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('75315e4a-0dce-5332-9ed2-574ca599d821', 'a9fb6d05-b163-5a2d-9149-05722e2e0584', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fe76fc8f-a002-53f2-9961-30404f67e7b8', 'a9fb6d05-b163-5a2d-9149-05722e2e0584', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6cd10083-9c77-525f-9848-36b571f6cb15', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f23b448b-b5ab-5aee-a56e-0805447b0c98', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('05b1440e-144f-5238-857b-2f5b68864d46', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bd1a6f54-a55b-53ba-ac85-59a66f6b4af4', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52e7e507-ba16-569b-9692-9631884e9e84', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8dfba533-2e3c-5d1d-a3ae-014c9a45bba7', '8d6f5b56-549e-51ee-8347-b54b9c8eccd7', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('93165059-3a97-56c5-8f0d-16d9beb5671e', '8d6f5b56-549e-51ee-8347-b54b9c8eccd7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cbbf0cd0-ca34-57ff-b71f-98bb39a65860', '8d6f5b56-549e-51ee-8347-b54b9c8eccd7', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5161a2aa-c67a-544f-976c-58b2aa3f4a32', '8d6f5b56-549e-51ee-8347-b54b9c8eccd7', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('31790d15-d491-5320-84a0-a0fa79e11cfb', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e79c38e-7ffd-5c6f-906a-f53ec613626e', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f58b9221-181d-546e-9ee5-ca76ef1d21c5', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d829df2-ac85-55cd-93fc-decf1c28fe48', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a393617a-0570-5393-83bc-1b9466845b54', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('694d04ce-363d-5d68-bddb-f4db3e343acb', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bb964be4-0003-58c2-bf0a-1d5618745c9e', 'b4d9686a-2956-5819-bdd6-4549c929eb93', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b4f40b44-5dc4-5017-b98b-76c0c9bff09f', 'b4d9686a-2956-5819-bdd6-4549c929eb93', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c0b33474-dff8-5366-8ab0-04620cdb1d23', 'b4d9686a-2956-5819-bdd6-4549c929eb93', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6d430cfe-ef9e-546c-b7e5-36cb35a69a9a', '2086e886-f221-56fe-8d00-f15e964ddf5d', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fcfd0e56-c1ae-57a2-b454-0d77ed4197a0', '2086e886-f221-56fe-8d00-f15e964ddf5d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a1c6a65-d14a-58e8-862a-53c1365f106c', '2086e886-f221-56fe-8d00-f15e964ddf5d', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e64a3bd4-8e26-524c-a206-7ee5831bc1d3', '8cc77b0e-4d0d-57fc-a616-240956da6917', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('523c0b4e-5dae-58aa-ac6a-269ed9e672f2', '8cc77b0e-4d0d-57fc-a616-240956da6917', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b6c0e3ff-62ac-5a49-a29b-41b5f69078f1', '8cc77b0e-4d0d-57fc-a616-240956da6917', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c071f86f-5c8a-5534-bfc8-9d57cb0c592f', '8cc77b0e-4d0d-57fc-a616-240956da6917', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f9d5d68b-76ac-55d9-8496-5095a54549d5', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2026-01-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e8a08d6-89f7-5309-b870-5875981987cb', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-01-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73f3ebea-daf4-5fc3-8664-94d576cf9803', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2026-01-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('42f4bd49-242c-5565-93ee-67bca45f4cad', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2026-01-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fd5bb3b7-7b0b-5946-8065-c3faeb57fc36', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('97924e78-b01b-51ab-a248-378c926f8da6', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d76fb71f-360b-5cce-abc8-cf2f70296df2', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af7f4c5d-6ba8-5c18-bff9-defe5659e5c9', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('70e81b7f-3454-5506-a968-5a6b2faf8ee8', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dea253f2-76ec-5c7f-bcb9-4fbf09cdf25d', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fd722a0e-c2f5-5b19-a1c7-2b4dc130af27', '0183ce8c-53b1-5287-948f-b0e734d768ab', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d369e791-6d89-5984-9677-defcd2295bd6', 'caeea1fb-5910-54d0-a856-b485d294f309', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ac1c218e-0e2a-5d40-90ca-6a786ac390d7', 'caeea1fb-5910-54d0-a856-b485d294f309', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7be039a6-4125-5a0b-8c67-00b98a1f29b2', 'caeea1fb-5910-54d0-a856-b485d294f309', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('50552c90-1e41-51f0-bea2-58953e71228f', 'caeea1fb-5910-54d0-a856-b485d294f309', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a9690e93-c090-5d62-9261-19e38fadeddd', '345d867f-775d-5ae4-ba42-b57f8b7be60f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('87058076-4ffa-5139-8a59-0626d685c4a8', '345d867f-775d-5ae4-ba42-b57f8b7be60f', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7bf4bc49-b65c-59ba-b77b-f5d5e368a69c', '345d867f-775d-5ae4-ba42-b57f8b7be60f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a6198a97-567d-571f-9386-125e3dae5cac', '345d867f-775d-5ae4-ba42-b57f8b7be60f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa8bcf3b-5b26-58b3-8e19-18d612e4cb91', '345d867f-775d-5ae4-ba42-b57f8b7be60f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b6af07c2-e4b6-554d-b0f7-d68c24630b44', 'c05a7ab9-9eca-568c-80bc-29c63c77d6bd', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('27f1c7e2-2306-5aab-86dd-a298a11d3074', 'c05a7ab9-9eca-568c-80bc-29c63c77d6bd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5f1bdbf3-3faf-57dc-beec-6942deed511d', 'c05a7ab9-9eca-568c-80bc-29c63c77d6bd', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3251d86a-9ef3-5c45-8212-5c1891de3593', 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9953d798-869a-5e7b-b565-cb5c4d80cb0b', 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9cba807f-0874-549d-940d-0bca530ff856', 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c70731f6-e3b2-54f1-9662-097fba4479ca', 'd1cbc4e9-aafd-591c-9d66-011fab0705a1', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d3442be9-39bc-5bfb-a38b-15a758ed0db1', 'd1cbc4e9-aafd-591c-9d66-011fab0705a1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('31b7ac00-7e1b-5f8d-9d29-7ff8c12b409f', 'd1cbc4e9-aafd-591c-9d66-011fab0705a1', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4cacdce6-b8a4-5f60-bee0-12edab640664', 'd1cbc4e9-aafd-591c-9d66-011fab0705a1', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ce5c1481-96eb-58c7-949b-a543d37c91e8', '8b2a7f1e-2867-5401-b74d-59e1c3b241b2', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('673dae8d-0edc-5d15-a514-3ba50ab2e36a', '8b2a7f1e-2867-5401-b74d-59e1c3b241b2', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49c53f57-31da-5a77-baa7-079381b34754', '69924e4b-1a19-50a8-93e9-d6ba42a534a8', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3b17bf88-8f7b-58a3-9f55-139524458f7e', '69924e4b-1a19-50a8-93e9-d6ba42a534a8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('372bb52b-9666-5f26-9c91-9d627711fa7f', '69924e4b-1a19-50a8-93e9-d6ba42a534a8', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('52bd18a8-d259-575c-95ab-d9a17d21650d', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3a5a2935-8a95-558b-98ff-2220d0d58f71', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b0a20256-ef41-51df-9cd4-445118352cfc', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('99e17a9e-9d1c-5d6e-9f20-51381ccef2a6', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7194e43a-c572-537b-8d9a-268a25067d15', '0cb6114f-be5c-53ab-aa23-0e543e51cf26', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6cf23dde-50de-5d8b-82d5-25db183d83ee', '0cb6114f-be5c-53ab-aa23-0e543e51cf26', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f8894b8e-0e10-51f2-9963-23fbfb2ec965', '93380d98-efc5-569c-b890-4e8d9139c036', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bd4a44ea-2e23-5562-bd53-b321f4b19e76', '93380d98-efc5-569c-b890-4e8d9139c036', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d17b9fef-6990-5924-a9ff-1e18746ad858', 'd1070fbc-8620-53c0-8055-a5861e8004ed', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d715cada-f3f3-5238-9a56-f4a0690d4633', 'd1070fbc-8620-53c0-8055-a5861e8004ed', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('667f0e18-e723-5f9a-b5dc-15b94e193fda', '42e232dd-cdbf-5793-9c12-e57fd04acea8', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f326e1ac-9a76-5472-8f11-524cadfd2ed4', '42e232dd-cdbf-5793-9c12-e57fd04acea8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ea70ceb5-23f2-57c3-b38f-49d235873f15', '42e232dd-cdbf-5793-9c12-e57fd04acea8', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1e6467a6-6206-562e-ac04-d897591dad1a', '42e232dd-cdbf-5793-9c12-e57fd04acea8', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1b088f46-48c5-5e4b-9ebf-5d103f4f95d7', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9ee2a496-28a3-5e19-b5ad-b148d9dc9181', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c26bf362-75d8-5e4c-b22b-f63a42914cf3', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bddcc977-3d0d-5d47-adf9-25a378e0bd72', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa485db5-a825-5928-89c9-92ac86cfe745', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ac0c23d1-8390-5583-9667-0ce8c07b5095', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2024-01-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('203b2b5a-ac93-5ce5-817c-98bd793dcb49', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-01-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c5f1876-3a18-5626-972f-f770d34e61d4', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-01-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4f8724f-88bd-5601-b446-b44e3c7425db', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-01-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0ca363ac-1524-5428-8eb4-6319b7a026dd', '51cc7782-5e8c-5d30-a79c-435f50ac1828', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2025-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f03238bb-b753-5dc4-bf9f-bc2457e77920', '51cc7782-5e8c-5d30-a79c-435f50ac1828', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0cb778c3-a411-5f71-b0c1-6782d715609d', '51cc7782-5e8c-5d30-a79c-435f50ac1828', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8113d6c3-85d6-55a4-9902-b24479963134', '51cc7782-5e8c-5d30-a79c-435f50ac1828', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('73efa8ce-7063-5139-b6b5-f4caffb04fb3', '520dd8e3-f038-5bc3-a816-24f73a16a494', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87429d8d-f455-5206-8436-ac0d6c39c7cb', '520dd8e3-f038-5bc3-a816-24f73a16a494', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('56f8ae88-6f8d-5eec-b5d6-c4e7667b81ee', '520dd8e3-f038-5bc3-a816-24f73a16a494', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4071105c-e436-52f4-95f8-ebbe3c2aed58', '520dd8e3-f038-5bc3-a816-24f73a16a494', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('be3005c4-7ac0-5205-99b5-de7c0bbe13e5', '8c0f1d59-2601-5012-bdc0-a67d83378be1', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('66b90a12-ad7d-598f-9d17-9cecd32ace4f', '8c0f1d59-2601-5012-bdc0-a67d83378be1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6aa750ba-7155-5f1e-9321-6a41c5780414', '8c0f1d59-2601-5012-bdc0-a67d83378be1', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2779465f-fd71-5f2a-b97b-76097ef026bb', '69b4564d-d655-5230-8807-2998988cbfcc', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa99a36b-ad4c-582d-8d31-4e28d12176db', '69b4564d-d655-5230-8807-2998988cbfcc', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3f03751c-d210-587b-bfe2-8a55b872d67a', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ac3baded-ac91-5b0b-952a-d839b2d58460', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8e79a794-bb66-5663-9750-e1c9fa14f443', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d2a31886-e441-5997-a29b-562cc236dbd4', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fb2634d7-b4fb-5399-9eeb-88ceaa21a06f', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4f5a6ba-8ed5-5853-aafd-9794f28c6ba1', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b563895-18fc-59a4-8e28-d48578e40c38', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bef16ca2-9889-5364-820e-200f1b44377a', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cb3ef999-d4fa-51e3-9d94-e72abb362059', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d60642b2-0d44-54de-b365-859168a9e56d', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fc4b8efe-7d33-506b-9a33-240dd72d6ab2', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf4d65f5-d65d-55bc-ae54-91356a8880f9', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e6689118-8230-55c9-a65e-5908a11263dc', 'cbaf5661-2631-5223-bffd-b72a23504f81', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('64c045b5-0243-5c94-9177-aed40daad5c3', 'cbaf5661-2631-5223-bffd-b72a23504f81', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c1800b59-5c5f-5d9f-8904-720ee19fbdc4', 'cbaf5661-2631-5223-bffd-b72a23504f81', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e2e235fe-aa7c-5e7f-a0eb-9f82632c6662', 'cbaf5661-2631-5223-bffd-b72a23504f81', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('951b792d-c953-53a9-b0e6-bf7319306bbc', 'bc34df30-0214-5471-8563-728919201031', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a30860e1-3b1c-506b-9ffd-91964a88c44d', 'bc34df30-0214-5471-8563-728919201031', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c2c69139-e5f4-5422-a2f6-b1671a41d2bc', 'bc34df30-0214-5471-8563-728919201031', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3a5d2488-6c2c-5401-900c-fdcad200bb35', 'd483e025-2f50-563e-baf8-fdd66232144f', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('228f18e1-0f16-50bd-878a-3aa2fcab020c', 'd483e025-2f50-563e-baf8-fdd66232144f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aacfd79d-fa6c-5ed5-b921-da206e468fcd', 'd483e025-2f50-563e-baf8-fdd66232144f', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32e92f18-efe4-5b76-b5e3-86d624ab9166', 'd483e025-2f50-563e-baf8-fdd66232144f', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e9f5762f-958d-55a1-9a8d-582d6b856d22', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('47b545da-0d32-5c3e-95e3-932962fd39c9', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c528a5f1-de58-5671-a7da-2cca33c2ee75', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5d0faf31-7150-5eeb-b6f2-ce91630253d0', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52933d23-c83e-5939-85e9-75dc55e886e2', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3367b2bf-43e4-5de9-ac35-c5b39cc37c1e', '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2026-07-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2840b49d-0c94-504d-9239-d695fd7af036', '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-07-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4c0b4a48-b038-5e9c-9c92-53455f90955a', '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2026-07-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('12a8ea0b-de4e-5ee3-86a4-293c375d18ed', '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2026-07-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8cceef45-33da-5605-b639-e603b49b943f', '8d6a1808-3373-5e3b-8575-ec757a592694', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('20695d49-73fc-52fc-b6ee-dd2f69712301', '8d6a1808-3373-5e3b-8575-ec757a592694', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('976ccb82-084a-5379-90f7-29cd5efdfbe0', '8d6a1808-3373-5e3b-8575-ec757a592694', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('84482638-2fdf-5582-9488-bbaa75c91e4f', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9cee7bdf-22e2-5df3-820b-0a916b97cebc', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3a2e7d93-cf9f-5650-899c-2fb5efaaa407', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87bb3b26-8fc5-570b-a918-69c941a72226', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7732ada6-7639-582d-844c-8df36fde10bd', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('feed1a98-baa2-5afa-9698-58bb0aac7102', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('60e75b65-fa70-519d-af19-fc9dbcf09acf', '51ec0b61-44b9-5075-945f-66f2dc561633', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7eac6ba9-11ed-56d6-b8c6-42245ac0d8c2', 'd644b446-34f5-5d01-831d-59e0eb15a89d', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2025-07-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d594c58c-46f1-5ea5-9955-705e40798ebf', 'd644b446-34f5-5d01-831d-59e0eb15a89d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-07-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('efd11092-0542-57fb-8a53-bd098e2e4d64', 'd644b446-34f5-5d01-831d-59e0eb15a89d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-07-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1c46534e-357c-5ba1-97e8-334193545c6d', 'd644b446-34f5-5d01-831d-59e0eb15a89d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-07-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7e83bda8-747a-5656-a3ab-1f755947c8ed', '14b44cce-0e32-5ef6-a268-d185c785151f', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4dab1424-1eab-508c-bf82-5966e9fcb1ea', '14b44cce-0e32-5ef6-a268-d185c785151f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('713bc751-1ded-5160-afb4-b1977a9bb44d', '14b44cce-0e32-5ef6-a268-d185c785151f', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('482f3dae-9236-532d-b945-2d9529606927', '14b44cce-0e32-5ef6-a268-d185c785151f', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8339eafd-95f4-5402-aef7-652adde64551', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ce45fd2f-3834-57a5-9013-256f6bf270d7', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('457f9504-d421-5655-a24d-988284614eae', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8adf4ad2-d5c9-5eb3-ab72-0e428f2b2a72', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('251c05f7-2e5a-5103-971f-ebc533f09ff0', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fee630c4-686e-53cd-8cb2-4e12c4beefd2', 'f1a056d0-8400-5376-aca4-f84c3872d941', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('989b110a-5b51-59b9-9553-c5d768ebef29', 'e269fedd-4413-5f62-8bbf-74b476818f77', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('36fb23ca-17b9-5eb9-bc90-b57b26dc3c33', 'e269fedd-4413-5f62-8bbf-74b476818f77', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6be7b110-3efb-5eca-ae1f-0204c734b2ee', 'e269fedd-4413-5f62-8bbf-74b476818f77', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('526f215b-3ec7-556d-b04d-125b00502f7e', '2da9b3b5-8f55-5c4a-a586-1cacbe122c23', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a20e45da-51e3-5b4f-97cf-71dc2c5bc25b', '2da9b3b5-8f55-5c4a-a586-1cacbe122c23', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d06477f7-d0c6-55c7-b6b5-36fe75613f22', '54682ffe-d36c-54da-b32d-f55f6773ce19', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1d97623d-fcf5-5b71-ae4b-91374f0ef1cd', '54682ffe-d36c-54da-b32d-f55f6773ce19', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('89f20908-b418-51c7-9bab-e4593613843a', 'e4e19228-143f-5adc-9aa6-21e431a9663f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('03553e02-e438-593c-a1a3-9bfe22c129aa', 'e4e19228-143f-5adc-9aa6-21e431a9663f', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f812a94e-829f-5dbc-9115-bc94ff79dbff', 'e4e19228-143f-5adc-9aa6-21e431a9663f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5f401725-b43b-5d3e-888d-b5d831415e66', 'e4e19228-143f-5adc-9aa6-21e431a9663f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fc097df1-f19e-5eb5-b6f5-24e425c1d357', 'e4e19228-143f-5adc-9aa6-21e431a9663f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7313e6f4-86ce-5767-86b6-18fc84dce802', 'f2e8a492-1a30-5916-aed9-6502924db602', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7920f327-f1e2-51b9-a625-4afd2851d467', 'f2e8a492-1a30-5916-aed9-6502924db602', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c29a2a4b-48d8-5705-b58a-84b65fab5dfa', 'f2e8a492-1a30-5916-aed9-6502924db602', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('30e75886-cd73-5a72-bc22-4edf5f50008d', 'f2e8a492-1a30-5916-aed9-6502924db602', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('872e3323-8a74-565f-abd7-cd847800a796', '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aed07a0b-b761-5ea4-b384-644b5bcdf3c9', '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8795aeff-2ba2-5ccb-a80a-1b93f7b4a550', '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('26a34a53-115e-5aa8-bb79-0021e7ebcc4b', '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('eca4fe78-8c31-5e4e-a6c0-5f40ab65d693', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('de2ffd83-72b7-55cd-9d77-e256040f974b', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('40fe944d-a260-53b8-8715-db5d516b6326', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4ebf68b7-dd0b-5f5f-8d08-3e4d5a52fef6', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2f5c6af8-a349-5725-af29-5b75dcc5eea3', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a4c94c13-9065-5d84-880b-d5ae6d3fbea4', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d89d3b14-26d2-54d6-9527-12e74eb7c56b', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('848d26f1-35b5-5ffd-acd6-7692522fbb08', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e00f56bb-ce19-592c-ab68-897d30b73f5d', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('51c4a3e8-bc46-56dc-800f-89a53c96fd81', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16332510-18a0-5f2f-bdfb-440befa1fa56', 'cc6305a1-54a9-5dec-921b-0cd8bb5bdca3', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2faccded-a06e-5117-a380-f233818a75be', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d201a0a8-1548-576b-969f-110e15c57531', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('69f5e45f-becb-531a-a3d1-50c912ec3405', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2faccded-a06e-5117-a380-f233818a75be', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d201a0a8-1548-576b-969f-110e15c57531', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('69f5e45f-becb-531a-a3d1-50c912ec3405', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-12-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b1ac456e-d4b5-5435-b5b2-03d14bab7ea8', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c3bc06c2-3895-5516-beeb-eeee656a38f9', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa437f2b-c3ec-5a23-a0a4-486f9e709ea1', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf9a4f06-3652-52b6-aab5-f2d18b0b4fdc', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bdd600cb-f001-5cec-9f0e-51b19bb56556', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5330c51f-28e5-5526-8fd0-e9a61325778f', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('02405974-2b45-5e80-8aa5-44a26b574c89', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3efdcfc0-5484-5a93-aa75-6d90a0195c28', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa75d6b8-59f8-5c45-8de6-707e6df4a69c', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d80fb56d-600e-5eaf-b341-4de9dc6d029c', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5dd4c4b9-8496-563f-94c1-b0ea626d0b50', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae23b05c-0388-513e-9d98-da85b0f4da3a', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d6c148d4-3d79-5bbe-99b0-42192e0582af', '75ea0cc7-9ce5-5587-883a-0a7ee636f757', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('84968738-3d2d-5e18-ae1d-53ab37f4d6d5', '75ea0cc7-9ce5-5587-883a-0a7ee636f757', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c46c2594-8b4d-56de-a7cf-d62efbd2ff22', '75ea0cc7-9ce5-5587-883a-0a7ee636f757', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7868d635-4a98-5983-913f-8d4c8ceb440b', '75ea0cc7-9ce5-5587-883a-0a7ee636f757', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0a9e1770-705d-5efc-ac0d-a50f080aa4ea', '338f0ff5-6299-56ea-937f-6e3948c3a8c3', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1a95f47f-73c2-5538-bb3f-998495646373', '338f0ff5-6299-56ea-937f-6e3948c3a8c3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bcc382f0-f3a4-5764-a643-525128073225', '338f0ff5-6299-56ea-937f-6e3948c3a8c3', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('79b0dfa1-5507-5650-8feb-6a917ecbbb7e', '2fa76faa-4264-5b1b-9195-b7aadfbe091f', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a21cab2-5750-5c78-8b81-d5dc8ec87e55', '2fa76faa-4264-5b1b-9195-b7aadfbe091f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf72e9b8-c99e-5abb-aeb4-da4504b7fae2', '2fa76faa-4264-5b1b-9195-b7aadfbe091f', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e542b78f-f849-5129-99cd-6d53904d050a', '2fa76faa-4264-5b1b-9195-b7aadfbe091f', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1d228e25-47f7-5159-ba38-9947469c19d5', '1153b981-f86a-5497-917c-b4d1fb28ecb6', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-10-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e77153f-cfde-5a8c-8a98-2526624fe16f', '1153b981-f86a-5497-917c-b4d1fb28ecb6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('47bd05ec-fd48-543f-89e8-c8b583d336da', '1153b981-f86a-5497-917c-b4d1fb28ecb6', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-10-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cb7748f1-9af1-5d91-80c0-75e6dff8467f', '1153b981-f86a-5497-917c-b4d1fb28ecb6', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-10-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0d37d404-fad7-53bb-85e4-dea3fd1cb1f6', '28a96007-d2ae-57c8-916a-68ef181a34ee', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aef9cb66-62f4-5e3a-8f54-c014d026d736', '28a96007-d2ae-57c8-916a-68ef181a34ee', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('353c54df-7942-55e0-9190-2beeb3a207a4', '28a96007-d2ae-57c8-916a-68ef181a34ee', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('aac49756-e648-5411-90d8-c62436d79e1c', '8a184e23-4f08-50a6-9882-c8ab52949adf', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cf02f166-7b7d-5c62-9ab6-e68d2bdf92ee', '8a184e23-4f08-50a6-9882-c8ab52949adf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e31a3a50-a93a-5e43-b04e-f0e87153ed51', '8a184e23-4f08-50a6-9882-c8ab52949adf', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f1ca09fc-3a3b-5dee-9c30-1e333e55c546', '8a184e23-4f08-50a6-9882-c8ab52949adf', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42e42637-4c08-5f8b-ad85-472926efb755', '389b78c0-aec6-586a-87f9-73b643899c20', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c7918299-911d-5e3c-ae94-7bd34e799bc0', '389b78c0-aec6-586a-87f9-73b643899c20', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3a34da2d-5cf7-5a4a-9ad3-b33829afcc6e', '389b78c0-aec6-586a-87f9-73b643899c20', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('51007c03-9455-565b-ba16-2ae561da7be1', '389b78c0-aec6-586a-87f9-73b643899c20', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a1555f9b-9c8e-56a4-bd98-1888620a04e0', '389b78c0-aec6-586a-87f9-73b643899c20', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e700509e-4444-5b1d-9327-93aad130622e', '7a9c31e4-8541-5df5-8b66-15c3b7cbe0fb', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d0b5b4e1-8ee8-52f1-8cc4-80dd12ea47ac', '7a9c31e4-8541-5df5-8b66-15c3b7cbe0fb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c5e8d860-6c88-5450-8c8e-c917a2a9f2bf', '7a9c31e4-8541-5df5-8b66-15c3b7cbe0fb', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fa543f18-de4d-5856-af8d-796d2340c32c', 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2025-09-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9cad43a6-cefd-5efc-a241-025701a28cce', 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-09-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ee48cde1-5557-5a9b-aad1-ec04f20a0aa7', 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2025-09-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('03cc6918-fb13-5732-8bf4-0fc6a99bfc71', 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2025-09-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8e8f5e4f-9c53-5c2d-bda0-ac0a7d3021d4', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8bf40e98-65b6-5450-8ac0-645a550cb4a0', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d354a043-9efe-5a12-a97b-c4fbf12e93ea', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c639fdb7-d702-536b-b03d-a8d3c21c426d', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('258aeed2-d0be-5506-a102-9fc46f4d0f2a', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e3b25fb8-2521-5038-9b81-c8e8d90bd815', '072c82c8-65a9-53b6-bd59-1557bf709135', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d4753d00-4ba7-5473-b1e6-72a1d2752f38', '072c82c8-65a9-53b6-bd59-1557bf709135', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1c64eb86-29b8-5d98-a8aa-93397ab606e0', '37d62637-5514-581a-b547-b2d128897bd5', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('04c83488-8feb-5830-9555-98290338195f', '37d62637-5514-581a-b547-b2d128897bd5', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('82165bfd-8929-5a2f-89a3-7c744d8aca31', '37d62637-5514-581a-b547-b2d128897bd5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2c9c41d8-0452-5f4a-be59-09364c10606f', '37d62637-5514-581a-b547-b2d128897bd5', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87903cf1-3de2-53d0-83e0-a9f6cd0ce524', '37d62637-5514-581a-b547-b2d128897bd5', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4f595829-586c-55d7-9def-5c15f99b2161', '9919c475-10c7-5916-ba70-9e3f97812da8', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d5fb5c22-f031-54cd-bd2f-5be7a3240381', '9919c475-10c7-5916-ba70-9e3f97812da8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7fe098e5-8c37-5d34-9a60-3885a61d2c62', '9919c475-10c7-5916-ba70-9e3f97812da8', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7b05e765-3339-5460-82bc-ce0718dc1a0a', '9919c475-10c7-5916-ba70-9e3f97812da8', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e253c724-51a6-5284-838a-6644cd509a63', 'f4cf22af-ad2a-5c74-83db-14e0f0658140', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('95c90162-782e-5059-8e10-f46c542e306f', 'f4cf22af-ad2a-5c74-83db-14e0f0658140', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0f59a52f-73f9-59c5-a026-76c26c2070b7', '506c687d-090f-57dc-a924-6dfd6e71e13b', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('400d5c4a-540f-5d05-ae95-f78c482f5eed', '506c687d-090f-57dc-a924-6dfd6e71e13b', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2966d6ec-e2df-571d-bec4-aeb22ba35d99', '99ae1282-e442-52db-9f24-390b8f1b23f3', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('23455c78-52b3-5371-a036-beb7207764b0', '99ae1282-e442-52db-9f24-390b8f1b23f3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e9209d5-ddd3-5c45-a17b-aa4366de75be', '99ae1282-e442-52db-9f24-390b8f1b23f3', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('09d37d6e-d865-5b5c-8f8e-3b6d3f04071f', 'e8b0bfa7-dc77-5869-91b7-32e4d2d11170', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59ab176c-ed7b-597b-8755-5238edf9ad98', 'e8b0bfa7-dc77-5869-91b7-32e4d2d11170', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0abe9330-021e-5f1b-92d5-cac9dc9d6f89', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('67d85d02-218c-5e7d-b829-2759c13860dd', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0609a556-ff7b-5540-8e32-1f8678efc3b1', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1dbdf124-5e4e-5559-9ef5-d68a0c938e74', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f8ea2290-07ec-50f0-9a1a-d0bda27f6e31', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('41a238f6-6a68-5153-851d-d0bac99fbe03', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('541ee861-49d5-523b-8af6-71cba05d955b', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5ec0e5d5-8c6b-50f7-a486-1b85b930eca7', 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2026-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('03f8d439-f72e-5cdc-8e97-e7adddca5cc2', 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2026-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a49ca5e1-56e2-5c3b-8451-0d2319e55d83', 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2026-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('db21b307-022a-5561-a094-10995926568c', 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2026-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('374d68f3-f881-5eb6-9404-322af375c93d', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c585c5ad-4edb-5093-8317-0d681b303e1b', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abcbe3b3-90e4-522b-9dbb-95aab4bec35b', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('27920ca7-ecbf-543c-8ea3-88b62f82e6e6', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5d1a080e-91e4-554f-b4a9-bb0940ef239c', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('374d68f3-f881-5eb6-9404-322af375c93d', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c585c5ad-4edb-5093-8317-0d681b303e1b', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abcbe3b3-90e4-522b-9dbb-95aab4bec35b', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('27920ca7-ecbf-543c-8ea3-88b62f82e6e6', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5d1a080e-91e4-554f-b4a9-bb0940ef239c', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-09-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a9ad8b5a-9cd4-5656-85ee-9e77c4a74212', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2024-05-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('058c628c-a0b3-5bc3-8965-9594c27cb858', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bdd9c11a-3926-5102-bcfd-2301dea474eb', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-05-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b765f5d-7a36-55f5-ae1b-d1385c4a90c9', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('541d0f4e-7d3e-504e-ae79-d3ffb3efd1a8', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-05-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fc4b7b59-ec24-50ca-b049-ba18fbe695e3', 'd2abaff2-7212-5905-90fa-1674f7de6f29', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f16db237-5a81-505d-a759-dcebb34209bd', 'd2abaff2-7212-5905-90fa-1674f7de6f29', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4386eec-045d-5acd-a501-b016511ccc98', 'd2abaff2-7212-5905-90fa-1674f7de6f29', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32916cde-dbca-5836-ad29-7393f5c36870', 'd2abaff2-7212-5905-90fa-1674f7de6f29', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5888e788-f3fe-5ab0-9675-8695f048450b', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6e08fa44-4eed-5a75-b73d-09fa0f353df3', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15d6dac2-ef34-5031-a24a-c54e10038453', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dad48b0f-386e-5783-b8c9-c1c8bbe5b147', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3e0040e4-8c54-568f-a571-a01e0220a3e6', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('424a2813-ee0a-51d1-8367-f13b356765b4', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('247d021b-86ec-5242-9331-a90112a6383a', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6610ab0d-c9a6-5380-970b-be1472b30c3c', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7034929a-38b8-57ee-b350-32c4fc2e9623', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1df8c6ec-699d-5b42-b335-abb48ad32cd5', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d61c56af-ac7a-5c8d-81d1-38f7878f8247', '030a6df3-df8a-5522-879c-f6b3f4979709', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6002831a-57e2-5ed1-828d-53327c9616a0', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5a9c8766-8629-58ac-b28d-fbc8d0d15245', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de2615c9-2104-5620-8535-1a63f6f5c6b6', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('74dfcc54-ee25-5642-b469-9d6f0895adbd', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8662d253-6de4-57c6-b661-105b193b97e1', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6002831a-57e2-5ed1-828d-53327c9616a0', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5a9c8766-8629-58ac-b28d-fbc8d0d15245', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de2615c9-2104-5620-8535-1a63f6f5c6b6', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('74dfcc54-ee25-5642-b469-9d6f0895adbd', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8662d253-6de4-57c6-b661-105b193b97e1', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ea2c6fc8-7962-5bd4-bb56-2ea7fdc9143d', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b0cdbefa-b432-5a00-a7d0-a271732212bb', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ed63128e-22be-5ef9-ba7b-baf472dd8b25', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('342515fd-5b64-5a44-9488-564d00b00272', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a4ffa1f0-eb1b-5544-a82c-200f541b8672', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e07f670a-2a81-595a-95a0-9b21d1a484aa', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('11befde8-b4b0-521a-a99d-f1af0d5ef8b4', '9555bf95-6350-5e61-89b5-6e15a5312557', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e08f17ec-73c0-5829-b51d-6fa32ab117ac', '45ae7b1b-51c3-587d-b6da-12ed714421af', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('81938fc1-096e-5dfa-95de-fc8f0bc21baf', '45ae7b1b-51c3-587d-b6da-12ed714421af', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f50ce4ab-afbe-5953-b8fd-31f90adf227c', 'afca7a66-c3ce-5f08-92dd-46881cf1ba46', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2025-01-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('86054214-7b6f-54a4-b68b-ea74df2a6403', 'afca7a66-c3ce-5f08-92dd-46881cf1ba46', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-01-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73736c9a-7c9d-52d8-b8d2-d28faa9430be', 'afca7a66-c3ce-5f08-92dd-46881cf1ba46', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-01-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('81101bc1-b800-5844-a7f6-6b3fbaa182e8', 'afca7a66-c3ce-5f08-92dd-46881cf1ba46', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-01-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c38388fc-95ed-5bb7-8c4f-ba4db926551f', '21f94594-ada2-5a24-bf7a-c57b46efb927', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1a843473-0c12-51d2-9eed-3072ac680290', '21f94594-ada2-5a24-bf7a-c57b46efb927', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('56901914-b1e5-51a2-9630-57350b500074', '21f94594-ada2-5a24-bf7a-c57b46efb927', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0763fd64-914e-5cd3-a63e-08206be54784', '21f94594-ada2-5a24-bf7a-c57b46efb927', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e2f4d9b-7446-50ad-a0c9-a52ebf4b8048', '21f94594-ada2-5a24-bf7a-c57b46efb927', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0b77ea43-956a-5123-bb4e-f0cfbdfe4dbd', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a99aa8e1-a966-5c09-951e-bbc1d2f78b80', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1e33570-2e70-5f81-82c1-6d3e04e1edbe', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6cec752e-220e-5aa9-865e-866162ad7426', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('29410bce-800a-5aec-a7e0-4011a43e6a81', '61e658c0-7050-54b6-8e06-61edbf47d9b0', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d0bbf725-dd4b-5572-bf2c-9fcc50320e4e', '61e658c0-7050-54b6-8e06-61edbf47d9b0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('13c74b35-a9a4-52fa-a7e8-37f55f778821', '61e658c0-7050-54b6-8e06-61edbf47d9b0', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('357e8c3a-18f8-5d83-8631-dd22c3345403', '61e658c0-7050-54b6-8e06-61edbf47d9b0', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b7912815-da7c-582b-84a0-49c288e7afc9', '01e88696-bc99-5fda-b820-0e17469f58b5', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1507cd2b-4233-5e37-9701-d6c4172587a7', '01e88696-bc99-5fda-b820-0e17469f58b5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5c9f7cc4-db9b-529a-999e-980e029782eb', '01e88696-bc99-5fda-b820-0e17469f58b5', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('160c470d-0f65-5bee-95f7-8e8fca122c10', '01e88696-bc99-5fda-b820-0e17469f58b5', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a2d39bce-b1d8-5196-ae74-535828bfe891', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2026-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eed204ec-0a9d-515c-af3d-3fde7e7d6de9', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b1224a81-2cef-5a9b-bc8d-2f4cdfc15a2e', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2026-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e2a9f3a0-4351-5797-89be-b7d09b08f827', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2026-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6e9158aa-86a0-5cd2-8fe3-4fb02596ae84', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8e5a89e7-fdcd-5b51-96e5-850e4f60a6ea', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9c5f3f5-88bd-598d-9b93-3d4dd1a4c474', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a2a9908-3b34-594b-a2c2-10b0fba58eb3', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('09f12862-19c9-5dd5-9877-9e65a788f6df', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3c273401-f6a0-5f84-8c1e-58a2b80748f3', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8976984d-7b94-5255-a811-ee9e3f256cd4', '450175ba-a3c9-5440-9a96-09b745c727dc', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2024-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4ec9a1b8-a53b-5b0c-a2f6-6c90eda6d6c7', '97ed902f-ae41-58de-a2bc-60c85cd0d5f1', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('80ac1a77-182a-513f-84c7-cbc6126e1e98', '97ed902f-ae41-58de-a2bc-60c85cd0d5f1', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5f01a24f-dcea-5a2b-b8dd-1e18bc7f6ce2', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cced4f83-42d7-5c19-956b-dce3a3f0a72b', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83af89d6-fb89-55cb-8131-dd5fd435b378', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5f01a24f-dcea-5a2b-b8dd-1e18bc7f6ce2', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cced4f83-42d7-5c19-956b-dce3a3f0a72b', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83af89d6-fb89-55cb-8131-dd5fd435b378', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3c386ad8-f1b6-5f62-b0c5-29bd79d5ca9f', '0dadcb2c-45d6-5317-9373-0837b68dddf5', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a0f88487-849c-5fc5-99ba-06083acba259', '0dadcb2c-45d6-5317-9373-0837b68dddf5', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('dcf6fe4a-3fa6-5647-b565-ee926d879e77', 'b002d9b8-2a8a-5043-9ff3-dc435291a5c2', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('14b7ee45-f8da-541b-81d9-03a91c9121cf', 'b002d9b8-2a8a-5043-9ff3-dc435291a5c2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f7a96a41-a405-5ec2-96c4-85bb3d8a2b3b', 'b002d9b8-2a8a-5043-9ff3-dc435291a5c2', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0cfaff0b-24ee-5095-a5d8-ebaa9630a40f', '6bce2204-b1f1-58bc-a8af-e736717b63af', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('00aaf591-695b-50d2-b7c8-c3d44130dc45', '6bce2204-b1f1-58bc-a8af-e736717b63af', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8ecc1cf3-514d-50ee-9c6f-b908b4115641', '6bce2204-b1f1-58bc-a8af-e736717b63af', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9a1b6112-26dc-5cdd-8a15-f6ad0150dcee', '6bce2204-b1f1-58bc-a8af-e736717b63af', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f14a28d7-83d9-5eab-85b8-ff2b505928d2', '6bce2204-b1f1-58bc-a8af-e736717b63af', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('28fab9cd-2a7c-5f57-b0c2-8918979aae16', '91c5f86c-4179-517e-a1df-433af4c6bed0', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ff23e49a-479c-5ec6-bd6f-7cc43f6c2f9c', '91c5f86c-4179-517e-a1df-433af4c6bed0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('67847bd7-8048-5a67-b499-103c24d9da7f', '91c5f86c-4179-517e-a1df-433af4c6bed0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4bd687cc-4b9a-51cc-8786-6fd59a2a79e6', '91c5f86c-4179-517e-a1df-433af4c6bed0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ff84c31c-bcb1-5af0-b61e-71d8ba097c26', 'defbbae5-8b73-502a-ae78-991d0a8944b3', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ab9e0e66-1735-5c05-aca8-dc1ef379e41b', 'defbbae5-8b73-502a-ae78-991d0a8944b3', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('baf8c5cb-8b5f-5404-99fa-a254e8fec57b', 'defbbae5-8b73-502a-ae78-991d0a8944b3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7c224b33-b104-5f86-a43a-14eb8eb61c5d', 'defbbae5-8b73-502a-ae78-991d0a8944b3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a42d10d6-44cc-5c41-bb70-5a538ad21214', 'defbbae5-8b73-502a-ae78-991d0a8944b3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b4199d5c-dc94-5cef-80ca-5b7d78db15de', '7bb31037-102c-5416-9c5f-9f864dce0848', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('740d3093-dd29-5504-bf49-7f493666a48d', '7bb31037-102c-5416-9c5f-9f864dce0848', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-12-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('98fa27c9-7b0a-5f8d-86f1-c789b7336a49', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b74da37d-87ad-5f4b-86a3-d6177e53742b', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('35ec117c-0146-5290-8f1c-61f94b0574a8', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fde93826-d7f2-5d70-80ac-f01604f70769', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a905c2cd-33a9-51d0-9995-90a478aecc9d', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7b61e223-0809-550f-ab13-335a91e1ad2d', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('34f31e3d-c392-52a1-9022-b258348accfe', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2b160b2e-75ee-50c3-a24d-c03f77593fce', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4403d1ba-091a-5312-826e-039abccca47b', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d488774b-4e21-5b53-819b-1c6016abec6d', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b6557302-62c7-5ff0-86ba-a91764a46551', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3f439944-b241-54b1-aacb-78c80c20dc83', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('04d651f8-63bf-5f08-bb6a-6022fbc25724', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d7a5dd8-81b8-5a9e-b053-a931f5afda1d', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('67d2de50-0769-5f54-ac7a-ff81e881e5fc', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('723f933d-934c-5554-96c0-1ccc9da27107', '92403401-fce8-5a9b-b035-5d9ef0994ab4', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('675b47bc-44dd-5e49-9fc6-a981bbe757b0', '92403401-fce8-5a9b-b035-5d9ef0994ab4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b8ae01d4-858c-584f-b5d5-9a24690a76cd', '92403401-fce8-5a9b-b035-5d9ef0994ab4', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0e46851b-176b-5059-a4eb-11d18ff95a0d', '92403401-fce8-5a9b-b035-5d9ef0994ab4', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a9518a3d-4fbb-5c40-8d46-a39c8a22e188', '71d31fa9-786d-5958-8c21-6478e94c54c3', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('520e5270-2050-5b5d-b83f-13c15e9fce4a', '71d31fa9-786d-5958-8c21-6478e94c54c3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1915f5c5-c31c-58b1-8319-9fc09fbaabe2', '71d31fa9-786d-5958-8c21-6478e94c54c3', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c5e59cb8-37e2-57b1-8256-dd5073f96c0a', '446f2701-8cd7-5239-891c-5a97b650af05', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('817cbf05-72d4-5d2c-bf2e-7e010c4d80e2', '446f2701-8cd7-5239-891c-5a97b650af05', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2ff53e76-563b-527d-a036-687e62f04ec1', '446f2701-8cd7-5239-891c-5a97b650af05', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5cddb9b3-c1ea-5919-b2a5-347265fa40b1', '768ff813-e5d7-5939-b569-68ccb5b81c3b', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2025-09-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6cbcd94b-f523-5e68-b87b-1b8dc2ac8b17', '768ff813-e5d7-5939-b569-68ccb5b81c3b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-09-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83011cdd-85db-5360-883f-be62ffd86680', '768ff813-e5d7-5939-b569-68ccb5b81c3b', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-09-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('96e68734-ea8f-55fe-969e-167b0769386c', '768ff813-e5d7-5939-b569-68ccb5b81c3b', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-09-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1aa5ea8e-a2db-53eb-8d84-028b39e8a090', '98ab6fd6-31dd-5a53-8168-d0b7462adc85', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2025-08-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e6624be3-ac7b-58ce-aa80-d4e1ce2d0246', '98ab6fd6-31dd-5a53-8168-d0b7462adc85', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-08-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cbbdf41f-959d-52fb-af3b-f2c460292a9e', '98ab6fd6-31dd-5a53-8168-d0b7462adc85', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-08-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ed68da69-b5c3-598d-9dc4-b642396f655f', '98ab6fd6-31dd-5a53-8168-d0b7462adc85', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-08-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b4806a3b-30db-5532-bf4f-fc88471dd256', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42944cfe-775e-5f73-8f2d-142d92ee354d', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ee1c7bb7-8194-521b-a140-e1bfd269e76f', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa62bdbf-0ccd-52e8-a974-5b87db3bd55e', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c9f1e356-c296-578c-b45b-0c6d46f3a0d8', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('41776de0-be1c-5cb0-aef9-5b3f5f8e8130', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a9aba3b1-4a5d-59be-be41-227273897696', 'af628e8d-5192-5bbe-927f-d2973c14bc84', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2025-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ee8126f8-d8a7-5bd7-94b3-69c61904b16a', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2025-08-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e96cff8d-8c71-579e-9a2c-35382b828067', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2025-08-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3f747df4-ccb4-5590-814c-c73e57cdf82a', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f8d42a6a-0c15-5252-94c8-ec16c8ea5865', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2025-08-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eb688788-abd1-572c-afb6-df6c873c057d', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2025-08-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ee8126f8-d8a7-5bd7-94b3-69c61904b16a', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2025-10-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e96cff8d-8c71-579e-9a2c-35382b828067', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2025-10-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3f747df4-ccb4-5590-814c-c73e57cdf82a', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-10-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f8d42a6a-0c15-5252-94c8-ec16c8ea5865', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2025-10-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eb688788-abd1-572c-afb6-df6c873c057d', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2025-10-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7c1d9add-9025-52c8-92e3-741e62e58ebc', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('405ba017-e53e-5d66-99db-4d27680517cf', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5fd25eb1-3e85-58c3-a424-44de225092de', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e0eb80b3-dc33-539b-9c99-bffb553706b4', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e10dc3c-4268-5e27-a168-78fae60aa4fa', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9d8093a3-c6ac-546d-bc0f-bb15abb68064', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('07f5ea85-f2ef-510f-9919-d0dc02de86c6', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ad6a1c93-742b-5c5f-8689-71c51893db01', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83251ccb-d4be-5fd3-adf9-a5b4d706b695', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e6fa0a10-2fb3-51a1-a9f6-f0eec46dbd88', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('030fea91-3a4d-59ce-b8c5-b5fda5c7848d', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('200b02e5-f679-5760-a1ba-ef580aa4c693', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9cc30ba1-27ce-59ee-a5b5-66390f66e0a2', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5558c465-8fe2-5286-9fe0-418ad066b4a5', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('da40f44a-a449-5907-9f9d-6d27978e9bfa', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('914af1fc-906e-5c21-b69c-2e5689cc8353', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b9eef742-6949-5ef9-a148-d91863401227', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d0d3405-70c4-5fd2-931e-e3f07b5c5281', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d065e9f8-d017-5f6b-88d9-864cbc54246e', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d538aeb3-af38-5b46-8238-bda1dbf811c5', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dbcce17b-7fbe-57e8-bcb1-dbc30380fd56', '2bac191a-5c95-56ec-8070-ecb33dc3e660', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('32781d73-d47f-5c5d-8902-26d66712dbe1', 'ef962756-73ae-584e-82cb-db72831ba8f2', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('004e92bc-e364-5ee7-8e22-a5b9b1ba8122', 'ef962756-73ae-584e-82cb-db72831ba8f2', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b59a3919-34ab-5395-8c65-2d8e9745f3d4', 'ef962756-73ae-584e-82cb-db72831ba8f2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c38b3240-5861-58a8-b3b9-c05d420a2288', 'ef962756-73ae-584e-82cb-db72831ba8f2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1b8b5f38-d69d-5429-9fdf-859f09230d2d', 'ef962756-73ae-584e-82cb-db72831ba8f2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fdc61a3c-1e8c-5f34-8a04-3367af0bc547', '2ba04f92-7848-588e-81e3-5257ffde9fd7', 'joined_team', 'Joined UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '0a68fc72-f605-54ea-a91e-29c42e272f94', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('339b3396-a803-5a0d-8c40-91ec8369bc91', '2ba04f92-7848-588e-81e3-5257ffde9fd7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e8255f6d-b1f1-5dff-bdc0-f7b8f801ca9c', '2ba04f92-7848-588e-81e3-5257ffde9fd7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0e56f4d1-e6bb-5804-8589-545ecb016774', '2ba04f92-7848-588e-81e3-5257ffde9fd7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42a6aaef-70e6-5cea-b0c5-cf1c502e7a99', '6ab529c6-13da-5758-9d40-026c7293a328', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2025-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ee00618-224e-53d3-8945-a136555b35d9', '6ab529c6-13da-5758-9d40-026c7293a328', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aaafcbcc-468b-5acc-86f1-6cfd84c72509', '6ab529c6-13da-5758-9d40-026c7293a328', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('06e74c51-67db-550b-9561-1572f01805a2', '6ab529c6-13da-5758-9d40-026c7293a328', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b3bc704-ff94-5f7b-80a7-2eaa9064f484', '80fd3dbf-dde0-5a1a-adad-f4bf3929c627', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e7ad991-9abc-53da-9e41-8fd382c4cf34', '80fd3dbf-dde0-5a1a-adad-f4bf3929c627', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('035c567b-069c-5bcd-b5dc-3f401201771b', '80fd3dbf-dde0-5a1a-adad-f4bf3929c627', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b535e732-135b-54ff-a061-a31f65a968ca', '7e21071b-9951-5d95-8185-50120743a070', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15db45e6-9b2f-5d6a-bec9-a6e65512755f', '7e21071b-9951-5d95-8185-50120743a070', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('435fa76e-4f11-56c0-9a10-cb3c89b1c8ab', '64940f99-cb35-5f69-9a79-96594f569d31', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cdab12d3-cdaf-5f8f-9d1f-821ed2a5559b', '64940f99-cb35-5f69-9a79-96594f569d31', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('046a104d-bf25-5dec-b140-c1559bbc0801', '64940f99-cb35-5f69-9a79-96594f569d31', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a6d82e95-7010-5e30-ad0e-4f7053556f62', 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2025-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e224241e-7fc0-5489-8819-f9abd14e5d69', 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e189b4b3-bf67-5961-9186-1aa22d2ae3da', 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2025-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('94b649ea-7f11-538c-a684-7431e1f2b2d6', 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2025-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2c3d7d4a-bbcf-5c73-a2c1-1ed914930286', 'b78eed33-fa04-56e2-83dc-fde2963ff824', 'joined_team', 'Joined UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '93b36d13-689b-5d09-a662-3a2323785090', '2025-07-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('437fa1e1-1b49-5850-bb98-9b60fec49791', 'b78eed33-fa04-56e2-83dc-fde2963ff824', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-07-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('646ae57f-2290-51ee-a3f7-7524280a016a', 'b78eed33-fa04-56e2-83dc-fde2963ff824', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2025-07-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b8d39f96-225f-505d-960f-be8d13384432', 'b78eed33-fa04-56e2-83dc-fde2963ff824', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2025-07-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('668c9002-e7ec-58ac-b212-dd0b34b54bb3', '81c532b2-623d-5d7d-806c-de7bff4b287e', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d41d5b7d-7e89-5fb1-bdf8-8923229bac52', '81c532b2-623d-5d7d-806c-de7bff4b287e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('474c5eb0-26e6-5fc2-b0d8-5b297caaafc6', '81c532b2-623d-5d7d-806c-de7bff4b287e', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d38865ca-588d-5a99-ae98-96540c002692', '123dab8b-1478-5a2a-ac7d-431b67f59348', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('71c17c66-a25a-5e03-994e-fce9f8b982f0', '123dab8b-1478-5a2a-ac7d-431b67f59348', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('21bf2cd9-5879-52d1-9b2e-504ace123484', '123dab8b-1478-5a2a-ac7d-431b67f59348', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b0615c4-5014-5291-a327-5b592c2f53cd', '123dab8b-1478-5a2a-ac7d-431b67f59348', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6e1c51ea-07da-5f8d-98b3-16c1f0bf2cbb', '123dab8b-1478-5a2a-ac7d-431b67f59348', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('27a3906b-1d66-54d9-8a8f-a7ac9614a839', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('08fdc84b-73f6-5b18-9760-a5352e1579ac', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6356d0a0-5e07-53bf-bd47-e065af649798', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83f07c1e-c4c8-5e51-8739-5ef98135d910', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('06bb6f42-8e50-508e-9503-6137272460f5', '706b8279-f37d-50e3-9c09-53fe65d453d4', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2024-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b147c7c0-01f2-5576-8ba0-275c7b7547c5', '706b8279-f37d-50e3-9c09-53fe65d453d4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1e8edb27-d058-5428-837b-d875fafea616', '706b8279-f37d-50e3-9c09-53fe65d453d4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('13c80528-b9ed-5724-8304-73256f17acb6', '706b8279-f37d-50e3-9c09-53fe65d453d4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3418c192-d12f-533b-96aa-bb1b2fb02c59', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cef3b20f-082a-5830-aadf-5179d5f3c2c8', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9bfead65-5dde-5aae-9c90-08435fa7a244', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4130c0fd-f082-55f5-a546-d0adb908f3d4', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1524d38c-a263-593d-8cc1-539224fd1376', 'bbab054b-e127-5d28-9228-4913340f355b', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3b21e6be-d405-55fe-977e-9ec55ab5cd8a', 'bbab054b-e127-5d28-9228-4913340f355b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ebc45c01-b087-50da-bbab-9a3b22265ffd', 'bbab054b-e127-5d28-9228-4913340f355b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b2f8753-7289-571c-80e8-e49c845423e7', 'bbab054b-e127-5d28-9228-4913340f355b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a50eada9-6e66-5c9d-a6ca-7c39ce0b1798', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2024-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e8a49cdc-cf1c-5aba-83f8-ea3709ab2afa', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e583c72b-4661-5a4e-9405-a446cec5de2f', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ff06c3ac-1a19-51e6-a971-04f5d12d1d0e', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5a1d44f6-7667-5fd0-a2fe-6c72cab681b0', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a50eada9-6e66-5c9d-a6ca-7c39ce0b1798', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e8a49cdc-cf1c-5aba-83f8-ea3709ab2afa', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e583c72b-4661-5a4e-9405-a446cec5de2f', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ff06c3ac-1a19-51e6-a971-04f5d12d1d0e', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5a1d44f6-7667-5fd0-a2fe-6c72cab681b0', '97251655-7ebe-5ece-8835-32b08fe83074', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-06-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('74cb9659-4440-5fb9-82d4-257aecdaf47b', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1c18821b-13c7-50bb-b6b0-afc04a1aa24f', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15191230-6d19-5072-ae5c-07016e90d60b', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d5986ae7-eaf6-53bc-9f19-6f08362f0626', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('97785239-fd44-59a2-8262-465450a34305', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0efd952-3f95-5305-b63a-e9679222e707', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('98acc841-ba23-5974-8336-af8583ae422f', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b2e5d47b-d6d3-5294-9df3-e603f8bfced4', 'c157f807-0695-5cdf-b56e-95cefabb877a', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8b28ea63-76ed-525d-a5aa-ebb7cbb9bf12', 'c157f807-0695-5cdf-b56e-95cefabb877a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a3d99d56-9618-534e-8621-088647d264e1', 'c157f807-0695-5cdf-b56e-95cefabb877a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4eb14cf0-5ac7-58c1-9a9d-3df84db33001', 'c157f807-0695-5cdf-b56e-95cefabb877a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('21565d1b-59f9-52b8-b2dd-8a0f24384597', 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bebfa5b7-1111-5617-88a0-3f5b80bda4ca', 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b649ddf3-abf7-5fe2-8c6f-1f75d0b5361f', 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('80880a85-13f4-5906-b41e-279acea0281e', 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5498ba47-bde0-51b0-9edf-7e919a0f7b2e', '63f770f5-08e9-54eb-be61-87416921b0b0', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-08-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f31dd59d-c471-52e2-89b1-89445ed47f1b', '63f770f5-08e9-54eb-be61-87416921b0b0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-08-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8d1c53c8-a99a-5b77-ba6d-f0f6e4ece16d', '63f770f5-08e9-54eb-be61-87416921b0b0', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-08-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3735d063-0466-5903-bed1-4e6d594fcc0f', '0e93d3c5-54fb-58d2-b844-641af3bc7a85', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2026-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6698fe4a-9d4a-5fd5-be05-282821be4fbe', '0e93d3c5-54fb-58d2-b844-641af3bc7a85', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e683f5d-688a-5b98-a73d-95f3d3504732', '0e93d3c5-54fb-58d2-b844-641af3bc7a85', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2026-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('66381bb5-fdf2-5409-9622-c39aa457dcd6', '0e93d3c5-54fb-58d2-b844-641af3bc7a85', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2026-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1d315649-c969-5e39-ad79-7d3ef9686a1d', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2eb510dd-ea96-5c73-833d-c5c0f73770a1', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('84abc4d2-942b-5061-9383-d1a761e11bd9', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1cc2d3c8-ae2a-5538-8ea0-cb0dbb924951', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b2263d51-fe40-5cf7-a0cf-04acfb19ba07', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('27ca8382-64e6-52ab-9d17-f37a35ca8401', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf8d91bd-072c-5cd9-9627-be58f96e2261', 'a479360c-6cfa-5473-a486-db5837193f02', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f6d3ac2f-27da-522f-b503-6790579c0ab3', '1fde7850-cf05-5282-8756-9c752c4399c3', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2024-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59ca21ae-9773-592c-a2b8-b930e3b425fe', '1fde7850-cf05-5282-8756-9c752c4399c3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f6bbc32f-6d6f-5554-b8e2-61af2dc8f4ba', '1fde7850-cf05-5282-8756-9c752c4399c3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2024-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d3fd6e6f-dad4-5002-bff8-e525d31fa0da', '1fde7850-cf05-5282-8756-9c752c4399c3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2024-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4f9172f7-bb50-57c9-b9f2-1d42b27800bc', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d4903a01-0d06-5f04-bceb-1257f031fb13', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0ba4dd9-ea17-5dd6-9e8f-1a15ae8a2ae7', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('107e4bb6-e3a4-53d0-9b52-45ffd2b0b51d', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('88a355ef-791b-50f2-914f-ab439e49246d', 'deb7f292-f34a-5510-be7c-c1168706f643', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2026-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dc44018f-b947-5370-bf83-b7c1fa962571', 'deb7f292-f34a-5510-be7c-c1168706f643', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2026-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('951e84b1-1698-5cd3-81b1-ea77dabede31', 'deb7f292-f34a-5510-be7c-c1168706f643', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2026-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7252e7a5-ce59-5a2d-b2aa-a33d94faa9d6', 'deb7f292-f34a-5510-be7c-c1168706f643', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2026-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('722988fb-959c-53d9-adb8-5a9dcfb29677', '09179fe5-a0ae-5edc-bd24-73f9c0b97046', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('61333bc3-e8a8-5d87-b183-039e1cad2a05', '09179fe5-a0ae-5edc-bd24-73f9c0b97046', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ab18e854-5136-5c80-bde6-4bf2e7602bc2', 'fbbe1890-4752-5627-925d-adbd9ca1930b', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3d793c73-0164-52fa-9fd5-87d94a62ba42', 'fbbe1890-4752-5627-925d-adbd9ca1930b', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('290982b1-fa8b-5225-a18a-246ca85d330f', '828f04d4-a6f8-581c-a217-559ed0659cce', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f2facb94-2690-5d46-bed4-18965484d015', '828f04d4-a6f8-581c-a217-559ed0659cce', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5d8beeb0-ce3e-53e1-93aa-b54a1aa016fa', '28e12fa8-63f2-53d9-b811-34fd67076268', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2025-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('acfc6539-be5a-55d1-9757-0323e43c5b89', '28e12fa8-63f2-53d9-b811-34fd67076268', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e5c9bc5-026c-5bcf-b2a1-589b8830359c', '28e12fa8-63f2-53d9-b811-34fd67076268', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c8dca5d6-8c5a-573d-b17e-96ddbe2a0806', '28e12fa8-63f2-53d9-b811-34fd67076268', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('eb96ebe1-2d0b-5d60-b030-0e563813a348', '21dbd8cd-9b16-5af1-b7df-304d1d620ca7', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('19749ec5-08d0-5cdd-af5e-76e3a72e8922', '21dbd8cd-9b16-5af1-b7df-304d1d620ca7', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('01e3762e-bff5-5064-8e8b-479417da3880', '1af8919f-cb53-57a2-a691-bc9a57c0aefe', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('647575a3-4b33-5781-b8d3-55903879b64f', '1af8919f-cb53-57a2-a691-bc9a57c0aefe', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3e161667-99a2-51dc-8e18-0c377612eace', '836e20ae-d602-5ed0-8f9f-f3d2138c5b25', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5b38e4c7-9d70-5f73-bd8f-4e0248161c28', '836e20ae-d602-5ed0-8f9f-f3d2138c5b25', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('23ce4f5a-872d-5009-af76-168ed8be33bc', '595fddd1-e69a-579e-86a1-3ee96a27ca60', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('116a8b80-4b17-50c6-aaae-b94975d0deb4', '595fddd1-e69a-579e-86a1-3ee96a27ca60', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d8d79035-2dba-51c1-897e-aa3da5f25cd7', '595fddd1-e69a-579e-86a1-3ee96a27ca60', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9e29adf-50b5-535f-ad97-599c3c008e56', '595fddd1-e69a-579e-86a1-3ee96a27ca60', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7f76173c-23f9-53ee-91b8-66ad567dbeaa', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('be3df159-30a8-5302-aeb8-865a91efb0cf', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('879e2559-6bb4-513b-9720-de532e87140e', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c2678dda-bb17-5522-9912-cb2d42337b0b', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('61250cc5-3c8d-5c84-a2d3-2cb5c14eb421', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('aabaa5f4-39d2-5610-acb6-bfada1376506', 'b0c7b338-4c70-54d1-ae2c-79509c7da989', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4e721a8d-73c9-5c47-997d-a205af5a5300', 'b0c7b338-4c70-54d1-ae2c-79509c7da989', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73c426fb-c434-54fa-9ac2-f3760901f071', 'b0c7b338-4c70-54d1-ae2c-79509c7da989', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c566d58f-4f75-572b-b83d-90b6265810f3', 'b0c7b338-4c70-54d1-ae2c-79509c7da989', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f2ec9d20-5ba1-5265-bba8-ea36ffecc639', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f4944f8e-bc41-51cb-8dec-bc2230b1cf7c', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4a37bac2-9d74-5dcb-96e3-eea2bb594627', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('18e60216-8fba-5d82-a33c-b6be1b9cb49b', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('842b1d08-ebc4-516d-8a3b-4867a839ac36', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32355849-4a10-5777-8f22-34345e62935a', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('03197ecb-a71f-5bce-99a8-24217b42e3f2', 'f20e98a8-65f6-571f-a1d8-c7a2a4a3d244', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('14594d10-99da-54d8-896b-7b07281e55d8', 'f20e98a8-65f6-571f-a1d8-c7a2a4a3d244', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f5426528-da63-5ed6-a585-7b3c32b66eb6', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('91597dc4-c676-5a91-8ab4-80f5a8ada844', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f08caaee-eddb-5973-99c2-944fb6b5bbba', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('34bd350e-20bc-5b7a-b195-e3148081ee51', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3162e792-2408-5094-8f03-75f60d112f98', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa49ec62-c1af-560e-ba50-a109a939af6f', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1e3307c4-02eb-5577-8d07-3d077276df95', '76bd99ff-b7d3-5111-8963-68def6a11f0e', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('84102b78-5102-5d87-b15e-e0d82aa06e4f', 'c3c96070-57b6-50d4-9fda-ca400a0e333d', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1615d00f-3df1-5d47-86aa-70dfe2c3d252', 'c3c96070-57b6-50d4-9fda-ca400a0e333d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('516226e2-d567-57d9-a5df-36e25a6f2d0c', 'c3c96070-57b6-50d4-9fda-ca400a0e333d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cae21604-737b-5b58-922b-a7858e070806', 'c3c96070-57b6-50d4-9fda-ca400a0e333d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('becc72fd-9fd5-5bfc-baa5-0a039f9ae568', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c374ebbc-f186-5d50-ab75-5432e66c364d', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('94ce79cf-ab22-5e0f-8dd5-4d0bea14f3a9', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2bcdc56f-aa50-59aa-bee6-6783d1923d7f', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ff9c25ac-2a21-5ef2-935a-59cebbf37727', 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6a165856-9430-55cc-bf10-28498e7d3beb', 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e2434a5-cd7a-5ebe-8308-60e1af5ebc86', 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('83543e14-b370-5f8f-96de-0e9d2b304732', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8e733251-07e1-5b96-aaf6-b13ed524a93e', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6548a4b0-1790-5c76-95c8-83e3cb9b6144', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e09f7708-697a-52d4-8dd3-3a25e609801d', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dc43f881-c37f-566c-a467-812bd33443dc', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e709585e-af29-5918-a9b5-9c3e65aaeea8', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4121e1bb-1827-5ac6-9f25-16dc8d5952a0', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1b5ecf05-161e-5264-88dc-9f9fb08bc6db', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bcb2f93a-4ea3-55ad-9595-987d18974c0d', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0cf8600f-d5c7-5f50-be5e-80627b4f6898', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b07189b-aabd-5a42-b09e-ad70bca81eef', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5f764eb5-0d62-59bc-9556-5de2510762e6', 'af7555f3-99fd-5dec-b306-667103dde3a5', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('39ff2817-f4d8-5651-8013-bbbc529dea09', 'af7555f3-99fd-5dec-b306-667103dde3a5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b5e589a0-bf23-5181-9cd9-bf342179f09a', 'af7555f3-99fd-5dec-b306-667103dde3a5', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fc861c08-b63b-5320-a379-081ddfebf0a3', 'af7555f3-99fd-5dec-b306-667103dde3a5', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ddab8047-d4bc-5d75-adc0-2ad13b73d1f4', '6af19bc3-d5ff-5718-ac7f-42e4788ee663', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ac497a0c-8056-5c3d-af8c-c6f4f8ec2c0b', '6af19bc3-d5ff-5718-ac7f-42e4788ee663', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('270f077f-4dcc-5b40-b256-47062d8752cb', '6af19bc3-d5ff-5718-ac7f-42e4788ee663', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('45769e1c-10e0-5c0c-be58-ad914193a3de', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8da99669-f302-5fa5-a887-64c16a60a656', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('49226905-b295-5830-adcd-724b40276d1f', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('49fcd014-1142-5350-8775-64ec2464f477', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c77d3871-d02b-59f0-810a-24a010d806d2', '50a6892b-8453-5e72-9e69-36b2c96fdbc0', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0362b949-fb32-520e-9bd4-a4bbfdc62b85', '50a6892b-8453-5e72-9e69-36b2c96fdbc0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('89cc6c6f-c1b5-587f-ad35-b1e47a255e75', '50a6892b-8453-5e72-9e69-36b2c96fdbc0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ffb0b883-26b0-5171-801e-c97c711a9f17', '50a6892b-8453-5e72-9e69-36b2c96fdbc0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4e130e79-8011-5346-8178-26184e8fb60a', '5b572886-577e-5b49-88c2-adc00e33fe49', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('879d6913-ca31-5e09-bfae-c8f59afccdd5', '5b572886-577e-5b49-88c2-adc00e33fe49', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a71ea7fb-b7d4-515b-b3ea-b6bf8a5d1897', '5b572886-577e-5b49-88c2-adc00e33fe49', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aef3e59d-0e26-5709-82bc-583c57125cc1', '5b572886-577e-5b49-88c2-adc00e33fe49', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f05bd457-9089-5655-9f2f-b24d8bc9b5e2', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0f3e6be-6a71-53ab-9489-199bf9347ccf', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c42efe6c-f25d-5026-a22b-7e7ec0148f66', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('522380a3-2188-563a-81b3-f774f3cacaa3', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2c8c8584-ae65-5853-9631-16269bec2947', 'bf02a695-0877-5b65-b696-230e0c0c3848', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1bc701cc-661d-5435-989f-af8f23c890e5', 'bf02a695-0877-5b65-b696-230e0c0c3848', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f8138040-be75-5d23-995e-ac139e63365f', 'bf02a695-0877-5b65-b696-230e0c0c3848', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('65c341e9-fc38-55f3-9595-9dc51beff461', 'bf02a695-0877-5b65-b696-230e0c0c3848', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('95f3e6ee-dc67-5066-a4b9-c8c1f978d4c5', 'e2209776-9d5b-5694-8d6e-493582c51cbf', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2024-06-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dcdfca5b-93bd-533c-bcf1-91e44f2d984e', 'e2209776-9d5b-5694-8d6e-493582c51cbf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a600d100-b33a-5986-9be5-36df6df10f44', 'e2209776-9d5b-5694-8d6e-493582c51cbf', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-06-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('90dd47cd-b175-5e22-b24f-51ca3d516e19', 'e2209776-9d5b-5694-8d6e-493582c51cbf', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-06-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e1990da2-6136-5336-a0c9-13dac1699cee', 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb687ee8-54ce-5f9e-aac4-a036324005ed', 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6f28e578-631e-5a7d-983d-c39cd1479daa', 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0022d0c9-bdd5-5db4-ad1a-cf819b615566', 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('daee37c4-aedb-5240-8e4e-450fb5a6b138', 'cdb2e3ed-1ad4-55fe-871d-1c8cc1b12ddc', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-07-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4582e1cc-a3b1-5bfb-a11c-13315fb239cc', 'cdb2e3ed-1ad4-55fe-871d-1c8cc1b12ddc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-07-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('50c07040-6633-589d-a7ed-67004c2d1aa9', 'cdb2e3ed-1ad4-55fe-871d-1c8cc1b12ddc', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-07-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('28fe293b-8133-5a3e-ba08-c720ec3f9374', '3b706ba3-ea1a-5bea-af55-2360450f1e10', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2026-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2a8d833c-6c44-54ad-842e-30e2a41f19d3', '3b706ba3-ea1a-5bea-af55-2360450f1e10', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9ff86a15-1110-510c-a45b-f7478ba5d4cf', '3b706ba3-ea1a-5bea-af55-2360450f1e10', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2026-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa7277a6-0cf8-5bf7-ae7a-4b3d245edd28', '3b706ba3-ea1a-5bea-af55-2360450f1e10', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2026-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('eb9fcb4a-5a01-58cc-8b17-57d2d7206d16', 'e2f18ede-667e-5208-b9e6-6e5a702f593a', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2024-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0e9c9bf8-60ed-59fc-9809-f502130f5507', 'e2f18ede-667e-5208-b9e6-6e5a702f593a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('31cdcff1-e940-5b0a-898b-a77c4104dc92', 'e2f18ede-667e-5208-b9e6-6e5a702f593a', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b010b81b-7214-5cb7-9792-bbd620e87f00', 'e2f18ede-667e-5208-b9e6-6e5a702f593a', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5c4c90fa-1f0b-5717-88c7-153b6babb741', '026ca572-acc7-5b6d-a9ef-8055126c58e3', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c4609617-27cf-5f88-b787-ca590f948e98', '026ca572-acc7-5b6d-a9ef-8055126c58e3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4e28fc23-7141-51fd-8b38-bf3ae4f97614', '3a453e04-914b-576a-8b23-0eaac4e0fade', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6a54d0d2-939d-5027-8402-e796039387a5', '3a453e04-914b-576a-8b23-0eaac4e0fade', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a1e51aff-086b-569f-aad8-37d9c9f3a6ac', '3a453e04-914b-576a-8b23-0eaac4e0fade', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a318d17e-eed3-5a7c-b47e-47fe8b2a185e', '3a453e04-914b-576a-8b23-0eaac4e0fade', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a373b0cb-2221-55c5-9d13-bb4f0d4ef646', '639335b7-22d4-5ff0-a893-41dc12df5862', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('878761e3-e69c-50f9-a9a6-6b589c3c3ad9', '639335b7-22d4-5ff0-a893-41dc12df5862', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('214f5a04-26f7-51c9-92a0-60ee672c1411', '639335b7-22d4-5ff0-a893-41dc12df5862', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('24d4ff0f-44f6-5ce3-bab5-eeb3bacb26bf', '639335b7-22d4-5ff0-a893-41dc12df5862', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aad94608-52ae-5fc5-b56a-d7a234c44beb', '639335b7-22d4-5ff0-a893-41dc12df5862', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0acf93af-ed6e-5a67-850d-c48831f3839c', '07cccecb-81fb-5941-8300-8276f9a200fc', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3df232c7-713d-5e08-aba5-387a6fec5519', '07cccecb-81fb-5941-8300-8276f9a200fc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3136d992-5a84-56ed-bd41-a97cbaaf3573', '07cccecb-81fb-5941-8300-8276f9a200fc', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('60402dc0-2e2c-53b6-b999-85beb341a201', '07cccecb-81fb-5941-8300-8276f9a200fc', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('703a8f70-34f5-5225-b9c7-47e5dc89c093', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2595ae6e-4795-5858-a73e-a951b6d2852d', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('224f3d50-d92d-5c37-90e3-bf6dbe39fa52', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6ed66d14-a669-5301-8899-e7537f2fb1fa', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5b53194f-8368-5866-9418-4257bd258e45', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('92f2a826-369d-5ba1-ad72-87da4ec2aef7', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1df62a3a-79ba-590c-b369-f0f13af31320', '96121571-db6d-5e78-98c6-24bdda4684f6', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9a03f663-c01d-5e20-b312-406d9c007646', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('aef29056-d1dc-5e05-a43c-341d04e708f3', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a6adb77-df70-5487-9390-d052d5a57906', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7615884a-9097-535e-8fc7-f8d660fe9bd7', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75059eb3-32ec-5397-86bf-126f5167a74a', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3957d542-f26d-52d9-b3e1-48ad68984c46', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9b6bb5d-8ed2-586c-81e4-01851eec696b', 'ba43f4a9-c863-5f38-8f20-02e08658a1bf', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1beafd44-f220-58c7-9ec7-0b9c13e3ac06', '656355ae-4986-5060-866d-a56d4b736262', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5712ecb9-e97d-5386-9691-49ed7c202d47', '656355ae-4986-5060-866d-a56d4b736262', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6553244a-a03b-5a76-9384-7f2af2dbae32', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a7dde380-d3cb-5104-85ec-6d57d0f852e1', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c0c86753-f01c-58b7-bc5e-9b66eafcbdec', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('93593d2c-2ed2-55b3-a592-5cf7b3d0e2b0', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('045378f3-83a5-5e23-9b30-efba75ee2bf7', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d380f67b-2e3f-510c-9ade-8a8bdd929212', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ac158470-bcbb-542a-9598-848c776364e9', '656355ae-4986-5060-866d-a56d4b736262', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d4267401-95b7-5931-9067-d835fc1dbd0b', '6283144f-d17d-5444-a82a-e9c4f71f89b3', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bdf02130-1a31-50dd-8bba-1e9ec7a8d2bc', '6283144f-d17d-5444-a82a-e9c4f71f89b3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6bd5fb92-8d94-53dc-ba8b-28fb245de1eb', '6283144f-d17d-5444-a82a-e9c4f71f89b3', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e3c91f36-e434-5824-941d-53244b907fa6', '6283144f-d17d-5444-a82a-e9c4f71f89b3', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('76f1dcb5-3957-5a92-9e22-8874fdca660c', '913c284c-7b61-5111-8e00-da193678c4f1', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cbd4c06e-54ab-5727-92e3-881731d2f54d', '913c284c-7b61-5111-8e00-da193678c4f1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d39293f3-f9ad-5369-9316-b24bb46e4bf5', '913c284c-7b61-5111-8e00-da193678c4f1', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1888d89a-b0dc-5321-900f-dd282651450f', '913c284c-7b61-5111-8e00-da193678c4f1', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('690f433a-ad2d-584a-9eef-bed2eb4a0cac', '913c284c-7b61-5111-8e00-da193678c4f1', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('aeaf6c90-6bf4-5055-820c-25c69039a47f', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('dcd8d93e-60cc-5203-a027-31c3e1b9275f', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('440377f6-4071-5dfa-91b2-33c6f3f6a833', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c1b4412a-0e52-50e1-9f4c-453740a09086', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f7884742-693d-5f8b-871c-19d695084ece', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ddb892b5-0777-5775-b552-9949f7f80dac', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b230097-23d0-5656-a23a-a86e2f50323c', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a262c524-1e2f-5ed9-8443-ed3543af87ae', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bf68fa08-888d-5d89-bed4-9bd57be48a42', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d761238b-2a4d-542f-bd6f-606ebde562e6', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4bd25887-1c18-51a2-9865-5c9c46a2b90d', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2fad80d0-4f9b-5233-922a-6995ea489509', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1887b36d-85ca-5b53-8395-b1ad0a143dcb', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('61999386-7f5c-54e6-a796-7be0018a5f1a', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('215a4e89-dfff-5033-b029-cf9ae21997c4', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fbfaa322-c657-5b2f-a8f9-29c71ad4ea8f', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b3a9704-931a-5e75-9552-2019b8b68749', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('299a2d5c-35cc-5e9f-98ec-f6500649e7e1', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7d591cca-4576-5a20-9ba6-c20322674710', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6f6dcbca-80c9-5706-9153-465f0b83ca80', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4eb0eae1-ecf5-5a6a-b372-925f7df934d8', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d76f8bb6-9a21-585c-ab34-25ef0ca11436', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c3a85b62-6f20-5189-a580-3c7396c11212', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f27ff878-50ea-51db-82e1-326c8b81bcff', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('621593f6-b9de-5cb6-864d-fd35f95ee5a8', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('db5d20af-1d0b-5cfa-b1bd-127839429589', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c56d6b36-9233-584c-96e4-1e7d7cb8d605', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d4229dc4-1e36-5425-a302-9b637a6906ec', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d93600ab-4180-5304-a70f-51e3d07d0391', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a60d2edf-0aad-5ece-85da-2dfb9f120063', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2dfbd5fd-9f4b-5b2e-a1ed-816c2b424afc', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('428a00cb-beae-57ad-b32a-dc314799013c', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('04bb15d3-4185-531a-9be5-c0e794d87cf3', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dd515d7a-d8a0-5f14-8669-13b191d3c417', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('478657e3-f04f-56f2-911f-3a08e8e1c898', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dfa83c7f-24fb-53a7-8baa-16829359a827', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7b36b7bc-9c53-50fa-acfe-b34d0dc3ffc9', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a02916ad-1a43-5809-9abc-70f24ac46638', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f6169d29-5825-56ec-bd1b-d949eeb8cdd7', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f9fd3989-2ddb-575b-8a54-2a5a8db5bd70', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('04c9a276-90e9-59d9-abfc-421f905e45ba', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('67096d27-47cc-536a-adfb-b5be9d59c85c', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73fe0506-1819-54a6-b931-873933265bc0', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7fe904c8-0424-5e93-923a-92673dfe893b', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f66697fc-0cd1-5e40-89da-9ea2e44320c4', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5216f16c-3ad7-5080-971e-f148e33b54f7', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a13946a-67cc-5305-a992-87a5a1440b61', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1bbfa97a-5f2f-5551-b920-0ca776c31bf1', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e8557603-e746-560a-983b-c5232daf36c9', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af9bf1cb-7866-5839-a726-2eb4f07a3244', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e4c7e127-545a-5d86-9799-ca604097f01f', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1110777-bb20-5eb7-8543-4510f4be7599', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('91b49d32-fdf0-5554-8daf-ca1ec65d8760', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('22462876-5eaa-51aa-b824-2e3695a40870', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c19ff0e5-1b07-5b9e-b04a-ebc2070afe13', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6a2fb73b-5ea1-53ae-a7a3-61561844d434', '3569a89c-c748-52e5-8c9e-16d678b2225b', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-09-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('51319a6b-1109-5c21-9190-e04ce9885ad6', '633482fb-1801-5b0a-83cd-254139a8eaa8', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3a0d05d2-fd3a-5cfb-a674-bbf6e363fcfd', '633482fb-1801-5b0a-83cd-254139a8eaa8', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('019ef97c-fd59-560d-af28-dca8ab5e435f', '633482fb-1801-5b0a-83cd-254139a8eaa8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('319f45c6-fcdd-5e7c-a79f-1a95a78a5f5a', '633482fb-1801-5b0a-83cd-254139a8eaa8', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ed6e1180-2668-5d02-a91a-c16f36893767', '633482fb-1801-5b0a-83cd-254139a8eaa8', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ec1979e6-1f5e-5a32-acb3-a95606f3225d', 'ab442ff2-814b-50fd-9c79-694fe7221c53', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb30772c-7f76-5dcd-bc62-ff508e88d138', 'ab442ff2-814b-50fd-9c79-694fe7221c53', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('072e6633-4ff4-5e36-a513-469a05c4af3d', '68c82400-d066-5c2c-9de5-65c04a6cc7db', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9eeb590-8faf-53c9-b566-9c506e63f755', '68c82400-d066-5c2c-9de5-65c04a6cc7db', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1424ff01-e22b-5f22-b4d9-19a685960c65', '68c82400-d066-5c2c-9de5-65c04a6cc7db', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4074eaf-eb1b-5689-93f1-a5602401219b', '68c82400-d066-5c2c-9de5-65c04a6cc7db', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4a7593f5-4cdb-5343-85bb-8f23c4980977', '4f96f59c-587e-5426-a547-84191b800f30', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('174a9311-f5b9-50e6-a857-feae6b0d8f71', '4f96f59c-587e-5426-a547-84191b800f30', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('297f0b4d-7e97-545b-bd36-45e645841ab4', '4f96f59c-587e-5426-a547-84191b800f30', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1508d269-a6a9-544e-9af3-25bc03c8e668', '4f96f59c-587e-5426-a547-84191b800f30', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e523a8a-0b51-558f-abc2-d5341f24905b', '4f96f59c-587e-5426-a547-84191b800f30', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ad4867f2-49b9-53b8-9a7b-dea83ed8e7ee', 'f99fd381-408c-5f98-bab3-ba0fce2513ac', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2026-04-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4441fc7c-5860-53d1-a98a-1f01ccfeb9a3', 'f99fd381-408c-5f98-bab3-ba0fce2513ac', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-04-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a321624e-8bfe-5cfd-a74d-c05b70514fb5', 'f99fd381-408c-5f98-bab3-ba0fce2513ac', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2026-04-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4e1acec8-d922-5e27-8bb3-fde5f9bc5717', 'f99fd381-408c-5f98-bab3-ba0fce2513ac', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2026-04-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7fb40385-c700-50dc-b2b1-9394b0158351', 'b3877c51-eb63-53a7-8bfc-845178c02f7b', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('768ae5d7-65d4-500a-8fcd-f08ffeee9848', 'b3877c51-eb63-53a7-8bfc-845178c02f7b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b831f6c9-3cd3-5324-bcf7-0d7b5e1b171e', '9e987734-33b3-5c53-826b-38d2eb500e53', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('affedba9-32da-5b4b-b4b9-bc4919792546', '9e987734-33b3-5c53-826b-38d2eb500e53', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0c1b01f8-9c2f-5ffc-ae07-6453326652bc', '9e987734-33b3-5c53-826b-38d2eb500e53', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ad42e858-5e61-57d2-81d5-56f744607b1c', '9e987734-33b3-5c53-826b-38d2eb500e53', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('386159d3-9701-5d1f-9139-7df962fff636', '42b9600e-67e1-59d2-a210-58562e646bf2', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87e290a1-a347-536a-8fec-cc819fc0a1b3', '42b9600e-67e1-59d2-a210-58562e646bf2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a0f7f321-d455-5ce9-86b6-23809409ccd0', '42b9600e-67e1-59d2-a210-58562e646bf2', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('40d320cb-395b-538f-b325-f9e8a190e521', '42b9600e-67e1-59d2-a210-58562e646bf2', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('68827f7b-ce8c-5747-923e-0fd296dd502e', '367c3964-57a5-5a60-b09c-f72f3f7d40ce', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae3a1e72-54d5-572e-83a3-1007dc83ea07', '367c3964-57a5-5a60-b09c-f72f3f7d40ce', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f05ec364-a721-530e-82b4-9d991f0c535f', '367c3964-57a5-5a60-b09c-f72f3f7d40ce', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c70002a2-8278-5ff2-9aed-5f0df4e747ca', '367c3964-57a5-5a60-b09c-f72f3f7d40ce', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('73a66745-092d-5b52-b6ee-265fa577f7f1', '1aac7d92-3d67-5dcb-bf19-9c094181189d', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-01-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d373b529-6a8b-5be5-a642-ddcff10beea9', '1aac7d92-3d67-5dcb-bf19-9c094181189d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-01-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b45083aa-58a0-5709-b869-f486f592783a', '1aac7d92-3d67-5dcb-bf19-9c094181189d', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-01-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('673da8b5-d4e9-52e0-96bf-6db40ccc4e90', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ae5f8362-b260-54d7-9b62-8c65bc90d557', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5a7c0384-8bf4-5795-994a-e9a1c3e958a2', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d5d7a422-3f1f-5093-9e94-9399d793b909', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('673da8b5-d4e9-52e0-96bf-6db40ccc4e90', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-11-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ae5f8362-b260-54d7-9b62-8c65bc90d557', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-11-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5a7c0384-8bf4-5795-994a-e9a1c3e958a2', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-11-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d5d7a422-3f1f-5093-9e94-9399d793b909', '253060aa-bfaa-52f7-8c32-74257f5eb636', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-11-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d4fef8d6-8e79-5614-808d-49efdf7be5f9', '4cd7770a-1198-5afc-b284-bcc0bc3aeb88', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('43d45c09-a1ec-53e8-9b30-37375ce7d731', '4cd7770a-1198-5afc-b284-bcc0bc3aeb88', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7fc6fa9a-9d6d-5414-8e0f-0f632ec3b091', '479bbb1d-bbef-5f9d-aad3-4d793d2cee02', 'joined_team', 'Joined UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '93b36d13-689b-5d09-a662-3a2323785090', '2024-03-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b374cc80-2215-587e-b77a-680ca0c0c8b7', '479bbb1d-bbef-5f9d-aad3-4d793d2cee02', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-03-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8aec7984-cadb-5251-ad68-851d045aee37', '479bbb1d-bbef-5f9d-aad3-4d793d2cee02', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-03-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('26b32066-fd88-57ae-9940-2fb0d52212e5', '479bbb1d-bbef-5f9d-aad3-4d793d2cee02', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-03-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b5684a6b-ea26-5cc3-accb-81c76188b1f6', 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('866a3ac0-2725-5f4f-9dd2-c3e2481b2860', 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fab10a37-3462-50ad-af1b-6c1b507c82a4', 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e98a7e2b-eeea-5b4f-bf79-b5e23d4a29aa', 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2026-06-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('834bec6f-dbc2-5eba-9e44-341a3437e6cc', 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2026-06-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b0ab728-47fd-5246-8408-5d1956df4ab8', 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2026-06-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('faac358a-ffb4-5b8c-8a56-81f8391b6ef3', 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2026-06-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6e02f71e-ce91-5fa2-8130-69e72c43ddbe', 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c35a1c44-3611-53b0-ba6c-b6167fdd000b', 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0e60d1e5-d1f1-57bb-bda3-0f75b12f7783', 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4d7586c2-d28c-5fca-a0a2-9e141573d482', 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('496e2893-0079-56c9-b074-55ea422195b4', 'b61e9c48-31ae-5d43-bb2e-7472c0ee4f62', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2453e04f-5d57-55e0-908d-4bd293710b35', 'b61e9c48-31ae-5d43-bb2e-7472c0ee4f62', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fb363d82-f655-5905-ba4f-b2d38b399d7c', 'b61e9c48-31ae-5d43-bb2e-7472c0ee4f62', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa51cdb6-5fef-5484-a97d-baf72d786ed3', 'b61e9c48-31ae-5d43-bb2e-7472c0ee4f62', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2025-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('431fa17f-8893-59c4-a9e7-a37a6b2bb86c', 'b7702901-225a-5856-a7fd-70e45e0ec47e', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4bf088ca-561e-5bdf-82d5-a15e0a452d42', 'b7702901-225a-5856-a7fd-70e45e0ec47e', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0f99ae08-b70f-5ac3-8872-4cd6dc81bfd1', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bc3f4b9e-4360-5b93-a676-964cafd30cb1', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('34d34e85-944c-51a6-b781-8a72a4e58824', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5488b6c8-fee4-5121-8fed-4c558c6b0d94', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('38322c29-a544-5bd2-9580-88f9e035ec8d', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4c23c287-3ab7-51f3-bf89-51de83a9f7d4', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d115f3ab-89e3-5709-8152-cd03167ade4d', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7a640ddc-dc9c-5bd0-88e3-ff7dff9e3ed4', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('65662f1c-4aeb-5eb7-8abb-7336f46ce750', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ac103132-e118-5149-86e7-60109bf0a4aa', 'f6072636-cc07-5412-a351-2b83155f79c8', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('faf2e937-67b8-526c-b779-2b043ad07172', 'f6072636-cc07-5412-a351-2b83155f79c8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('723a1572-76d5-55b3-bbff-ff770fd58afd', 'f6072636-cc07-5412-a351-2b83155f79c8', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9d036f84-41a2-5173-968a-d6ce334d1a72', 'f6072636-cc07-5412-a351-2b83155f79c8', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('000ea00d-87ed-56a6-8fed-18a8af8b43fa', '6156d37a-33c3-5c2c-b789-669db02ce88a', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52469d25-9447-5a81-a8d3-cdbfb20e0b54', '6156d37a-33c3-5c2c-b789-669db02ce88a', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b0c6c445-160b-5375-b7fb-e3bd1fd4f30d', 'a8998af1-4ae6-5b6c-8385-217ac94c54b9', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2025-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a370dba6-28d0-54de-b28d-4fa4d718ee19', 'a8998af1-4ae6-5b6c-8385-217ac94c54b9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d8437512-37e8-5850-8bb4-13c545a1e52a', 'a8998af1-4ae6-5b6c-8385-217ac94c54b9', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2025-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16ad7244-ae13-59c7-87ab-4423efc40334', 'a8998af1-4ae6-5b6c-8385-217ac94c54b9', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2025-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e861475e-a59b-5d82-9b97-95db4d4e18d8', '2a1cfaa2-32f9-544d-800d-b42864d13698', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6bf6fc91-00b9-5c83-9df0-89d3d42e03c7', '2a1cfaa2-32f9-544d-800d-b42864d13698', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d9d57a77-acd1-5aff-bdab-8810b8f5a493', '2a1cfaa2-32f9-544d-800d-b42864d13698', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('434baef3-ee5f-5845-8936-8cfc83e0849d', '2a1cfaa2-32f9-544d-800d-b42864d13698', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('006b4593-5f32-5250-9b0d-a6d7496510d8', 'bf60297b-ceeb-5c47-8a90-ffb6d6d08821', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2024-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5dd8f6e5-60fe-5bdc-990c-c1653e8c67c5', 'bf60297b-ceeb-5c47-8a90-ffb6d6d08821', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cc7f1038-b228-57d4-8a0f-0642799b355d', 'bf60297b-ceeb-5c47-8a90-ffb6d6d08821', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f2b7f69b-30aa-5f71-a201-78054c88063f', 'bf60297b-ceeb-5c47-8a90-ffb6d6d08821', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c4f750b9-5c6c-570f-acf6-ba8a95cfb32f', '29d030e4-60aa-5190-a663-26c2f93349c4', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6836f810-ddd6-5a8b-a9e1-9cb6adc70684', '29d030e4-60aa-5190-a663-26c2f93349c4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f31969a1-fd55-5194-b9ac-daaf3c523e65', '29d030e4-60aa-5190-a663-26c2f93349c4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b3e03a72-9f36-5c1b-b29a-36ed52a030d3', '29d030e4-60aa-5190-a663-26c2f93349c4', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-07-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d9660739-e700-5650-818a-756e97df0c77', '083a0878-4d15-5658-81df-707a995bc1a0', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-09-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bc01bfd9-a96b-58b8-a99b-466dbefb9f4b', '083a0878-4d15-5658-81df-707a995bc1a0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-09-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15f42264-9ec6-5544-9190-321cc9be2d1c', '083a0878-4d15-5658-81df-707a995bc1a0', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-09-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('921e4b9d-5a0f-51d0-b6c5-3c616d70cdc8', '66ac5f10-416e-5cff-99b4-fc626479d356', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59ecd828-288c-57eb-9226-9fec2a7ea0a6', '66ac5f10-416e-5cff-99b4-fc626479d356', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dfb22f01-3ea9-58fb-8150-81c1ec66c3ce', '66ac5f10-416e-5cff-99b4-fc626479d356', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-08-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49585627-cfcf-5d44-84cf-6040cda0b890', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d50c358e-a4e1-522c-bef3-2fb2b0a0cf4e', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7aad6b58-04b4-5d2a-90f6-499ec586838c', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c5a4ff51-5bfc-5bc2-a4df-354440f77f06', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('196e8d0e-f10d-5893-b5d1-8db6654ce54b', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49585627-cfcf-5d44-84cf-6040cda0b890', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d50c358e-a4e1-522c-bef3-2fb2b0a0cf4e', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7aad6b58-04b4-5d2a-90f6-499ec586838c', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c5a4ff51-5bfc-5bc2-a4df-354440f77f06', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('196e8d0e-f10d-5893-b5d1-8db6654ce54b', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-06-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b3ebdca8-83b5-5b68-83f4-8f3418839332', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('870c40f2-b8dc-5231-b1a8-04eda3914634', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b0a4001a-8a31-5bd8-8cb4-5d7d5477a265', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('388078ff-df8d-56e3-95f1-0782253defc8', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b7f10a6-8d73-5cb8-9b96-5cba66d83e11', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cf96a214-8df9-5634-9902-076f59e583fa', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e714422d-31d9-55dc-b765-85ea1d493306', '7df7e59e-7a3a-5a20-aebd-b376cf0774fc', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1540c019-5084-5406-aca5-201a6d479608', '7df7e59e-7a3a-5a20-aebd-b376cf0774fc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae9533fd-83ee-5140-b878-d683844d6d2e', '7df7e59e-7a3a-5a20-aebd-b376cf0774fc', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d1aaebad-39d4-50b0-aff3-ba3c3d8e86d0', '3fb1b3ec-4097-5b77-a449-b88f15d1d11d', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f1035a98-a6d0-5b9e-aaa5-6575fd52487b', '3fb1b3ec-4097-5b77-a449-b88f15d1d11d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2c9416d3-1348-5adc-b123-26bf436c0f7b', '3fb1b3ec-4097-5b77-a449-b88f15d1d11d', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5d386077-f341-53e3-a84f-6c700f310428', 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('edaa1572-a7a0-5325-89ec-2edd04408111', 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abbdb032-21e3-52f1-a228-933c92dc70ff', 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8eab6b53-1f56-561b-9f84-90f93d123ea2', 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f5519cfc-f841-541b-927e-2fba7c14dc62', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2025-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4a1daac8-22b2-557c-af72-bfe5a2ebc488', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2025-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3c534c69-381d-5f2d-81c9-9932aca74e85', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f7dd989-0ce8-541d-9961-91ea875c8156', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2025-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c3545676-15ce-5d7c-bc57-499899eda0e5', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2025-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fcd7fc84-7b05-52d8-ab89-d17a1f218784', '00ceab57-a71c-5798-89d0-01223878ec61', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fda9ae3d-9b82-5647-b39e-21bb45a85f2f', '00ceab57-a71c-5798-89d0-01223878ec61', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8cccad51-9c1c-59ec-bc35-50609fb2dfaf', '00ceab57-a71c-5798-89d0-01223878ec61', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('132a4bea-b1f3-5c1a-84a1-6b9b84a84d5e', '00ceab57-a71c-5798-89d0-01223878ec61', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('29663708-dd0d-5777-bdbc-d6c52752acfc', '638228a4-ad9f-53b5-84de-edacec116df4', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-01-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ba709f6a-a8a9-5879-a431-51e5ac3a509a', '638228a4-ad9f-53b5-84de-edacec116df4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-01-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e89430af-58f0-582e-aaea-4dd5643f32df', '638228a4-ad9f-53b5-84de-edacec116df4', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-01-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6515b4db-2f1e-586d-bce3-bc2dee500655', '638228a4-ad9f-53b5-84de-edacec116df4', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-01-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d851a570-f8a4-5112-b63f-f1dbd5579ad0', '83b27f4d-62fd-5668-bbd5-d4a64923f4ea', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f1df936a-1768-57b5-bb0f-19d1dc5dbda2', '83b27f4d-62fd-5668-bbd5-d4a64923f4ea', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5c14a212-c36e-5d06-8d5f-675dbb498230', '83b27f4d-62fd-5668-bbd5-d4a64923f4ea', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8097d764-d82a-5244-8ee8-a570fd21e919', 'aa22478f-7ff5-5597-bb7b-abc14116ff16', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c9bf2bf8-c6e5-53b7-b675-8787e277f95b', 'aa22478f-7ff5-5597-bb7b-abc14116ff16', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75c3cb56-5b44-547e-ab8d-157cee04522d', 'aa22478f-7ff5-5597-bb7b-abc14116ff16', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('08a71ca6-943d-546f-bb3a-95464532eb04', 'aa22478f-7ff5-5597-bb7b-abc14116ff16', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ef9c4ad0-0627-5253-9fb7-cad8a838cf27', '4a57fafd-212d-5fc2-80aa-117906e034ab', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ba963051-e3f7-5b4c-8580-c5e131694959', '4a57fafd-212d-5fc2-80aa-117906e034ab', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a8f5aef6-c942-5e17-b13b-d7d06aca0645', '4a57fafd-212d-5fc2-80aa-117906e034ab', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c1b3a600-5805-5882-805d-e00c4a55ce71', '5accd2e9-de4f-53d4-ae98-a5fc5df69c27', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c2f9077a-0fbb-50a3-b8cf-b5174f0708a6', '5accd2e9-de4f-53d4-ae98-a5fc5df69c27', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ddc19629-f58b-5131-9894-afda0a608468', '5accd2e9-de4f-53d4-ae98-a5fc5df69c27', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9017a491-334c-5983-b1ba-cabe1c3d31c2', '5accd2e9-de4f-53d4-ae98-a5fc5df69c27', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c8e9aa04-64b3-51ae-a726-525463fc7431', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0f44c63b-d168-5054-910d-f7056c80b80a', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a16deeb9-2544-59b4-b1d7-1bf5f3388d30', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b3fa1bb-12a4-5468-a5d0-f2171833b8bf', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a974d7f3-2b5a-57e3-808c-a5fa5fb015e2', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('333cfda0-22af-55a5-8f31-1418b66c397f', '9811f143-7eed-59d7-a699-4f05fbf06197', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4af8b074-f1cc-5d94-b8b7-4caac3bef0f0', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('75f89854-4252-5612-b0a4-e51ec0bf2e40', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f2cba38b-9fb7-59f0-80d8-1ccd7ed7f306', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c71db58c-5aec-5844-a473-6294b1d38d52', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('49e1f56d-a338-5978-8da1-3f9f562c17ee', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d3aae899-6785-526f-8b81-01a596777762', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('afd867c0-dfea-55dc-b36f-b3e716787ec5', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('013c641b-cef4-5823-93bb-beb8c0b33086', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7d646ace-1873-5773-96c2-33e379cad5b9', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0d61c1dc-157c-57c6-98b5-0f43a8c22dce', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1f65a91-5846-5e81-a7ff-516eaa13f6a9', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3ed337f2-68c1-572c-8e70-1771c7b035f9', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('88aa3662-b29c-500b-9bf6-4c0110305053', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cef22099-5455-529a-bbd7-ad1ff7a342e4', 'ecb7866a-5879-5873-8e92-d11f407b6779', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2c411d78-3c54-5559-9015-9b2d0949fb73', 'ecb7866a-5879-5873-8e92-d11f407b6779', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c57174bd-c3e3-5063-9766-377f838d346f', 'ecb7866a-5879-5873-8e92-d11f407b6779', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ee90993a-2a5c-57e6-b2f7-720a3e7bb2b0', 'ecb7866a-5879-5873-8e92-d11f407b6779', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bfee979c-6c16-54c7-9b66-bf2579943039', '73516539-22cd-5303-b1ba-00f0d76de573', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b691958b-51ef-5316-8d41-ccd37ffff644', '73516539-22cd-5303-b1ba-00f0d76de573', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('652195ec-4b26-5b04-a167-6ffd898ee8e9', 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('53692f5c-8886-538e-b86f-0dcded7f9841', 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dcc79704-6b33-5290-a407-139c058b9ba4', 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0404d265-8f6a-510c-9559-bb35cbe2df52', 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7ca54c3f-65f6-55da-b738-29ee29caf5ed', '452ede10-4072-5b66-a193-9935b6595347', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5a4058e4-cdec-51e4-8972-e97225a7765e', '452ede10-4072-5b66-a193-9935b6595347', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('13263f16-0e48-59cf-a3ad-0c9bdfc4da8f', '452ede10-4072-5b66-a193-9935b6595347', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e221824c-f7b6-5b60-b5ea-2ff284c69615', '452ede10-4072-5b66-a193-9935b6595347', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b8ea16ee-cec9-5e38-9d0f-c70f9a79f597', 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-11-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('81bae3a1-113e-563d-ac62-028bc4939350', 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a1d507fc-3238-5c65-9b75-9edd85b9f124', 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-11-15'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4eab56a2-00eb-5e30-a36d-fcdad4c5ec4e', 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-11-15'::timestamptz)
on conflict (id) do nothing;



commit;
