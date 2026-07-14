begin;

-- --------------------------------------------------------------
-- GROUPS (hierarchical) + team-pointer groups
-- --------------------------------------------------------------
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('076266b0-d8a9-5a86-987d-3b894d2c5454', null, 'WARWICK FOOTBALL ACADEMY', 'club', 'club-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WARWICK FOOTBALL ACADEMY - BOYS', 'club_section', 'club-section-warwick-football-academy-boys', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('781dabf9-0181-5cb0-a944-77f9a367a5da', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WARWICK FOOTBALL ACADEMY - GIRLS', 'club_section', 'club-section-warwick-football-academy-girls', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('e1abeac0-cbd8-5b40-b619-22720a4918e5', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WARWICK FOOTBALL ACADEMY', 'club_section', 'club-section-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('7027c540-2d27-5538-a6d3-374ad15bc587', '076266b0-d8a9-5a86-987d-3b894d2c5454', '2025.26 Players', 'club_section', 'club-section-2025-26-players', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('1e24ff4d-b25a-59ed-bee6-a6c124b23ed0', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WFA GOALKEEPERS', 'club_section', 'club-section-wfa-goalkeepers', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('8d7206f2-b0cf-540b-ae36-aeb6685ef860', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-15-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('2ccf6e7f-2585-548a-9553-7edc763757e7', '781dabf9-0181-5cb0-a944-77f9a367a5da', 'UNDER 15 Girls - WFA', 'sub_section', 'sub-section-under-15-girls-wfa', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('9249bed6-d509-5ac2-9d05-9cf542800a5a', '781dabf9-0181-5cb0-a944-77f9a367a5da', 'UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-11-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('7501b3f1-042d-58cf-86ae-787cddc64a53', '781dabf9-0181-5cb0-a944-77f9a367a5da', 'UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-13-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('e0f757cb-a5aa-588c-9b23-362cef29dace', '781dabf9-0181-5cb0-a944-77f9a367a5da', 'UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-9-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('0908b1ff-1e04-54a1-ba32-85635486e523', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-9-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('e7e74406-6a43-5608-9fc6-34cfbb769bf0', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'WFA U7 Boys Skills Development', 'sub_section', 'sub-section-wfa-u7-boys-skills-development', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('7f550912-1950-5632-b6cb-14756f0f0d6a', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-7-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('4e8be34b-8ac0-5e81-b666-b6724c34d9c9', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-11-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('ced4ef41-00bc-53eb-b399-6fb420efefdd', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-13-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('b9f2a28e-947a-5354-a07d-68641c6b8af9', '781dabf9-0181-5cb0-a944-77f9a367a5da', 'UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-7-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('84755158-136f-58df-ac69-f306c87e7884', 'c6bef716-1bdf-5eea-9fe9-a8697df3c6f7', 'UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', 'sub_section', 'sub-section-under-18-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('daa11b3e-56dc-5138-bbc7-f3095a858519', '8d7206f2-b0cf-540b-ae36-aeb6685ef860', 'UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-15-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('da08f0b8-07ac-5408-9ec2-2b711eaa7d41', '2ccf6e7f-2585-548a-9553-7edc763757e7', 'UNDER 15 Girls - WFA', 'registration', 'registration-under-15-girls-wfa', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('6d641562-6aa6-58bb-a6a0-9409fd494fcb', '9249bed6-d509-5ac2-9d05-9cf542800a5a', 'UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-11-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('b610b012-b5a5-5d2b-b98e-bed95c5bfed4', '9249bed6-d509-5ac2-9d05-9cf542800a5a', 'UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-13-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', 'e0f757cb-a5aa-588c-9b23-362cef29dace', 'UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-9-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('d1c60d22-3fcb-5840-b938-bdfbdd54580e', 'e1abeac0-cbd8-5b40-b619-22720a4918e5', 'WFA PEE WEE FOOTBALL', 'registration', 'registration-wfa-pee-wee-football', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('d5789715-c184-570b-8a51-1086dc6df152', '0908b1ff-1e04-54a1-ba32-85635486e523', 'UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-9-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', 'UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-7-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('6fe9342e-0706-50f8-bddd-52085fd46977', 'e7e74406-6a43-5608-9fc6-34cfbb769bf0', 'WFA U7 Boys Skills Development', 'registration', 'registration-wfa-u7-boys-skills-development', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('1b74db81-9c18-5f67-b062-9c9a92a3e5ba', '4e8be34b-8ac0-5e81-b666-b6724c34d9c9', 'UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-11-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('5b049702-f770-5b9c-afe4-491ec2839ccc', 'ced4ef41-00bc-53eb-b399-6fb420efefdd', 'UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-13-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('66822cb3-3d88-5fb6-adc0-37b9efdf4da9', 'b9f2a28e-947a-5354-a07d-68641c6b8af9', 'UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-7-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;
insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('8906b706-d060-5f42-b235-627dad51e5c6', '84755158-136f-58df-ac69-f306c87e7884', 'UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', 'registration', 'registration-under-18-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;

insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('fb9162b6-2c7a-512e-ae5b-94c93e55c3ad', 'daa11b3e-56dc-5138-bbc7-f3095a858519', 'UNDER 15 BOYS - WARWICK FOOTBALL ACADEMY', 'team', '9f3d869d-fbf4-51a6-8b23-24a30be88214', 'team-under-15-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('40d561d7-e224-5a20-8d04-4ea58e5279e6', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WFA U15 Girls', 'team', 'cf9d0278-fd7c-5177-bf23-dc06b94a9c08', 'team-wfa-u15-girls', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('0f48c34a-463f-5692-a3b8-fb83d9a0a6e6', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U11 GIRLS - WFA MANCHESTER', 'team', '43513f55-d4e0-56d8-9f6a-f3b5935beadd', 'team-u11-girls-wfa-manchester', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('407fa963-a7ff-533a-b267-faa8dab2b181', 'b610b012-b5a5-5d2b-b98e-bed95c5bfed4', 'UNDER 13 GIRLS - WARWICK FOOTBALL ACADEMY', 'team', 'b6cdce3b-d0b8-5300-ac78-a87171506878', 'team-under-13-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('948944f2-137c-5eca-aa6b-fed26fa18778', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 GIRLS - WFA INTER MILAN', 'team', '5c9202f4-a20a-5379-85d3-73fce1d68664', 'team-u9-girls-wfa-inter-milan', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('304eb92f-2e95-5fb0-8d3a-52e1782b687b', 'd1c60d22-3fcb-5840-b938-bdfbdd54580e', 'WFA PEE WEE FOOTBALL', 'team', '47ea47cf-73a8-5496-9cfa-52055d2ec0be', 'team-wfa-pee-wee-football', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('9643d0f5-3328-5235-b114-4c12c175868c', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 BOYS - WFA JUVENTUS', 'team', 'dfaa089b-cc95-56aa-a63f-47afd05e4772', 'team-u9-boys-wfa-juventus', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('6966e400-7859-5302-a5df-571eed863f11', '7027c540-2d27-5538-a6d3-374ad15bc587', '2025.26 Players', 'team', 'ceb5095d-934e-528f-9586-8438fb95180d', 'team-2025-26-players', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('ddaf9f9a-fab6-521c-a6c7-c4ce1e42733c', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U7 BOYS - Skill Development', 'team', 'b4dd8004-bf90-5284-8d50-4e9857519b35', 'team-u7-boys-skill-development', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('7f587933-3e3f-551a-82fd-a5a51dd1465e', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U7 BOYS - WFA REAL MADRID', 'team', 'bdb6fe27-1760-54c2-8521-da0632661582', 'team-u7-boys-wfa-real-madrid', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('d9925b3c-870c-5548-a86c-837de262abc1', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U11 BOYS - WFA PSV EINDHOVEN', 'team', 'eda9317b-e65a-5bd8-9f0f-edf5ba06f9fc', 'team-u11-boys-wfa-psv-eindhoven', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('46ba03ba-b227-561d-9a65-a27e0b9c5cfc', '5b049702-f770-5b9c-afe4-491ec2839ccc', 'UNDER 13 BOYS - WARWICK FOOTBALL ACADEMY', 'team', 'd54156e1-d5f0-52db-a6c2-128299971aca', 'team-under-13-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('893908f1-ed96-5915-b52b-8c72b3107ac3', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WFA U13 Boca Jrns.', 'team', 'dab4ed08-ca1d-5263-8b5b-71703e7aef80', 'team-wfa-u13-boca-jrns', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('4bce5e9a-9e12-5a4f-9b28-c7ac0f6cc7e5', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U7 GIRLS -Valencia', 'team', 'd63a09a8-9cbf-579b-90f0-f61d632dfe90', 'team-u7-girls-valencia', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('3f3792a8-a4b5-5a7a-8ad7-f11d41c42946', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 GIRLS - WFA NAPOLI', 'team', '0e1eb490-95f4-5a09-91fe-1bb2fe941ea1', 'team-u9-girls-wfa-napoli', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('a983bf6c-9b0b-5730-83ad-9ec418498027', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U13 Girls - WFA Independiente', 'team', 'f4f26aa4-f98e-5529-a0e8-28c21e590ce6', 'team-u13-girls-wfa-independiente', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('6d11db0e-c836-578c-bdfb-5ca8f62ba87a', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U11 Girls WFA Liverpool', 'team', 'd429f04b-ccfe-5075-95b2-8025c5579420', 'team-u11-girls-wfa-liverpool', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('4ec70e7a-d251-5010-aa43-be5e40ce35a3', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U11 BOYS - PAGET FC TITANS', 'team', 'b475d58e-b9ac-515a-934f-4947683cec94', 'team-u11-boys-paget-fc-titans', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('993ab926-266b-582b-b78a-3a719edecc49', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U13 Girls - WFA Racing', 'team', '78bb41ca-cf27-53dc-808d-f39794248027', 'team-u13-girls-wfa-racing', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('140e3c87-781b-5372-8e63-502dfa437830', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U11 BOYS - WFA AJAX', 'team', 'b7dccf23-4263-5536-ac73-7e8cd84de16d', 'team-u11-boys-wfa-ajax', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('ffda7bdc-8376-5ea7-83ab-dfe80e273985', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U18 Boys - WFA', 'team', '6a206973-9b48-5779-830a-7e9c58c1c367', 'team-u18-boys-wfa', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('9972c36d-d1bf-5fa1-bba7-1b52d1422d91', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U7 BOYS - WFA BARCELONA', 'team', 'bf5d6e6c-b94c-5043-ba23-9e9dcd31ea47', 'team-u7-boys-wfa-barcelona', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('492cad0d-2b4b-5d70-ae31-b5207fcd4641', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 BOYS - WFA ROMA', 'team', 'e0c84b1b-5a86-59bb-8c80-aec5a9a069c4', 'team-u9-boys-wfa-roma', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('d79575c8-4f87-51c6-8771-2e0e4543879c', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U7 GIRLS - WFA ATLETICO', 'team', 'b74bb5e2-90f0-55d7-84b4-77bbdc05e0e8', 'team-u7-girls-wfa-atletico', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('be85125d-6c92-5565-9dcb-b9e818deac0d', '1b74db81-9c18-5f67-b062-9c9a92a3e5ba', 'UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY', 'team', '592537b2-aa53-5623-b5ed-1863ebc853e2', 'team-under-11-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('84358d29-5ce4-560a-bf8f-cf011abe2381', '89e2f2fc-55a7-5cf5-88b5-99fa1f5dc4ef', 'UNDER 7 BOYS - WARWICK FOOTBALL ACADEMY', 'team', 'a265ab6e-aa9c-5bc5-a189-ae823209d9d3', 'team-under-7-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('4a8372b0-2177-5a3d-929a-55d3799b5f5b', 'da08f0b8-07ac-5408-9ec2-2b711eaa7d41', 'UNDER 15 Girls - WFA', 'team', 'fa778b9e-136f-599d-b72a-98394a06fe96', 'team-under-15-girls-wfa', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('68eea0be-123a-5125-a54e-536962a20764', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 GIRLS - WFA LAZIO', 'team', 'd869fc17-388d-58db-a7e2-c4abbb5a9b37', 'team-u9-girls-wfa-lazio', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('94565450-21ad-5205-a395-2b73a997498b', 'd5789715-c184-570b-8a51-1086dc6df152', 'UNDER 9 BOYS - WARWICK FOOTBALL ACADEMY', 'team', '2599ff26-c327-5a9a-8363-e645555d32c5', 'team-under-9-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('f092abc7-c212-55dd-aa57-467f786441e9', '6d641562-6aa6-58bb-a6a0-9409fd494fcb', 'UNDER 11 GIRLS - WARWICK FOOTBALL ACADEMY', 'team', '93b36d13-689b-5d09-a662-3a2323785090', 'team-under-11-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('c0864bba-281d-5a46-8b38-0a9e11c5539a', '8906b706-d060-5f42-b235-627dad51e5c6', 'UNDER 18 BOYS - WARWICK FOOTBALL ACADEMY', 'team', '13996698-0676-530d-b767-bf32d51648cb', 'team-under-18-boys-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('0937615e-200a-5906-b3e0-29165b8e2914', '6fe9342e-0706-50f8-bddd-52085fd46977', 'WFA U7 Boys Skills Development', 'team', 'c811e6c2-76b0-57a9-821c-3de9f5706f4a', 'team-wfa-u7-boys-skills-development', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('c3b7c629-7385-539a-85d3-302c712661c2', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'U9 BOYS - PAGET FC TITANS', 'team', '4d8cf9af-1962-5d46-8fcc-d5ad74b08181', 'team-u9-boys-paget-fc-titans', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('bf9082a7-39d6-58dd-8b5f-f7c28aadcaf4', '66822cb3-3d88-5fb6-adc0-37b9efdf4da9', 'UNDER 7 GIRLS - WARWICK FOOTBALL ACADEMY', 'team', '85848519-a741-5999-8633-31d5fe0bfd54', 'team-under-7-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('c564998e-6c0f-590b-891b-1ec8b636899c', '076266b0-d8a9-5a86-987d-3b894d2c5454', 'WFA U13 River Plate', 'team', 'ba762b40-3757-516d-a112-e479d13a38b4', 'team-wfa-u13-river-plate', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;
insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('6e4406d9-74cd-5d1f-acb6-1e3a059bcfb7', '3eeeb3c0-e7fe-59e9-b344-5daff2ce1411', 'UNDER 9 GIRLS - WARWICK FOOTBALL ACADEMY', 'team', '0a68fc72-f605-54ea-a91e-29c42e272f94', 'team-under-9-girls-warwick-football-academy', 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;


commit;
