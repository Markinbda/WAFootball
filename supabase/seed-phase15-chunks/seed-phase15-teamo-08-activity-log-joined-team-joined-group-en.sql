begin;

-- --------------------------------------------------------------
-- ACTIVITY LOG: joined-team + joined-group entries per player
-- --------------------------------------------------------------
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2debabe7-e099-507f-b752-9d9acef33934', '5e152151-57d9-5ac5-854a-8d6a2b3b1497', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2024-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8954bdd3-e614-5573-ab25-397b89afc554', '5e152151-57d9-5ac5-854a-8d6a2b3b1497', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fd998dba-3a5b-5d56-a79d-06e600c9c643', '5e152151-57d9-5ac5-854a-8d6a2b3b1497', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2024-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c5fde3ba-b3c6-59e5-ba65-7a7115120ced', '5e152151-57d9-5ac5-854a-8d6a2b3b1497', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2024-06-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('83b359f3-c801-5ec8-8b2a-257dcde23828', '9b093601-8f03-5b77-a797-1985d96b21c9', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d356c9f6-c68c-5b09-80d5-16f89dbbe421', '9b093601-8f03-5b77-a797-1985d96b21c9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2416eac4-7b3b-52a8-aeef-14afc4e9dfae', '9b093601-8f03-5b77-a797-1985d96b21c9', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c4a921d2-2bef-58a2-bd77-1f68056c0ad5', '9b093601-8f03-5b77-a797-1985d96b21c9', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f26f579f-a3a2-5a77-ba8c-9721a1f99071', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5c63886a-fba1-57a5-90e4-02e441b38767', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2a046c2e-d931-58ac-88ab-f6f066739885', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4c4da97-957a-5451-8ea8-05ca58719c8b', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4e105325-df78-52cb-8461-ed3f62b6e8ff', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5fbb4402-5b27-5ed6-9eae-dc061498791f', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3b368360-e03b-5b10-8307-927541a54024', 'd37196f4-361c-5904-9c95-d4777c26866b', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('60ba99f0-2b94-5ed8-a47c-264261911b7d', '3e98d993-2201-5926-bbaa-68b69525ffe4', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae641b1d-a0bb-5862-aab9-faa93ddaa59d', '3e98d993-2201-5926-bbaa-68b69525ffe4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a6b3d8ed-d706-55f5-b79b-e29643173fbe', '3e98d993-2201-5926-bbaa-68b69525ffe4', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0ca4b1e8-3043-567c-824f-2c3a9cd00945', '3e98d993-2201-5926-bbaa-68b69525ffe4', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('27c3009b-b41c-5d07-ad21-22ffb975ef86', '967e4a40-35fc-512a-a013-ee509ef84966', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-09-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('79036e46-97a3-5767-95a9-eca9af73f8d6', '967e4a40-35fc-512a-a013-ee509ef84966', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-09-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b7f54bcc-7c60-5abd-8d7e-e57f2c6f4aa7', '967e4a40-35fc-512a-a013-ee509ef84966', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-09-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b86b1481-52c9-54b6-ab3b-13a903265a40', '65ff8171-8356-5264-9caa-bcee73d771ad', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('130a4fb4-af2c-55f8-b8ea-dccb22ba4420', '65ff8171-8356-5264-9caa-bcee73d771ad', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32e59416-3b97-50aa-91a6-8add9df7d28d', '65ff8171-8356-5264-9caa-bcee73d771ad', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a05e3a4e-5f77-5ea4-a513-924aae37506b', '65ff8171-8356-5264-9caa-bcee73d771ad', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ced40cce-8e87-5478-a2df-f1587feb8c41', '1abd0f76-7570-5271-84a5-6f23147bed97', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d203699c-2ed9-5c00-9f2e-d704a4aeebea', '1abd0f76-7570-5271-84a5-6f23147bed97', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('26fe21b8-10e7-54b8-b434-95c03014935e', '1abd0f76-7570-5271-84a5-6f23147bed97', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9ef8e9a7-1f00-592d-88be-9802e1c86496', '1abd0f76-7570-5271-84a5-6f23147bed97', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ccaa0f8c-4bde-5e08-9c57-53286d98c228', 'e5b7091b-d070-512d-a97f-8e19d1723e1a', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('22407ea8-0164-5bfc-bca6-d58e73103af7', 'e5b7091b-d070-512d-a97f-8e19d1723e1a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('956c049b-e00f-57ba-a3c5-59865fd5e86e', 'e5b7091b-d070-512d-a97f-8e19d1723e1a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16c6756e-1527-5bb1-8d27-71ab73c5d780', 'e5b7091b-d070-512d-a97f-8e19d1723e1a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f9f9a3be-b10b-57d0-9bb0-3ba75b3f00dd', '81d9ff56-4c6c-5879-8604-baabca917559', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a93074a9-016b-5759-85ac-51dadbecac15', '81d9ff56-4c6c-5879-8604-baabca917559', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('24b15672-dae8-59e6-93b9-b4fced72c1c9', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('701a04f5-9c40-5568-94bd-0f257b101742', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0ed73f97-f76d-5eab-a1ec-8a2b13fbd856', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('67daa234-471a-5f51-ac78-12343199f58c', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8342bdc1-e6d6-5652-99a9-a83bfc67ee94', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0f202dfa-fe73-5fbd-b449-a897c0ee3bac', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('58506f2d-66c7-54bf-a223-fdcbeab06392', '6a9f7271-226a-5162-8987-cf22a7600999', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2d50ad32-47cf-52a5-8883-0558e9e6ff4f', 'c1209a5a-eaad-5c41-958f-c15d878f2b59', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('795789c3-3682-5fbd-8303-8d70e54c8adf', 'c1209a5a-eaad-5c41-958f-c15d878f2b59', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8d8b4932-6363-51a6-9fce-81e56616ec6b', 'c1209a5a-eaad-5c41-958f-c15d878f2b59', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7d8357f4-7808-5f76-b3a9-1f5dc20fce42', 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a6026b9e-5c59-5430-b666-7e453f01e7ab', 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('38b1a55e-823c-574a-9d81-000b2a167cfa', 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e13493af-1b61-508d-ab1c-35ba80ed5565', 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6ebaa81b-77bc-5fb6-941e-4abb16f52383', '786b9e02-d8fc-5e9f-aad9-8de00202e1a9', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e92dccde-3059-5ec2-a872-8c59e903995d', '786b9e02-d8fc-5e9f-aad9-8de00202e1a9', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9f83d128-c3c6-5011-b26a-ce4cfa9202ae', 'be183c28-81c3-53b0-a7c0-df74ee897e46', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59f04ad3-2d3d-5bff-9c68-4dde35e5a47b', 'be183c28-81c3-53b0-a7c0-df74ee897e46', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e8b99d3d-0b14-5dca-bde9-f850da06183c', 'be183c28-81c3-53b0-a7c0-df74ee897e46', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d362abc0-9603-5fbe-bf29-b866a773d504', 'be183c28-81c3-53b0-a7c0-df74ee897e46', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('166ec800-4524-5b38-afdf-2af76f16c794', 'ee1bd706-703e-5398-a12c-f2171e04d3f6', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0488381f-b60e-586f-b010-d288f537f3d3', 'ee1bd706-703e-5398-a12c-f2171e04d3f6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('98807de6-934f-5fc1-b498-e0575ecd57b4', 'ee1bd706-703e-5398-a12c-f2171e04d3f6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('56a3e377-695f-5620-90bf-0dac4e01061b', 'ee1bd706-703e-5398-a12c-f2171e04d3f6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('746df642-527b-5783-ae00-ef515a35336d', '9eee43e0-a92d-5db3-9429-39db1da7fef6', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d1bfd35d-ab38-5f0c-a60d-7cd1e5c5885e', '9eee43e0-a92d-5db3-9429-39db1da7fef6', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('941196a5-d40c-586f-a3e0-c49385f5d301', '9eee43e0-a92d-5db3-9429-39db1da7fef6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f5d6ef40-abec-5396-8de1-8699a45440b9', '9eee43e0-a92d-5db3-9429-39db1da7fef6', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cd25b50c-259f-5d57-8647-49abbf287b4d', '9eee43e0-a92d-5db3-9429-39db1da7fef6', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('41e990ec-4e3b-512f-b64a-cd44c1b47dfc', '6aa947bd-c701-5851-9b59-cacba4c087b3', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b975889-c406-5f0c-8912-5ac89fe499d1', '6aa947bd-c701-5851-9b59-cacba4c087b3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('371deec1-b75f-5364-93f0-0eb9f93c3395', '6aa947bd-c701-5851-9b59-cacba4c087b3', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6cb2d11b-2252-51df-a683-2b271e206d04', '6aa947bd-c701-5851-9b59-cacba4c087b3', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0de4ed11-ba68-50f8-8591-b43c52d4f096', '12290d72-2498-5639-8cfc-5d59b553431f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c2983987-3a8d-5f88-80db-1e7ab6440e3d', '12290d72-2498-5639-8cfc-5d59b553431f', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9baca278-2046-5cdb-a4c1-7271ac9a599c', '12290d72-2498-5639-8cfc-5d59b553431f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1698a9bf-6755-5a15-9b90-2b2659ad1144', '12290d72-2498-5639-8cfc-5d59b553431f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('33e9d4c4-5618-529f-afde-fbcf488e9d1e', '12290d72-2498-5639-8cfc-5d59b553431f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f1a76621-6e15-5ad9-a18f-d89509699578', 'f3311e52-77d8-5981-b636-6c2d1312edf4', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-11-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('18471601-0e66-5b21-a9b9-a7f4325e4128', 'f3311e52-77d8-5981-b636-6c2d1312edf4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-11-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d39d82cf-5559-5848-b336-78627f3bdabf', 'f3311e52-77d8-5981-b636-6c2d1312edf4', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-11-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4b4c2384-e616-5833-96d6-bbb29a77cc1a', '31b0b659-6310-55e6-9ce9-d8c94226f70b', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1a54d800-159c-5ba0-89a6-073645abfb43', '31b0b659-6310-55e6-9ce9-d8c94226f70b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('85a306f2-28ff-5fa9-9b35-b485dcde9e58', '31b0b659-6310-55e6-9ce9-d8c94226f70b', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('17bef8c1-1ce0-5dca-bd8d-a5909ac39219', '055364d8-31af-5a6c-947e-691b0c584f26', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('85c675f5-62b5-5a83-ab8d-396ec3041271', '055364d8-31af-5a6c-947e-691b0c584f26', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fac68786-db95-5dc8-ad67-3cd998a235a4', '055364d8-31af-5a6c-947e-691b0c584f26', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('61d5c590-6cdd-5c52-9131-581ebedb8f4c', '055364d8-31af-5a6c-947e-691b0c584f26', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('90cd027c-7394-5466-ade2-68cf381cd040', '5c9460f7-c42b-5add-ab97-0a570aec731f', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83783328-5ddc-5f26-9184-e8f8ae0bc569', '5c9460f7-c42b-5add-ab97-0a570aec731f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2ab69975-69e8-57b8-9341-60e971dae09d', '5c9460f7-c42b-5add-ab97-0a570aec731f', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-06-13'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('19d6e2c8-b764-5360-804d-7aed34838bf2', 'a883b50e-77d1-5ee0-9f04-2be04760f0f8', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1f398208-750f-505c-acd6-7ca51ba02d75', 'a883b50e-77d1-5ee0-9f04-2be04760f0f8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a5db8ee8-4485-53e4-942b-400806c0880d', 'a883b50e-77d1-5ee0-9f04-2be04760f0f8', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('52a3f6ea-2f22-5a17-a3bc-38b9c8597518', 'bcdaff3d-a167-5b53-894a-baa6564d1519', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8ef79374-b13e-5c13-b758-c54a9bfc5273', 'bcdaff3d-a167-5b53-894a-baa6564d1519', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d8ca6160-e84c-5395-9ff2-10c0dbeb57b3', 'bcdaff3d-a167-5b53-894a-baa6564d1519', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5ba47cad-d7f8-58a5-a37d-468d82b6d9bb', '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9c28a4d6-1467-50bb-ad5f-232fdf3ffe99', '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b9abc59-cbc1-5c77-a081-1fea656f8f3d', '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87f2cb90-f22e-57e7-8df9-22ea75195bb0', '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d8be6a89-6d07-501f-9802-b62513c509e2', '9c6124be-a5e6-5ba3-84db-e5e3eeb6b7b2', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4a74f2da-87b2-5420-9238-a976f980dbd0', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8386da30-443b-551d-aa9a-1d5238c17bdd', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c498a018-906d-5d56-9aef-a199c22b6753', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('350cc89a-cdad-521a-883a-e4e57a26ba44', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a8cc0f2-22a2-51ed-a7f5-22f1d3a7560b', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1dc44870-44ae-50d0-9161-0e3f95819d27', 'f55d8765-d483-5376-bc29-6e68c3861bd6', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2b9dd835-4a3a-5e37-a463-50f6f59a68b5', '59f007c2-d254-5872-9c4f-1a7e0866ae02', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('29f5c1fb-2dc5-5ff6-8aaf-bf6d439a7461', '59f007c2-d254-5872-9c4f-1a7e0866ae02', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('937fdee2-5c3b-5eca-9cc7-a8714e7c432c', '59f007c2-d254-5872-9c4f-1a7e0866ae02', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de646530-645f-5bc7-a9f9-5ef1f2cf1e91', '59f007c2-d254-5872-9c4f-1a7e0866ae02', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d2c8142b-a6d5-562d-9ff6-b372998a83bd', '59f007c2-d254-5872-9c4f-1a7e0866ae02', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0e46f919-d765-5934-b644-75d0801ccae6', 'f563ead6-1feb-5e6a-9b7e-e20bc2760918', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-08-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dc87f87b-8bb7-5188-a2d2-748871c6a945', 'f563ead6-1feb-5e6a-9b7e-e20bc2760918', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-08-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('132eadaa-6c94-53c7-8cdc-3d9c20d915c7', 'f563ead6-1feb-5e6a-9b7e-e20bc2760918', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-08-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c158eb77-881b-5d1e-ba50-ce3dfc716728', '893bb10b-57ff-5424-aa39-b4e4f5fcc682', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('613f8df2-eb53-5172-8125-4e1b2e68b91e', '893bb10b-57ff-5424-aa39-b4e4f5fcc682', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c7d1807e-6608-5a3c-80c9-833191a5e993', '893bb10b-57ff-5424-aa39-b4e4f5fcc682', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e0c4c6c-f384-55a5-af38-e2fef2deced5', '893bb10b-57ff-5424-aa39-b4e4f5fcc682', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('36c6ad2d-6b51-5608-8f41-e679ebfb854c', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('23055056-32e8-5621-a31c-597efa62ca5c', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c14f390-f2e5-5791-857c-687c54590c4f', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c1f4c2ab-3f49-5b9f-a770-261e399039f8', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('77b1fac6-9c35-5c10-8d93-ad1241613fbd', '9cd50455-5410-501a-b2a9-f319751b1766', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6c92417d-6690-5c68-8406-8f73d1791af6', '9cd50455-5410-501a-b2a9-f319751b1766', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5f75a9b2-8166-5268-aa82-b1e36ce585af', '9cd50455-5410-501a-b2a9-f319751b1766', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de3421b0-9b84-5d0b-a474-01399397cc32', '9cd50455-5410-501a-b2a9-f319751b1766', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('91d2ddf4-c3b9-53a8-82b4-e741c7b9ab97', '9cd50455-5410-501a-b2a9-f319751b1766', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2025-08-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('83f86d47-a89f-5d3c-a18b-364d574c62ae', '8221b25f-5986-5a13-84b1-312962d63b8b', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3f913c32-2f7a-5b0c-be0e-cd230b013620', '8221b25f-5986-5a13-84b1-312962d63b8b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('89a4e21a-75d8-5e3e-ae02-1943b9e0750a', '8221b25f-5986-5a13-84b1-312962d63b8b', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('93184625-d19d-59cb-862a-74cdb0ee235e', '8221b25f-5986-5a13-84b1-312962d63b8b', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('32bed7f9-2189-5498-9678-cb169fddd3c2', '86f8f193-0fc5-574e-94a7-dd119e8c9719', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f7b381f4-be79-54e7-8381-3c7f5534b845', '86f8f193-0fc5-574e-94a7-dd119e8c9719', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('afb52e1b-81be-546e-af84-acde8d878739', '86f8f193-0fc5-574e-94a7-dd119e8c9719', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48855448-21d2-5652-8505-5a92edbd9785', '86f8f193-0fc5-574e-94a7-dd119e8c9719', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('aac492f2-7100-54f8-a770-55fe3fa3dfed', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e21b2b61-82de-5d53-8251-c46fac59c03d', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6946703d-daec-57df-9102-2e0ae866954f', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1d06ba8e-583f-552d-9544-1c84541c3938', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cefb78bd-be0d-55c0-86eb-a5f24d2e6a0b', 'b3b85887-5641-5bef-bb9c-9e70e0308e8e', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f89e26e8-fb68-53ca-830d-4ed7644aa445', 'b3b85887-5641-5bef-bb9c-9e70e0308e8e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('25a8bd09-745e-5ef0-84c1-21e0ed534023', '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8ccabf45-d863-5d9b-ba52-a321d35140f7', '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a2e7c257-d1d3-5f7a-b497-9cc15860bf4d', '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c5bec05b-caa8-535a-8d1b-a2c0f0fc89ee', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5fe24aa8-065d-557c-9c0a-a66a199cbfb8', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('abc60118-c42e-5cd8-bc94-75a69f25890b', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0f4954bd-0852-503b-9b4c-1757b97f3998', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b41d4fb-d08a-5de3-9ce0-660410f31792', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6e5014a3-1ea1-5487-8c41-0368d1665cf7', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf88542b-f386-584c-b655-b03dd945d399', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ebf40d1b-1764-5ef0-a489-ab140be41aca', '842195c9-f42b-5a9a-9b25-be29fb27305b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2faff0a9-6420-53bd-be56-5b8433330c01', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('96704d44-08e3-5d54-81a1-0851531c2038', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0206ac8-b57c-55dd-8a05-bc31126025cd', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eeca45f5-425a-5f06-aa13-8d1c1f63927f', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('68d341da-4648-5835-af87-c4f072022f77', '8c028681-b5b4-5058-b086-7cca511735bf', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('894a5282-cd28-5de0-812a-b1b91da83d9b', '8c028681-b5b4-5058-b086-7cca511735bf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c0d0034c-3be1-52a7-874b-62f35de95601', '8c028681-b5b4-5058-b086-7cca511735bf', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ccb59947-b346-5f24-a314-ccbe2b0f753b', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('29974421-7830-5683-9a5c-39a73e1483a7', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a00d5a0b-9693-5fc3-94bd-28bcf636c51d', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('88fa1df6-dfa4-53f0-a62b-eb0a421a0bea', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0945ba3f-5761-5ae3-935c-352e6815fbfa', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('345aac34-c16c-5530-8992-52ae71534a53', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6f2654e5-469a-573f-8a28-ffd064956c11', '8b9f1c6a-39e2-5c77-bf0b-695ac794aa03', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7fc65706-76cf-5438-9915-6e3247b3bbc7', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cf1a2cad-f237-5a1e-a3e7-8d669c238514', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8a1ddb76-d922-560a-a064-35c23dbf93a1', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7873c39c-0c27-58f5-b1dd-0177429c8b2d', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('89f0c4dc-3853-5aa6-95e7-491e9b83adc3', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7197aa70-76cb-5478-a8e8-1654fafd85c8', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f389ad45-7c51-55bb-82fd-9eefcfc5b3f7', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e65f491d-7608-5b0e-9262-323d1dfe02dd', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7bbe5e2c-bf10-5a3f-bd1c-572b74e18ee5', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('90c67641-ba10-530f-8079-1ff86046c234', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('55ea47da-b1bb-5a97-8677-2d935caa6f2c', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fd931933-e789-54d9-a29a-943b640bf4eb', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7ba599c1-9436-52dd-8105-2682c497b8b2', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bb6fd53f-276d-512a-ad72-c41c871fb98b', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4d685401-5966-5133-a145-f7b68efecd61', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('63d42c7c-cfb0-5620-95b4-a48c635491b1', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ff9f47c6-9f7f-5f83-8aae-abf3698fb008', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8a4b1438-c1a3-5895-af5a-854ddf4b850f', '1c0e6761-a8bd-53e2-90ef-8bf4abc2883e', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('534d52b2-a35e-5ad9-ac20-f2615e1ee6c8', '1c0e6761-a8bd-53e2-90ef-8bf4abc2883e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('626e0bd4-2a27-5e47-96f1-4bc0b1c1c4b4', '1c0e6761-a8bd-53e2-90ef-8bf4abc2883e', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ca5b5587-2831-50a5-8685-07b48c7c38da', 'ecdff891-5e22-5375-b5aa-8ce352211d76', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('645258a3-32f1-51d8-9475-0ad2b6b27bdf', 'ecdff891-5e22-5375-b5aa-8ce352211d76', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('23738e29-41d5-5f01-bc62-87f5e492dc55', 'ecdff891-5e22-5375-b5aa-8ce352211d76', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('39105e1f-b551-590d-9998-7ee048038b64', 'ecdff891-5e22-5375-b5aa-8ce352211d76', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0c2cb928-3c81-524d-b044-0b278be47cd0', '1751fd44-a113-504f-88db-73781a4aebdf', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48de1028-8c61-5000-8419-cb9e1d34f19c', '1751fd44-a113-504f-88db-73781a4aebdf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e5634e39-3a46-597c-8008-7f9caeb92c3e', '1751fd44-a113-504f-88db-73781a4aebdf', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16dbc540-b085-5302-8c9f-667c72922abf', '1751fd44-a113-504f-88db-73781a4aebdf', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1841ec17-165a-5687-b97d-5b7f01c9f2a2', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4791aea9-118b-551e-964a-08db727ad9fa', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a91a7c5-a089-5de0-9db2-68a41573d807', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb4d5850-3b25-5f11-b739-7b36de1b4d11', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a54414c-2f30-51f6-856d-ee3215d805c9', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1841ec17-165a-5687-b97d-5b7f01c9f2a2', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2026-03-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4791aea9-118b-551e-964a-08db727ad9fa', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2026-03-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a91a7c5-a089-5de0-9db2-68a41573d807', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-03-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb4d5850-3b25-5f11-b739-7b36de1b4d11', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2026-03-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a54414c-2f30-51f6-856d-ee3215d805c9', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2026-03-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9f00cd45-3e72-5860-b67a-f18d858739ab', 'a84b4643-7eb0-5706-8770-b6f0fc6caed0', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('43273afe-1e6c-5e0b-9e60-f0ae1cf19f1b', 'a84b4643-7eb0-5706-8770-b6f0fc6caed0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('076d80c7-5427-53b0-af9f-755526f7c78f', 'a84b4643-7eb0-5706-8770-b6f0fc6caed0', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f1566ddc-968c-5188-8c6c-7f96bf7b0dd6', 'a84b4643-7eb0-5706-8770-b6f0fc6caed0', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e4e10933-267b-50e0-960f-940edc200bde', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8049d1b5-4bbc-5602-8087-e032a6839279', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d9ba5155-98eb-5c14-828e-2c1e88c260b7', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('45a43658-c0a5-51a3-a478-276bd54c10c6', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aeef488e-b8e6-5edc-8277-ae9f7280c05d', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e4e10933-267b-50e0-960f-940edc200bde', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8049d1b5-4bbc-5602-8087-e032a6839279', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d9ba5155-98eb-5c14-828e-2c1e88c260b7', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('45a43658-c0a5-51a3-a478-276bd54c10c6', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aeef488e-b8e6-5edc-8277-ae9f7280c05d', '23e0fe9e-32c3-56f6-a968-8de910195319', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2026-05-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3ea184c5-740b-5352-a172-05833556fcc1', '363b40ec-bbd3-52f9-832b-e1818326868c', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2025-09-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('64d1013a-edc5-5c6a-bd26-63c27701251f', '363b40ec-bbd3-52f9-832b-e1818326868c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-09-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48a078a7-d11e-5f17-bab0-5aac87919a94', '363b40ec-bbd3-52f9-832b-e1818326868c', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-09-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b19f50c-2c2a-55ea-943b-5ff78ac8d156', '363b40ec-bbd3-52f9-832b-e1818326868c', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2025-09-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('db5482bd-a53c-5245-84d2-02e26512c0a7', '3bee9833-8096-52f6-a922-6b38742cd1ca', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-11-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6420ca25-119d-5b6e-b347-fa4b6fc112ca', '3bee9833-8096-52f6-a922-6b38742cd1ca', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-11-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ce46c8a9-c923-5592-bb8a-52c12433f082', '3bee9833-8096-52f6-a922-6b38742cd1ca', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-11-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c527f807-688c-5c4f-8d35-0ec4c7389715', 'ff120724-c495-562d-994e-939d1cd4164b', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3b76fa04-d1b9-57b2-b831-22daf834e36b', 'ff120724-c495-562d-994e-939d1cd4164b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4a9528e6-8bdc-512c-adeb-eb108367bfea', 'ff120724-c495-562d-994e-939d1cd4164b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1f73d3a7-8a8e-5dcc-a873-0e17effd5f24', 'ff120724-c495-562d-994e-939d1cd4164b', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1b56d41f-dae4-503c-bed0-a217ef4f0a08', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1dabc89f-e9b5-55a6-92d3-86b84596a9ae', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32f3a18a-dfce-5499-a275-8117012fd982', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('97e32a67-101c-59f4-bdbd-559377c2a95c', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e493f890-2dc9-56f6-b6ac-1342155c59fb', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1b56d41f-dae4-503c-bed0-a217ef4f0a08', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2026-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1dabc89f-e9b5-55a6-92d3-86b84596a9ae', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2026-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32f3a18a-dfce-5499-a275-8117012fd982', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('97e32a67-101c-59f4-bdbd-559377c2a95c', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2026-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e493f890-2dc9-56f6-b6ac-1342155c59fb', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2026-06-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('10989c1c-d78a-5110-8697-7484093ec6ac', '6fadfb89-6dd0-5e50-a2f2-53b4ed2dde00', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-11-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bab97ae5-462b-52c4-b0a9-c24675da1490', '6fadfb89-6dd0-5e50-a2f2-53b4ed2dde00', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-11-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5d249987-9155-5d3a-be18-369b30c55e23', '6fadfb89-6dd0-5e50-a2f2-53b4ed2dde00', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-11-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9c25f712-5ef7-5a30-820a-7775e9e7963a', 'b94ea220-2d0f-5078-81e5-cb5d73d7f7b6', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1d4aa89e-c05f-5fd3-bf3f-3de70cc6b1a8', 'b94ea220-2d0f-5078-81e5-cb5d73d7f7b6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('784bb7ae-54d3-54e9-bd98-300feb95160b', '80dcfdf1-9a00-5ff4-a2b8-584f94183976', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('65c647cc-6364-5b1b-a1f3-0b98c3b353fd', '80dcfdf1-9a00-5ff4-a2b8-584f94183976', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d027eda5-4733-5350-b4f6-9cb015216ac8', '80dcfdf1-9a00-5ff4-a2b8-584f94183976', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cb72c0e7-011c-59e1-a266-1f7b515448c0', '80dcfdf1-9a00-5ff4-a2b8-584f94183976', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6ca01d8e-46d4-58e9-9d85-cd3360f81de4', 'f0d0885c-66be-52dd-9291-1ab0aacc788d', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b80a157-76b3-5fe5-9f81-24b5edbf1b9a', 'f0d0885c-66be-52dd-9291-1ab0aacc788d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e2e7461-8015-5f12-985c-0cb39c1eb1be', 'f0d0885c-66be-52dd-9291-1ab0aacc788d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c9f0c6a-12b0-5d6c-bfe1-8e6d5e35af00', 'f0d0885c-66be-52dd-9291-1ab0aacc788d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f38dae3b-e4f1-58fe-a50b-b845a17c292d', '516b758c-b07c-5e31-93a2-85a6afdf1b58', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f9187124-09a9-50f7-bd29-382fa16c9f98', '516b758c-b07c-5e31-93a2-85a6afdf1b58', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d6ffff07-fd2b-55e7-8515-9782ede22a82', 'f6d9fd1b-57fa-5cc6-ae73-dfedd01f1350', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('54c75fde-014b-5aef-bf92-7bff5961e941', 'f6d9fd1b-57fa-5cc6-ae73-dfedd01f1350', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('040ddad7-ef5d-52cb-9abc-e3fbd9493d64', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_team', 'Joined UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '93b36d13-689b-5d09-a662-3a2323785090', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8f954743-ce52-505c-ac48-5446de7fbd31', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dac089e4-4ad6-59a2-bf22-bae6b05e9a7a', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bd3cca82-6df4-5507-a026-daa02f9c00de', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d11dcd16-6fe7-5440-a9ea-44df0d0cdc76', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eae003bf-f3cd-5f97-a7ab-dc7483f7f4c8', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('37af7a93-f9e9-5ecd-9a2e-539d039a24a4', '8b0f6390-813a-5d40-b634-a1a26a265023', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ecce716f-ca35-5b6a-b57f-928f262215b0', 'a86af933-a3c2-52f4-b217-ababd666f964', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('96474f2c-f370-5322-a378-5ff56b1e553d', 'a86af933-a3c2-52f4-b217-ababd666f964', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('55b9cd12-cdde-5564-bea4-b1cc43bc0ce8', 'a86af933-a3c2-52f4-b217-ababd666f964', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f5683b9f-821e-5c06-90ea-cc8be7f9f9b4', 'a86af933-a3c2-52f4-b217-ababd666f964', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('da69ef90-7bad-58aa-9c6a-669c267e88bd', '5ae13327-7d5c-537a-8882-0f17fc7c175c', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3c9c6437-509d-5126-93ea-66e04ccb9dba', '5ae13327-7d5c-537a-8882-0f17fc7c175c', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a5dbc33c-640b-5bce-9381-7ff9d992a1b5', '5ae13327-7d5c-537a-8882-0f17fc7c175c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('17054537-7e34-5f18-9ed0-aa3defc3594f', '5ae13327-7d5c-537a-8882-0f17fc7c175c', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bad8ed4a-8673-522d-a186-02a7cb9bec30', 'db5cac0a-5f58-5578-a0dd-75eb6a91de98', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('93dfd582-737d-589d-b009-2b1fe5ce1234', 'db5cac0a-5f58-5578-a0dd-75eb6a91de98', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9d272ad9-f27b-5d75-ae92-f796a500738f', 'db5cac0a-5f58-5578-a0dd-75eb6a91de98', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2ba68a76-13c0-5abb-8fb0-97d166930fdc', 'db5cac0a-5f58-5578-a0dd-75eb6a91de98', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8db4cf5e-8f9d-5cf1-b901-e4af70b056da', 'e4d232a3-fc65-5dfe-b429-8feb5686e05b', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1bc14f8b-6fa7-57d1-9f5e-3cff76d2e53b', 'e4d232a3-fc65-5dfe-b429-8feb5686e05b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b8016543-c1a0-51e0-9ec8-0c4e1458937f', 'e4d232a3-fc65-5dfe-b429-8feb5686e05b', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c85580dd-6ec7-55cd-93bb-6860765fb7a5', 'e4d232a3-fc65-5dfe-b429-8feb5686e05b', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d3e91123-d9a4-53e7-8b3c-7ee7148bc9a7', '95653d96-7df9-568b-b7d1-e69f50b0e408', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4d609329-2460-5d18-aa61-bdf39903b404', '95653d96-7df9-568b-b7d1-e69f50b0e408', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('15904b16-a5b6-5123-8120-190415581e06', '95653d96-7df9-568b-b7d1-e69f50b0e408', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1731e549-aa95-50a4-811f-2e81459c638f', '95653d96-7df9-568b-b7d1-e69f50b0e408', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9d724086-12ae-5d42-a227-dbebe8d4062f', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('111a2bbe-265b-572a-b777-026646703ee3', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e0e3e20-32d2-50b8-8661-ba6ce89ae1e4', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fc4e15d2-9a54-5b5b-88bf-f16b9bccce6f', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2af3a4dc-4cb3-5e69-bf95-c7cfc13046de', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c48ee538-c6fe-507b-92a9-6a5489be05c3', '13504d67-1be8-5b72-9045-a11ad6988c1b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ba5c78f3-3a37-5bd2-952e-9d6154377eb3', '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2026-06-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6a95f580-0610-5798-847a-751946189ceb', '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b98ec4b4-c621-57e6-bffa-b5b7e9f3f211', '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2026-06-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0e7be3aa-201e-5dec-9fab-aac3ad1b4da8', '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2026-06-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b90f6aaf-6598-57f1-880d-143a323ebe03', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3da0a016-8653-587c-be14-1e207e57af63', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7c3e5cc7-520b-5430-9ce0-6677d2af5ece', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1f1f5f1e-4bd9-55b2-99ef-f6cc732a7b53', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('435358bd-9cbc-515a-89f7-047d115189b4', '074cbb58-94c2-54d2-8c98-08734b607949', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b12ca41c-3322-544d-b785-8cad9bdb71cb', '074cbb58-94c2-54d2-8c98-08734b607949', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('745d6c59-cadc-5922-8d19-71e66379d7bc', '074cbb58-94c2-54d2-8c98-08734b607949', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('389e5503-f442-5cc7-896e-ef17ffe8f4de', 'cb9a1f0c-5191-5c9f-b684-d89e9dc254b1', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07a07953-42f8-56c6-818f-2d58c66c17ee', 'cb9a1f0c-5191-5c9f-b684-d89e9dc254b1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('78877160-ab36-55db-8b69-cca1ee7d680e', 'cb9a1f0c-5191-5c9f-b684-d89e9dc254b1', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('602d4dc0-bab5-52bd-87da-32cce371b512', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fb1b46e2-39aa-50a5-94b9-1f4880a02e14', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('558884cc-cdcd-557e-b5ef-3138710b0b72', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('094f1e80-e092-5680-80d1-b52bbe5ed1c2', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('04c204bc-afaa-553b-89e3-947b298f2bdc', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a7cdf666-a93c-52c1-bae2-b0c9dc45b65a', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9ba25582-8ca2-5a87-bf13-52e605935690', '6fbff24f-d05d-5142-92cb-0e0ff899091c', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2025-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae1435ed-c0d8-5163-ae9a-234cbb846968', '6fbff24f-d05d-5142-92cb-0e0ff899091c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e764e4d0-680c-5f79-8226-04ef89652fb9', '6fbff24f-d05d-5142-92cb-0e0ff899091c', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2025-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bdd523ac-b8f6-50a1-a2ad-74ba8957558b', '6fbff24f-d05d-5142-92cb-0e0ff899091c', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2025-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('87fe283d-0b5c-5254-a954-27440160a8f5', '98f37386-d635-5f75-92d2-6df9d4ef494d', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e48f32f-1ad8-5f41-b954-fb3b815fcdb1', '98f37386-d635-5f75-92d2-6df9d4ef494d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0450d2d1-4787-5a89-8691-27a5d5227559', '98f37386-d635-5f75-92d2-6df9d4ef494d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16956a7f-8ef2-5cdc-b76a-3c4e587f52c2', '98f37386-d635-5f75-92d2-6df9d4ef494d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5d008ed6-c7d3-5e47-9101-37cc201e0f8d', 'ea366fac-a446-58cc-bf6e-e5142519e9b1', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07c04f2e-57ff-5ee3-a9dd-7b638d6ddfac', 'ea366fac-a446-58cc-bf6e-e5142519e9b1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a90260c1-d08d-5833-8dfe-bb92e6d53ea9', 'ea366fac-a446-58cc-bf6e-e5142519e9b1', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52beb373-fa21-56ee-b524-80bbd5cba2d7', 'ea366fac-a446-58cc-bf6e-e5142519e9b1', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2025-07-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fb467a55-0076-59b1-904b-0c78e22c1ca6', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a0fdca13-876f-5cad-aac8-50405dd07e8a', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8d440f59-a23f-5e42-8beb-9bd095543e99', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e2468632-fed1-5147-b509-2631623d37a3', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a2dafb01-527c-5660-a499-32e161c26179', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c2051ed2-2975-5da8-8612-3e6ec31ac13b', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4e9e252e-1680-56e8-af9e-dca9f5171d4b', 'dd7f934e-596b-5735-8a79-ddde3e2a0641', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f9a07c9d-e0a2-5a5b-ae26-e7adaa825532', 'aeed4228-ac92-592d-bfa0-edbffff82006', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('84809687-aff4-5bcd-a37b-71f3e135f931', 'aeed4228-ac92-592d-bfa0-edbffff82006', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2f690491-bc4a-597e-aed2-bd88c6d021c9', 'aeed4228-ac92-592d-bfa0-edbffff82006', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('63feb36a-b6ab-580d-9e86-f89d2dea7b2a', 'aeed4228-ac92-592d-bfa0-edbffff82006', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7c538cdf-e316-5330-bdf8-7ae6407c2496', 'af98dfe1-ed1d-54e2-a3e0-4b8fe0c6da1f', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e348f9e5-3374-50d5-bd3b-22d0df2b98c4', 'af98dfe1-ed1d-54e2-a3e0-4b8fe0c6da1f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e3a49940-38f6-5e0a-8b5e-70fe5c171f10', 'af98dfe1-ed1d-54e2-a3e0-4b8fe0c6da1f', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9c90403a-0fda-544a-a388-0f3442a952f7', 'bd17d5be-9446-59e4-b361-9b582c242ae2', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a1de84bb-0fde-5774-80cf-d6f7abb84302', 'bd17d5be-9446-59e4-b361-9b582c242ae2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ca014b51-8350-5d3e-a998-45e474d9d819', 'bd17d5be-9446-59e4-b361-9b582c242ae2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e432ef3e-dc52-526c-8bfa-af18b2a204c4', 'bd17d5be-9446-59e4-b361-9b582c242ae2', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b9eaef4-cb64-5c9d-a3e1-fdc7675ced2b', '4e24d855-7c95-5962-8368-bad48f5c4cf3', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('45f0856d-36e4-56ab-b325-f14fd43247a8', '4e24d855-7c95-5962-8368-bad48f5c4cf3', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e10c097-f0e4-5a75-858c-cd9284b1b020', '4e24d855-7c95-5962-8368-bad48f5c4cf3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2018c01b-a4b0-5535-b5bb-119f421ffc8c', '4e24d855-7c95-5962-8368-bad48f5c4cf3', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b772c4bb-0dd2-5627-a58a-f35cf7b1d3db', '4e24d855-7c95-5962-8368-bad48f5c4cf3', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('786e291a-8a8c-5237-b2d6-279581e4ecf3', '7284d396-c389-5bd6-92c8-bb718a6d1628', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af56e78d-2174-56fa-81d5-0c0140ebc3eb', '7284d396-c389-5bd6-92c8-bb718a6d1628', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('63c9827c-027b-5b6b-b1b3-ac2ff7feb06e', '7284d396-c389-5bd6-92c8-bb718a6d1628', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b3e2a1ce-d6e3-507a-b0b4-afe45c9b6db1', '7284d396-c389-5bd6-92c8-bb718a6d1628', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fe7c2aa1-593f-5d7a-a9bd-16fbdbdd0198', '7f754141-f1d5-5aed-8307-864b6710e797', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ee96e103-312b-5047-a749-a9bb73bb5e97', '7f754141-f1d5-5aed-8307-864b6710e797', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4cf7d682-a47b-53b4-88ec-3818926c040e', '7f754141-f1d5-5aed-8307-864b6710e797', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f54a08c9-60e6-5837-9b1d-94b0dcc986a4', '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ce14f71c-5eb6-566a-9ac0-961c10b3c8ff', '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('39b450d8-b427-5c05-94ec-8cabd3e69ada', '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('73c7a11d-4a2f-5abc-9fb3-e17369b578b0', 'e4cd3fb7-3483-5365-8baf-d6c67faf3c88', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0cc88d01-597d-5cf9-9a44-c99f455d4327', 'e4cd3fb7-3483-5365-8baf-d6c67faf3c88', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83c1d85b-7030-516f-b9b8-046e2d275004', 'e4cd3fb7-3483-5365-8baf-d6c67faf3c88', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f72bcea7-a7cd-5e77-9683-7eac34f6ea6b', '721c0792-4ebb-5894-bf30-6db88a666b3a', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('78c4be75-6867-5b24-b203-ef14b5e67efd', '721c0792-4ebb-5894-bf30-6db88a666b3a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a20b519d-322c-50c7-b045-1f7a21b1a496', '721c0792-4ebb-5894-bf30-6db88a666b3a', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('178e1291-d82f-543e-b527-49699b531e49', 'fd96d2a6-722c-52df-96be-59a22484eb3b', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3651984b-b8b5-5777-9f5f-9cc1c28764e3', 'fd96d2a6-722c-52df-96be-59a22484eb3b', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9f90d53a-420c-516c-baaa-9c2d86ce3533', 'fd96d2a6-722c-52df-96be-59a22484eb3b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0112018c-98f2-5a50-a094-4b1c2fbde201', 'fd96d2a6-722c-52df-96be-59a22484eb3b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a75a93c8-d474-57bf-b8c1-75c24e6c4f37', 'fd96d2a6-722c-52df-96be-59a22484eb3b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bf9f1b1b-1bd4-5c57-a1e6-77ebba6596f0', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f635558b-52cd-53a5-a846-9135e06553b7', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('58385702-3c95-566a-8e5c-a0f26ced80c2', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8289e91a-54f8-5445-8c4d-0bc01182eb16', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e5f0147a-1b3a-5d55-ad0f-e83b1f730bcd', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('01686cc3-4df1-5267-abcf-a3d3f38465ab', '5aabac1f-6392-5541-b004-b458a601491e', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('520e91df-a63d-5216-a842-07ecbcf7d363', '5aabac1f-6392-5541-b004-b458a601491e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8c1b97e3-4dda-51aa-ad91-24d5918cb027', '5aabac1f-6392-5541-b004-b458a601491e', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e9d6be79-8aaa-5bd4-b2f3-4c6faa915a24', '5aabac1f-6392-5541-b004-b458a601491e', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-06-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a96895be-36ee-5472-9227-7a633b5b63a3', 'aa830753-face-5056-a6df-620fe957a1c7', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5b425e83-a1af-54e9-aefd-966543811c71', 'aa830753-face-5056-a6df-620fe957a1c7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb5f08b0-e552-5930-a4e9-5139277ee6ae', 'aa830753-face-5056-a6df-620fe957a1c7', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07a8a370-f9d0-5d7b-8f54-f0dea1dd6aab', 'aa830753-face-5056-a6df-620fe957a1c7', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('52917f97-373f-517a-a623-41ba8b110b96', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4d24bcb5-6c36-5b2e-92ba-c7c527402e69', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c8cfe4e6-d7c8-5831-9d91-dec123ffb7a9', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0bb605b4-69c9-5b4a-a718-dfb2a18b183f', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c84e0ce6-82c5-59ad-bd63-adca91e6e294', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be72bd99-8b41-5ffc-adbe-39407c4c663c', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b8c835bf-cf46-5098-9027-c97a1bc42a24', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5fcebd17-e012-5cd5-b9e0-8c73299225f8', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c980c1e6-32ca-540f-8aa4-718f7c64f877', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de7f710e-de48-5687-b838-d973b33da9e9', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a7bd5667-5fc2-5d98-886c-60ef58d9af77', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c50b5dae-98a3-57f1-8a9f-38a147c0c09d', 'd3ca40f1-ce3d-52c9-95cb-4b4642c4c328', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-05-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f81a78d1-0200-5a56-bb71-e3549150cc84', 'c350ecb1-d125-5c20-8d45-016421795ae5', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('91cf9a39-40bb-57c5-a964-2c7097020e82', 'c350ecb1-d125-5c20-8d45-016421795ae5', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fd4c334d-f7b1-5586-b7b9-f1afcfa928dd', 'bcd167ba-b346-573e-b6f3-006fb6f4dac8', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2024-06-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2f0270c5-b383-5be7-9c8a-66400c6d6145', 'bcd167ba-b346-573e-b6f3-006fb6f4dac8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('da811e33-0c87-56ec-9066-edb029934c1a', 'bcd167ba-b346-573e-b6f3-006fb6f4dac8', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2024-06-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c368eba3-53b4-5b9a-a429-bbd55fcc5aab', 'bcd167ba-b346-573e-b6f3-006fb6f4dac8', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2024-06-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7ed2945b-6bd7-520a-8e5f-d041adc6d57d', 'b4eae147-ea12-5579-b5f6-e01ce92ca20a', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4479e4d8-305d-563d-babb-6123a80ff048', 'b4eae147-ea12-5579-b5f6-e01ce92ca20a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('407e9bc0-313e-5e7f-88ac-55e86c085257', '721868fe-f08d-59cc-84d0-79aa9c630f13', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c9b68a43-785d-564d-b063-037be680af65', '721868fe-f08d-59cc-84d0-79aa9c630f13', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5f3bb533-b435-5af3-8d64-1744d4c4cad4', '721868fe-f08d-59cc-84d0-79aa9c630f13', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d804718-dd0f-59f5-8e37-a781e7ad9c2a', '721868fe-f08d-59cc-84d0-79aa9c630f13', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e7df6c90-7cff-5e98-b90a-c182fdaaf5d8', '55fb3633-94c1-556a-a4f8-a88ba0f20de3', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e1bd718-9058-5a22-a702-88f913238312', '55fb3633-94c1-556a-a4f8-a88ba0f20de3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('faa4f545-adf6-5e84-bc8a-151df3ff9d20', '55fb3633-94c1-556a-a4f8-a88ba0f20de3', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f7546a6d-e0f7-53a7-b7a6-351a61d2f895', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d3462f41-e9bd-5b81-8067-85b6df4a9107', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6687c92f-f3f1-59ba-b35c-cd57db9c9280', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ea1a610-f443-5dd9-b7f9-d39e104d2da0', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8081052a-76c7-5877-a435-bbc89ae112ff', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d7c3c49e-032f-5ee6-912f-480f07656a5b', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6389ce68-fdec-5e24-a8f2-b0c520287cf2', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b22b476-3d77-51ae-a3f4-ddea58c4c5e0', '798b4493-6bef-596f-9ef7-b26529577e48', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e2172f70-14d2-50b9-a4b1-99194464b676', '798b4493-6bef-596f-9ef7-b26529577e48', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('81eb0770-b4fc-52c2-a1ff-a7bc6e36f8f2', '4cbb51ca-8aa9-559c-8068-516d29529095', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3f976728-a7dd-5599-b421-b0df358e0b45', '4cbb51ca-8aa9-559c-8068-516d29529095', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cd99d3b4-ed52-56d2-94e7-ca5fda854a99', '4cbb51ca-8aa9-559c-8068-516d29529095', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d1d54457-0e5b-5f61-8eff-4f0d2c3751bf', '4cbb51ca-8aa9-559c-8068-516d29529095', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07643ae8-7f75-5b62-92a0-ca5e4e336ef4', '4cbb51ca-8aa9-559c-8068-516d29529095', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bfbad59c-d686-5587-84b7-4cdc174e1cbf', '8a786e70-0204-592f-a919-3d9a1d72bf9b', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('69297bf2-6d1c-525e-a7a1-93b70b713270', '8a786e70-0204-592f-a919-3d9a1d72bf9b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fe822775-dbdf-5300-94a3-c0fec6c456c2', '8a786e70-0204-592f-a919-3d9a1d72bf9b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fac1b285-51fd-55a2-80af-6cde8f701cdb', '8a786e70-0204-592f-a919-3d9a1d72bf9b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('645c359a-e04c-5260-9a70-9c5ed2607778', 'b94a4849-64bf-561f-813d-7040e593ee8f', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8098f4c0-fc86-53d2-822f-c8f412a70821', 'b94a4849-64bf-561f-813d-7040e593ee8f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d183e5e9-e25a-5353-8ca4-0bd2daa0ca05', 'b94a4849-64bf-561f-813d-7040e593ee8f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('932f7b8e-d003-55bb-9578-9ef01d4bdb3e', 'b94a4849-64bf-561f-813d-7040e593ee8f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('02810e0d-3c19-588d-a9e3-adb6d052aa10', '9c8bf86b-738e-583f-accc-6f0473bffe52', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b50a9682-dfac-558b-bf25-5c5852ba391c', '9c8bf86b-738e-583f-accc-6f0473bffe52', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('82b83f69-de19-5b22-8bc2-8a8431403748', '9c8bf86b-738e-583f-accc-6f0473bffe52', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ad4393ee-122b-5095-8345-d7fd98c4b96b', '9c8a01e6-3786-59e7-9935-e18ae44d8e05', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6485e64d-0bf3-5648-8acc-427560f4c97a', '9c8a01e6-3786-59e7-9935-e18ae44d8e05', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0f6e1a1a-9416-5cd3-b566-3cc8eff4d045', '9c8a01e6-3786-59e7-9935-e18ae44d8e05', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7dca8958-e69b-551c-8b21-e1ef4ec74dd6', '9c8a01e6-3786-59e7-9935-e18ae44d8e05', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4afb499f-f27a-5608-86d3-081509b59982', '3660f69a-3bce-51f7-ade2-855c3edd9802', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c8470351-7bb9-5f6b-8452-a6826131dd9b', '3660f69a-3bce-51f7-ade2-855c3edd9802', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1148517a-23df-5ea2-abe5-5477d584cc0a', '3660f69a-3bce-51f7-ade2-855c3edd9802', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73b76132-e16d-58ad-b8b6-f122e5cb6230', '3660f69a-3bce-51f7-ade2-855c3edd9802', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-06-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('68b124b6-beac-5301-b938-77e5f8e2851c', 'df4a1ed1-58bb-57d1-acb3-ab4a4581cce8', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('088b0f15-3f08-5c23-8d78-63c5e40b3e77', 'df4a1ed1-58bb-57d1-acb3-ab4a4581cce8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ecfa7afe-c937-5c7e-a321-3a0c8583bc3f', 'df4a1ed1-58bb-57d1-acb3-ab4a4581cce8', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('990d7f70-2fcc-5dbe-80dd-1325ad51f886', '515aa137-0e00-5322-bbf2-758b514c4bec', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('acde5303-8a3d-559c-9f19-4aa774a791af', '515aa137-0e00-5322-bbf2-758b514c4bec', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c2a78fa-9552-5033-8992-4c476ce86db6', '515aa137-0e00-5322-bbf2-758b514c4bec', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fdfeb3cd-dabc-59b0-bbd0-8e3b1cfca087', '515aa137-0e00-5322-bbf2-758b514c4bec', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b9e163e6-dec7-58f5-a012-869267acfe91', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bb1dc275-35c7-5f70-8ffb-0b56fb711429', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('86330fff-a524-5192-95f8-72c34902f685', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b100da34-6087-5b8a-813c-bb1980a5c833', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1c4f4b6a-93d3-5248-95eb-dd8d8f5eca42', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9f5a5a03-0987-584f-be01-c35e17991d95', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('73281f06-e661-5f86-8bc7-76d2d4876d6b', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('287b335d-8eb5-5f37-a535-1e030d93d651', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75631edb-81c8-538b-acd7-8ac5ac9de920', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bfaf76ae-8b50-5846-a06d-87257a91ec98', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a37f34f9-1a87-5b37-a17c-c1762b34970c', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('03845f9c-6360-52f8-b91b-c2480e2b4e8f', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('58eaa261-fb1a-5579-89cb-58f54aeab2f9', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('edb3b7da-fb32-5914-be6b-04a729f2ccb4', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f3e84f0d-e303-5e7d-bd15-b598bec3540f', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('dca23c5a-d4c1-5678-b606-2097fe0a5793', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8531663d-db70-5b59-b28a-a09fd1d2e186', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eafead0c-2efb-5bdf-8b03-770a3bd9eb99', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d2608531-71b8-5292-8e76-d84022ddce22', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cd50d29f-fd39-50e1-a75f-59e19e3d8b3a', 'f65b0aa8-9d59-569d-a999-d572aeb5b69a', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('20005065-98d6-5a8e-9dd9-c13b4533ab34', 'f65b0aa8-9d59-569d-a999-d572aeb5b69a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3c8ed98e-6432-5fa1-87e2-fade54bc9e03', 'f65b0aa8-9d59-569d-a999-d572aeb5b69a', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('18e3d356-2e54-548d-a359-4d99d6ee6aa5', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('90d00e18-5e53-5089-97d7-c7dbc6908e5d', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('20b0b165-81ec-54fd-aa07-3da1b052363a', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2abc3214-6326-5706-909b-40b741f5fa62', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9fe33f81-36f0-58d4-ae38-a5b188bbd4cd', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ed650fbe-38e5-5698-a958-a16469171a54', 'fc150945-ddc9-5a61-8a76-81c995e93e56', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('59605878-f9c9-5cd8-b635-6f6371198c0d', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fd34c58f-5972-5ffd-86f2-3500350096f5', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('12e2b557-f9fb-5131-bddd-e3c3920084d2', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a9d8dc0-4303-5552-9348-7131ea79a7b6', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b8065da8-5128-5374-84d6-74bb5a697777', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e6dddaed-ddc8-5334-b773-5bcc5191fcd8', 'c9d5d4ea-46e0-5609-a19b-490f45ff147b', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7af6132b-0ce4-53c4-bfde-22018ac3ab78', 'de28db52-1717-5bf1-b508-a1630eba23a9', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0512a8c9-4d9b-5cc5-aa2c-d4c70f965a18', 'de28db52-1717-5bf1-b508-a1630eba23a9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d29086ad-dc50-51e7-ad0d-c8b282367b80', 'de28db52-1717-5bf1-b508-a1630eba23a9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('58646738-b19f-54e8-982c-4328f88c31d8', 'de28db52-1717-5bf1-b508-a1630eba23a9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('02b7a152-201a-52f2-b0b4-9311a1d09a40', '92c06bf5-2e46-5f82-8f82-2e728853b351', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('08e9a5f8-3188-5a65-89a9-0179339cbe9b', '92c06bf5-2e46-5f82-8f82-2e728853b351', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('436b9fd9-e391-5707-bbd8-bf674f4e12f8', '92c06bf5-2e46-5f82-8f82-2e728853b351', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('06ac722d-a91f-5525-9ed0-27c7b9f3abdb', '92c06bf5-2e46-5f82-8f82-2e728853b351', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9633227d-a128-50f4-89bd-b5bc7c6634e9', 'e6e4dbf7-79ae-5e71-b6d9-b2b355657df7', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('319086f6-e8f2-553e-896f-6d9480a78b9e', 'e6e4dbf7-79ae-5e71-b6d9-b2b355657df7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9bb81610-0d82-50b2-98f3-ee06d7ef26c8', 'e6e4dbf7-79ae-5e71-b6d9-b2b355657df7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0d0e2dff-9a1e-5588-a4cb-9cc7a6d4a862', 'e04c2837-727f-5b82-b3e5-9e474f112590', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2025-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d1d04129-3eb8-51e1-bee7-7a90c52da467', 'e04c2837-727f-5b82-b3e5-9e474f112590', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2025-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3ec180e7-b341-5cb3-b9cf-5f66bf15b4e5', 'e04c2837-727f-5b82-b3e5-9e474f112590', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f0a98ffa-11d4-5bda-b2dd-b6bd9ffa963a', 'e04c2837-727f-5b82-b3e5-9e474f112590', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2025-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('337f7104-ab91-5a16-a443-efeb44495060', 'e04c2837-727f-5b82-b3e5-9e474f112590', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2025-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('40344c2b-1ad8-5ed5-b0a9-684598f5f689', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a930f35c-387d-5613-acc9-e9bf37c0e7cc', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b71c519c-d40e-518c-be6c-0109ff3aa92b', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f6870736-729d-5c2c-ae91-70f5826079c0', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('659dfdc3-3176-566d-9ca2-0c059f4ed8bb', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2023-12-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b013aa9-ed3e-5063-afe5-2fa2514b9823', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-12-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0c39530b-7004-54be-80a3-d68123066eec', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-12-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b16be64-8327-56f3-bfd8-6e4fa0041071', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-12-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('659dfdc3-3176-566d-9ca2-0c059f4ed8bb', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9b013aa9-ed3e-5063-afe5-2fa2514b9823', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0c39530b-7004-54be-80a3-d68123066eec', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b16be64-8327-56f3-bfd8-6e4fa0041071', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-11-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('84f31a87-94be-57d0-b76f-27f18708bfc3', '8b280b52-156c-5ee5-930a-8d24c3463c09', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2026-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('33e671da-4845-5366-aaf3-7808974917c9', '8b280b52-156c-5ee5-930a-8d24c3463c09', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e09ff9db-f837-5da8-b4c1-09fd7e2db240', '8b280b52-156c-5ee5-930a-8d24c3463c09', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2026-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('10b58d5e-2a42-581d-9574-0652435f99b8', '8b280b52-156c-5ee5-930a-8d24c3463c09', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2026-07-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b5d81b52-03da-5c22-af26-908f27d19df4', 'c231c491-d4c4-5d1b-9045-d2ee8235848a', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ce6be745-de3b-5f12-a95c-9c9fdc9c5688', 'c231c491-d4c4-5d1b-9045-d2ee8235848a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('065b47aa-71f2-50c2-9af9-d2aed3e274a4', 'c231c491-d4c4-5d1b-9045-d2ee8235848a', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-06-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e57186d8-31bb-55b7-a152-dc11ee364b33', '70453719-31ff-576d-b42e-02a6d901e8a3', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52c87eb6-ee36-5025-9c5d-abde2aea3f87', '70453719-31ff-576d-b42e-02a6d901e8a3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8310d8a3-6655-5b1d-90df-3bc072e629b1', '70453719-31ff-576d-b42e-02a6d901e8a3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48e07c73-8cd3-5504-9442-f6e1b0fcadad', '70453719-31ff-576d-b42e-02a6d901e8a3', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e758b0e7-adda-59da-ad5e-45e90ae8b74b', '4a73bbe3-7364-52da-9c0f-9534cec3dda1', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('127acb53-bfb8-57b1-b7a4-17a5e5b9845f', '4a73bbe3-7364-52da-9c0f-9534cec3dda1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3de4f917-c7cf-509f-b6d2-aa70cb53a7d5', '4a73bbe3-7364-52da-9c0f-9534cec3dda1', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7176fb22-f444-5cdf-b6f1-89aa09c0f769', '4a73bbe3-7364-52da-9c0f-9534cec3dda1', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('295748ec-5ebe-565a-9dca-22146ec7093b', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', 'joined_team', 'Joined UNDER 15 Girls - WFA', 'fa778b9e-136f-599d-b72a-98394a06fe96', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('afaea01a-16c3-5915-8307-b1c7cb4dc91a', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c4930caa-04d2-54e8-9128-836e2dc449db', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e6cdf31c-b46b-55d4-a2ae-6d9ad1cbe38b', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('55c73f4d-6ca9-5af9-90bc-2a36c377f089', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('30bb28bb-4fef-5728-9e4b-b6a14e35891f', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83c3267a-2302-5c25-8e40-048f56238dff', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8a77c93a-4816-5d11-a095-7b4ce4ede653', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('693a3da8-895a-5d7e-8093-881d95679e67', '910ab91a-b676-542f-a472-4f25a83d8d18', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b3eebf73-ab56-571a-8b76-8126faa228a7', '910ab91a-b676-542f-a472-4f25a83d8d18', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59dfedf2-8d6c-5737-955f-532c165abe69', '910ab91a-b676-542f-a472-4f25a83d8d18', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f6f5e5fd-5c1c-5783-9cdb-d9670f6ee6cb', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e04d9913-755d-5603-87bc-5a7768509a1a', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0c47149e-bbad-5d96-9742-abdd13625688', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48c5104c-0d72-5b92-b7ff-5ec4fd10d5d1', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('80f69a22-6f1b-5ce4-b222-92cbc0b95604', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cf90feea-ec84-5fe9-99e7-d448f129415c', '248aec8d-4488-58e1-b064-0abe4c348e5d', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af655147-0fab-56f2-9ad3-a8b633f28af7', '248aec8d-4488-58e1-b064-0abe4c348e5d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a5488382-36f1-5511-b554-247087837aae', '248aec8d-4488-58e1-b064-0abe4c348e5d', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a06bacde-5e9a-56eb-8bed-2b8ead8c8c1e', 'af841826-e988-5330-9f5f-b558558c70bc', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b796348-86f5-562a-a9e7-8877b1ae2e47', 'af841826-e988-5330-9f5f-b558558c70bc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dfb3aa35-9ddd-5599-9e2e-6d113a408161', 'af841826-e988-5330-9f5f-b558558c70bc', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6b8c5f76-ae12-5607-955e-62769c0ca2a5', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6aa58386-802c-5323-ab55-6c012a52951a', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1caa1be6-d1b8-5e55-8d0b-34073aba00e8', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('db55ac14-5a82-5441-b49d-012b509f6568', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0f1de453-711f-5d91-9f1c-46f65be36c74', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2025-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7ec6e172-2d67-5b3b-97b3-5c191eac8ce4', 'b7274f19-dd57-5e72-b1a3-0caa30c21b38', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8fbcaa21-990d-5566-af32-87595acdeb93', 'b7274f19-dd57-5e72-b1a3-0caa30c21b38', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4b4375d4-2008-543e-8285-388660a12427', 'b7274f19-dd57-5e72-b1a3-0caa30c21b38', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('315f9556-48da-52b4-88e0-52ec2816676c', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b841aa10-f8a8-5f34-85bb-f967e68b7886', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e59ca9df-f2c8-5554-a7e2-2c11c34623ce', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4011cb3e-6163-54cb-a01a-99175b047a8c', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6369958f-aabf-53a9-a77e-24c7dc1134a6', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('315f9556-48da-52b4-88e0-52ec2816676c', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2025-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b841aa10-f8a8-5f34-85bb-f967e68b7886', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2025-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e59ca9df-f2c8-5554-a7e2-2c11c34623ce', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4011cb3e-6163-54cb-a01a-99175b047a8c', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6369958f-aabf-53a9-a77e-24c7dc1134a6', 'bac0636b-c413-501a-a1c3-c59c3890acf3', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('969e95e5-d39a-5977-8e0a-3b068ddefa7d', 'be108759-2f02-572b-a643-97639f6f2331', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a99b0981-81d1-525e-b165-49f0158590ee', 'be108759-2f02-572b-a643-97639f6f2331', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b5bdbc13-300a-5868-a03f-f19bb7bd1470', 'be108759-2f02-572b-a643-97639f6f2331', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0bf41c3c-536e-5bc0-8bce-fc00a5c07e0a', 'be108759-2f02-572b-a643-97639f6f2331', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d5a6de95-a32b-5698-a3e7-38bec208c975', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ea7fd527-f51d-54b0-9cfa-3e0399dd8a47', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5495f37f-3e15-59d3-bc4f-29e65356cd6d', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a3c55735-385a-5a78-98ed-bf5cbf4a8bf3', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0d8869ca-6af2-5b19-b018-45e4b596ee6c', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2517c8b2-a422-503d-b9f8-cddb435371fa', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e3bdeca1-d3b9-5c17-8468-de47e770cfe5', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('be70ccb8-9ad1-5958-8339-f5ddaf453d75', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3937392b-e6d2-5d57-94e8-c16548682642', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2ab3ff04-166e-5456-a485-d2c28950b045', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e16b5ca4-c490-535c-8112-db2469197773', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e53763a-a1a8-5605-b5d6-aab463e6472a', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a37941e3-4efc-5f55-b291-93a094f19b3c', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6983d060-88a1-5083-b567-917d230a565a', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('77824cf2-ef8e-5a9a-838f-6bd999c31de8', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75fd8965-30fc-55b9-a178-8f9b3e38fb74', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('10222246-6adc-5812-83e7-335e90f5e716', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cad4709c-e1a8-5724-a2a4-c84652e97a45', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('12008a03-6aea-581c-9e21-3c829f6388b1', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9956d58c-e5bf-53b9-b895-d29f41caa08a', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c90ca71e-d158-5b69-bdd5-0288b24cd850', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a8efc825-f0bf-5f5a-b5dd-4b991c60a451', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('deb3c27b-962f-52a9-ac76-2fbc204b0ee0', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7f2265b9-ac16-5635-897d-235837e09e31', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('326124cf-94a0-58dc-b767-70cb3f5e8479', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('59fe8fb9-7109-5050-88b0-20f758a0a363', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('16483956-a65c-58de-a4e2-0c1270957f98', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5edc5e00-8eac-5b4a-9ddf-e594ba1925aa', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ca3074c4-b23c-5524-a6d3-eeefa8af0d91', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8eb14a6c-ae15-5848-a067-149f477f0d07', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('afd50b3a-726e-5a18-b837-b73bc45715a7', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0835cd7c-7cd5-59cb-b6fc-dd803971942d', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('573ff54d-7ce6-5807-8f10-5b2e24aa7d72', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6fc29c0a-ebda-598e-a3f1-90dadb8d9b50', '2059b362-e631-5f30-8e6c-479171a2ae72', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f1d0cacc-423f-5c2b-8606-d7cee0b085ac', '9d393a98-aa44-5429-a295-c42917f6a37f', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fe93fd9f-c5a4-51c2-9b9c-b15398e80f13', '9d393a98-aa44-5429-a295-c42917f6a37f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('460a4804-bfd8-54c6-ba28-5c000dfa5de5', '9d393a98-aa44-5429-a295-c42917f6a37f', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7344513f-6ddd-58fa-a6d2-8c649fa3a217', '9d393a98-aa44-5429-a295-c42917f6a37f', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b4e18235-5082-5b6a-92bd-5b99edd43cad', '728df03d-0add-5499-bafa-c70301c8768f', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2024-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('33c34c28-fd37-53bc-9b4e-85ae06d3ccf8', '728df03d-0add-5499-bafa-c70301c8768f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('62e536ca-819c-5453-a368-7b91a8f2d096', '728df03d-0add-5499-bafa-c70301c8768f', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('59783b98-be48-53f7-a101-00ecbde3e090', '349ab520-9b7d-5eb5-ae99-92bdb8985651', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('40c2c52a-debe-54af-97c8-c7772df6c5a7', '349ab520-9b7d-5eb5-ae99-92bdb8985651', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9bc9493b-436f-58d4-a231-1e1f2bfe66f4', '349ab520-9b7d-5eb5-ae99-92bdb8985651', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('defd3dc3-d8af-588c-88c4-001210d44f29', '349ab520-9b7d-5eb5-ae99-92bdb8985651', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e9d2fd18-adcf-57f8-b708-00de64277d72', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('26e8e6f8-511e-588b-b67d-788ab7bc6a93', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7cc32b2f-3155-539d-a085-084360447cbe', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1f1c7406-617b-5204-b4ee-78ba07bc66de', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('329aaa40-e508-5a50-ada9-b5221c321d27', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eacede4b-d61a-575b-9dc7-97689275a6e8', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ab749178-c925-5aa8-8c0c-4b2f178de910', 'a0e4c016-ee33-5747-9004-8957b80ade8b', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1a970e10-35e5-59c5-b28d-47349cc42204', '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('93f2bdc4-6c18-5545-9699-80b689b1e602', '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c0c0077a-09a9-502a-b6ac-4f3c8c6377c3', '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-10-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('abf9ff2f-3335-51b4-8439-1dbe86a40ed6', 'c57d9c56-d994-503f-ba0c-904e70efd349', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('12cdb6d1-8ef6-5b3b-92db-31dde540fe46', 'c57d9c56-d994-503f-ba0c-904e70efd349', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('644987cb-d18a-5e02-8380-e4399606a1b8', 'c57d9c56-d994-503f-ba0c-904e70efd349', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e4a8498-00e1-55c1-a8bf-0d459c4765a3', 'c57d9c56-d994-503f-ba0c-904e70efd349', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2575c4ad-e4ef-5ad8-b7a4-2eb802e6a606', 'c57d9c56-d994-503f-ba0c-904e70efd349', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5919983b-a860-5017-8b29-c055c5d57968', '1ce90eeb-d7b3-5602-848a-3c5605a40192', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('41f355c6-f44f-58cd-8222-789c7bfe438e', '1ce90eeb-d7b3-5602-848a-3c5605a40192', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('edc5aa20-cf23-5dae-bc5b-d151b71a4151', '1ce90eeb-d7b3-5602-848a-3c5605a40192', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ec604fe9-38ed-5146-a0be-6d5d0324fa44', '1ce90eeb-d7b3-5602-848a-3c5605a40192', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('63b2f67f-72b0-59b3-b859-17ff81c8ea2a', '397d117e-832f-5d88-a4c9-0187636dc200', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6a746e5c-7301-5080-a6ba-73ac4d4c801c', '397d117e-832f-5d88-a4c9-0187636dc200', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f47fdbb-a4c7-57c5-b7d6-31fe75a39e94', '397d117e-832f-5d88-a4c9-0187636dc200', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8a7aaebb-a3d5-5d97-933d-46904e1f3041', '397d117e-832f-5d88-a4c9-0187636dc200', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b75d7ff-7e13-56e5-97c7-34ad4a70809b', '397d117e-832f-5d88-a4c9-0187636dc200', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4622fbec-6998-55da-ac07-043d1485237f', '9f531953-2d08-5665-a9c5-051dca3afb2c', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7fae69b9-0904-50c5-b13f-ca2af2db977b', '9f531953-2d08-5665-a9c5-051dca3afb2c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('28eebbd6-edaf-53d8-9f9b-58b9d08f323a', 'f5264c76-d811-58f5-9faa-bbf6d1d4c573', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8b4f3fee-69d3-5f72-aba7-787be6bb1ea4', 'f5264c76-d811-58f5-9faa-bbf6d1d4c573', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f2916e06-373a-5871-9d61-0699d22f33b4', 'f5264c76-d811-58f5-9faa-bbf6d1d4c573', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('818d4639-f14f-5d0e-8b9a-1645f357446a', 'f5264c76-d811-58f5-9faa-bbf6d1d4c573', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('da094f96-df3e-5370-93a1-d633276cf120', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0df0afbf-387d-5497-8013-a51b49b49c5f', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a01b56b1-a418-5a32-9059-4f90446c141c', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('51b6216f-23aa-5b5a-884b-6bc9ff249f26', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d3155b2-2436-57f4-a3e8-54f311932cc7', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3d335700-538b-57e8-9aa7-ccad11a53e64', '02550e63-19d2-51fc-a57a-43f9900ec567', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('279f964d-56a2-5800-85e9-a446364af173', '1c25df15-d5b4-5811-bebd-d96bbbd2badd', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6f09e113-f3c2-53d6-afbf-005ab2767f07', '1c25df15-d5b4-5811-bebd-d96bbbd2badd', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('350cffc1-941f-5e1b-8d95-e974cc388ff8', '11057ecb-d321-5c62-b5e2-aff76f738bbf', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('168789e5-478e-5ae0-8130-23b97b095051', '11057ecb-d321-5c62-b5e2-aff76f738bbf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('14d63d15-8804-5a7c-9532-c54a7d4572e5', '11057ecb-d321-5c62-b5e2-aff76f738bbf', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('25705973-147a-5a40-9752-517ee05a8088', '11057ecb-d321-5c62-b5e2-aff76f738bbf', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1e6606d3-a5c8-51fa-a109-b48c743b67a5', '09d3221a-0df9-59d9-9a1d-069746b3a1ce', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0b1fd01a-a7bf-5076-ad6f-9b094b82a76f', '09d3221a-0df9-59d9-9a1d-069746b3a1ce', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b0e9ae92-fc89-5305-b489-2e66a9de5de4', '09d3221a-0df9-59d9-9a1d-069746b3a1ce', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7e83b958-762c-53d0-9bfc-c0839a2cf772', '66e778cb-6789-5207-b08b-33f6da5f871a', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('14b233e3-0b50-5f4b-995c-d2b2d0cbd73c', '66e778cb-6789-5207-b08b-33f6da5f871a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2bb0a17b-9085-586a-b9d1-e641d195bda3', '66e778cb-6789-5207-b08b-33f6da5f871a', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fcf138a8-073a-54fd-8c13-768bc72409cb', '66e778cb-6789-5207-b08b-33f6da5f871a', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('511becb1-699d-59a4-a911-e81cc7faeb66', '86f85ef7-c26c-5b1e-a0db-983206de63bd', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a9df8108-2424-5e65-81c5-357d31746610', '86f85ef7-c26c-5b1e-a0db-983206de63bd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e851d93-0519-5a42-a6bc-924fb48f1f35', '86f85ef7-c26c-5b1e-a0db-983206de63bd', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6172ae0b-98ee-5170-a8dc-74bd1064e5c0', '86f85ef7-c26c-5b1e-a0db-983206de63bd', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cb330fbf-a537-5b1b-974d-c9a359a690f4', 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fab679c9-f408-5e94-b082-89272de8b32a', 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4bd95b57-3f8a-522f-adfc-a30fdf5a0e70', 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('87dd491c-e858-5186-bf5d-6a9df0e6328a', 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1eba8be8-b8f6-5440-acc1-e73dae9027c2', 'e4a71635-d8d4-5f3e-ace2-1adb8e94780a', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2024-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2e2b10ec-2c50-57bf-99d4-34f3ec8acd08', 'e4a71635-d8d4-5f3e-ace2-1adb8e94780a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('32354674-5f98-5bf3-abce-e94600bb9d3b', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c126bb88-17c9-5156-9252-952736096b41', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b8c9c0d7-f24c-54cc-999d-96412264ff61', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0acea8d5-3eda-555e-bb35-61bf58026387', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('778d74b5-292d-58eb-8b6e-8a9e2ffeb09d', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('171f9dcc-fdb8-5d9b-96f0-0bb2e814ef27', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f8018c86-d1f6-5b46-aafc-7352c95c0ac3', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6ef500e4-70de-539b-a597-ac653645c37e', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-06-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('661af209-f4ea-5354-ba44-4595c69d2f06', 'e76a0577-cfc6-517d-878c-35a269345f6f', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2024-09-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('04e88ac2-7276-58b3-8029-badbcf14fb47', 'e76a0577-cfc6-517d-878c-35a269345f6f', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2024-09-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6ac366a4-fc38-515e-aabd-366bebf09816', 'e76a0577-cfc6-517d-878c-35a269345f6f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-09-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be7640bc-b9ea-5dfc-8854-9ec899257e04', 'e76a0577-cfc6-517d-878c-35a269345f6f', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2024-09-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ee90b456-d0c8-5698-98b4-31381817a83e', 'e76a0577-cfc6-517d-878c-35a269345f6f', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2024-09-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bbcd7b3d-e5e3-5442-95d2-d7789b780558', 'ff76a4d8-5d37-5ee6-a9a4-3d586028f6c7', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a3d0d551-f3c8-5c78-a548-d2d7b046b66e', 'ff76a4d8-5d37-5ee6-a9a4-3d586028f6c7', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4218418c-b8c8-53a6-ba11-78f3eb2415ce', '1d8be3a6-b804-5524-b0fe-c3a71617531d', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('df132406-c3ca-5355-8caf-3ef928774e0d', '1d8be3a6-b804-5524-b0fe-c3a71617531d', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d728ddaa-bb86-5391-b735-bcc13127c1ea', '68bb26f3-72c5-56b0-bf35-d2256976d2e1', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8d84437c-ec9b-55fd-a6b4-cd3a90575fbc', '68bb26f3-72c5-56b0-bf35-d2256976d2e1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4bb06b4a-684b-5658-805b-b11ca757201d', 'bc4ac85e-a4dc-53d8-8e6b-2617913b56b4', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2fbba3c4-9e59-5a8a-a24e-2495b379ef94', 'bc4ac85e-a4dc-53d8-8e6b-2617913b56b4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('05d433be-064d-5651-9c5d-9e5a94284074', 'eddc76af-e091-5320-a20d-fab50e72b1ea', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e89ce333-aabe-5a2d-9106-abbf3e75cec6', 'eddc76af-e091-5320-a20d-fab50e72b1ea', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f088acbd-f40c-5ceb-9c77-cada82ff416e', 'eddc76af-e091-5320-a20d-fab50e72b1ea', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7eddb230-7c33-5748-82a5-5e07cd7568de', 'eddc76af-e091-5320-a20d-fab50e72b1ea', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ca2cb05d-3291-5ff6-9651-40663c6b1552', 'eddc76af-e091-5320-a20d-fab50e72b1ea', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c71638c3-0ce6-5fd9-a5ff-bfff320fe29a', '25172d33-7821-5934-9a72-8a30dff936d9', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2025-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a0d73e44-ac19-5bc6-b8d3-332cd8a2a55e', '25172d33-7821-5934-9a72-8a30dff936d9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c927d584-aff2-526f-b3ba-70c4982769d4', '25172d33-7821-5934-9a72-8a30dff936d9', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('02aeb281-c18f-515a-992f-416ce6bae87f', '25172d33-7821-5934-9a72-8a30dff936d9', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-07-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8fce6a43-515b-5d35-b907-bb4715c2c98e', 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ffc4656a-42d0-5cee-9e41-59d9b9f379d7', 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8cc133a2-7147-59c2-9dcb-3143d5509afa', 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1fae8e8e-8378-56a1-a5b2-3a05975b0c9e', 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('37ee254e-fdc3-5655-8a30-b84af9e7150b', 'a7f852b5-70ca-5bd0-ba36-27e232e9cc50', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2955fcf6-f336-5638-a44e-110d9c794960', 'a7f852b5-70ca-5bd0-ba36-27e232e9cc50', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4022c5bd-0526-578d-8633-38f4043ec2cc', 'a7f852b5-70ca-5bd0-ba36-27e232e9cc50', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0f0384a6-d1b4-5c88-9000-c6a8bd9984bc', '42f7a79c-8673-539f-aaab-8ec1ce85e477', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b31c65e6-c2a7-55ce-bc8b-f3f164aaa16f', '42f7a79c-8673-539f-aaab-8ec1ce85e477', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f4cc60aa-d816-5883-8150-d8052a7ef0c4', '42f7a79c-8673-539f-aaab-8ec1ce85e477', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('37bcf063-71f0-5c90-8002-6222d8eead82', '42f7a79c-8673-539f-aaab-8ec1ce85e477', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ca9bf54a-1c4e-5e56-9a79-b5dd2f282c94', '5a6299cf-7ca6-5273-8284-3401a569d2f7', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4614cac8-fa23-56f6-a15c-368a0868e9d3', '5a6299cf-7ca6-5273-8284-3401a569d2f7', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d1557960-65c2-532c-be1e-43822bec69a1', '0b7e1372-8a01-5abe-90ad-adcd40102d90', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('75ac2d41-6392-5601-9882-bd489574e3eb', '0b7e1372-8a01-5abe-90ad-adcd40102d90', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('68116a16-bbbe-5541-b273-8e32171ae0e6', '0b7e1372-8a01-5abe-90ad-adcd40102d90', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6ed75790-6d82-539d-808f-491aa749e298', '0b7e1372-8a01-5abe-90ad-adcd40102d90', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('31418430-1a6b-570a-8d0e-7e5dfe788767', '0b7e1372-8a01-5abe-90ad-adcd40102d90', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3ee3c05a-b873-54b3-8267-158f1e06328a', '18df82ab-c448-5a57-a0b8-5c01a5246d7c', 'joined_team', 'Joined U11 BOYS - WFA PSV EINDHOVEN', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a39f25bc-eba8-54de-acac-9a5909251c81', '18df82ab-c448-5a57-a0b8-5c01a5246d7c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abd615bd-c714-5299-9303-99b8c179bde6', '18df82ab-c448-5a57-a0b8-5c01a5246d7c', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cedd7890-dd45-5a7a-b883-38d0dea95412', '18df82ab-c448-5a57-a0b8-5c01a5246d7c', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('229a7b88-c603-5e82-8817-a883e306f90e', '7df73d0d-76c4-54d7-9a4f-5df132abbffe', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0b085a6d-cf75-5d88-a75e-023325ac5a84', '7df73d0d-76c4-54d7-9a4f-5df132abbffe', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e07529fd-ec3d-5947-a8a4-2bc70430b544', '7df73d0d-76c4-54d7-9a4f-5df132abbffe', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('69aaa61b-f256-57e2-a862-abd5f647f8ca', '673036ab-0149-54a6-8fb4-5e5b49a949d6', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('925e835c-c777-54b3-9779-aac4572d0db8', '673036ab-0149-54a6-8fb4-5e5b49a949d6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c57c3f01-2e80-5b59-88e9-5a31c386c6e2', '673036ab-0149-54a6-8fb4-5e5b49a949d6', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fd4af1cf-4885-5259-bea4-49a4b4a0ae8a', '673036ab-0149-54a6-8fb4-5e5b49a949d6', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('555b8337-49b5-54be-8da2-b7378e808481', 'fcb62382-6601-5642-a787-c910e0c4d166', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('614b82e3-77ef-541f-9cb6-97fbc55c2c76', 'fcb62382-6601-5642-a787-c910e0c4d166', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6e778be3-e1c4-5ec5-bc1e-a1570ce4b476', 'fcb62382-6601-5642-a787-c910e0c4d166', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2dca3e2b-a7d9-5a1c-870f-86c1eceb7aa3', '86b80bde-f840-55fd-b517-1fea3825a1c3', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('09e121e4-3d88-5319-9f0e-df0eda8f4d1b', '86b80bde-f840-55fd-b517-1fea3825a1c3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('823537a5-e87c-5794-b69f-1553e893e688', '86b80bde-f840-55fd-b517-1fea3825a1c3', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f8eba96-53fa-5616-ad4d-544fd4c577d9', '86b80bde-f840-55fd-b517-1fea3825a1c3', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5aa58fc1-c153-5aeb-bb4c-fa2e8d7ab207', 'f530d272-0386-59fb-8c95-8f236640bd06', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-07-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a288ad8a-6d8a-563d-a422-b195d44d67d2', 'f530d272-0386-59fb-8c95-8f236640bd06', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-07-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d3d9eaf2-f63f-561e-82b2-4fb86ae612d0', 'f530d272-0386-59fb-8c95-8f236640bd06', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-07-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ca64626f-d2c7-56cd-b764-dfc6cf39d29e', '22329006-cbfa-5c41-a01d-85f4e27faa44', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aff258cd-dded-51a3-964c-1fc3048d9913', '22329006-cbfa-5c41-a01d-85f4e27faa44', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1e428e91-2747-5021-ab0f-799b540bde8e', 'e643ba8e-c593-5ea8-9152-eeef95e244a1', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e408ffea-decf-5c8d-9c35-4a779159b75d', 'e643ba8e-c593-5ea8-9152-eeef95e244a1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f0a086f-9ab4-515f-a37a-fb30487a9617', 'e643ba8e-c593-5ea8-9152-eeef95e244a1', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1a40cd4d-acbf-551e-99f1-2205f3adfee6', 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fac8a33f-f4dc-5634-8193-d052d55c4e24', 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ff223968-bdb2-5ff6-a8cb-a3658fd4737c', 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('11eaf363-5863-50cd-8ce3-1c66b2eeb69e', 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fb5c70b2-adc7-525e-b69b-8d3c6db18de9', '8cf12749-55f4-586e-9830-148df38ccce1', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3fd730b1-5b10-5c5f-ac6f-667ff69d80ef', '8cf12749-55f4-586e-9830-148df38ccce1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75423c73-ded5-55c6-8ef1-15154738fe07', '8cf12749-55f4-586e-9830-148df38ccce1', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5c3cf4b0-5895-561a-aadf-2c27cc4638a5', '8cf12749-55f4-586e-9830-148df38ccce1', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ec64c2b8-931c-59ab-aea6-88b06f0a6086', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6226b26d-3d0e-53f7-90e8-b4e4809fb527', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('42f588f6-f2a0-5f5f-bf96-5f5d03992341', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to WFA GOALKEEPERS', '1e24ff4d-b25a-59ed-bee6-a6c124b23ed0', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('20519854-c7f2-59cf-aa2d-ac6fba3554e7', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f6fc3f0d-4fc6-5038-a34d-9884dfa35e1f', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('908098d9-d4b7-59ec-a37d-f2dc5674d291', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8c876b89-d94a-5452-832b-07cc501ac087', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d619f4cc-08b7-5fe5-a405-28db7330a08e', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dd01d03f-2cf9-5bf6-abd0-62ea796c6688', 'a2e1f2df-eb5c-5e08-9167-8cde7371c272', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2023-11-06'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9fa42cd8-ea70-5ba8-a2f9-b5d8e7e0e74d', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a452e9dc-3b93-59f0-9970-c870acfc51e9', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fe70b0f6-9780-5534-9572-933159b5ace3', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('57f1b98c-27d7-5937-8741-df597fae98e8', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('061e10c2-5f0e-5d02-a6f9-d25c5b90820f', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('17e64410-ef9b-5483-9a97-7c4b6cfb93e4', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bc3a1d96-3e10-5771-8846-4b9dc0df7df5', '96c58539-749e-5a90-be35-6de25dc1b252', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2024-10-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4f1152ff-0984-5b1f-a341-0ecfc64c8c8f', '3efc671f-7bf6-5b65-967d-be176592861d', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('857a9ab1-e01c-5f44-8a74-67162be23c4f', '3efc671f-7bf6-5b65-967d-be176592861d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8a77e462-34b9-5696-a08c-a4b183500198', '3efc671f-7bf6-5b65-967d-be176592861d', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0d006041-a9ce-538a-bba3-028f22285fcf', '3efc671f-7bf6-5b65-967d-be176592861d', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0a3a1d0b-c7e1-59a9-9089-aafd6b0e38e5', '267181b9-390f-58ed-906f-db1f60ac707b', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c0dcc394-1e6d-5a13-b489-6f87b1c8f4d8', '267181b9-390f-58ed-906f-db1f60ac707b', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eaa6f6c7-637d-5785-b9fa-64936310f95d', '267181b9-390f-58ed-906f-db1f60ac707b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cca7e896-d24e-5f75-a390-7c9dde03c93f', '267181b9-390f-58ed-906f-db1f60ac707b', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f4a4a181-c307-5732-be67-5e4b29204a49', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ced12a84-1bf2-5336-9e95-22ee1ef990f7', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a8b646c5-0c8a-5ef3-8a96-515d11e0e9a6', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cdfeab3c-f465-5d9c-96ed-11660b90f43a', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-19'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('71e230fc-9d4b-5c12-9d34-be6dd7baaf6c', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', 'joined_team', 'Joined U9 BOYS - WFA JUVENTUS', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d1425cec-f97f-5e4d-b749-c491586348c0', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c2d46a41-ec78-57b2-8c3f-ca2a1dbd1c91', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9d37e149-75d2-520d-aded-cf922d15dfd7', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0d5114c5-b8aa-503c-852a-2450b646ddc9', 'd96c1eeb-4d2d-5ad2-8bd7-82828b896c74', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('de58d227-62fc-5b71-a021-286ebe68d3d2', 'd96c1eeb-4d2d-5ad2-8bd7-82828b896c74', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('10f7cc58-ba59-5dfc-b9ba-32e7c3490589', 'aa777833-9a90-5eab-bb6b-f39847849be0', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2024-06-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af91fb80-e744-5ec9-a5ce-d5019556fedc', 'aa777833-9a90-5eab-bb6b-f39847849be0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3691c22d-bdf9-5250-a73b-2971c61973b8', 'aa777833-9a90-5eab-bb6b-f39847849be0', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2024-06-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('99104b37-2a6a-5e91-9008-8053a5ffcc32', 'aa777833-9a90-5eab-bb6b-f39847849be0', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2024-06-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9e14b641-9616-5193-924a-24afdaec679b', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1c089eea-d8c4-5adc-b53d-3db17d03f245', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8e4016dc-dce4-5a28-975e-1b4c10168f8f', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('055e0f72-eb34-5874-8f5e-f589205fc653', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f45a7ed4-e038-5d01-ba97-e201fb10fa0e', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('006c5783-4be2-5d13-9f57-40de0f2140e6', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3d416369-91f9-5bbb-b9b0-d17d9aaf0196', '14413f5d-a90a-5e28-ab68-1be165c36e0a', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('349d884f-ab46-571f-99a9-5e7a4d4c6ca3', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1358f48d-061a-59b3-b1ad-2611b96b6cf6', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aed7e5d5-df85-5326-bb71-257c012670a0', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('25b61193-75fb-5305-9a33-79d965199896', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aaa23133-a61f-53db-a8cc-764cb115cb17', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1a6d8f68-3d5a-5cf4-b664-8a59a06fcd75', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d226e01e-2d9d-57f3-8269-323ac7eeff07', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4f988fb5-69e9-59ff-9005-4ae4ec00c07c', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fffdba44-2de6-53c4-b250-9935b0dfbb0d', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6d88dc96-2aa3-588f-aefa-f1369713e03c', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d2e18eda-c711-5ed4-85d6-1391bcd81ebf', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ec77edae-f3c2-541b-9d49-c41fca8bd190', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7d4e57a0-b658-5df2-bc93-39aa85ba0452', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2025-09-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('81f2fec9-75f2-5089-96d6-ea1341358a74', '968d4275-fc29-55aa-af35-9fa11897f0da', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2025-08-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('883a8417-ddf1-566d-bbbe-11ee4a44086e', '968d4275-fc29-55aa-af35-9fa11897f0da', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c559a050-8cd9-5630-aa86-f074d314421a', '968d4275-fc29-55aa-af35-9fa11897f0da', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2025-08-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7ba26d56-d0bc-5cc1-8dee-b2b97e1ae4b0', '968d4275-fc29-55aa-af35-9fa11897f0da', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2025-08-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c29a0c8e-680c-50e8-ab85-211e31803963', '80590dde-bd9b-57fa-8885-831f04d1f117', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7dfc380e-ee74-524b-b73e-40ce9707f865', '80590dde-bd9b-57fa-8885-831f04d1f117', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0d1b894c-fd98-5136-8a33-75396c9192fe', '80590dde-bd9b-57fa-8885-831f04d1f117', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-07'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('76c5ee0c-7dd9-5758-82d1-7c326e65a868', '77930f2a-c9dd-59d7-9680-252b36912223', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42779fb6-4c4e-5a50-8c31-5db0f4776f84', '77930f2a-c9dd-59d7-9680-252b36912223', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2afbb480-1a61-5ebd-938a-4a6d88c72551', '77930f2a-c9dd-59d7-9680-252b36912223', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c7cf9769-6c88-5a3c-af2d-1831ceb28839', '77930f2a-c9dd-59d7-9680-252b36912223', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fd66b5ff-0fed-5b4d-b8b2-96b93788e229', '77930f2a-c9dd-59d7-9680-252b36912223', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('34fe10f3-cfd0-510d-8c5a-d1ca6dea26f2', '75597304-5511-5a10-9f18-d453329e94b7', 'joined_team', 'Joined U9 GIRLS - WFA NAPOLI', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3b253ed1-5c4e-587b-b9a4-88730a1e8ff4', '75597304-5511-5a10-9f18-d453329e94b7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f3e3267f-3ae2-591b-8b11-8b39bf852ecf', '75597304-5511-5a10-9f18-d453329e94b7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c1d14766-5a2a-5009-9d38-16b6572bc618', '75597304-5511-5a10-9f18-d453329e94b7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('860baf9f-c638-5cba-bb8e-d523e7e46f3d', 'e9a5a24e-7da4-5e06-baac-1ad48e67e5bf', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c7f9b448-e160-592c-95f3-176b841418ac', 'e9a5a24e-7da4-5e06-baac-1ad48e67e5bf', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('eabe051c-d828-5554-9dd3-6eb05245cbba', 'e9a5a24e-7da4-5e06-baac-1ad48e67e5bf', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-21'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c7e4e00b-611d-5b32-87ab-8a3fb8116364', '85d3901a-24ce-575c-9534-e2a416b6f54e', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('596dd47c-d24d-5c6b-a0cc-85674690575a', '85d3901a-24ce-575c-9534-e2a416b6f54e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1911a57-43d8-5c62-9b4e-fbba04519971', '85d3901a-24ce-575c-9534-e2a416b6f54e', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('57cd2cff-2ea2-5316-bed3-d311d7e9bbe7', '85d3901a-24ce-575c-9534-e2a416b6f54e', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bddd5899-c451-5bd9-9db3-f1c69626ab6c', '10db1869-c011-5514-a0a0-4f988604c492', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('78c25494-6d1c-5b82-8e89-018cea2271b9', '10db1869-c011-5514-a0a0-4f988604c492', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2024-08-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a440b82b-f949-5717-a076-58205eae9e58', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('01b75a0c-d626-530e-826a-fc436dce20b0', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('788fa7e4-d180-585c-8931-fb3e914a3be9', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('51d329a5-77de-5495-8696-850126cda052', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('52788f85-3c4d-5c83-927b-e7af060314f9', 'b2574d71-38f4-5208-b5b0-b7de388a9358', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1444988a-6c2d-5cb0-9322-2aa757b47199', 'b2574d71-38f4-5208-b5b0-b7de388a9358', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('da04269d-8a89-59f1-bf81-e0649ecaced3', 'b2574d71-38f4-5208-b5b0-b7de388a9358', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f43f472-3aee-5eb7-8a76-a1e048eb78d0', 'b2574d71-38f4-5208-b5b0-b7de388a9358', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-09-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9e671d4d-00ef-540b-b07e-ae18c56e1f2d', '16e2802f-be3d-540f-9f23-3a91e319e0ba', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d1e2c269-640a-58e6-ac83-8ee543435cb4', '16e2802f-be3d-540f-9f23-3a91e319e0ba', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b6effe0e-42ec-5d4b-8058-8e9828c64328', '7122ffc3-42d2-584b-aff0-99900bb28710', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c034445c-4cba-5bde-bedc-61557fff14aa', '7122ffc3-42d2-584b-aff0-99900bb28710', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('02747aea-c1d1-5ef8-960e-1f8c8ab24a8a', '7122ffc3-42d2-584b-aff0-99900bb28710', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2023-09-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f2d8d7f9-ff19-5c3a-9c15-404c5f7e45e1', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5404b5e3-505c-5a7a-b012-65e3fed08f43', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07a102bc-a803-5a4b-ae11-85aba87665c3', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6180ed6c-ce19-59af-a74c-9f489f5ef52b', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5302c179-80aa-5008-8acf-420633e569e7', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dd0ce228-f138-592f-b16c-5ccd5e3429e5', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('10444f43-40a7-51f6-a5f7-3e1092ab436f', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ae7e3007-ef07-5690-9723-1e43220423a0', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('37939dd3-1c35-504b-9aab-c01f412c393c', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e1326175-8a9d-5eb9-9600-3f87bd2472e0', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('83c907b7-9ff5-5534-a0f2-cc19c9844248', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e05d49a0-92b8-5ba9-9df6-506b64ff282e', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('58df45c8-cc40-5498-a711-e7ec3a6d12f6', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6dde685d-ecd1-5c56-9542-eb268a640537', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('81192c5c-e300-56f6-b80e-8f38e985030f', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4759b894-1710-5321-8856-11f67dc15ea4', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('102a78a7-a9f1-5aaf-9f99-1d01d60759f4', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32b89ceb-aa63-562a-abbb-1d0e4f9fdc1c', '29533d00-d286-59b3-8fd0-bbd2cf522d74', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0ab8ce39-54f3-5888-bd7d-c8c7a18e700f', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8b265b0e-296b-5530-9094-6b9db752292e', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0fb60aa3-aa2a-5c92-bf61-51a239642d03', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d9d1acc1-af6c-570f-aea4-92eb3e4d4642', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ea8c5f68-648a-592a-acb9-ee124d278094', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('90210427-f627-5c17-9e07-605e297005f8', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cc61efc3-9b3a-5d1e-b7f4-bf71111a7276', '8b1d94da-27ea-5032-b430-a40613c0732d', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5c0e7197-a158-5381-9e3c-a50a609cfce1', '1d482bba-09dd-56df-a9ab-6aafe3209b91', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b47c73bc-d881-504a-87d7-cee1166c5753', '1d482bba-09dd-56df-a9ab-6aafe3209b91', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cef4fdcc-d4c0-5c21-9936-8e1db41e2cb1', '1d482bba-09dd-56df-a9ab-6aafe3209b91', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fb60f132-b8e3-50c2-8ec5-60c53fc71636', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', 'joined_team', 'Joined U11 GIRLS - WFA MANCHESTER', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('46fb8c09-354c-561d-a2bf-1683271bf9a5', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ba0cd4a-0e9e-5e7a-ac61-d9dc28a27a97', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a14eaf5a-f938-5ca8-8c84-795f944b934a', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b047ac2b-48ea-5895-aa48-c2e0eee38672', '57347a63-a410-59c0-830c-29b18c1ed37d', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('44f335d3-8673-5146-9a66-b645e5868b50', '57347a63-a410-59c0-830c-29b18c1ed37d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b93e724f-3167-5c03-bb82-80ee68048214', '57347a63-a410-59c0-830c-29b18c1ed37d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e2535fcd-fc74-5b97-b2c5-a54e536ef431', '57347a63-a410-59c0-830c-29b18c1ed37d', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('01815846-4137-5256-959e-043f9071af67', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7feae23a-61d9-561f-b663-e19bfc09f0e2', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dbd3a0ef-2291-5795-96fe-a9cc5e332151', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('48e9cf6e-1b43-5880-b6ca-f5b3f48ed75e', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f2770064-c6eb-5d39-9888-73603cce764d', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-11-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d9ec3696-715c-5c3c-a511-66851c07be76', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_team', 'Joined U13 Girls - WFA Racing', '78bb41ca-cf27-53dc-808d-f39794248027', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ff2ef294-54d0-58ca-8b3e-7840439f2fea', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('efb27c5b-e3a6-5396-b24b-89f42a932089', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d234c578-82fe-537f-9024-15b4c40582cc', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dab37708-0c7c-5c7d-bb39-9e722d720924', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('98ffb116-fd0b-52b0-9598-b978d49483e5', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('74de4d04-8dac-5e82-8cd7-29d5a38d124c', '54c355ad-4ef7-548f-a21a-1d5d42babf4f', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-31'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a80f675a-ebea-5730-941f-3c49c71b1a7e', '5db8a455-3047-59df-bf5b-6ff070ab6fc2', 'joined_team', 'Joined UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '592537b2-aa53-5623-b5ed-1863ebc853e2', '2024-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a995da4e-8483-5ebf-bb05-8ae478ed7dc5', '5db8a455-3047-59df-bf5b-6ff070ab6fc2', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('40698ece-1763-51a5-aa86-b0a0bd84da53', '5db8a455-3047-59df-bf5b-6ff070ab6fc2', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3185b84c-c434-53f1-b056-9fd07dfeb23c', '5db8a455-3047-59df-bf5b-6ff070ab6fc2', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-11-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('53276eab-c6f1-5f45-8478-ac2fa781d4ab', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('99dda1b2-13f7-5085-8aa8-d81a788ab74c', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae152349-ec18-58d3-a40c-ab495059ece0', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('129d7d3a-c8a5-5ec5-b21c-0e3eaa4ff089', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b329f134-d3c1-59a0-84f1-da023a810719', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9f13a964-5f62-5ed7-a225-4c8b2c408596', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1030e56a-fa6b-5bf9-b2df-15a21d4e10b3', 'db4d7107-4211-57ce-9ba5-4213313c4a21', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('51fe3af1-5595-549b-b6af-f027c24c05e8', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_team', 'Joined U7 BOYS - Skill Development', 'b4dd8004-bf90-5284-8d50-4e9857519b35', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('41b8e0af-bfb6-551c-a7f8-c70997649e4e', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('826fd9bb-f2a7-5aa3-9d26-eb3b4b52f776', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4114e0f0-e665-5a66-9957-a164cee945ab', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f5c0f0fd-7505-571c-b646-e3a64d9737ff', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4c9dbde6-a97c-5791-b4f5-583850721355', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bce7b989-eb18-5e26-a10d-45abc5dbf371', '022f8144-164f-528b-a5be-e2cdc6f1346e', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-12-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b3bf2289-6681-534e-9003-b45a98eb7afc', '9cc41e27-b47c-5ad3-b4b0-0a390bcec910', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2168fcb0-4496-56c1-b94c-4b1bdafba40e', '9cc41e27-b47c-5ad3-b4b0-0a390bcec910', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f60d5015-9b9b-560d-9f67-5b0c7fe3526e', '9cc41e27-b47c-5ad3-b4b0-0a390bcec910', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-08-14'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('3d9d127d-26b7-5457-aec6-9994781a5cd6', '96dfaecd-1a9b-58cd-8378-7a62104aba95', 'joined_team', 'Joined UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '13996698-0676-530d-b767-bf32d51648cb', '2024-07-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1d57dc23-8a50-5866-9963-cad643f47898', '96dfaecd-1a9b-58cd-8378-7a62104aba95', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-07-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b68310ce-cf7a-51c2-9029-5f735d09e164', '96dfaecd-1a9b-58cd-8378-7a62104aba95', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '84755158-136f-58df-ac69-f306c87e7884', '2024-07-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9aa119c8-cc36-5084-b43b-e49e2749dd47', '96dfaecd-1a9b-58cd-8378-7a62104aba95', 'joined_group', 'Added to UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', '8906b706-d060-5f42-b235-627dad51e5c6', '2024-07-09'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('53624e7b-06b2-58d0-8b79-57f4a5b8b430', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f6a680a1-f525-529b-9c38-2fa885d042b6', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('52df9224-d547-5f99-9ace-e23b795b6465', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ccff287-804a-58a6-8420-a7a344afe6c9', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ebea7bbb-2e1a-5933-ab0a-2d04c7ae167c', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('39f09eb0-db7d-5ca3-a1d7-92f29eb1dfad', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d86e1828-0a03-5cf6-9818-141bea5cc8bb', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e3acf61-193f-5e47-9112-71f9c6bf52b2', 'e8a58e96-7194-5350-bbef-e8f449d568e1', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fa376e6c-4b4b-5659-889b-ed05d8b501af', '4c663925-5dc0-5fe0-8e22-7494ed1c21f3', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-10-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be734eac-710c-55c8-a6c6-45975bd17861', '4c663925-5dc0-5fe0-8e22-7494ed1c21f3', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-10-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a9b921cf-84d6-5764-a468-05919a872dc9', '4c663925-5dc0-5fe0-8e22-7494ed1c21f3', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-10-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42fdc6f8-664a-5753-9e88-bc5a2780edf0', '4714649e-d2c4-58d5-b69e-03386944efcc', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('23ad6a55-63f2-5fed-9d34-4357b6ddfeb1', '4714649e-d2c4-58d5-b69e-03386944efcc', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c8e13a75-e15a-5d4b-9014-a977670a01c8', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2db5b5b2-a31c-50d1-908e-ce2046ef69d8', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bec77f95-c31e-5c10-900d-f5c837f94b9e', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3ec242ea-5f38-5d95-b90c-5bfbcac8fa1c', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1973cf2c-cd39-5c39-8616-2454ae0f1b09', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa3785fc-e436-54ba-8daf-4f78de4f9ce1', '4e617f55-c967-5133-bd24-1a5fb30cf683', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0ddccd12-58f5-547e-9c6d-fe22866c3829', 'ec70e6c7-809c-587a-a46c-259a74ce80e8', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('907d4011-6f58-5d83-a732-6de1aa9daf17', 'ec70e6c7-809c-587a-a46c-259a74ce80e8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('72de7f59-2665-596e-8c2e-7f0c3b597705', 'ec70e6c7-809c-587a-a46c-259a74ce80e8', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3a730a2b-8eeb-57bc-8985-e2370b144f58', 'ec70e6c7-809c-587a-a46c-259a74ce80e8', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('93781bdb-6ec1-5b28-bf47-f364024778b2', '5ad53a9d-ae15-5e15-a880-f3be0d490fc9', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a6a1ff52-90e1-53ca-b1dc-7478a225b6a5', '5ad53a9d-ae15-5e15-a880-f3be0d490fc9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('906a0e65-a552-5342-b0a3-a4ff6df55aa7', '5ad53a9d-ae15-5e15-a880-f3be0d490fc9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('240f9de2-8bec-59e6-9c16-141ff87002ff', '24df5d46-df9f-59d1-a06b-bd439a035833', 'joined_team', 'Joined UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '85848519-a741-5999-8633-31d5fe0bfd54', '2024-11-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bf7c190b-77da-5a78-b0a4-b8a0aa849a76', '24df5d46-df9f-59d1-a06b-bd439a035833', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-11-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5cd6750d-bf06-5fde-8f47-a33bb23c1eeb', '24df5d46-df9f-59d1-a06b-bd439a035833', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-11-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abb29729-b237-5767-a9ec-d97cb6d78789', '24df5d46-df9f-59d1-a06b-bd439a035833', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-11-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('03b5784d-cc92-52b8-86dc-e581c776c9bb', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c943cb7-c0fc-59ef-a35e-8089a7d9ef44', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7093ec2b-91ba-5c48-bb21-1da59b8d0a01', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('03b5784d-cc92-52b8-86dc-e581c776c9bb', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2026-03-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6c943cb7-c0fc-59ef-a35e-8089a7d9ef44', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-03-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7093ec2b-91ba-5c48-bb21-1da59b8d0a01', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2026-03-12'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('50418b01-a6fd-51cc-a975-0a3d7a79fcdb', '020a0987-b368-58b6-bd00-212aaf960c59', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bb00ae38-3f19-561d-8d99-dca69b481648', '020a0987-b368-58b6-bd00-212aaf960c59', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6b6c3d2a-c721-572e-9ebb-d6c21a1e53f2', '020a0987-b368-58b6-bd00-212aaf960c59', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('53fee930-2ac6-5315-9460-83127a15a63e', '020a0987-b368-58b6-bd00-212aaf960c59', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('606dab8d-ff33-5b78-b6fb-8d6472ddd0a7', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('228024d5-35d7-576f-a704-6985c9adb1e2', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('60b719e7-ecea-57c1-bdfd-6ef4bea8e9ed', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d93dcd48-17f3-510f-8fe2-ddfae04401a6', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a96dfe1a-7032-5e20-9ea4-9c900aa0a770', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5a63d917-597a-5d02-941f-4175ea701233', '7e351d31-8753-571e-9720-8554e2ba0353', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1c86a01e-12b0-52e1-8abe-07afc0051a1c', '7e351d31-8753-571e-9720-8554e2ba0353', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ae58c776-5038-5054-9696-a648b79ac442', '7e351d31-8753-571e-9720-8554e2ba0353', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('47fbe5de-5e4c-58bf-96ef-097f962bc9a2', '7e351d31-8753-571e-9720-8554e2ba0353', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('516c3b67-7082-55dc-aadf-96804209d2db', '55449e30-6d33-52a4-97ec-99fbc6fac475', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e06ffbb5-eb31-50f5-8628-0fc6b3da515f', '55449e30-6d33-52a4-97ec-99fbc6fac475', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d3e80473-1948-5668-ab60-85c56b7adb84', '55449e30-6d33-52a4-97ec-99fbc6fac475', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2a948310-d96f-5966-bd57-125c000b708f', 'ee84ebd9-2136-54f8-b734-ced968356c0d', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8d5040ac-a33c-5b0f-ba65-867de521b860', 'ee84ebd9-2136-54f8-b734-ced968356c0d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e078fb24-9ad0-504d-9f79-de5b5256d129', 'ee84ebd9-2136-54f8-b734-ced968356c0d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be8178c7-d001-5d56-9e88-07e004432f14', 'ee84ebd9-2136-54f8-b734-ced968356c0d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e26f5dae-5309-546e-beef-c34b3091d990', 'b0cff1f4-e151-55ab-94b7-68012d66fbbe', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('09eab3c9-4c07-587b-b1a7-a6f55cbbef03', 'b0cff1f4-e151-55ab-94b7-68012d66fbbe', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-11-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('32674eb6-9bd5-51ef-972a-08bec40246a1', '6d3a6b1b-90a3-506c-9108-674372413b24', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('43af867a-1f9e-5358-995c-62c1cf16b5c2', '6d3a6b1b-90a3-506c-9108-674372413b24', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ac51a2dd-93f2-5b8c-ab0e-20b0419a78dc', '6d3a6b1b-90a3-506c-9108-674372413b24', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1c56f75c-0e4b-56c1-b310-06af6125a032', '6d3a6b1b-90a3-506c-9108-674372413b24', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-05-22'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('57302e81-e125-5039-98a0-854b529a1157', '847e9a91-af85-5418-b4a2-071b93215730', 'joined_team', 'Joined U11 Girls WFA Liverpool', 'd429f04b-ccfe-5075-95b2-8025c5579420', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6e4fb1e6-72fd-5130-90b6-ad27739761ff', '847e9a91-af85-5418-b4a2-071b93215730', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('337bf863-bbd5-5afa-83b4-e27f0435060f', '847e9a91-af85-5418-b4a2-071b93215730', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '9249bed6-d509-5ac2-9d05-9cf542800a5a', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('00563704-9db2-54a7-bd01-970e722d3214', '847e9a91-af85-5418-b4a2-071b93215730', 'joined_group', 'Added to UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4a75d151-63db-5bc7-982b-752cfb2e648a', 'c8484b64-a79a-5d1c-85db-ad5dda7ff182', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2024-06-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('92a9ddbe-9d35-56da-8290-db83533ed508', 'c8484b64-a79a-5d1c-85db-ad5dda7ff182', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-06-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3439d7aa-8800-5d99-a875-819846771efa', 'c8484b64-a79a-5d1c-85db-ad5dda7ff182', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2024-06-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('794dfaab-9d22-594e-99ac-4fe818655160', 'c8484b64-a79a-5d1c-85db-ad5dda7ff182', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2024-06-01'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('5377d696-a933-5e15-bd12-7d095ea91358', '8cb20e7e-bdcd-5494-a260-0c92e892f380', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8ee876bd-9457-56b6-9e3d-a3f74bf71c82', '8cb20e7e-bdcd-5494-a260-0c92e892f380', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a9a5cc42-fd3f-50e2-afbc-8db70879c191', '8cb20e7e-bdcd-5494-a260-0c92e892f380', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2f594e2b-e4df-5b57-985b-ed72d92ef091', '89b7d78b-6c4c-5b23-934a-4ff507c9f35d', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('17199e8a-bd72-5267-8615-72b8f950244b', '89b7d78b-6c4c-5b23-934a-4ff507c9f35d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c7660083-1083-51f0-9520-94433c368442', '89b7d78b-6c4c-5b23-934a-4ff507c9f35d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('75340a39-2e18-56e3-b66c-96499663060d', '89b7d78b-6c4c-5b23-934a-4ff507c9f35d', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('015707fc-c3ec-58f7-b5c2-d8e45b53abca', '87042eb2-fc2c-5407-8f67-008a156699dd', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('172a1f05-5d53-5998-bd2f-e3fb45d79695', '87042eb2-fc2c-5407-8f67-008a156699dd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aab44483-eb41-541b-b83f-503fbb86da17', '87042eb2-fc2c-5407-8f67-008a156699dd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a7d557d3-a2f7-5225-9466-60a7b0b1a3a2', '87042eb2-fc2c-5407-8f67-008a156699dd', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4fcd4e84-cff3-51ac-b212-e0da9ae5bb90', '7ddaa62a-c490-51cd-8fc6-590b0819c4a0', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7d332aed-e14d-501a-be74-ac45129479aa', '7ddaa62a-c490-51cd-8fc6-590b0819c4a0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b850bf33-4073-5ad7-8521-9bc1106e6929', 'f1648a61-beba-596b-af87-fa35f6455c0c', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b99ee61f-0cf9-5c36-afde-f01a1c9a8b99', 'f1648a61-beba-596b-af87-fa35f6455c0c', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('47ec3e8a-b190-53e9-879e-1d0adee2507f', 'f1648a61-beba-596b-af87-fa35f6455c0c', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('244777bc-3f8a-5485-890f-3747d5f7af2a', '72ac8d6f-6111-5b44-9af5-2885730cf1ee', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9e6b1888-05f6-5dbc-b565-36def214e0ef', '72ac8d6f-6111-5b44-9af5-2885730cf1ee', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('da1bc69a-b13a-5d4a-ad69-065fa6a7eef1', 'c985c5d3-9940-5f09-9b99-e5ab8b225442', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('df09783d-8c6f-5164-bd5e-4c9e0245b6f9', 'c985c5d3-9940-5f09-9b99-e5ab8b225442', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('eefba953-2b99-5309-8d99-f76a106c8674', 'cfe82441-a92d-566f-accf-b806798fe288', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f930a398-9a4c-5fd8-a731-d4ef178fbb3a', 'cfe82441-a92d-566f-accf-b806798fe288', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-20'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c8a711cb-0222-5ded-b0cb-cb22dc688223', '475ce980-35c5-5772-962b-effb5928ced6', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-12-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('363170d2-167b-53d3-9406-26e425c33288', '475ce980-35c5-5772-962b-effb5928ced6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-12-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d845fd52-9e19-5d0a-9d1e-730874efee31', '475ce980-35c5-5772-962b-effb5928ced6', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-12-16'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('7bbe479a-7998-5fb8-8eda-ba852ec37b64', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('dddbf342-2749-5b73-8624-0059da424b51', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7988e304-3df7-5f85-b10d-d249e29b422f', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('9123d8f0-3cc2-577c-a57f-adc721473ee0', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fab0cef5-59a0-527a-88a6-8e8e38cea85d', '0504a4d1-e764-51c7-ab58-ba5d15266535', 'joined_team', 'Joined UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '2599ff26-c327-5a9a-8363-e645555d32c5', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1cf1e22a-4613-5740-b681-5d6f70a9bd7b', '0504a4d1-e764-51c7-ab58-ba5d15266535', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa189f55-6385-5dc5-96d9-98ce7aecc75b', '0504a4d1-e764-51c7-ab58-ba5d15266535', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('82dd49b4-a23f-5e72-8988-eda7688ed455', '0504a4d1-e764-51c7-ab58-ba5d15266535', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2026-06-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('788cd701-cdf1-53db-ab71-14814ecc8d92', 'd1980217-59d6-5ec3-8826-6f5b2a1098e5', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8f8e71bc-53a3-5bd4-afda-28ea94dfd983', 'd1980217-59d6-5ec3-8826-6f5b2a1098e5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4d536ada-19e7-50d3-b7a6-e05fd77a5d6c', 'd1980217-59d6-5ec3-8826-6f5b2a1098e5', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3e017cd3-819c-5aff-98ca-ecb6656d47f9', 'd1980217-59d6-5ec3-8826-6f5b2a1098e5', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('2eb4d68e-6a75-58dd-80ad-92b1b068bc88', '34048e3c-e792-5f50-af89-11de0b264280', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1afca717-57cf-5634-a511-befe49c1f042', '34048e3c-e792-5f50-af89-11de0b264280', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('887229c8-ff9c-585a-ac01-9fb10167d8ce', '34048e3c-e792-5f50-af89-11de0b264280', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2026-01-08'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('56ac7fed-c98b-5eb7-99d2-ec8bf5a105dc', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('65b3d926-367f-59dd-9456-0b8ad509654f', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('415bb412-0f70-5fa9-9bb2-16ec59650c89', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('38c76778-1f96-5dc9-b561-ea9049fce0a2', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('df90a3e6-5949-5604-9824-89b6b4316a16', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cd27d83d-36dd-5693-8eed-5b247f83ed5f', 'ec1c9152-f822-59df-9a4c-c5499040cabb', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('66f3fc8d-e9de-55aa-a62f-16e2e43bd623', 'ec1c9152-f822-59df-9a4c-c5499040cabb', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8f8f3a07-5f63-5a6f-9fc8-adaee8e14724', 'ec1c9152-f822-59df-9a4c-c5499040cabb', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('251452be-f77a-5740-a1bf-99ac8b41c8fd', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f40b86bc-b806-504c-b3a3-11a046f26d40', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b08a5d4e-88df-5032-a525-328ed9ec3daa', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('abead3a7-83cf-5f56-90c7-bc4c11159f79', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2c811f36-2917-5869-82c8-9239fa5c25d9', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('404fb99b-990b-50f5-8f5c-70bbef29dc2d', '14186bc8-3a68-572b-b1e6-2ab461709499', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f943f53c-16d5-5e48-abba-a4915d0224cb', '893e08e5-5f45-529e-b677-ddffe1fadd5d', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('3246c0d0-8a03-52c1-9a4b-65d682649497', '893e08e5-5f45-529e-b677-ddffe1fadd5d', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('07c650f3-5810-5f61-800a-3bdc4a4a2cff', '893e08e5-5f45-529e-b677-ddffe1fadd5d', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1280ea43-177b-55a5-9b2f-7e94dc8af1f8', '893e08e5-5f45-529e-b677-ddffe1fadd5d', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('46c360e0-2059-54b6-bf38-f930cf1f9985', 'e5724a31-11c1-5586-b302-9ec6e5e47257', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-10-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('afe51175-d4db-5044-a254-72f83ae56a69', 'e5724a31-11c1-5586-b302-9ec6e5e47257', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-10-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('11c4b08a-ca75-532e-b404-7c36064ad479', 'e5724a31-11c1-5586-b302-9ec6e5e47257', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-10-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('546667e8-50f7-5f19-b476-0e80ad20c8ea', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('773acc54-638a-5f98-b8c8-394cb9a9cf51', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e3564e23-916d-5c72-8bae-5724025b327c', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ec94408-2923-57f7-9a33-d141907e5c37', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32715e0c-69c2-5954-a428-1f25469ac634', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-05-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('546667e8-50f7-5f19-b476-0e80ad20c8ea', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_team', 'Joined U7 BOYS - WFA BARCELONA', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('773acc54-638a-5f98-b8c8-394cb9a9cf51', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_team', 'Joined U9 BOYS - WFA ROMA', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e3564e23-916d-5c72-8bae-5724025b327c', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5ec94408-2923-57f7-9a33-d141907e5c37', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('32715e0c-69c2-5954-a428-1f25469ac634', '24986009-8615-533a-9442-0a38f81ff8bc', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-11-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4ca35311-b9b0-5c8c-9ab1-8acde2a23358', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d5695f9c-b364-5b7c-9ce1-4b3f4e5ee5c2', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bfe721e7-5517-5a97-a262-e1052f7f5140', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('928e5ade-6be5-58c0-a352-d8f66045c6a9', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('35b98417-9d5b-595d-80a7-761c96471e62', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4ca35311-b9b0-5c8c-9ab1-8acde2a23358', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d5695f9c-b364-5b7c-9ce1-4b3f4e5ee5c2', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('bfe721e7-5517-5a97-a262-e1052f7f5140', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('928e5ade-6be5-58c0-a352-d8f66045c6a9', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('35b98417-9d5b-595d-80a7-761c96471e62', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2024-10-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('55d9d5ae-bba8-5a9d-a803-ea459757615d', '87d27f54-288b-5fb8-9f3f-10a77d33aa1a', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('04ae4dbc-f2ed-579f-af78-9f8c557e8e96', '87d27f54-288b-5fb8-9f3f-10a77d33aa1a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d2579e47-da1b-51f0-a1fe-3ef07d1b35e0', '87d27f54-288b-5fb8-9f3f-10a77d33aa1a', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0df7d10a-a231-566f-9bcb-ca1d9d2b53d3', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8820fd64-bf32-5cf6-9d45-d7aaa2795ed0', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b4e704b5-3025-59d9-9bdd-aa6fa83d5389', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('605841ef-c06a-5203-999a-caf09157bc04', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('4bb821a8-fa19-5ac9-ad3e-ce3e79f09642', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('0b4a7f62-8fa0-5b04-9a4b-4a11792756b7', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_team', 'Joined WFA U13 River Plate', 'ba762b40-3757-516d-a112-e479d13a38b4', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cc390235-41cb-55ea-9db3-0cb706d7cee6', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b5a51f2b-c9ca-5f20-a0dd-9a1cd89a165a', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d1c1e46f-b3dc-5ae5-9eb3-b1e4895c5a82', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f8f8a1d-1015-5c89-87f2-e508e8433b87', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e82c0fc5-2090-548f-80f4-2271a516f9be', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('adbdc977-18ea-5276-9345-6c46bcd8e8f1', '9edd1daf-92c5-5134-aece-054ff4415f46', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-11-02'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('b807a1fa-3fd7-51c2-83b1-dae9c095dfcb', '74719f37-0d3c-573c-98f1-d2fee940f8b4', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c42358db-3e09-5908-b937-1b608943baa0', '74719f37-0d3c-573c-98f1-d2fee940f8b4', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('855dc207-2103-588f-87d0-d5f4f741233c', '74719f37-0d3c-573c-98f1-d2fee940f8b4', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d53cd610-fc26-534e-a0f4-a8c6f2856592', '74719f37-0d3c-573c-98f1-d2fee940f8b4', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5bcff239-18fd-59b9-b447-eb2393dc9e19', '74719f37-0d3c-573c-98f1-d2fee940f8b4', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2025-08-18'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('d20caf47-b1fd-5bc3-8851-34c96aafaba1', '84a0c88c-82f4-594b-b267-df244e02c1b9', 'joined_team', 'Joined U9 GIRLS - WFA LAZIO', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('62009bde-f209-5fc3-9d0f-d2441dfb3ab3', '84a0c88c-82f4-594b-b267-df244e02c1b9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4533fcc2-a8d0-5f9c-80c6-be3bcfdf91ed', '84a0c88c-82f4-594b-b267-df244e02c1b9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('97097ee8-8046-5d07-990c-ae79c7478217', '84a0c88c-82f4-594b-b267-df244e02c1b9', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2025-08-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('baf3777a-9480-5dc6-ae27-3a25ec0faeb7', '09a27caf-13d0-5ad0-a857-17d0a70c78f5', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('176b5494-3a9b-5555-a501-3e88a4addcfd', '09a27caf-13d0-5ad0-a857-17d0a70c78f5', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0a1a6afd-4d95-5324-8b69-7270721f23d6', '09a27caf-13d0-5ad0-a857-17d0a70c78f5', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4b8b235e-f521-51a1-b86b-7ee1abad227b', '09a27caf-13d0-5ad0-a857-17d0a70c78f5', 'joined_group', 'Added to UNDER 15 Girls - WFA', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('f3ad2e96-eea7-5114-96c9-3f51659ee9e9', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('60185d17-57ee-57cd-87f8-52288624df3a', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_team', 'Joined WFA U13 Boca Jrns.', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('dc894815-f139-5151-b86f-540ee6c1e647', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_team', 'Joined WFA U15 Girls', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('b21729a3-3e57-5396-a345-64d8d122f2df', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('af82d678-d270-58ac-b732-0c433ff672f8', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f6f053b1-c732-55ee-9796-17629bcd52b2', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d25bb5f3-aab3-5c94-816e-d51477407afd', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fbb0f192-3f56-5d0c-9bc2-9c332710a399', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to UNDER 15 Girls - WFA', '2ccf6e7f-2585-548a-9553-7edc763757e7', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('da49feae-b167-5641-818b-8c34add6dcd2', '61bdf130-24ab-5db4-8613-26ffd7c981b0', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-11-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('761e3be0-661f-5796-9a2a-915434256fe9', 'e9ee7d76-7538-5b64-8222-281cd85385dc', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c4bb8e64-e014-53c4-871b-6d69c7db3c37', 'e9ee7d76-7538-5b64-8222-281cd85385dc', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('60e0ad6a-1c8e-5446-9202-44609dc3bf04', 'e9ee7d76-7538-5b64-8222-281cd85385dc', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2dd47829-f6d6-5427-9a8c-b96d9f0b770c', 'e9ee7d76-7538-5b64-8222-281cd85385dc', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('6af45fc9-989c-531b-bbd3-5812e837f663', '4720f096-ce1d-57fc-96a0-24f226c6a518', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2025-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fa8af62b-6438-536c-adad-b1c643c52c33', '4720f096-ce1d-57fc-96a0-24f226c6a518', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('35f836d9-944b-539c-8eae-68ae50675152', '4720f096-ce1d-57fc-96a0-24f226c6a518', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2025-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('77adfeef-7d3c-570d-ad82-d25502b67603', '4720f096-ce1d-57fc-96a0-24f226c6a518', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2025-07-10'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('289142bb-0250-5d93-9194-07cd2edf94d4', '3ad6cfcf-c9eb-5d03-adce-664b20cfaea7', 'joined_team', 'Joined U9 GIRLS - WFA INTER MILAN', '5c9202f4-a20a-5379-85d3-73fce1d68664', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('66262bda-3a2f-5235-ab4a-43b906d1a1f5', '3ad6cfcf-c9eb-5d03-adce-664b20cfaea7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be48aa8c-9c3a-5e48-bdcc-4fd10d6a48b5', '3ad6cfcf-c9eb-5d03-adce-664b20cfaea7', 'joined_group', 'Added to UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'e0f757cb-a5aa-588c-9b23-362cef29dace', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cf651471-b587-5913-a6ce-765337a9b6be', '70365bb8-f94b-58f4-835a-9786b4ccb133', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-07-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('000806b9-26bb-5db9-90b6-c227b961a4b3', '70365bb8-f94b-58f4-835a-9786b4ccb133', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-07-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a40a3f6d-f418-59bf-bf5a-d22a7649befb', '70365bb8-f94b-58f4-835a-9786b4ccb133', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-07-03'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('20d4c324-7b3b-5b65-9b85-f7ee29183137', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c5f1ffaa-fdad-58de-bc95-37c81dd10f5a', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_team', 'Joined U7 GIRLS -Valencia', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e506f79-f89e-593a-8d0f-0511ae4558f1', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('49ff0f6b-f3f0-5c42-aaa3-1f3664ac719a', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('e4901920-fb06-5582-b6ae-581247821a6b', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c85c7348-c397-5c0e-b800-724d5720ee00', '0fe97380-3602-55f8-a505-c1e1f2dec853', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('1fc30afc-59d3-5465-aea1-d3aa2abaed59', '16493453-cc88-5a14-a55e-ee468942fba9', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('c201e48f-7903-578e-bc14-7b7272bd1553', '16493453-cc88-5a14-a55e-ee468942fba9', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8902bd53-02c3-5104-aa14-7f6125e7ea19', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', 'joined_team', 'Joined U11 BOYS - WFA AJAX', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5e3f2846-2a86-5acb-b6df-63ea2903ad42', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('871070ad-a6a7-5b36-b124-2700fd1e8c2f', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d56817e9-b5ef-58f9-b8b0-a97c28263ac7', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2023-10-26'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('a0e48a67-a642-5e88-b2db-bd869fc83576', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', 'joined_team', 'Joined U7 GIRLS - WFA ATLETICO', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1669cf3b-768c-55fc-bdd5-8f72d9d81190', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0d813aac-1809-589d-8cb8-efbb6347680b', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('94ea22fa-b2c3-52aa-a70d-6efbcb846b37', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', 'joined_group', 'Added to UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', '2023-11-05'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('ac6d3a26-d097-5327-94be-e7a1686da745', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_team', 'Joined UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'd54156e1-d5f0-52db-a6c2-128299971aca', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('fdf49bc3-ffd3-5c0c-8ae7-aff0bb0f8c4a', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('8875e4f6-0c83-53b7-bf57-bb1e3a363a10', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('a9c426fc-a4b5-5679-88a6-edc0c30c8587', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6f378082-f62f-5625-a4f0-f97517e30d5d', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7bbb7de3-d0a6-55b0-9509-ad30eeecf449', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_group', 'Added to UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', '5b049702-f770-5b9c-afe4-491ec2839ccc', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('09ace9e0-e276-5556-b417-5187b2512e4a', '207f46f7-69ec-5015-bb20-a9567b31a4f9', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'daa11b3e-56dc-5138-bbc7-f3095a858519', '2023-10-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('42f8cfed-4b01-5b94-8139-7f7e05bdd522', 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f3968b9d-0650-5c03-a425-b696c1aa54e3', 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('05b8a8e1-ba25-58cc-ba69-6643bcb15338', 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2024-06-04'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c1fb8390-0b97-5e60-93e5-ceecf8953a3d', 'ee7aa22c-1b66-5ec5-bbd9-8ec3db0f6900', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6ee17a42-677c-58a5-9999-d96d9b691ba8', 'ee7aa22c-1b66-5ec5-bbd9-8ec3db0f6900', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-29'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('08f3c628-7588-5935-bfa7-5c88e6260a85', '18598115-6ffb-5b27-8291-464dba3ec587', 'joined_team', 'Joined U18 Boys - WFA', '6a206973-9b48-5779-830a-7e9c58c1c367', '2023-10-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('2b121295-bf3a-588c-adac-cb8697043301', '18598115-6ffb-5b27-8291-464dba3ec587', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-10-24'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('326b28c1-5986-5321-abea-cee7f37a04a0', '32052cd6-f214-5bd6-9d9b-46836acc3893', 'joined_team', 'Joined UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('23834d66-f3dc-5a29-87b1-d958fa7701b0', '32052cd6-f214-5bd6-9d9b-46836acc3893', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6fefd090-12c1-52c8-8d6b-03e6a6866eba', '32052cd6-f214-5bd6-9d9b-46836acc3893', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e98d2c6-c663-53da-92b5-304a48e4befa', '32052cd6-f214-5bd6-9d9b-46836acc3893', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-05-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('e0717e6e-a55e-5a56-bb88-ffc0b8fa47a7', '7c79409d-1816-5dd3-b306-3b95034087d6', 'joined_team', 'Joined U9 BOYS - PAGET FC TITANS', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', '2025-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('1f660cea-c004-521b-9279-2599c59d5273', '7c79409d-1816-5dd3-b306-3b95034087d6', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2025-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('4f9c9ce6-0756-59d4-b815-c4abf7c19b92', '7c79409d-1816-5dd3-b306-3b95034087d6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2025-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f9e1de40-63fc-5321-a8e8-7b4780bbaec9', '7c79409d-1816-5dd3-b306-3b95034087d6', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2025-06-25'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('bd547077-1da4-51c8-88a2-efe5ee40a848', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_team', 'Joined U11 BOYS - PAGET FC TITANS', 'b475d58e-b9ac-515a-934f-4947683cec94', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('29527a16-0b9d-5501-958b-9e2ebd8f5536', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f9c8ff1d-f9b9-5607-96d3-9d039f37cd7e', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('25de6828-b972-5057-93a6-cc9763e44868', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', '0908b1ff-1e04-54a1-ba32-85635486e523', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('98f2ce75-f433-5243-ac49-d3b321f5ac24', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_group', 'Added to UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('50627099-2d7b-5778-ad6e-306b70fd0111', 'bb39fa18-288b-51bd-b91e-262e594f26a0', 'joined_group', 'Added to UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'd5789715-c184-570b-8a51-1086dc6df152', '2024-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('548b8c67-154d-5cf8-9341-e0ac5f813d49', 'a482284e-aa76-543a-88c1-a75ce9e1afa8', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('66e578d8-592c-5131-9942-d583bff7b31d', 'a482284e-aa76-543a-88c1-a75ce9e1afa8', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7e50696e-edc2-50dc-b9a4-4f66bb11b903', 'a482284e-aa76-543a-88c1-a75ce9e1afa8', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-09-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49fbdc78-afdf-5108-ae83-ef8b1351810b', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', 'joined_team', 'Joined U13 Girls - WFA Independiente', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('12c067f7-0bf3-5571-bdb9-db35bae30666', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', 'joined_team', 'Joined UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b6cdce3b-d0b8-5300-ac78-a87171506878', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ce87fc5c-515d-56fe-9df4-5210cb3b1e6a', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - GIRLS', '781dabf9-0181-5cb0-a944-77f9a367a5da', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('ad3fdfc5-43b2-5809-a4b8-3b9521f17514', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', '7501b3f1-042d-58cf-86ae-787cddc64a53', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('f73d75bb-0a20-5050-9f5c-5de5e30b894f', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', 'joined_group', 'Added to UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '2023-10-30'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49578660-918c-5c45-ad7c-988a7d7eafa0', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5894d3af-5798-5167-a082-9d2cbe7f8a99', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('041c0b70-c67d-59ab-a972-ed8c46be5e23', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be7d4674-493f-594b-b778-4fae24100f68', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-17'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('49578660-918c-5c45-ad7c-988a7d7eafa0', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('5894d3af-5798-5167-a082-9d2cbe7f8a99', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('041c0b70-c67d-59ab-a972-ed8c46be5e23', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('be7d4674-493f-594b-b778-4fae24100f68', '7605753f-5437-555d-81ad-4c523fcc364f', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2024-06-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('464940ce-3c98-5842-a2be-ae3e73dd1e8e', '5242ab96-46ce-533b-b39e-53db7715c560', 'joined_team', 'Joined WFA PEE WEE FOOTBALL', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7f9177ee-8d68-5e9c-9c62-90f7839d0163', '5242ab96-46ce-533b-b39e-53db7715c560', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('473653c9-5e90-5545-a04a-04c646e93848', '5242ab96-46ce-533b-b39e-53db7715c560', 'joined_group', 'Added to WFA PEE WEE FOOTBALL', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', '2025-06-23'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('8dbc001f-d0a4-5e97-83cf-52fc5ac0dd11', 'c88d7457-8b64-59f7-9545-6223e9b6a9ab', 'joined_team', 'Joined WFA U7 Boys Skills Development', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('724b02e0-b6fb-507c-a9f3-de30203cfa42', 'c88d7457-8b64-59f7-9545-6223e9b6a9ab', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('6a4c0eb5-d0c1-551f-a424-c579004f7ada', 'c88d7457-8b64-59f7-9545-6223e9b6a9ab', 'joined_group', 'Added to WFA U7 Boys Skills Development', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('aa824fce-4480-5e0a-ac0e-e4d3e2aee87a', 'c88d7457-8b64-59f7-9545-6223e9b6a9ab', 'joined_group', 'Added to WFA U7 Boys Skills Development', '6fe9342e-0706-50f8-bddd-52085fd46977', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('c03fd839-98dd-5db6-96f8-2a4bec4bf2ae', 'be5dbabf-3f8b-5087-88cc-74e38a571467', 'joined_team', 'Joined U7 BOYS - WFA REAL MADRID', 'bdb6fe27-1760-54c2-8521-da0632661582', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('44c5a844-3a1a-52e1-960d-71779ebf2fc0', 'be5dbabf-3f8b-5087-88cc-74e38a571467', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('d50cfec2-4888-5071-ad33-c0afeaa879d7', 'be5dbabf-3f8b-5087-88cc-74e38a571467', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '7f550912-1950-5632-b6cb-14756f0f0d6a', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('7d03ebb4-6166-53b7-b4d5-361408b5ebb4', 'be5dbabf-3f8b-5087-88cc-74e38a571467', 'joined_group', 'Added to UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', '2023-11-11'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('9b395fb2-7b50-5ad3-b8a4-0a836648024a', '82b5af6a-67ef-579f-bec2-fffb18b19b54', 'joined_team', 'Joined 2025.26 Players', 'ceb5095d-934e-528f-9586-8438fb95180d', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('0beb4ba5-952e-5e08-809f-f0305c4cd252', '82b5af6a-67ef-579f-bec2-fffb18b19b54', 'joined_group', 'Added to 2025.26 Players', '7027c540-2d27-5538-a6d3-374ad15bc587', '2023-10-27'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('cd292f84-0f5e-5701-b37b-e06b4ab09f3d', 'e5670784-e455-53e5-973c-ba4a102a97e7', 'joined_team', 'Joined UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '9f3d869d-fbf4-51a6-8b23-24a30be88214', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('cb4c4691-fb0f-5beb-a8a5-85073a057b57', 'e5670784-e455-53e5-973c-ba4a102a97e7', 'joined_group', 'Added to WARWICK FOOTBALL ACADEMY - BOYS', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('fc30583f-8445-5050-9623-0569639cf059', 'e5670784-e455-53e5-973c-ba4a102a97e7', 'joined_group', 'Added to UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', '2024-08-28'::timestamptz)
on conflict (id) do nothing;
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
