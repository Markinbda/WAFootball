begin;

-- --------------------------------------------------------------
-- GUARDIANS
-- --------------------------------------------------------------
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e75d5871-243f-5cf3-8e55-cd0fef07b35a', '5e152151-57d9-5ac5-854a-8d6a2b3b1497', null, 'parent', 'Maajida Coleman', 'micrashid@gmail.com', '14048575007')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('10564405-2bc8-5e86-872a-3da780105a46', '9b093601-8f03-5b77-a797-1985d96b21c9', null, 'parent', 'Shannalee Aberdeen', 'shannalee35@yahoo.com', '14415362824')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d2ca7dff-58f3-5e6f-a4db-ef72901f0d7f', '9b093601-8f03-5b77-a797-1985d96b21c9', null, 'parent', 'Jermaine Aberdeen', 'jaberdeen77@gmail.com', '14417052824')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8d36f035-6534-5282-a5bd-0c1b9d7511fd', 'd37196f4-361c-5904-9c95-d4777c26866b', null, 'parent', 'rachel adolph', 'rachel.macrae@hotmail.co.uk', '14415951610')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2aed89a3-1159-5625-9c1e-47233a6b4b09', 'd37196f4-361c-5904-9c95-d4777c26866b', null, 'parent', 'ben adolph', 'ben.adolph.83@gmail.com', '14415054447')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('64b90da8-2017-58dc-87e2-0efee5ad6657', '3e98d993-2201-5926-bbaa-68b69525ffe4', null, 'parent', 'rachel adolph', 'rachel.macrae@hotmail.co.uk', '14415951610')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3a09fc7b-773d-501a-a863-497660c16620', '3e98d993-2201-5926-bbaa-68b69525ffe4', null, 'parent', 'ben adolph', 'ben.adolph.83@gmail.com', '14415054447')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a3c15ed5-cd6c-5f76-8d80-0b6d7c4770e4', '967e4a40-35fc-512a-a013-ee509ef84966', null, 'parent', 'Carla Albertze', 'carla.albertze@gmail.com', '14415240109')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ad0ec05f-c7e7-5a38-968a-6224836b69c4', '1abd0f76-7570-5271-84a5-6f23147bed97', null, 'parent', 'Elodie Ali', 'elodieroussard@yahoo.fr', '14417045535')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bf9e026a-e5f0-5ac6-bf3a-3f8960a13b0b', 'e5b7091b-d070-512d-a97f-8e19d1723e1a', null, 'parent', 'Elodie Ali', 'elodieroussard@yahoo.fr', '14417045535')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fe7777e9-abe6-5147-aee3-08d0e3c0b169', '81d9ff56-4c6c-5879-8604-baabca917559', null, 'parent', 'nicola terceira', 'nicolaterceira@yahoo.com', '14413326880')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('635bef4c-531a-5db7-b68e-fe401c4540e6', '6a9f7271-226a-5162-8987-cf22a7600999', null, 'parent', 'Sophie Grewal', 'sophie_grewal@hotmail.co.uk', '14417051402')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('01d2defd-6060-5c46-8d1f-158cca4dece9', 'c1209a5a-eaad-5c41-958f-c15d878f2b59', null, 'parent', 'Sophie Grewal', 'sophie_grewal@hotmail.co.uk', '14417051402')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('68d07be7-88d4-54ee-9703-f52db7cb91d2', 'b2bf63d4-c485-5810-b4d9-6d0d5d42b417', null, 'parent', 'christina georgopoulos', 'cgeorgopoulos0427@gmail.com', '14415320201')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('628bf15f-9f78-5e9c-9b6f-ff8dc01e86dd', '786b9e02-d8fc-5e9f-aad9-8de00202e1a9', null, 'parent', 'Mark Andrews', 'mark.andrews@nabors.com', '14415371099')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8398591c-794d-5763-b80f-5aa193b6ef9c', '786b9e02-d8fc-5e9f-aad9-8de00202e1a9', null, 'parent', 'Maria-Teresa Galluzzo', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b32fa870-a9bf-55f0-8bd1-2b4ca5daf171', 'be183c28-81c3-53b0-a7c0-df74ee897e46', null, 'parent', 'Dustin Archibald', 'darchibald@onsite.bm', '14417347247')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4083e7e9-be27-54af-addc-a02909b19d9d', 'be183c28-81c3-53b0-a7c0-df74ee897e46', null, 'parent', 'Michelle Hicks', 'hicksmd9@gmail.com', '14415040066')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f44d0c54-faa3-5285-95bb-5e3538519427', '9eee43e0-a92d-5db3-9429-39db1da7fef6', null, 'parent', 'Karolyn Lack', 'karolynlack@logic.bm', '14415057508')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0a262192-80bd-5e77-903a-db89a3ad37a9', '9eee43e0-a92d-5db3-9429-39db1da7fef6', null, 'parent', 'Simon Argent', 'simonargent@logic.bm', '14415247508')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6fe08aaa-bce2-5c16-9c2b-0fa86f2df33f', '12290d72-2498-5639-8cfc-5d59b553431f', null, 'parent', 'makayla simmons', 'makayla.ariche@outlook.com', '14415181530')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('87824821-b2f2-507f-9654-fbcd95db18a9', 'f3311e52-77d8-5981-b636-6c2d1312edf4', null, 'parent', 'Tammy Ayers', 'tammy.ayers22@yahoo.com', '14415990488')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0c2704ea-3980-5d2c-b4d4-1a4707e09e98', '31b0b659-6310-55e6-9ce9-d8c94226f70b', null, 'parent', 'Caroline Bailey', 'carolinesarahbailey@gmail.com', '14415199665')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d6c84df8-42e8-5f80-98e0-812db4f07496', '31b0b659-6310-55e6-9ce9-d8c94226f70b', null, 'parent', 'Nick Bailey', null, '1144156425')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('669ccc31-694d-5144-80a5-21236f10cdd4', '055364d8-31af-5a6c-947e-691b0c584f26', null, 'parent', 'Caroline Bailey', 'carolinesarahbailey@gmail.com', '14415199665')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('db94468e-10c4-5ec2-9857-169d1240bf27', '055364d8-31af-5a6c-947e-691b0c584f26', null, 'parent', 'Nick Bailey', null, '1144156425')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0d360ea8-4b0a-5fba-a618-a4835f5ab991', '5c9460f7-c42b-5add-ab97-0a570aec731f', null, 'parent', 'Caroline Bailey', 'carolinesarahbailey@gmail.com', '14415199665')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0e04195f-63d0-5fd8-a9bd-7afb0c15880e', 'bcdaff3d-a167-5b53-894a-baa6564d1519', null, 'parent', 'Maria Baran', 'baran.masha@gmail.com', '14417327897')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1938502d-9d78-5699-9e28-b2855b4c39cb', 'f55d8765-d483-5376-bc29-6e68c3861bd6', null, 'parent', 'Katrina Barclay', 'kbarclay@meritustrust.com', '14413338019')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fba4df99-cf39-510f-966b-ddec5c60b62a', 'f55d8765-d483-5376-bc29-6e68c3861bd6', null, 'parent', 'Duncan Barclay', 'd1barclay@gmail.com', '14415055149')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c62df6a8-ec4c-5fcf-8148-37d4779e8565', '59f007c2-d254-5872-9c4f-1a7e0866ae02', null, 'parent', 'Katrina Barclay', 'kbarclay@meritustrust.com', '14413338019')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('de61e5ce-2255-5429-85ac-b5152a7d3bd0', '59f007c2-d254-5872-9c4f-1a7e0866ae02', null, 'parent', 'Duncan Barclay', 'd1barclay@gmail.com', '14415055149')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e9d1a5a5-246c-5a15-9844-feb9b1c0d822', 'f563ead6-1feb-5e6a-9b7e-e20bc2760918', null, 'parent', 'ALEX BATEMAN', 'afabateman@gmail.com', '14415241154')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b1025313-5c11-5c0b-a559-9bd45278f01e', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', null, 'parent', 'Adam Bathgate', 'adam.bathgate@gmail.com', '14417070476')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3392035b-25b3-58be-886f-e019954d2690', '143dd3ca-d91e-58f5-9a8a-3b3b32eed270', null, 'parent', 'Carolyn Bathgate', 'bathgate.carolyn@gmail.com', '14417350476')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3af9b66e-7908-5426-92a7-fd4688b62360', '9cd50455-5410-501a-b2a9-f319751b1766', null, 'parent', 'Janita Burke', 'auntyjk@gmail.com', '14415057729')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d533277c-9abb-5686-8c50-90e710d71841', '9cd50455-5410-501a-b2a9-f319751b1766', null, 'parent', 'Ervin Bean', null, '14415058524')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5f3a0c0e-45f9-5bd4-a1d0-800f7dba27c8', '8221b25f-5986-5a13-84b1-312962d63b8b', null, 'parent', 'Rob Bernardino', 'roberto.bernardino@gmail.com', '14413052608')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a8c6c54b-bb1f-54cb-8830-6a6676ae0028', '8221b25f-5986-5a13-84b1-312962d63b8b', null, 'parent', 'Abi Bernardino', 'avmadeiros@gmail.com', '14415330004')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('488aa8b6-7a66-52fa-89bf-4f2429c38a5b', '86f8f193-0fc5-574e-94a7-dd119e8c9719', null, 'parent', 'Dany Bernier', 'dany_bernier@msn.com', '14417046057')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bd0c39ee-8e74-5a7b-b193-27bbab3b9a0c', '86f8f193-0fc5-574e-94a7-dd119e8c9719', null, 'parent', 'Lorna Nicolas-Bernier', 'lorns_nicolas@yahoo.com', '14413351022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c801c91a-1c62-566e-831e-d6b98aa4655c', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', null, 'parent', 'Dany Bernier', 'dany_bernier@msn.com', '14417046057')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('87214a07-1152-51a6-a1cc-fd992e8ab263', 'e79b0394-a462-5c24-a8f4-5a5cc576b44a', null, 'parent', 'Lorna Nicolas-Bernier', 'lorns_nicolas@yahoo.com', '14413351022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('70b0eb79-17d4-5b84-b74b-75c167c1af5f', 'b3b85887-5641-5bef-bb9c-9e70e0308e8e', null, 'parent', 'preya leverock', 'preyaleverock@hotmail.com', '14415330926')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5ce6ab43-846e-5d90-bd38-19c742082b75', 'b3b85887-5641-5bef-bb9c-9e70e0308e8e', null, 'parent', 'omar binns', 'obinns83@hotmail.com', '14415361299')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('70fd0cc8-7b82-5363-88d1-28349268b3f8', '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4', null, 'parent', 'Chris Blake', 'cjb.blake@gmail.com', '14417470787')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('abc4031a-ca9a-56b2-b3ca-546f2a08158e', '9614ece3-1ae5-58d4-99c7-ea1ea029d1c4', null, 'parent', 'Katie Blake', 'katie.wicks.88@gmail.com', '14417072158')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4fba5d3f-63b7-5237-96b0-7bb61bc33b6e', '842195c9-f42b-5a9a-9b25-be29fb27305b', null, 'parent', 'Lauren Botelho', 'lauren.a.botelho@gmail.com', '14415359440')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e68b90c0-9b6d-5dca-b296-cf23bc2a7f74', '842195c9-f42b-5a9a-9b25-be29fb27305b', null, 'parent', 'Jamie Botelho', 'jbotelho@outlook.com', '14417999440')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6156119c-e737-5cee-b5b1-0a1bc683e569', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', null, 'parent', 'Vanessa Bowling', 'v.james3@icloud.com', '14417042089')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('10d4a8a4-6a39-515a-8aab-cc4e40b812ec', '1ff740dd-9f1e-586b-a136-6d7c3445c83b', null, 'parent', 'Kieran Bowling', null, '14415335486')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f6efa296-3cc5-5e5c-9035-72b7a0ac8e18', '8c028681-b5b4-5058-b086-7cca511735bf', null, 'parent', 'Eunice Loi', 'euniceloi@gmail.com', '14415329755')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('71aaac65-6a7e-571d-a94c-57d087642571', '8c028681-b5b4-5058-b086-7cca511735bf', null, 'parent', 'Justin Brenden', null, '14415263313')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2d3a85bf-10ca-5539-aa5f-65adc6319746', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', null, 'parent', 'Trish Brogden', 'ward.trish@gmail.com', '14417032194')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b69f9d44-35d0-5090-aded-79fc1d267f3d', 'b9687cd3-f0d6-5d7f-aea0-33296fca83e7', null, 'parent', 'alex brogden', 'brogden.alex@gmail.com', '14417073902')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('63e8cc6d-6783-55d6-9081-b9b19178c39f', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', null, 'parent', 'Trish Brogden', 'ward.trish@gmail.com', '14417032194')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('038e90b9-2f88-5ae5-93ff-3efce30f76b3', 'fe01980a-4476-50aa-af56-7f77a5a75b6e', null, 'parent', 'alex brogden', 'brogden.alex@gmail.com', '14417073902')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b2f70bd9-5221-50d8-ae00-f062f1ce3db2', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', null, 'parent', 'Trish Brogden', 'ward.trish@gmail.com', '14417032194')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('66f34575-3288-59fc-bc4f-63b4d87fcc5a', '14a1353e-66b4-55e3-aea4-f3a50d5106d0', null, 'parent', 'alex brogden', 'brogden.alex@gmail.com', '14417073902')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b060d363-6057-5de9-991c-5c0173ab708f', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', null, 'parent', 'Trish Brogden', 'ward.trish@gmail.com', '14417032194')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7edcb935-49b6-58af-80fe-806282830089', 'e729d1aa-8c14-5e62-a82d-0bf8eb0badc6', null, 'parent', 'alex brogden', 'brogden.alex@gmail.com', '14417073902')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4fcd9782-da4a-5728-bcd7-4168150e9bb6', '1c0e6761-a8bd-53e2-90ef-8bf4abc2883e', null, 'parent', 'charlotte brooks', 'charlottebrooks80@gmail.com', '14415329056')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('74169abf-5651-5be8-b192-16f1ce2f9726', 'ecdff891-5e22-5375-b5aa-8ce352211d76', null, 'parent', 'charlotte brooks', 'charlottebrooks80@gmail.com', '14415329056')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1f05d76e-5dc5-5367-8498-ab2bddce3dad', 'ecdff891-5e22-5375-b5aa-8ce352211d76', null, 'parent', 'Richard Brooks', 'richard.brooks1983@gmail.com', '14415337941')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1a5bb2fe-f4db-56ed-9ec8-94ba05faf176', '1751fd44-a113-504f-88db-73781a4aebdf', null, 'parent', 'Elizabeth Valencia', 'elikvalencia@gmail.com', '14413318127')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('87a5d995-3381-567f-a112-f1bdc5976198', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', null, 'parent', 'Ayesha Vickers-Brown', 'sterlingandolivia@yahoo.com', '14417370613')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d2395e86-5de0-5d70-b3c2-62a09fa38014', '0548ad4d-4071-5fb6-8fab-cde4fdb34f22', null, 'parent', 'Cory Brown', 'ipsbda@gmail.com', '14419012851')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1f007c2d-3991-5976-9c2c-98a933d6f119', 'a84b4643-7eb0-5706-8770-b6f0fc6caed0', null, 'parent', 'Jacqueline Muschett', 'jacqueline.muschett@hotmail.com', '14415345014')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3b7589f2-0f72-592b-9e62-bc648a0720cf', '23e0fe9e-32c3-56f6-a968-8de910195319', null, 'parent', 'Solay Marson', 'solay.marson@college.bm', '14419013777')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3d35f549-add7-57f0-9ee2-9cf20058f42b', '23e0fe9e-32c3-56f6-a968-8de910195319', null, 'parent', 'Marinda Burch', 'marindaburch638@gmail.com', '14412364870')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3c2c0392-3b5d-5316-a754-d0ef447fd402', '363b40ec-bbd3-52f9-832b-e1818326868c', null, 'parent', 'Reiko Young', 'reikoyoung@hotmail.com', '14415198856')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ed227b5a-1793-5938-80eb-144295f0150f', '3bee9833-8096-52f6-a922-6b38742cd1ca', null, 'parent', 'Ariel Burt Bekhazi', 'burt@caero.com', '14417041800')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9a0524d2-24db-54fc-8ced-f0bf977d915a', 'ff120724-c495-562d-994e-939d1cd4164b', null, 'parent', 'Stacey Burt', 'staceyburt@outlook.com', '14417033718')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0f5ce528-606c-5381-b711-1566771efca0', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', null, 'parent', 'Jasmine Caisey', 'jsrcaisey@rocketmail.com', '14415360242')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a78ae385-f5ee-5790-a81c-d95681351299', 'de3067fa-8cc3-5dd0-a85e-d24aa2801f31', null, 'parent', 'Jasmine Caisey', 'jsrcaisey@outlook.com', '14415348795')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7a438091-bb04-51ba-a75b-759319864a32', '6fadfb89-6dd0-5e50-a2f2-53b4ed2dde00', null, 'parent', 'Colin Campbell', 'cgc.campbell@live.co.uk', '14415350090')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('49515fab-73e4-594e-bc64-c2f7bf781be3', 'b94ea220-2d0f-5078-81e5-cb5d73d7f7b6', null, 'parent', 'Joe Carolo', 'joecarolo@gmail.com', '14417377860')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9db5cd53-f95d-55ee-9b5a-bdc3c8948481', '80dcfdf1-9a00-5ff4-a2b8-584f94183976', null, 'parent', 'Piers Carr', 'piers@currentvehicles.com', '14415322277')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('76413eaf-6613-5a9b-b944-3b6f0d3f1f18', 'f0d0885c-66be-52dd-9291-1ab0aacc788d', null, 'parent', 'Piers Carr', 'piers@currentvehicles.com', '14415322277')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('285fb395-b35a-5929-ab66-93d8b6779874', '516b758c-b07c-5e31-93a2-85a6afdf1b58', null, 'parent', 'jaime cedenio', 'cedejc@gmail.com', '14415041687')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('afd2eb8f-999f-527e-b980-c0f423c59e16', '516b758c-b07c-5e31-93a2-85a6afdf1b58', null, 'parent', 'alice cedenio', 'cedenioalice@gmail.com', '14415048577')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cfd5deec-b476-5965-9892-87fbb015f28c', 'f6d9fd1b-57fa-5cc6-ae73-dfedd01f1350', null, 'parent', 'jaime cedenio', 'cedejc@gmail.com', '14415041687')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ef4bbc43-b54d-56bf-ae6d-82438c5ae1b8', 'f6d9fd1b-57fa-5cc6-ae73-dfedd01f1350', null, 'parent', 'alice cedenio', 'cedenioalice@gmail.com', '14415048577')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5ff6e5fd-0d22-5065-a64f-931d378348ad', '8b0f6390-813a-5d40-b634-a1a26a265023', null, 'parent', 'Richard Todd', 'football@warwick.bm', '14413371120')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('704c498c-7bfb-5360-82d7-a127db30a1eb', '8b0f6390-813a-5d40-b634-a1a26a265023', null, 'parent', 'Warwick Juventus', 'test@bdamail.com', '14412361917')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fda44352-08ec-5e9f-b2df-4153d927b474', 'a86af933-a3c2-52f4-b217-ababd666f964', null, 'parent', 'James Claxton', 'james.claxton@bm.ey.com', '14417045318')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c56ca181-cfcd-54c9-b145-eaf906dbe2d8', 'a86af933-a3c2-52f4-b217-ababd666f964', null, 'parent', 'Nilu Claxton', 'niluclaxton@gmail.com', '14417038659')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('233ad4b8-07f1-55f4-ad9d-23e3f434d0fd', 'db5cac0a-5f58-5578-a0dd-75eb6a91de98', null, 'parent', 'D'''Shante Coddington', 'dshante@live.com', '14417772716')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b9fd7c00-c018-5308-b824-212445559284', 'e4d232a3-fc65-5dfe-b429-8feb5686e05b', null, 'parent', 'Lesley Blackburn-Collette', 'bburncol@gmail.com', '14415247356')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a38918b4-4277-59fe-8450-306ae69cade1', '95653d96-7df9-568b-b7d1-e69f50b0e408', null, 'parent', 'Julia Cooper', 'juliakcooper81@gmail.com', '14415999181')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('730c30e1-93f5-5f12-818f-6c69514810ac', '95653d96-7df9-568b-b7d1-e69f50b0e408', null, 'parent', 'Damian Cooper', 'damian.cooper@pwc.com', '14415050295')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3759fe77-b986-58e6-a89b-855b48859b4b', '1f9faf9b-1c58-5abb-833a-b2c56ffb79b1', null, 'parent', 'Damian Cooper', 'damian.cooper@pwc.com', '14415050295')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('556be14c-ade5-5255-8dad-4c7e8a47b52c', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', null, 'parent', 'George Corbett', 'georgecorbett85@gmail.com', '14415249388')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('58d97869-3001-5c48-adea-1cded94222d3', 'fb46c283-c20a-5849-8ab4-27b956caa9d5', null, 'parent', 'soraya corbett', 'sorayax@hotmail.com', '14415054433')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a2bcbd95-fbb5-5eaa-a1dc-b5c46274b540', '074cbb58-94c2-54d2-8c98-08734b607949', null, 'parent', 'George Corbett', 'georgecorbett85@gmail.com', '14415249388')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1db8dfd9-e8f5-5095-88b9-1e6db3837b92', '074cbb58-94c2-54d2-8c98-08734b607949', null, 'parent', 'soraya corbett', 'sorayax@hotmail.com', '14415054433')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e8f6c70d-2c86-5f6d-abee-37b01635fa0b', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', null, 'parent', 'George Corbett', 'georgecorbett85@gmail.com', '14415249388')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ca882508-f137-5126-85e9-baf2d6eb49e1', 'bd5fb89e-9ec0-5f2b-8b1e-a54629da1985', null, 'parent', 'soraya corbett', 'sorayax@hotmail.com', '14415054433')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0521dc32-92de-5662-9340-e5479b3aeb48', '6fbff24f-d05d-5142-92cb-0e0ff899091c', null, 'parent', 'Christina Correia', 'christina.m.correia@gmail.com', '14415057588')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('661a5cd0-4ff2-59aa-89b5-a557db6913db', '98f37386-d635-5f75-92d2-6df9d4ef494d', null, 'parent', 'Jason Correia', 'jason.correia@live.com', '14415051357')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c40d8980-546e-51ea-99be-3d0d36987246', 'ea366fac-a446-58cc-bf6e-e5142519e9b1', null, 'parent', 'Jason Correia', 'jason.correia@live.com', '14415051357')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('95dbcaa4-52ef-54fd-a2b6-2cc92759921e', 'aeed4228-ac92-592d-bfa0-edbffff82006', null, 'parent', 'Nicole Correia', 'n.correia@warwick.bm', '14415058603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('81999e3d-1599-580b-b5b6-d26f88aa7aa1', 'af98dfe1-ed1d-54e2-a3e0-4b8fe0c6da1f', null, 'parent', 'Patricia Cortez', 'pattyzev@hotmail.com', '14415952301')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('60aa533f-791e-5f0e-87e1-e3b2609dfa57', 'bd17d5be-9446-59e4-b361-9b582c242ae2', null, 'parent', 'Jessica Craigs', 'craigsjessica@gmail.com', '14415339552')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6656f812-8d9f-54d3-9563-34282d4594fb', '4e24d855-7c95-5962-8368-bad48f5c4cf3', null, 'parent', 'Stephane Crucenzo', 'crucenzo@yahoo.fr', '14415167495')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('50575a85-de95-5a6f-87a6-6822ed12d025', '7284d396-c389-5bd6-92c8-bb718a6d1628', null, 'parent', 'Kimberly Cumberbatch', 'kim.kerr@yahoo.com', '14415388661')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5420867d-7fdf-51c3-af2e-4b95fc926575', '7284d396-c389-5bd6-92c8-bb718a6d1628', null, 'parent', 'Lennox Cumberbatch', 'llcumberbatch@yahoo.com', '14415311644')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fbb26a33-fc68-58a0-ae61-02e7be7f46fe', '7f754141-f1d5-5aed-8307-864b6710e797', null, 'parent', 'Hillary Rand-Czerwinski', 'hillarygrayrand@gmail.com', '14415322152')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('58ff4c30-8355-5f0d-8987-08ad182fa8d5', '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae', null, 'parent', 'Karlien dart', 'ksbermuda@gmail.com', '14415163813')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('17447139-9b7c-5bc0-ba8f-93f0ba6a6c7a', '3fd6c10c-6567-5cb8-ae58-8898bfbf2fae', null, 'parent', 'Chris Dart', null, '14415141404')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1a5bf669-352c-57f3-b296-d63db0c9d25b', '721c0792-4ebb-5894-bf30-6db88a666b3a', null, 'parent', 'Kascia DaSilva', 'kascia.white@gmail.com', '14417049047')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8a0b348d-d188-52d3-a51e-1a331749ba9b', '721c0792-4ebb-5894-bf30-6db88a666b3a', null, 'parent', 'William DaSilva', 'williamjdasilva@live.com', '14413312688')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7c7a462b-d143-5a8c-9022-60d7c5848567', '6cdab1f9-155e-52b1-bb8f-e5ea00b8ecfd', null, 'parent', 'Andrew Davidson', 'aihdavidson@yahoo.com', '14415056127')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('36309df3-b1aa-5eeb-ba97-24828d2aa335', '5aabac1f-6392-5541-b004-b458a601491e', null, 'parent', 'Erica Davidson', 'ericaalisonfulton@gmail.com', '14417354086')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9c51390b-0694-529d-a574-04cc8ad98fd3', '5aabac1f-6392-5541-b004-b458a601491e', null, 'parent', 'Tim Davidson', 'tbsdavidson@gmail.com', '14415999222')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b9bbd51f-f350-5a62-9879-46318bdfa5bf', 'aa830753-face-5056-a6df-620fe957a1c7', null, 'parent', 'Andrew Davidson', 'aihdavidson@yahoo.com', '14415056127')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2c0dd69c-d282-5242-929a-f9e9ddb97529', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', null, 'parent', 'Erica Davidson', 'ericaalisonfulton@gmail.com', '14417354086')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fca782ce-a312-54ad-8e6e-79de78d2757e', 'c70ea1e7-c034-5e80-9bea-fd142f3702d3', null, 'parent', 'Tim Davidson', 'tbsdavidson@gmail.com', '14415999222')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f34a2dd5-8020-533c-ad81-ca383791eaf5', 'c350ecb1-d125-5c20-8d45-016421795ae5', null, 'parent', 'Treavina Davis', 'treavinadavis@hotmail.com', '14413377847')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('026b87ad-0550-5f76-90bb-ffcbc677cc59', 'bcd167ba-b346-573e-b6f3-006fb6f4dac8', null, 'parent', 'Danielle Riviere', 'danielle@odsolutionsbda.com', '14413322996')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6f91b768-dd6b-503c-ab9a-f0622b58cf90', 'b4eae147-ea12-5579-b5f6-e01ce92ca20a', null, 'parent', 'Angelika Davis', 'angelika.davis@awac.com', '14417995121')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8daeaa9f-eb7d-548e-bb5c-858800e378a7', '721868fe-f08d-59cc-84d0-79aa9c630f13', null, 'parent', 'Suzie Denton', 'suziejdenton@gmail.com', '14417030378')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5c105108-bfb4-57ac-ae31-be453eb74f8b', '55fb3633-94c1-556a-a4f8-a88ba0f20de3', null, 'parent', 'Chelsea DeSilva', 'chelsea.desilva23@outlook.com', '14417990033')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d8fe20f6-f9eb-5950-b247-cfb7999c699a', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', null, 'parent', 'mathieu desjardins', 'desjarde@hotmail.com', '14415050330')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('99188405-04f3-5dd3-b289-0c27b1ccaeef', '41532cf3-468f-5ed7-bfa1-cfe556b614d8', null, 'parent', 'marie lyne dore', 'marilyne_@hotmail.com', '14415050340')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6da51fd7-2ffa-5747-9de7-fe10cf88170b', '798b4493-6bef-596f-9ef7-b26529577e48', null, 'parent', 'mathieu desjardins', 'desjarde@hotmail.com', '14415050330')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7bf8278b-2169-5a35-87bb-9ee82d500acd', '798b4493-6bef-596f-9ef7-b26529577e48', null, 'parent', 'marie lyne dore', 'marilyne_@hotmail.com', '14415050340')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('364fa0d5-2969-5c09-aef3-7e3fc43b8600', '4cbb51ca-8aa9-559c-8068-516d29529095', null, 'parent', 'Jasmine Simons Galloway', 'sgallowayj@gmail.com', '14415340324')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bdd0dbc8-f038-511e-9ed6-7e895b2932ed', '8a786e70-0204-592f-a919-3d9a1d72bf9b', null, 'parent', 'Jasmine Simons Galloway', 'sgallowayj@gmail.com', '14415340324')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6903272f-5464-50ec-909d-9e9ef8cc9e03', 'b94a4849-64bf-561f-813d-7040e593ee8f', null, 'parent', 'Renee Dickinson', 'reneesimons86@gmail.com', '14413325857')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9981b908-3d0e-53bc-9633-f9d0ffbe1601', '9c8bf86b-738e-583f-accc-6f0473bffe52', null, 'parent', 'Renee Dickinson', 'reneesimons86@gmail.com', '14413325857')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d9469203-1231-5177-beaa-cd9d0182fbac', '9c8a01e6-3786-59e7-9935-e18ae44d8e05', null, 'parent', 'Brandi Stone', 'brandistone29@gmail.com', '14417035180')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1cbc86b8-13c8-536d-871b-f3bcf022e858', '3660f69a-3bce-51f7-ade2-855c3edd9802', null, 'parent', 'Angilique Dill', 'dillnidhi@gmail.com', '14417378557')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3c4dfe05-e646-5726-8b4f-a5d0ee1f5ac6', 'df4a1ed1-58bb-57d1-acb3-ab4a4581cce8', null, 'parent', 'Hazeline Doherty', 'hazelinedoherty@gmail.com', '14415169797')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e91111b6-f855-5fb1-bce8-259d3e0500de', '515aa137-0e00-5322-bbf2-758b514c4bec', null, 'parent', 'Hazeline Doherty', 'hazelinedoherty@gmail.com', '14415169797')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d2fc67c9-c0f8-5dd8-b531-4256cd4e1b61', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', null, 'parent', 'Lurdes Duarte', 'lurdesduarte@yahoo.com', '14413335434')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('26a23091-1d34-577a-afe0-662730f72b82', 'b9b91a57-8108-5ce8-9f5d-1b5d000cafc6', null, 'parent', 'Mario Duarte', null, '14415350363')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a7ec14ff-7ec8-5f2e-a5a9-3581e6819ee0', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', null, 'parent', 'Lurdes Duarte', 'lurdesduarte@yahoo.com', '14413335434')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('53260bf5-c5b4-5ab6-8a25-932a66a97024', 'ec78b4be-cd49-5133-a71e-1d0a85e3f16d', null, 'parent', 'Mario Duarte', null, '14415350363')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6e8c211a-605e-500e-9b05-3312416a9ecc', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', null, 'parent', 'Amanda Miehm', 'amandamiehm@gmail.com', '14415913200')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('62207945-18de-5c93-b5d6-efb2a0d19def', 'ba4f7ae2-4854-5bf8-a80e-4f7402d8518a', null, 'parent', 'John Duda', 'john.d.a.duda@gmail.com', '14415324654')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('91cfb53e-8bd6-5ed9-a068-38162ee53607', 'fc150945-ddc9-5a61-8a76-81c995e93e56', null, 'parent', 'Rebecca Dunkle', 'areldee26@gmail.com', '14417372979')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c0d54408-7b45-548d-a3c4-8a430830957d', 'fc150945-ddc9-5a61-8a76-81c995e93e56', null, 'parent', 'nicholas dunkle', 'nicholas.dunkle@harringtonre.com', '14415352776')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ecefef3b-814a-5e86-8f09-7a59df27c3f3', 'de28db52-1717-5bf1-b508-a1630eba23a9', null, 'parent', 'Akilah Albuoy', 'aalbuoy@gmail.com', '14413388079')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7acec95a-6ab3-5d79-b934-9cb4ad4fc686', 'de28db52-1717-5bf1-b508-a1630eba23a9', null, 'parent', 'David Durham', null, '14417779236')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dfbd5683-1fb9-58d5-8223-8a8d8c23d6d3', '92c06bf5-2e46-5f82-8f82-2e728853b351', null, 'parent', 'Maddie Durkin', 'mdurkinbda@gmail.com', '14415205273')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('04eb3df7-fe54-5caf-a326-0ad5015bb6e7', '92c06bf5-2e46-5f82-8f82-2e728853b351', null, 'parent', 'Seamus Durkin', 'seamus.m.durkin@gmail.com', '14415957026')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9a27badf-08f1-5a6d-9047-fdf87a3abc0d', 'e04c2837-727f-5b82-b3e5-9e474f112590', null, 'parent', 'Nijah Dyer', 'nijah.smith@gmail.com', '14415387830')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('453a6ac6-ef0b-5b8c-a17a-6f736baa91c7', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', null, 'parent', 'Shannon Dyer', 'so.dyer@gmail.com', '14415331047')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bb556e3b-c4ea-5ab2-8e74-949db1cafdb9', 'a2165b7e-f9c3-5fad-b3ae-96bb1472dd28', null, 'parent', 'Nijah Dyer', 'nijah.smith@gmail.com', '14415387830')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('84db558f-f636-5ea8-9c4a-b94efcfe48a2', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', null, 'parent', 'Kaitlin Edwards', 'kaitlin.mulderig@gmail.com', '14415958056')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1a1245b8-caec-565a-b7fd-1557665f156d', '7ba4c87b-ce86-5cab-bf33-3df0903d1519', null, 'parent', 'Tommy Edwards', 'thomasiainedwards@gmail.com', '14415323486')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e43e301b-dcb8-5b39-8d46-a6751ccf28ec', '8b280b52-156c-5ee5-930a-8d24c3463c09', null, 'parent', 'Amanda Emde', 'amandaemde19@gmail.com', '14415951169')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e163406f-9f17-5b25-9c53-8e812566b8d7', '8b280b52-156c-5ee5-930a-8d24c3463c09', null, 'parent', 'Ron Emde', null, '14417052473')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0c4607c5-8cf0-50da-845b-7f57992c37f6', 'c231c491-d4c4-5d1b-9045-d2ee8235848a', null, 'parent', 'Riaan Engelbrecht', 'riaanengel13@gmail.com', '14415167306')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0a99ea12-8bcf-52bf-b987-7033b466a1fb', 'c231c491-d4c4-5d1b-9045-d2ee8235848a', null, 'parent', 'Elizna Engelbrecht', null, '14415189918')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ce6c5838-b553-5d55-936f-0f40233c42b6', '70453719-31ff-576d-b42e-02a6d901e8a3', null, 'parent', 'Tom Ault', 'tjault77@icloud.com', '14417030147')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6306079b-3f3a-518b-bfeb-150fe61f9e0b', '70453719-31ff-576d-b42e-02a6d901e8a3', null, 'parent', 'olivia espley-ault', 'oespley-ault@outlook.com', '14415993571')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('12e770e9-99b6-5aa1-9722-16046c6594bb', '4a73bbe3-7364-52da-9c0f-9534cec3dda1', null, 'parent', 'Cel Fampulme', 'chfampulme@gmail.com', '14415310087')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('137356e8-027d-53c0-9959-845b0249e451', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', null, 'parent', 'Jamila Faries', 'jamila.faries@gmail.com', '14415366793')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('65c9c151-17c3-51b8-b2e9-81aa47ece2c9', '3c2b522b-b0aa-5b53-99c5-6950b340f8f1', null, 'parent', 'Steven Faries', null, '14415363332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cb783dcd-16ca-53e3-a24f-11501dc96e6c', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', null, 'parent', 'Jamila Faries', 'jamila.faries@gmail.com', '14415366793')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('88fe897e-97c6-5f51-af17-7f7a57b6d04d', 'ebb787a7-b608-5d1c-85e7-2a88e29ede59', null, 'parent', 'Steven Faries', null, '14415363332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('72d5a91c-358f-570f-b0f0-9599a9293b16', '738cde3b-e4df-53b9-a0a9-d32a7dffdf05', null, 'parent', 'hadleigh farrer', 'haddersf@gmail.com', '14417075426')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4eb07ce6-bd71-5256-a84a-cadf906ac84a', '248aec8d-4488-58e1-b064-0abe4c348e5d', null, 'parent', 'Finn Faulkenberry', 'entfaulkenberry@gmail.com', '14417056163')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a955740f-7bad-54d5-81df-ffe3ea230719', 'af841826-e988-5330-9f5f-b558558c70bc', null, 'parent', 'Elaine McHugh', 'elaine.mchugh@hotmail.com', '14415910387')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('499e6baf-b7e5-527e-b746-b5c73ea6e8af', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', null, 'parent', 'Kalum Fernando', 'kalumfernando93@gmail.com', '14417371066')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4e873703-cd56-5d10-83b4-f1669c2abdb0', '3363fab3-8dfc-5c39-8bdc-6cd5fde72dc8', null, 'parent', 'Priya Silva', null, '14417047232')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7694aa30-0a11-51c1-a917-e1bc09893185', 'b7274f19-dd57-5e72-b1a3-0caa30c21b38', null, 'parent', 'Ashleigh Fiedler', 'asmoffat85@gmail.com', '14417041906')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2069100a-9547-5bb6-9405-ebd528dc693b', 'bac0636b-c413-501a-a1c3-c59c3890acf3', null, 'parent', 'Ashleigh Fiedler', 'asmoffat85@gmail.com', '14417041906')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3a487359-86e4-59b9-9f8a-0e1c9ba22e71', 'bac0636b-c413-501a-a1c3-c59c3890acf3', null, 'parent', 'Max Fiedler', 'max.fiedler@hotmail.com', '14417041309')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('605e5e15-d406-57ed-89c9-f0d6b5686347', 'be108759-2f02-572b-a643-97639f6f2331', null, 'parent', 'January Fortune', 'januaryfortune81@gmail.com', '14415380307')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('148974b0-bd2b-5b85-af70-1b174f8f954b', '728df03d-0add-5499-bafa-c70301c8768f', null, 'parent', 'laura fosker', 'laurafosker@gmail.com', '14417071332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dce7c6d6-9cea-5a89-804d-89ae2d5509cd', '728df03d-0add-5499-bafa-c70301c8768f', null, 'parent', 'Chris Fosker', 'chrisfosker@gmail.com', '14417050520')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cc2e8ef4-e98b-592e-beab-7d5fff44515e', '349ab520-9b7d-5eb5-ae99-92bdb8985651', null, 'parent', 'laura fosker', 'laurafosker@gmail.com', '14417071332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fedcea41-5bd7-5557-9c7b-c2223104f353', '349ab520-9b7d-5eb5-ae99-92bdb8985651', null, 'parent', 'Chris Fosker', 'chrisfosker@gmail.com', '14417050520')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('132d8463-08d2-5d19-91b5-038f94a10057', 'a0e4c016-ee33-5747-9004-8957b80ade8b', null, 'parent', 'laura fosker', 'laurafosker@gmail.com', '14417071332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('76e52c63-fc90-5c4a-9b33-7b878f0fb8d5', 'a0e4c016-ee33-5747-9004-8957b80ade8b', null, 'parent', 'Chris Fosker', 'chrisfosker@gmail.com', '14417050520')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('39fcc86c-5b96-5c36-9974-0070bdeb9759', '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8', null, 'parent', 'Leroy Francis', 'lfrancis1982@gmail.com', '14417047399')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d57f76ca-1647-5547-be63-52f0cc54fa87', '7b27ee72-dbe7-50e5-bcb0-fae3fffd35d8', null, 'parent', 'Alisha Francis', null, '14417037399')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d7ea60fa-15d9-59f5-a580-806b14790c00', 'c57d9c56-d994-503f-ba0c-904e70efd349', null, 'parent', 'Tori Frank', 'victoria.f.frank@gmail.com', '14415995371')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dcf08cd8-dcf5-5a26-9570-14cb90afc2cf', '1ce90eeb-d7b3-5602-848a-3c5605a40192', null, 'parent', 'Tori Frank', 'victoria.f.frank@gmail.com', '14415995371')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cfedd6a4-dd33-56c6-9b52-c44090fced82', '397d117e-832f-5d88-a4c9-0187636dc200', null, 'parent', 'David Friston', 'dirfriston@yahoo.com', '14415344198')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7c223d3d-3312-5035-8d30-b7542bd8703c', '397d117e-832f-5d88-a4c9-0187636dc200', null, 'parent', 'meghan friston', 'meghan.earle@aig.com', '14415354198')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e85a8f74-505b-5d9b-9cde-9ff5e2206a7a', '9f531953-2d08-5665-a9c5-051dca3afb2c', null, 'parent', 'Shirene Fulton', 'shirene.fulton@gmail.com', '14415954086')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f1bc7042-5e5a-545f-8fb6-4979937fff9a', '02550e63-19d2-51fc-a57a-43f9900ec567', null, 'parent', 'Conor Gaffney', 'cgaff100@hotmail.com', '14417050560')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fcca5e5b-f8f4-5ca7-bc93-e41f538c0e39', '02550e63-19d2-51fc-a57a-43f9900ec567', null, 'parent', 'Geraldine Gaffney', 'geraldinegaffneydublin@gmail.com', '14417050852')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6232aa55-85fa-5ad6-8632-9c83bfdd009f', '1c25df15-d5b4-5811-bebd-d96bbbd2badd', null, 'parent', 'Vanessa Gaiton', 'vgaiton@warwick.bm', '14417051982')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('223229f9-ed99-596c-ac6c-e6040d5f9c66', '1c25df15-d5b4-5811-bebd-d96bbbd2badd', null, 'parent', 'Cleun Gaiton', null, '14417342250')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4bc50514-4789-5607-9f79-8c6a4e794249', '11057ecb-d321-5c62-b5e2-aff76f738bbf', null, 'parent', 'Allison Correia', 'allisonlcorreia@gmail.com', '14415342554')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6f71b29a-c136-5321-927b-3b9b2ebfdf70', '66e778cb-6789-5207-b08b-33f6da5f871a', null, 'parent', 'Katrin Gelhar', 'gelhar.katrin@gmail.com', '14415313126')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e645839e-c2c4-525f-a73f-8cf7ded64a77', '66e778cb-6789-5207-b08b-33f6da5f871a', null, 'parent', 'Martin Gelhar', 'martin.gelhar@gmail.com', '14415381307')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fda70e3c-c967-5d74-b96a-170a065e1390', '86f85ef7-c26c-5b1e-a0db-983206de63bd', null, 'parent', 'Katrin Gelhar', 'gelhar.katrin@gmail.com', '14415313126')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9ea17384-856b-53bd-b2c7-a7b1e0aba39b', '86f85ef7-c26c-5b1e-a0db-983206de63bd', null, 'parent', 'Martin Gelhar', 'martin.gelhar@gmail.com', '14415381307')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('70b511bf-4110-5778-88da-e407d994278b', 'ef9fda9a-b1f9-592b-973b-dd7086b1fa09', null, 'parent', 'Kayla Gibbons', 'kaylagibbonss@outlook.com', '14417074214')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e32e122e-d858-56f8-a669-f0567f90d37d', 'e4a71635-d8d4-5f3e-ace2-1adb8e94780a', null, 'parent', 'Nick Goddard', 'nick@pdg.design', '14417033278')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8b4ad594-2ffe-546c-9eaf-a1c9f8326e82', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', null, 'parent', 'Diliana Gormley', 'didi.tihanova@gmail.com', '14417037070')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a67d06b3-5bc6-5f9d-9264-fb27d7394684', '71f4fc11-b3d7-5edf-bca2-5200a68e6f62', null, 'parent', 'Thomas Gormley', 'thomas_gormley@yahoo.co.uk', '14417479904')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7cd2279e-a3e0-5200-b523-e691be54fa64', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', null, 'parent', 'Diliana Gormley', 'didi.tihanova@gmail.com', '14417037070')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2cfa0f57-854e-53b8-b37d-1fb598397f56', '9a06a464-8d7e-5534-bad8-dc8ec1c1f090', null, 'parent', 'Thomas Gormley', 'thomas_gormley@yahoo.co.uk', '14417479904')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('66f8a666-528a-5ec6-9934-20f35ba76fbe', 'e76a0577-cfc6-517d-878c-35a269345f6f', null, 'parent', 'Davon Govia', 'davonlamar23@gmail.com', '14415053652')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fa496193-aab7-5d64-9a1f-03daf3771c58', 'e76a0577-cfc6-517d-878c-35a269345f6f', null, 'parent', 'Christal Bennett-Govia', 'christalgovia@yahoo.com', '14415329213')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4c18a7fb-6790-56bf-9081-eee25d78c095', 'ff76a4d8-5d37-5ee6-a9a4-3d586028f6c7', null, 'parent', 'Chris Grantier', 'clgrantier@gmail.com', '14413318646')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('36d315fe-8101-580b-b96c-6f668301ac5a', '1d8be3a6-b804-5524-b0fe-c3a71617531d', null, 'parent', 'Chris Grantier', 'clgrantier@gmail.com', '14413318646')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cfdb9275-10a2-5080-adcc-6a61a1f1914f', '68bb26f3-72c5-56b0-bf35-d2256976d2e1', null, 'parent', 'Roydon Grant', 'mrgrantsr@live.com', '14415994906')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b1510f52-4b0e-5394-8adc-846216094d43', 'bc4ac85e-a4dc-53d8-8e6b-2617913b56b4', null, 'parent', 'Tené Grant', 'tene76@gmail.com', '14415042174')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('49da0106-db6e-5fe5-a1a5-4a97c8c1852c', 'bc4ac85e-a4dc-53d8-8e6b-2617913b56b4', null, 'parent', 'Chris Grant', 'richchrisgrant@me.com', '14415052174')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('386542ea-44e4-534d-9b9e-1bfc181981cd', 'eddc76af-e091-5320-a20d-fab50e72b1ea', null, 'parent', 'Michael Green', 'greenmichaelb@yahoo.com', '14417040850')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0629f1c3-f1f8-5343-8cb4-796233e31448', '25172d33-7821-5934-9a72-8a30dff936d9', null, 'parent', 'Marco Greenidge', 'marcogreenidge@gmail.com', '14415055673')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e23c9873-8075-5255-aad1-cbba5ac80cd5', 'dd6d81c7-e5c4-57ea-a999-6e0bc19bbecf', null, 'parent', 'Alexandria Greenslade', 'alexandria.greenslade@gmail.com', '14415055013')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bd4ef3cd-6f12-5ac9-9f70-27f6b239fac5', 'a7f852b5-70ca-5bd0-ba36-27e232e9cc50', null, 'parent', 'Rebecca Gregory', 'bec3dw@hotmail.com', '14415991005')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('30b6cf70-df44-5c83-9bb1-d3fdc7a5f461', '42f7a79c-8673-539f-aaab-8ec1ce85e477', null, 'parent', 'Rebecca Gregory', 'bec3dw@hotmail.com', '14415991005')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6c6f25c7-5fe4-5791-bfb9-f7ab5f4d195d', '5a6299cf-7ca6-5273-8284-3401a569d2f7', null, 'parent', 'Jordan Gunter', 'jordankgunter@gmail.com', '14417051454')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('25667675-0c35-5918-b8fb-983cf8daf561', '0b7e1372-8a01-5abe-90ad-adcd40102d90', null, 'parent', 'moon nguyen', 'nguyenmonghang1982@yahoo.com', '14417032415')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ab0acf9a-5b75-5ee0-8334-f68b1ea5115e', '18df82ab-c448-5a57-a0b8-5c01a5246d7c', null, 'parent', 'moon nguyen', 'nguyenmonghang1982@yahoo.com', '14417032415')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d1e95989-3dc7-5d14-b979-0c65b2143a08', '673036ab-0149-54a6-8fb4-5e5b49a949d6', null, 'parent', 'Faisal Haddad', 'faisalhaddad@hotmail.com', '14415342306')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('87bf1081-0fbd-549b-a5bd-fc45df4b1569', 'fcb62382-6601-5642-a787-c910e0c4d166', null, 'parent', 'Faisal Haddad', 'faisalhaddad@hotmail.com', '14415342306')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7bcbcc18-9488-5182-bc14-b77b6be37156', '86b80bde-f840-55fd-b517-1fea3825a1c3', null, 'parent', 'Andrea Haffar', 'ahaffar76@gmail.com', '14417996224')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8e3c932a-947b-5ed6-a828-2a8f3f04e2fc', 'f530d272-0386-59fb-8c95-8f236640bd06', null, 'parent', 'Claudine Pullen', 'claudine.pullen@gmail.com', '14415993318')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('576039b7-c584-52f0-a8d5-88372ffd3430', '22329006-cbfa-5c41-a01d-85f4e27faa44', null, 'parent', 'Jessica Marwick', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8932e7b3-bf43-59be-a078-1a8670766e91', 'e643ba8e-c593-5ea8-9152-eeef95e244a1', null, 'parent', 'Steph Harper', 'stephanie.clark166@gmail.com', '14417040486')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1254d219-12b2-5cf0-a3ee-503f4559b154', 'f1a3b675-fdf6-587d-a285-7dbbcd6f5f10', null, 'parent', 'Steph Harper', 'stephanie.clark166@gmail.com', '14417040486')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('57e6e688-40d8-58b9-9ab6-0d4a0104ff06', '8cf12749-55f4-586e-9830-148df38ccce1', null, 'parent', 'Steph Harper', 'stephanie.clark166@gmail.com', '14417040486')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0ceba3b3-39b9-558d-a450-1060df535e45', '96c58539-749e-5a90-be35-6de25dc1b252', null, 'parent', 'Nadja Talevi', 'nadjatalevi@icloud.com', '14417041703')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7e005ae4-0ca2-5db0-8aee-f2173cd8b767', '3efc671f-7bf6-5b65-967d-be176592861d', null, 'parent', 'Lauren Hayes', 'laurenmhayes@outlook.com', '14415360321')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a1b42227-e902-5936-9289-874b7c80b5b7', '3efc671f-7bf6-5b65-967d-be176592861d', null, 'parent', 'Otto Hayes', 'otto.hayes@lancashiregroup.com', '14415917665')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f239feca-ac35-5c37-b824-c0b59c00dd4a', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', null, 'parent', 'Lauren Hayes', 'laurenmhayes@outlook.com', '14415360321')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('00f2b4dc-ec8d-5526-b56f-906644c1770e', 'da5a6f40-bf4d-5246-ab13-21ad1e844942', null, 'parent', 'Otto Hayes', 'otto.hayes@lancashiregroup.com', '14415917665')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('83690881-46f8-5fa2-b233-0ca6f35f8b3d', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', null, 'parent', 'Vince Hunt', 'dvhunt@me.com', '14415958877')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('262ab8fb-198b-5d32-a26c-1dd5b1bdd7c5', '4577bdc5-3eb9-5d3d-8183-2f99ccc0f435', null, 'parent', 'Jen Ward', 'jen@inspired.bm', '14413350071')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('80610a51-5702-5887-b9df-533fc02256cc', 'd96c1eeb-4d2d-5ad2-8bd7-82828b896c74', null, 'parent', 'Ryan Hayward', 'ecsye@hotmail.com', '14415171905')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9a9da401-1655-5371-be66-33d3cde6deb0', 'd96c1eeb-4d2d-5ad2-8bd7-82828b896c74', null, 'parent', 'menique De La Rosa', null, '14417076044')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cc91838a-dd8d-5cfd-9253-8dec2bc289b8', 'aa777833-9a90-5eab-bb6b-f39847849be0', null, 'parent', 'Nicole Haziza', 'nicole.haziza@gmail.com', '14417775557')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('564c0ccf-8c4d-5766-b7e8-4b1f62868eff', '14413f5d-a90a-5e28-ab68-1be165c36e0a', null, 'parent', 'kris hedges', 'krisjhedges@gmail.com', '14415168946')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7b2ed761-8b65-5732-b13e-a87c1d26c15b', '14413f5d-a90a-5e28-ab68-1be165c36e0a', null, 'parent', 'caroline hedges', 'caroline.k.hedges@gmail.com', '14415195909')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d71d4ed6-ed88-5322-8d5a-f7cd52a81067', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', null, 'parent', 'kris hedges', 'krisjhedges@gmail.com', '14415168946')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3d7dad13-49b1-51cb-adde-0d989aba9529', '9e7bdb7f-1196-5cfb-a387-1ab3ceaccb85', null, 'parent', 'caroline hedges', 'caroline.k.hedges@gmail.com', '14415195909')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d287267c-973d-5359-9add-a5ba04316f9b', '8f29eb4f-9750-51c4-96e0-fde95fd8cb56', null, 'parent', 'Jayne Henderson', 'janeyjane80@gmail.com', '14417045610')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('09127299-3876-5c4f-99e5-28aa24b960e4', '968d4275-fc29-55aa-af35-9fa11897f0da', null, 'parent', 'Alesha Hendrickson', 'aemhendrickson@gmail.com', '14413362614')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5227a61c-d684-5a43-ba00-edc5f1731168', '80590dde-bd9b-57fa-8885-831f04d1f117', null, 'parent', 'jemma herget', 'jemma.herget@hotmail.com', '14417470340')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('389331d7-dc11-537a-9abb-2f29ac0e1c78', '77930f2a-c9dd-59d7-9680-252b36912223', null, 'parent', 'jesse herrick', 'jemnyc2003@yahoo.com', '14417071836')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6a8d8108-407e-577d-b6ea-cbd2ca623826', '75597304-5511-5a10-9f18-d453329e94b7', null, 'parent', 'jesse herrick', 'jemnyc2003@yahoo.com', '14417071836')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('92193454-cdbb-5126-ba6a-b47a246d629d', 'e9a5a24e-7da4-5e06-baac-1ad48e67e5bf', null, 'parent', 'Krystal Nanan', 'krystalnanan@gmail.com', '14415013162')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('681167a8-00b3-506d-882a-afa7f5b3104c', '85d3901a-24ce-575c-9534-e2a416b6f54e', null, 'parent', 'jessica hedberg', 'jessicahedberg@gmail.com', '14415376789')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2a8daff2-4aa4-5d94-bceb-559e9f6544e3', '10db1869-c011-5514-a0a0-4f988604c492', null, 'parent', 'Waynette Hollis', 'waynette.hollis@hotmail.com', '14413359296')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7b4b4d61-2862-519b-8525-2215ce95f19d', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', null, 'parent', 'jessica hedberg', 'jessicahedberg@gmail.com', '14415376789')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0c08833e-fed2-566a-aedf-bccf66579d45', '3afbe9c1-cbf3-51d7-9a63-346f5f510692', null, 'parent', 'benjamin holliss', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('db684b90-f515-59ce-bed2-9f9291c82483', 'b2574d71-38f4-5208-b5b0-b7de388a9358', null, 'parent', 'benjamin holliss', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('48829560-6563-53cc-8559-a0373c8b6a73', '16e2802f-be3d-540f-9f23-3a91e319e0ba', null, 'parent', 'NICKI HORAN', 'nickijhoran@gmail.com', '14415052496')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f3a4636d-e840-53e0-b95c-d7fafa0fb6b2', '16e2802f-be3d-540f-9f23-3a91e319e0ba', null, 'parent', 'David Horan', 'dhoran@warwick.bm', '14413330096')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f5133f08-ca51-5a9e-a38c-cbd58aa911f9', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', null, 'parent', 'Steve C Horton', 'steve.c.horton@gmail.com', '14415362022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('251c4803-00e0-5d41-b704-b24006ec7e8b', '46c140d1-8171-59a6-9ce1-d8bad2ab3f20', null, 'parent', 'emma horton', 'emma.m.collins@gmail.com', '14415336603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e086e25a-b71f-5fbe-9436-fd0be1b0e8cd', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', null, 'parent', 'Steve C Horton', 'steve.c.horton@gmail.com', '14415362022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a519769e-b3bd-5f6e-9ab9-e0e4d5ce6026', '90a0baa4-0b59-56f4-9fc6-f85da1f7a821', null, 'parent', 'emma horton', 'emma.m.collins@gmail.com', '14415336603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1846c886-becb-5323-8bfb-548c5e05212f', '29533d00-d286-59b3-8fd0-bbd2cf522d74', null, 'parent', 'Steve C Horton', 'steve.c.horton@gmail.com', '14415362022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('605f0940-af12-5acc-bbf9-e515d0a1d9ce', '29533d00-d286-59b3-8fd0-bbd2cf522d74', null, 'parent', 'emma horton', 'emma.m.collins@gmail.com', '14415336603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d1fab3d4-779e-5c4f-a5a1-5f3c77e6b64f', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', null, 'parent', 'Emma-Jane Hughes', 'emma@lillyandlime.com', '14415058531')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3a4d4ae4-2c28-5bf4-abc7-e0813c0983f0', '1d73c709-fc9b-5233-9cd6-b7357ea74b0e', null, 'parent', 'Andrew Hughes', 'ahhughes79@gmail.com', '14415048531')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ac6f109c-5126-5a61-95cf-34acf83c9785', '57347a63-a410-59c0-830c-29b18c1ed37d', null, 'parent', 'Emma-Jane Hughes', 'emma@lillyandlime.com', '14415058531')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8a7716c2-b8d2-559e-9597-149d6a83e3bd', '57347a63-a410-59c0-830c-29b18c1ed37d', null, 'parent', 'Andrew Hughes', 'ahhughes79@gmail.com', '14415048531')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9de5bbdd-df5e-549c-a4b4-76b6ab287d74', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', null, 'parent', 'Johann Hunter', 'johann.hunter@gmail.com', '14413335439')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5c47046b-a88c-5a25-bba9-280d73cb8fb7', '6d05cb95-3a97-5268-80ba-6d7149ff32bb', null, 'parent', 'Miranda Hunter', 'miranda.c.hunter@outlook.com', '14415339071')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a8377a9d-0622-5b68-b57c-1f8f86a50939', '5db8a455-3047-59df-bf5b-6ff070ab6fc2', null, 'parent', 'Johann Hunter', 'johann.hunter@gmail.com', '14413335439')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3dce9b3e-8e73-592d-b5e0-1fea75a4f401', 'db4d7107-4211-57ce-9ba5-4213313c4a21', null, 'parent', 'Charlanda Ingham', 'ccingham7@gmail.com', '14417771230')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fc5fead0-1df1-5245-a11d-f9b899eff642', 'db4d7107-4211-57ce-9ba5-4213313c4a21', null, 'parent', 'jazhari ingham', 'jazhariing12@gmail.com', '14417773487')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d2dfe19b-76db-543d-a39c-ec61dc22dae0', '022f8144-164f-528b-a5be-e2cdc6f1346e', null, 'parent', 'Paul Ivers', 'paulivers82@gmail.com', '14417031742')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dd82ef5e-80aa-5987-b4d1-48c9913a75a4', '9cc41e27-b47c-5ad3-b4b0-0a390bcec910', null, 'parent', 'Paul Ivers', 'paulivers82@gmail.com', '14417031742')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6b93cefc-5d5a-5a19-be09-561a244d14f5', '96dfaecd-1a9b-58cd-8378-7a62104aba95', null, 'parent', 'Shakia Webb', 'shakiawebb@hotmail.com', '14415059158')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e22e0fa8-c9b0-58b0-8e23-f24b0d62cbad', 'e8a58e96-7194-5350-bbef-e8f449d568e1', null, 'parent', 'Shaka James', 'shaka.a.james@gmail.com', '14415042413')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7743193e-bacb-573b-abed-59e339b6f89e', 'e8a58e96-7194-5350-bbef-e8f449d568e1', null, 'parent', 'Wolete James', 'wolete.james@gmail.com', '14415325537')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ff08e8fd-9988-50f5-b159-5cb8a4b62853', '4c663925-5dc0-5fe0-8e22-7494ed1c21f3', null, 'parent', 'Ashley Paynter', 'ashleynicolepaynter@hotmail.com', '14417991907')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('762e729f-8f3b-5a58-b891-09c80519de40', '4c663925-5dc0-5fe0-8e22-7494ed1c21f3', null, 'parent', 'Delano James', null, '14417073053')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ea136830-c6ec-5e27-8c0c-c6f0d8c26ed1', '4714649e-d2c4-58d5-b69e-03386944efcc', null, 'parent', 'Shaka James', 'shaka.a.james@gmail.com', '14415042413')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ef12fe0e-6a92-5476-a643-6864038a3e37', '4714649e-d2c4-58d5-b69e-03386944efcc', null, 'parent', 'Wolete James', 'wolete.james@gmail.com', '14415325537')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('047ee489-4c25-59d9-a642-e2c044f72a8b', '4e617f55-c967-5133-bd24-1a5fb30cf683', null, 'parent', 'Kate Jansma', 'krii@hotmail.com', '14415954145')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3183f16a-89de-5437-9756-68b3e8d13809', '4e617f55-c967-5133-bd24-1a5fb30cf683', null, 'parent', 'chris jansma', 'chrisjansma@gmail.com', '14415354145')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b86d0f71-153b-5e40-96fc-277e031d5c2d', 'ec70e6c7-809c-587a-a46c-259a74ce80e8', null, 'parent', 'chris jansma', 'chrisjansma@gmail.com', '14415354145')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0f49b500-46f8-5ba0-ab50-b5b61e0d8f8e', '24df5d46-df9f-59d1-a06b-bd439a035833', null, 'parent', 'Andrea jennings', 'trelita@hotmail.com', '14417320247')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bc147658-75e7-580e-ac26-53a1d2d594ae', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', null, 'parent', 'Lakila Johnson', 'lakila.johnson3@gmail.com', '14415146147')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f6c3a724-e8b8-5f6c-952b-c3006ed42be3', '261feef9-9ed0-5e0d-a751-1b7d383c35e6', null, 'parent', 'anthony johnson', 'ajohnson@onecomm.bm', '14417053750')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('16403a76-385f-5608-a102-e833afc2325b', '020a0987-b368-58b6-bd00-212aaf960c59', null, 'parent', 'Melody Johnson', 'bermudajohnsons@gmail.com', '14413056353')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4b52668a-d65f-5a19-973c-d6c49e13c8b4', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', null, 'parent', 'Emily Jones', 'emilyboden@hotmail.com', '14415040278')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6a184636-04ef-5c0b-9fc4-ee7a41878a36', 'd3c2ded1-3a13-5a94-bc5f-b6895ffe04dd', null, 'parent', 'Simon Jones', 'sjones@warwick.bm', '14415350146')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e4c61530-ee0d-5f3e-bf2f-160ae5d36fb5', '7e351d31-8753-571e-9720-8554e2ba0353', null, 'parent', 'Emily Jones', 'emilyboden@hotmail.com', '14415040278')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9fae0d9e-e6e0-50d4-abe0-2cabf6f8eb36', '7e351d31-8753-571e-9720-8554e2ba0353', null, 'parent', 'Simon Jones', 'sjones@warwick.bm', '14415350146')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b2d009fa-d490-5acf-8920-de12dd8d4f46', '55449e30-6d33-52a4-97ec-99fbc6fac475', null, 'parent', 'Paisley Jones', 'paisleyajones14@gmail.com', '14417076884')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('45b2bbfd-04a8-50e0-8f76-5026fb9a009d', '55449e30-6d33-52a4-97ec-99fbc6fac475', null, 'parent', 'Dal Jones', 'jonesdaljones@gmail.com', '14415349992')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a1bd36a1-32c1-51cb-b7bd-fc639a12b653', '6d3a6b1b-90a3-506c-9108-674372413b24', null, 'parent', 'Lindsay Keegan', 'lindsaywkeegan@gmail.com', '14415995010')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('82ad490e-bfee-535e-9a2a-c84f94162d19', '847e9a91-af85-5418-b4a2-071b93215730', null, 'parent', 'Joanne Kennedy', 'jkennedy@warwick.bm', '14415372205')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d8e6f230-91f6-5e8e-a129-bdf100ddbbcb', 'c8484b64-a79a-5d1c-85db-ad5dda7ff182', null, 'parent', 'Hayden Kenny', 'hayden.stewart08@gmail.com', '14417322504')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('484842fa-8b23-5b47-9866-b01c9e9f3271', '8cb20e7e-bdcd-5494-a260-0c92e892f380', null, 'parent', 'Hayden Kenny', 'hayden.stewart08@gmail.com', '14417322504')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('668961cc-b60e-5bc7-91cd-ac6d7591d726', '89b7d78b-6c4c-5b23-934a-4ff507c9f35d', null, 'parent', 'Azeem khan', 'azeembcv@gmail.com', '14417055224')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('17e5fa1e-6148-5317-9e4e-1586a6f71f7d', '87042eb2-fc2c-5407-8f67-008a156699dd', null, 'parent', 'jennifer kilby', 'jennifer.kilby@yahoo.co.uk', '14417038898')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('19266072-c405-5fcb-8171-8e8a06499830', '87042eb2-fc2c-5407-8f67-008a156699dd', null, 'parent', 'graham kilby', null, '14417075666')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('71903a8d-8ba3-5238-ac6c-76b1366be70b', '7ddaa62a-c490-51cd-8fc6-590b0819c4a0', null, 'parent', 'Charlotte Kimberley', 'covidtravelpa@protonmail.ch', '14415346685')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('587467aa-9a90-56f6-913d-707ac1627468', '7ddaa62a-c490-51cd-8fc6-590b0819c4a0', null, 'parent', 'Simon Kimberley', 'simon.kimberley@ascotgroup.com', '14415348010')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fabb9101-eae5-5afe-b042-a818096d1e7b', 'f1648a61-beba-596b-af87-fa35f6455c0c', null, 'parent', 'Troy King', 'troyking212@gmail.com', '14415380271')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('72f419c2-1c84-5dbf-9ac1-0bd0cf1be155', 'f1648a61-beba-596b-af87-fa35f6455c0c', null, 'parent', 'Ashanti Caesar', null, '14415322765')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('38dc944a-2064-514c-ba49-4673bcb578de', '72ac8d6f-6111-5b44-9af5-2885730cf1ee', null, 'parent', 'Thania Kopanski', 'thaniakopan@gmail.com', '14415360671')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e2073c84-aa05-51e1-929d-cf344a2239f2', 'c985c5d3-9940-5f09-9b99-e5ab8b225442', null, 'parent', 'Thania Kopanski', 'thaniakopan@gmail.com', '14415360671')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ac0f9041-6615-5d21-8883-c948b71c0fe0', 'cfe82441-a92d-566f-accf-b806798fe288', null, 'parent', 'Anna-Lee Lambert', '1976annais@gmail.com', '14417030383')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('851c29b9-e275-5413-983b-328eb44a9149', '475ce980-35c5-5772-962b-effb5928ced6', null, 'parent', 'Cara Lambe', 'caraphilip@gmail.com', '14417772387')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('be6860d7-6fb8-538f-bda3-305aa0902953', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', null, 'parent', 'Nelson Lee', 'zuhailahnelson@gmail.com', '14415916481')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e1a4c9ae-80be-5427-b3a2-f73e2c709d19', '4e5dd99c-eae3-5236-b02a-e89edc9edecd', null, 'parent', 'Zuhailah Lee', null, '14417046481')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dc8c909a-21e1-53e3-a41b-270f56b9222b', '0504a4d1-e764-51c7-ab58-ba5d15266535', null, 'parent', 'Sophie Lee', 'sophie.louise.lee@outlook.com', '14415364697')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fcda3b8b-190d-5f4b-adb9-20fb96db9d8a', 'd1980217-59d6-5ec3-8826-6f5b2a1098e5', null, 'parent', 'Sophie Lee', 'sophie.louise.lee@outlook.com', '14415364697')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('559bd32d-0944-594d-84a6-72a01c684e8f', '34048e3c-e792-5f50-af89-11de0b264280', null, 'parent', 'Evans Terer', 'evanskterer@gmail.com', '14415335037')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('15c36bb3-a29f-5471-bc12-ec9e6929067c', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', null, 'parent', 'Jason Leman', 'jlemanbda@gmail.com', '14417473509')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1bb85284-93c9-5c7c-962b-85297f301e55', 'e8a818a4-062f-54ba-8904-8a4aae86d82e', null, 'parent', 'Lindsey Leman', 'lindseyleman@icloud.com', '14417470280')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d4b34a20-b90b-5dd7-9d5d-ace9c2a79ed3', '14186bc8-3a68-572b-b1e6-2ab461709499', null, 'parent', 'Vendel Lightbourne', 'vendel.lightbourne@gmail.com', '16266607406')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ba6afee5-78b3-5a2d-8e55-c7287034db9d', '893e08e5-5f45-529e-b677-ddffe1fadd5d', null, 'parent', 'Shawnee Lightbourne', 'shawneebasden@gmail.com', '14417042772')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e7482eca-0129-55f6-b6a2-ebfa9ef1e3b0', 'e5724a31-11c1-5586-b302-9ec6e5e47257', null, 'parent', 'Kyle Lightbourne Lightbourne', 'kl161994@hotmail.com', '14417048810')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a7141079-80c8-5eba-865b-f5c7d4ff1f19', 'e5724a31-11c1-5586-b302-9ec6e5e47257', null, 'parent', 'Felicia Anderson', null, '14415320214')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1d219cdf-3509-518a-ab12-475d377119ed', '24986009-8615-533a-9442-0a38f81ff8bc', null, 'parent', 'Vendel Lightbourne', 'vendel.lightbourne@gmail.com', '16266607406')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('56aab23f-8607-5355-ada3-b1c04e96c4fe', '24986009-8615-533a-9442-0a38f81ff8bc', null, 'parent', 'Shawnee Lightbourne', 'shawneebasden@gmail.com', '14417042772')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('63a10d24-e763-5bdf-a4ec-21e37ebe2835', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', null, 'parent', 'Cindy Lightbourne', 'cindy_lightbourne@outlook.com', '14413382466')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2bd7e062-e100-5273-a927-d8926fcf9b98', '7b200ebb-7396-5d45-86b0-e68d013c2fc9', null, 'parent', 'Akbar Lightbourne', 'akbar_lightbourne@outlook.com', '14413380194')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7bd67f46-349f-53f0-af3c-3d98bb5666c2', '87d27f54-288b-5fb8-9f3f-10a77d33aa1a', null, 'parent', 'Stephen Lightbourne', 'stephenl.physio@gmail.com', '14415052789')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c8ffd802-8dc7-5eb2-87ba-48bd9b5309e6', '87d27f54-288b-5fb8-9f3f-10a77d33aa1a', null, 'parent', 'Anita Lightbourne', 'anitalightbourne88@gmail.com', '14415052998')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fa1687bf-ab07-571a-9031-8da93b6e564e', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', null, 'parent', 'Meredith Andrews', 'meredith@meredithandrewsphotography.com', '14415053686')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('df48b8f3-7b84-5c5f-b1b3-65510eadf680', 'a3b4089d-ee19-55d8-9b8c-d58b72a6f67a', null, 'parent', 'sami lill', 'sami@ubersuperduper.com', '14415053833')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d00e765c-c7d8-5566-b176-f2e621426b22', '9edd1daf-92c5-5134-aece-054ff4415f46', null, 'parent', 'Cody Lima', 'cody.lima1988@gmail.com', '14417058179')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ae5a3472-d1a7-5d07-867a-abd8c2038aab', '74719f37-0d3c-573c-98f1-d2fee940f8b4', null, 'parent', 'Maria Lingham', 'maria.lingham@yahoo.co.uk', '14415330126')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7a5d8b45-27b4-5b95-859c-23bddfd8b394', '84a0c88c-82f4-594b-b267-df244e02c1b9', null, 'parent', 'sara mcsweeney', 'tasaram@aol.com', '14415055361')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('98aa49ed-a995-54cd-a9a7-cbeafee9dcd5', '09a27caf-13d0-5ad0-a857-17d0a70c78f5', null, 'parent', 'Megan Llewellyn-Jones', 'megwoods13@yahoo.com', '14413664573')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3328a5a1-0522-50f4-becf-cf5c9cb87a1c', '61bdf130-24ab-5db4-8613-26ffd7c981b0', null, 'parent', 'Barry Lohan', 'blohan@gmail.com', '14415055744')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9f507fb1-619c-5277-a093-1bf7a604b66b', '61bdf130-24ab-5db4-8613-26ffd7c981b0', null, 'parent', 'Amanda Lohan', 'amandaeflohan@gmail.com', '14415357808')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('16951cdb-93cd-5906-b9b6-f2d0ada31403', 'e9ee7d76-7538-5b64-8222-281cd85385dc', null, 'parent', 'Stafford Lowe', 'stafford.lowe@gmail.com', '14415045693')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('68e64669-a88e-5716-9457-4a5b12ce5c3d', '4720f096-ce1d-57fc-96a0-24f226c6a518', null, 'parent', 'Stafford Lowe', 'stafford.lowe@gmail.com', '14415045693')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('73a46876-135e-5dea-a357-1284d33ec681', '70365bb8-f94b-58f4-835a-9786b4ccb133', null, 'parent', 'Danielle Lubbe', 'debaikie@hotmail.com', '14417046363')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d437c52d-0aa9-59cf-bb08-9a10a2b478c8', '0fe97380-3602-55f8-a505-c1e1f2dec853', null, 'parent', 'Andrea Luber', 'andrea.luber@yahoo.com', '14413313229')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('734a1fce-d197-5bf9-bf12-2d4ee12d2022', '0fe97380-3602-55f8-a505-c1e1f2dec853', null, 'parent', 'Michael Luber', null, '14413313233')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fbfbbe59-7e30-5115-bd34-1b16ccf1f695', '16493453-cc88-5a14-a55e-ee468942fba9', null, 'parent', 'Andrea Luber', 'andrea.luber@yahoo.com', '14413313229')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bda0cd93-419d-5950-a0fb-673c5a697255', '16493453-cc88-5a14-a55e-ee468942fba9', null, 'parent', 'Michael Luber', null, '14413313233')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7bfa8527-b1a6-5e83-9ae2-7e463ea80ad7', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', null, 'parent', 'Andrea Luber', 'andrea.luber@yahoo.com', '14413313229')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d02cb215-3e01-58f4-bc3f-a8e9e787ce50', '74e54ab6-a867-5ecd-8ec2-58043ccec70e', null, 'parent', 'Michael Luber', null, '14413313233')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5c83d6ad-e9de-596f-80d6-5c00dead4ff1', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', null, 'parent', 'Kris Lynn', 'kristopher.g.lynn@gmail.com', '14417044757')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('670c4ce3-1933-52d1-a573-ed31e7e5b16e', '269960a2-b54f-5468-9a4c-fd0ef54c8f2a', null, 'parent', 'Lisete Moniz', 'lpsm333@gmail.com', '14413383103')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('67a3fe6a-23fd-5508-b88d-3b78981a2472', '207f46f7-69ec-5015-bb20-a9567b31a4f9', null, 'parent', 'Julie Lynn', 'juliebda@gmail.com', '14415311769')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2080e791-e165-5221-bdb1-6227b6da3d1b', '207f46f7-69ec-5015-bb20-a9567b31a4f9', null, 'parent', 'Kris Lynn', 'kristopher.g.lynn@gmail.com', '14417044757')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8fa8df66-5776-53a7-b013-4dc16dbe4df0', 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da', null, 'parent', 'Kris Lynn', 'kristopher.g.lynn@gmail.com', '14417044757')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7bcb83d7-1715-575c-9568-8fe2bd5cfb08', 'b3ccebd5-cefe-5c28-ad9e-fb393c7f36da', null, 'parent', 'Lisete Moniz', 'lpsm333@gmail.com', '14413383103')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7dc4391e-0f5b-5fa9-b554-cddaf7d1f1a5', 'ee7aa22c-1b66-5ec5-bbd9-8ec3db0f6900', null, 'parent', 'Graham Maddocks', 'grahamtriangle@gmail.com', '14417053536')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('67c90bfa-3429-56c6-aefa-15e1a6c20d4d', '18598115-6ffb-5b27-8291-464dba3ec587', null, 'parent', 'kelly madeiros', 'kclarke_18@hotmail.com', '14415311532')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('85a4d65b-127d-53cf-ba6d-f584bbf8da73', '18598115-6ffb-5b27-8291-464dba3ec587', null, 'parent', 'David Madeiros', 'davidmadeiros@gmail.com', '14415956666')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b9034d27-5549-5af7-8ca3-8ec3b026366f', '32052cd6-f214-5bd6-9d9b-46836acc3893', null, 'parent', 'Elizabeth Madeiros', 'elizabeth.madeiros82@gmail.com', '14415318931')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c1d00e5d-2b14-5ca5-b4d6-ee3030c18e67', '7c79409d-1816-5dd3-b306-3b95034087d6', null, 'parent', 'Peninah Muchai', 'muchaip.pm@gmail.com', '14415147304')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dc54511c-090c-5986-9114-ce25189ccb5b', 'a482284e-aa76-543a-88c1-a75ce9e1afa8', null, 'parent', 'Kristina Maragliano', 'kristina.maragliano@gmail.com', '14415360603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('98bc7cdb-7642-5947-9286-f89faf507261', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', null, 'parent', 'scott maries', 'scott.maries10@gmail.com', '14415361176')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c9d311cd-0cb1-5f8d-b25c-6b579e147a78', 'ef34a716-22b0-5565-a2d3-5b0863fe7362', null, 'parent', 'Nichole Maries', 'bldgupnotdown3@gmail.com', '14417059405')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5bfc41ef-3674-5963-8b97-aeeeea794157', '7605753f-5437-555d-81ad-4c523fcc364f', null, 'parent', 'Lorraine Maringazuva', 'lorrainemashiri@gmail.com', '14415241155')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6ed11d59-6d51-5f6c-9935-c46d23155409', '7605753f-5437-555d-81ad-4c523fcc364f', null, 'parent', 'Tapiwa Maringazuva', 'maringazuvat@gmail.com', '14415047550')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1c0f4f28-576c-523b-b5b9-69cee1cc85f8', '5242ab96-46ce-533b-b39e-53db7715c560', null, 'parent', 'Lorraine Maringazuva', 'lorrainemashiri@gmail.com', '14415241155')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d5ff0a20-102a-50fe-8038-b219f0d4c81a', 'c88d7457-8b64-59f7-9545-6223e9b6a9ab', null, 'parent', 'Andrew Markus', 'andrew.markus@gmail.com', '14415915509')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('496ad56b-4070-5705-b2ad-9d080613ab15', 'be5dbabf-3f8b-5087-88cc-74e38a571467', null, 'parent', 'Andrew Markus', 'andrew.markus@gmail.com', '14415915509')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bd21dcbe-2b32-51c0-bbef-779806e6c496', '82b5af6a-67ef-579f-bec2-fffb18b19b54', null, 'parent', 'Eshe Coleman', 'eshejmc@gmail.com', '14415950802')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ebf9cc7a-8e35-5187-92c8-aec59b01b532', '82b5af6a-67ef-579f-bec2-fffb18b19b54', null, 'parent', 'Chane Marrow', null, '14415957987')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1106f871-d23b-5d15-8138-c2d49a70e37b', '89b423ee-08b5-59aa-8543-ffe792576394', null, 'parent', 'Emma Pearson-Matcham', 'epearsonbda@gmail.com', '14417073662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ecacfb92-12fe-548c-9148-8908209128ce', '8660b42b-f011-5475-84bb-f7de8b7df4d4', null, 'parent', 'Emma Pearson-Matcham', 'epearsonbda@gmail.com', '14417073662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fb86d5b7-46dc-543f-9db2-59a8503bcdde', '4745bf5e-d536-5afe-866f-32944fd493d9', null, 'parent', 'Phil Matthews', 'phil.matthews0505@brcl.bm', '14415370505')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('388697d1-4e20-5376-9f43-7f1e6bc5cc71', '4745bf5e-d536-5afe-866f-32944fd493d9', null, 'parent', 'Claire Matthews', 'clairebethan@hotmail.com', '14415196833')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1438a059-9fa9-5dcb-a571-9bacb1a9dbec', 'b365964c-594b-5f41-a202-d0d456d9486f', null, 'parent', 'Laura Mayne', 'laurasmith@furniturewalk.bm', '14415050623')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('82a10503-fd71-5d1e-929f-df5cecca6896', 'cbccba11-359f-5286-ab6f-d7417675f474', null, 'parent', 'Laura Mayne', 'laurasmith@furniturewalk.bm', '14415050623')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('22e2f9f1-9a0f-55db-8f19-8a9a92a091d9', '909a8772-e4e2-513a-aabc-05f7d16a0c84', null, 'parent', 'maureen mcbain', 'mcbainmaureen@yahoo.co.uk', '14415362209')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cee67470-3188-559d-b4bd-ae738767df1c', '909a8772-e4e2-513a-aabc-05f7d16a0c84', null, 'parent', 'mitch mcbain', 'mitch.mcbain@ascotgroup.com', '14415337412')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('50bf68ce-fc17-55e4-8040-bc0b12327fea', '5fad023d-aeb3-5297-96cc-678249b96d24', null, 'parent', 'Jessica McClure', 'jessica-mcclure@outlook.com', '14415322107')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9a46f070-fda3-54ac-840d-7404475aa737', 'd26fa2ac-24fc-50cb-a087-c1a6ad23f2a9', null, 'parent', 'Jessica McClure', 'jessica-mcclure@outlook.com', '14415322107')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6691f499-158f-597f-a8fd-4e218b3b3cda', '65426883-2f34-5576-b09c-22f2a311426e', null, 'parent', 'Teresa McCullough', 'temccullough22@gmail.com', '14415330389')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6c634d67-9c87-52b4-98b2-ddf281a1835e', '65426883-2f34-5576-b09c-22f2a311426e', null, 'parent', 'Joshua McCullough', null, '14415911030')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f94095de-9db9-57cf-adf9-4bdebb054787', '6468287f-e96f-5d84-a85d-5f2a8df8ee9d', null, 'parent', 'Jamie McDowell', 'jamiemcdowell1979@gmail.com', '14417041479')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2fc8b0fc-406d-5b6d-a88d-8afb9109595a', '48bac52b-f67e-55ef-89e3-f036e5db7668', null, 'parent', 'Conor McGlynn', 'conor.mcglynn@aon.com', '14417074594')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3b97bb21-a858-56a4-b5a8-86c58762abbb', '48bac52b-f67e-55ef-89e3-f036e5db7668', null, 'parent', 'Amy Harvey McGlynn', 'harvey_amy@hotmail.com', '14415043888')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1d86054d-c20d-58ff-b847-7b9129c6a113', '37b0ca02-ded2-52da-b894-2b1235c4bda9', null, 'parent', 'Conor McGlynn', 'conor.mcglynn@aon.com', '14417074594')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f1f22028-83dc-51e0-97ba-c037dd1efc5e', '37b0ca02-ded2-52da-b894-2b1235c4bda9', null, 'parent', 'Amy Harvey McGlynn', 'harvey_amy@hotmail.com', '14415043888')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2b7d69a6-59be-5651-8f63-d0f93b8797b1', '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2', null, 'parent', 'Sandra Balek', 'sandrabalek@hotmail.com', '14415165675')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7e5f59b3-e6d4-5581-b2a7-007f4aa257df', '7cf6ea53-4568-5cb4-97fd-e70f8e757fe2', null, 'parent', 'shane mckay', null, '14415354887')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('77dc4397-6818-56ad-b6be-fa9d2c8ab8c0', '19778fc8-9705-568d-b15d-fc523e392ed6', null, 'parent', 'Sandra Balek', 'sandrabalek@hotmail.com', '14415165675')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4174841c-bee2-5342-af77-b18d641eee53', '19778fc8-9705-568d-b15d-fc523e392ed6', null, 'parent', 'shane mckay', null, '14415354887')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7acce06e-ca06-55bb-8039-1ae5f7cc2285', '3e653cdb-0ea4-5b9f-9545-d6ff7fe49c81', null, 'parent', 'Kristin Mcsweeney', 'kmorawski@gmail.com', '14415331206')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8766154e-e37d-5cc3-bf6a-f57c7c1bd9d2', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', null, 'parent', 'Leanne Wheatley', 'leanneelisabeth79@gmail.com', '14413333302')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('53dd6447-c61d-535f-bc87-a57e786bad82', '906ec451-8b43-53dc-bb69-8a5ac4d08c7a', null, 'parent', 'Sean Wheatley', 'seancwheatley@gmail.com', '14415992225')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('27ba1b82-243c-5da4-930f-f0eec88e2c93', 'f0e1550a-94f3-5148-948e-c68cf4d4d1f2', null, 'parent', 'Kerri mello', 'kjasper22@gmail.com', '14415333636')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2193ff33-4a63-5572-8d3e-7e2efde0219c', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', null, 'parent', 'Catherine Mello', 'clmello@hotmail.com', '14417990254')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a2a18908-204a-5107-9677-b91bc2e9f757', 'aa63ddca-cacb-5b8c-8b89-07a3e0e6e315', null, 'parent', 'Glenn Mello', 'glennmello@hotmail.com', '14417051111')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('821b8679-1f3e-5dbb-ad06-c43eeb04d1ba', '7dc670c0-28e9-534f-b7de-0a12520455d4', null, 'parent', 'Sonya Mello', 'sonya.darakova@gmail.com', '14417045339')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c637ca2c-4448-5c7e-9760-45150c54d6b8', '7dc670c0-28e9-534f-b7de-0a12520455d4', null, 'parent', 'Kevin Mello', null, '14417074803')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f8e06180-19d9-575c-ae27-bddc00568fde', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', null, 'parent', 'Catherine Mello', 'clmello@hotmail.com', '14417990254')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('365e865d-d691-541c-98e3-724f3d7c8e35', 'bdf2f768-ebe2-55d1-a356-974eb3c4a899', null, 'parent', 'Glenn Mello', 'glennmello@hotmail.com', '14417051111')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('094b343c-58b6-5c27-bca7-2ee5b23a31d3', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', null, 'parent', 'Catherine Mello', 'clmello@hotmail.com', '14417990254')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dfe99d93-a1f6-5a61-91aa-d4cb60f8fc9b', 'b7b9dc06-ae70-5a70-a4b3-8fd30cdf7236', null, 'parent', 'Glenn Mello', 'glennmello@hotmail.com', '14417051111')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1bfde81e-faa7-5c9d-a498-9dfa949cc3b8', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', null, 'parent', 'Natasha Ball- Melo', 'shooting_star75@hotmail.com', '14417042201')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e039e9ec-5f72-5d44-b177-64b0c6889f43', 'f5c5c2a6-d747-535b-9089-38b4a323d4b6', null, 'parent', 'Paul Melo', null, '14417771206')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('42571a35-9abc-516a-a75e-a5b362ace7ff', 'baca6eec-74b2-5602-b2fc-683b61eea09f', null, 'parent', 'Laura Fortunato', 'laurafortunato2017@gmail.com', '14417044387')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d14c7180-49c7-53d7-a1ca-b09504789149', 'd775f4ae-d233-5835-926a-6e55d2fe1524', null, 'parent', 'Sarah Miller', 'sarahmiller0523@yahoo.com', '14417055154')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1c98105e-f742-5421-ad3e-b4a295ce8c5e', 'd775f4ae-d233-5835-926a-6e55d2fe1524', null, 'parent', 'Ryan Miller', 'miller.ryan529@yahoo.com', '14413052648')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8b062e97-d144-5944-b10d-9d0c2a8c7fce', 'a9fb6d05-b163-5a2d-9149-05722e2e0584', null, 'parent', 'Patricia Mills', 'kempe.patricia@gmail.com', '14415350777')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('76c0304b-eb56-5dc2-81e9-9d1d1d6b76b9', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', null, 'parent', 'Samantha Mohs', 'samanthagmohs@gmail.com', '14415310422')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('60e81d45-ca00-5995-81e6-516bd5b1f882', '73018665-791b-5d03-9c6a-ffcbbd8af0b4', null, 'parent', 'John Mohs', 'johnpmohs@gmail.com', '14415333387')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ddec2b7a-39cf-5694-af45-139021fd0867', '8d6f5b56-549e-51ee-8347-b54b9c8eccd7', null, 'parent', 'faron moniz', 'themonizes4@gmail.com', '14417470442')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7dd15b38-822c-5464-b752-df12d4512019', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', null, 'parent', 'Karen Mora', 'kmora04@hotmail.com', '14415312723')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d58937e6-d457-518e-83f7-230925d4c3f0', 'e7a12f39-9b4c-52d2-9634-06ea6d9f5324', null, 'parent', 'Shane Mora', 'shanemora247@gmail.com', '14415001000')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('372e5176-334f-5cb2-a8dd-585272d7da5c', 'b4d9686a-2956-5819-bdd6-4549c929eb93', null, 'parent', 'Jossie Morrison', 'jossiejvmorrison@gmail.com', '14415992710')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a16e56a3-4259-553b-b788-d7932eede0a6', '2086e886-f221-56fe-8d00-f15e964ddf5d', null, 'parent', 'Simon Morton', 'morton.si@gmail.com', '14417052063')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b6544475-3aba-5b7d-a195-711109576adf', '2086e886-f221-56fe-8d00-f15e964ddf5d', null, 'parent', 'Hayley Morton', 'hayley.faries@gmail.com', '14417052533')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('72043c95-ad84-505d-96e3-64db340500a7', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', null, 'parent', 'Gillian Mufandaedza Kahari', 'gilliankahari@yahoo.com', '14415388993')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('53d37cd6-0e60-51ee-bb2a-257ec3bdcad7', '99a17b40-27cc-5afd-a8a8-a0e42b8cd281', null, 'parent', 'Moses Mufandaedza', 'mmufa@yahoo.ca', '14415373626')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e17835a2-2a4d-57ed-8de6-0211425e6ef3', '0183ce8c-53b1-5287-948f-b0e734d768ab', null, 'parent', 'Irene W. Rugiri', 'rugiriirene@gmail.com', '2.54722E+11')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f9042c8c-c6fc-5ae0-b36e-3384e48dcb2b', '0183ce8c-53b1-5287-948f-b0e734d768ab', null, 'parent', 'Dave Mugo', 'davemugo@bermudainstitute.bm', '2.54105E+11')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('300ed1b3-11bc-54a8-8885-0859aa2a5fca', 'caeea1fb-5910-54d0-a856-b485d294f309', null, 'parent', 'Eimeir johnston', 'ejohnston28@hotmail.co.uk', '14415950078')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3dad62cc-2a0c-5ee3-942d-1ac2f233b7ae', '345d867f-775d-5ae4-ba42-b57f8b7be60f', null, 'parent', 'Eimeir johnston', 'ejohnston28@hotmail.co.uk', '14415950078')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('82c1662f-1e03-5cd8-8f0d-d3579dae3090', 'c05a7ab9-9eca-568c-80bc-29c63c77d6bd', null, 'parent', 'Harry Munro', 'harry.j.munro@gmail.com', '14415342112')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('701d3a9f-f5df-5d31-9ecd-fc1aca0a5540', 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa', null, 'parent', 'paul murphy', 'pemurphy83@gmail.com', '14415201535')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0cee88f3-bf37-5713-a647-1d69cc845722', 'e7032db6-09dd-5ab7-9d5c-de6aa17b99fa', null, 'parent', 'Holly Murphy', 'h.r.needham@gmail.com', '14415057763')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('57d57f88-517a-5749-b6be-5759d3a184bc', '8b2a7f1e-2867-5401-b74d-59e1c3b241b2', null, 'parent', 'Patrick Murray', 'pmurray@chc.bm', '14417044010')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('43de217e-a02e-5c62-aea1-cb993ddeacde', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', null, 'parent', 'Kijuana Musson', 'kijuana.musson@gmail.com', '14415346429')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c78cc9f7-5446-57e6-a554-a9c92d349dd2', 'c8a5663d-5c3e-599d-9f7f-6c7e6b922bb0', null, 'parent', 'Dennis Musson', null, '14413334919')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('aa925519-b8ee-56b3-823a-713f408e8d64', '0cb6114f-be5c-53ab-aa23-0e543e51cf26', null, 'parent', 'Betsy Robbins-Mutch', 'betsyrobbinsmutch@me.com', '14415992525')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5c330384-df4f-54e6-8f78-74e06e6b57e8', '0cb6114f-be5c-53ab-aa23-0e543e51cf26', null, 'parent', 'Ian Mutch', 'ianmutch@icloud.com', '14417322525')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6f06bded-cdcb-5273-a07c-21642e8359ea', '93380d98-efc5-569c-b890-4e8d9139c036', null, 'parent', 'Betsy Robbins-Mutch', 'betsyrobbinsmutch@me.com', '14415992525')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('74ee710b-e37b-5b26-aa92-76a4cb319626', '93380d98-efc5-569c-b890-4e8d9139c036', null, 'parent', 'Ian Mutch', 'ianmutch@icloud.com', '14417322525')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('80636df9-423a-5246-8e36-12c2111b7320', 'd1070fbc-8620-53c0-8055-a5861e8004ed', null, 'parent', 'Najla Muwwakkil', 'najtjx@gmail.com', '14415992783')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a7f0f704-f4bd-53b2-863d-77093e160948', '42e232dd-cdbf-5793-9c12-e57fd04acea8', null, 'parent', 'Sarah Mwalilino', 'sdecormier@yahoo.com', '14417052016')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5c037336-fcec-5307-ac7c-6d770d174d6f', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', null, 'parent', 'Anne Ngaruiya', 'annekogi@gmail.com', '14413338964')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7ec22833-7b77-5264-8a01-ad876dbe372f', 'f5c42d69-d88c-586a-9152-4dc7faf1c95f', null, 'parent', 'George Ngaruiya', 'georgengaruiya2008@gmail.com', '14415244662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4ac22645-6c8d-554d-b90c-2ae5c5ec0b9d', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', null, 'parent', 'Anne Ngaruiya', 'annekogi@gmail.com', '14413338964')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e0fdfcdc-b278-5c5d-8ad8-603108b863e9', '04fd6c6d-cfe0-5b41-bdff-b8e18cafb44e', null, 'parent', 'George Ngaruiya', 'georgengaruiya2008@gmail.com', '14415244662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a913f669-5ac9-5cf6-9c4f-8bcaf104512b', '51cc7782-5e8c-5d30-a79c-435f50ac1828', null, 'parent', 'Anne Ngaruiya', 'annekogi@gmail.com', '14413338964')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('431d2fcd-774d-5273-9c0f-d2f5b3788808', '51cc7782-5e8c-5d30-a79c-435f50ac1828', null, 'parent', 'George Ngaruiya', 'georgengaruiya2008@gmail.com', '14415244662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3023586f-c1db-59f7-acbf-accbf8985050', '520dd8e3-f038-5bc3-a816-24f73a16a494', null, 'parent', 'Claire van Overdijk', 'c.overdijk@sky.com', '14417998905')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f84a6fea-1979-5e9b-8163-0d5a58cacd34', '520dd8e3-f038-5bc3-a816-24f73a16a494', null, 'parent', 'Claire van Overdijk', 'vanoverdijkclaire@gmail.com', '14417076567')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('34030a58-5d8f-516e-8ce5-feaf7dfced5f', '8c0f1d59-2601-5012-bdc0-a67d83378be1', null, 'parent', 'Eunice Mufambi Nyamunhepa', 'emufambi8@gmail.com', '14415170069')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('11a606cd-73bb-5c27-9748-c6278b3e9d6c', '69b4564d-d655-5230-8807-2998988cbfcc', null, 'parent', 'emma oconnell', 'emmamayrego@gmail.com', '14417373662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('adfb7a24-bd29-5693-bff6-a300f9d2d559', '4352ec85-4b7b-5521-8e25-35ccfe7e310f', null, 'parent', 'Stephen O'''Flynn', 'soflynn11@hotmail.com', '14413383010')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f2164ba6-22e0-5535-8c02-2622a77c0001', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', null, 'parent', 'Deirdre O'''Hanlon', 'deirdrepmccaul@hotmail.com', '14415995014')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4fb2e498-97c3-5711-b08e-a06e3657b2cc', 'dc0a7ce9-6ba3-544a-ab75-24acc0696956', null, 'parent', 'Tom O'''Hanlon', 'tomohanlon123@gmail.com', '14415999729')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9b780993-98f9-5eb3-a219-22928a383ece', 'cbaf5661-2631-5223-bffd-b72a23504f81', null, 'parent', 'Alexander O'''Shea', 'alexoshea1@hotmail.co.uk', '14417052748')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3fa1db83-abc9-50c5-8b07-28c5e3e1c2ed', 'bc34df30-0214-5471-8563-728919201031', null, 'parent', 'Mark Ogilvie', 'markaogilvie@yahoo.com', '14417055270')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('abfd6e38-601d-5195-8587-209431d61313', 'd483e025-2f50-563e-baf8-fdd66232144f', null, 'parent', 'Alexander Ooko', 'alexooko@gmail.com', '14415317314')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('32174bc7-2d3e-5db8-911b-cd3d2e1f3eba', 'd483e025-2f50-563e-baf8-fdd66232144f', null, 'parent', 'Jane Wambugu', 'jwamuyu9@gmail.com', '14415345485')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b58ce284-095e-589f-af05-233fe98a416a', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', null, 'parent', 'Alexander Ooko', 'alexooko@gmail.com', '14415317314')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('76d3043c-1d7f-5ed2-9e9e-6236ea4f340e', 'c3d4fa30-c404-50b9-996c-b5c53cd5b3b8', null, 'parent', 'Jane Wambugu', 'jwamuyu9@gmail.com', '14415345485')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('470c1f02-2414-5555-ba68-44ea058544d8', '0b8eb0f2-ed7a-51c5-9807-67782dfa2f5a', null, 'parent', 'Cassandra Cooney', 'cassandralortega@gmail.com', '14415313004')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('64fe777c-daf9-524e-aee3-1417d1a6aa48', '8d6a1808-3373-5e3b-8575-ec757a592694', null, 'parent', 'Fernanda Owen Alaniz', 'fernandaapplebaum@gmail.com', '14415331609')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dc80694c-33ff-50b3-8b00-c2d2e8b9f58c', '51ec0b61-44b9-5075-945f-66f2dc561633', null, 'parent', 'Fernanda Mae Owen', 'afowenhome@gmail.com', '14415994301')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('441bbeab-f08e-5e76-8a66-84eb377d0afd', '51ec0b61-44b9-5075-945f-66f2dc561633', null, 'parent', 'Andrew E. Owen', null, '14415343739')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a5c59b39-59f2-55e4-97fa-b7a5b412f604', 'd644b446-34f5-5d01-831d-59e0eb15a89d', null, 'parent', 'Fernanda Owen Alaniz', 'fernandaapplebaum@gmail.com', '14415331609')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c05289e8-a89d-56b1-8690-04e0dc6472e5', '14b44cce-0e32-5ef6-a268-d185c785151f', null, 'parent', 'Fernanda Mae Owen', 'afowenhome@gmail.com', '14415994301')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2e378c19-145e-55f3-9f16-fe4adbcd5c99', '14b44cce-0e32-5ef6-a268-d185c785151f', null, 'parent', 'Andrew E. Owen', null, '14415343739')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a1dee516-4c7b-5055-81a5-69d030bf9bf6', 'f1a056d0-8400-5376-aca4-f84c3872d941', null, 'parent', 'Stephen Palmer', 'stephen.n.palmer@gmail.com', '14417771103')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('86ef3d79-c59f-579a-8d60-25a1ffd6116d', 'f1a056d0-8400-5376-aca4-f84c3872d941', null, 'parent', 'Victoria Rodriguez', 'vicki.a.rodriguez@gmail.com', '14415184922')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('eb4da58c-8a35-5a64-9c3b-6a9fcf79d76e', 'e269fedd-4413-5f62-8bbf-74b476818f77', null, 'parent', 'Steve Parker', 'steve@steveparker.org', '14415362604')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bbe900d9-18cc-52c6-ba5a-7709e9c6bd43', '2da9b3b5-8f55-5c4a-a586-1cacbe122c23', null, 'parent', 'Sacha Pedro', 'sacha@thepedros.com', '14413335789')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('da954e54-f685-5435-8c2c-2514bf7622b7', '54682ffe-d36c-54da-b32d-f55f6773ce19', null, 'parent', 'Claudia Mibelli', 'cmibelli@yahoo.com', '14415040162')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('da03a494-2229-590b-b29e-555b96c638bf', 'e4e19228-143f-5adc-9aa6-21e431a9663f', null, 'parent', 'Vanessa Peniston', 'vpeniston@archgroup.com', '14415350224')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4f8e4b14-ceb9-5d2c-a731-ad9364b1f891', 'e4e19228-143f-5adc-9aa6-21e431a9663f', null, 'parent', 'James Peniston', 'james.peniston@gmail.com', '14415320228')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('428c7844-1867-53a4-b369-19a0421bcd27', 'f2e8a492-1a30-5916-aed9-6502924db602', null, 'parent', 'James Peniston', 'james.peniston@gmail.com', '14415320228')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('64260a8f-70fa-5098-8b60-72f11ec90140', '7c1020d6-a4e3-5ec5-aa1d-0ca721f124c0', null, 'parent', 'Ashley Peniston', 'aking1987@live.com', '14415914711')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4b879144-7fb2-56cd-92f7-e036b7e7bd80', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', null, 'parent', 'sam peters', 'scortlives@outlook.com', '14415266347')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('915e32a8-f493-54d4-9a79-b28af5da36b2', 'ba66cb6c-25e8-5a6e-9b29-3901b5014c8a', null, 'parent', 'Lorissa Peters', 'lorissaw@yahoo.com', '14415189513')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('47ea4121-c315-5719-82f8-419554126def', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', null, 'parent', 'kelsey petty', 'k.pettybda@gmail.com', '14413317323')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('47ea4121-c315-5719-82f8-419554126def', 'b5952fc5-fd71-56f2-a07a-0f9b6c612363', null, 'parent', 'kelsey petty', 'k.pettybda@gmail.com', '14413317323')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ddf53111-1717-5148-a4c8-bdb5f7c2f5f6', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', null, 'parent', 'Khalid Pitcher', 'khalidpitcher@yahoo.com', '14415912440')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('46487cfa-3832-5c24-a1dd-ecfc260a84fb', '0a8e5555-e1e6-5381-905d-f36a7d571ff7', null, 'parent', 'Raina Steer-Pitcher', 'rainasteer@icloud.com', '14413372462')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4e8e6376-4f3d-5206-9b20-e653ea7b5376', '41bfdee6-e11e-516b-bb0a-83f9992ddb7f', null, 'parent', 'Monika Pitt', 'monikajpitt@outlook.com', '14417045450')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('815788d8-7cdd-50e4-bc3a-58d092c7e2a5', '75ea0cc7-9ce5-5587-883a-0a7ee636f757', null, 'parent', 'frances Portelli', 'francesportelli@icloud.com', '14415373726')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a5772345-009a-5e4b-982f-86d58e4fbdd1', '338f0ff5-6299-56ea-937f-6e3948c3a8c3', null, 'parent', 'Kerry Potts', 'kerrybda@gmail.com', '14415350100')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('51ea341b-5732-5c2b-96c3-f7b40e26fa8d', '2fa76faa-4264-5b1b-9195-b7aadfbe091f', null, 'parent', 'shabnam ahmed', 'jayandshab@gmail.com', '14415332753')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('822f7f4a-4917-5242-b975-f10bf03e0aa3', '1153b981-f86a-5497-917c-b4d1fb28ecb6', null, 'parent', 'shabnam ahmed', 'jayandshab@gmail.com', '14415332753')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f8a7d436-b848-5aac-b3f4-796bf4ff853c', '28a96007-d2ae-57c8-916a-68ef181a34ee', null, 'parent', 'shabnam ahmed', 'jayandshab@gmail.com', '14415332753')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c802e6ab-1252-5386-a5d6-6013abeb967a', '8a184e23-4f08-50a6-9882-c8ab52949adf', null, 'parent', 'Mark Raposo', 'mrandmrsraposo@gmail.com', '14415058482')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bccc26b3-6cd3-5129-a87b-56f6b2b85574', '8a184e23-4f08-50a6-9882-c8ab52949adf', null, 'parent', 'Joanne Raposo', 'joanne.raposo@gmail.com', '14415169808')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('96d817dc-40b3-5879-b684-8410656cbe66', '389b78c0-aec6-586a-87f9-73b643899c20', null, 'parent', 'Donavan Ratteray', 'donavan_ratteray@yahoo.com', '14415340669')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('15a9a9c0-2831-51ad-b5fb-ad3db7a3c950', '7a9c31e4-8541-5df5-8b66-15c3b7cbe0fb', null, 'parent', 'Elyse Rayner', 'kesrayner@gmail.com', '14415198477')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('69a36519-44f6-5b4a-b239-d1700b190636', 'd9da6200-4ecb-5f4e-be3e-ab44a6295e5e', null, 'parent', 'Luciana Tatem', 'luciana.tatem@gmail.com', '14417075184')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1d8e648e-3e2b-518e-9f45-9ec7122d61bf', '6ae0c4b3-67d5-5e77-83e8-5d68cbd73942', null, 'parent', 'Ben Readdy', 'benreaddy@hotmail.com', '14415358994')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('31b9bad8-e5e8-5a9b-8cb3-fdc05ee01b22', '072c82c8-65a9-53b6-bd59-1557bf709135', null, 'parent', 'Tamra Redcliffe', 'tredcliffe@icloud.com', '14415344708')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d93a5262-4a2c-5711-bfd1-e9c95a5af36d', '072c82c8-65a9-53b6-bd59-1557bf709135', null, 'parent', 'craig Redcliffe', 'craig.redcliffe@bm.ey.com', '14415334708')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('adb8cba2-d80d-5139-83cf-093e3279eb07', '37d62637-5514-581a-b547-b2d128897bd5', null, 'parent', 'Daniel Reece', 'danielereece12@gmail.com', '14415358714')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('162eb5dd-60b8-53fe-9e90-a15d39ea5941', '37d62637-5514-581a-b547-b2d128897bd5', null, 'parent', 'Shanelle Smith', null, '14413337186')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b26337b6-840e-5b7f-be1f-cb6aeb32d229', '9919c475-10c7-5916-ba70-9e3f97812da8', null, 'parent', 'Amie Rego', 'amie.rego@outlook.com', '14417037829')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fc3c3b21-b6bf-5bd4-bcbb-c88d252455e0', 'f4cf22af-ad2a-5c74-83db-14e0f0658140', null, 'parent', 'Kelly Rego', 'kellyrego1982@yahoo.com', '14417054999')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e3f0eaa0-8419-54b0-8560-9eb4a0aea4ef', '506c687d-090f-57dc-a924-6dfd6e71e13b', null, 'parent', 'Alicia Tucker', 'alicia@tuckshopbermuda.com', '14417994847')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3154c471-fee4-5f0c-80b0-6225bd9b303e', '99ae1282-e442-52db-9f24-390b8f1b23f3', null, 'parent', 'Susan Richardson', 'susanh1980@outlook.com', '14413333456')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('99e74327-5bb5-5d53-85f3-8453c2b43e1b', 'e8b0bfa7-dc77-5869-91b7-32e4d2d11170', null, 'parent', 'Alicia Tucker', 'alicia@tuckshopbermuda.com', '14417994847')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('96360d11-2fb9-5221-903a-71f192a722fc', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', null, 'parent', 'Mark Richardson', 'mark@cedartreevets.com', '14415053668')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e30b26b4-a075-5017-9f20-658edffa98db', '8e91b346-933f-5cc8-bf0f-e60c6ae6bb2a', null, 'parent', 'Lucy Richardson', 'lmrichardson6@gmail.com', '14417057077')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6dac4b52-ea8c-5282-8271-ebd1fbfeb6ef', 'dbbd6353-fe39-52a1-a46a-05e31ed6d42c', null, 'parent', 'Anne Korenblit', 'anne.korenblit@gmail.com', '14413254753')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e489ea11-457c-541e-8d55-b2311616dbe6', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', null, 'parent', 'David Roache', 'david.roache@hamiltongroup.com', '14417045294')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3ab2ff83-0c19-5789-86a3-bb16a44c8741', '730d388b-dafe-52cf-87b8-4a8aeb8e5099', null, 'parent', 'Jaime Dawson', 'jaime.dawson08@gmail.com', '14417079230')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0c2c54c2-a4a8-56f8-95e9-1f018931f56e', 'a0d6130a-8ef8-55f7-ba6c-c32bbeac72c3', null, 'parent', 'Jevon Roberts', 'jevon.roberts@gmail.com', '14417048869')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('74816fd6-de3e-52d1-bf98-465e72d4ff13', 'd2abaff2-7212-5905-90fa-1674f7de6f29', null, 'parent', 'Sally McGoun', 'sallymcgoun@gmail.com', '14415993003')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d4aca2eb-7f63-51cb-a61e-692fe71dc84f', 'd2abaff2-7212-5905-90fa-1674f7de6f29', null, 'parent', 'James Roberts', 'james.n.roberts@gmail.com', '14415312589')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('08882b92-f564-5807-9b55-b28df76bc6e5', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', null, 'parent', 'Sally McGoun', 'sallymcgoun@gmail.com', '14415993003')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1485fd69-a223-54c8-bc2f-6ed796808323', '2c3949da-0bfd-5769-b6a5-f6a99df3e5b5', null, 'parent', 'James Roberts', 'james.n.roberts@gmail.com', '14415312589')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f7f734e9-6267-59b7-aa7f-f1cef8d2caa0', '030a6df3-df8a-5522-879c-f6b3f4979709', null, 'parent', 'shannon sun', 'xiaonan_sun@hotmail.com', '14415329354')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('11222615-a65b-58dc-be31-0f45790329bd', '030a6df3-df8a-5522-879c-f6b3f4979709', null, 'parent', 'Dan Roberts', 'dwlr@hotmail.com', '14415353044')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1277175d-a453-581c-bebc-02f2eaef11af', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', null, 'parent', 'Tariq Robinson', 'trobin@gmail.com', '14417050001')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e3461efc-7f6d-5b5f-944e-02a4500aab4f', 'd8562340-772f-582a-85e3-bcf5b7ccd19e', null, 'parent', 'Hazel Chee', 'hazelchee17@gmail.com', '14417050671')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('551a8884-75ec-5271-ba4d-9caee8386bc0', '9555bf95-6350-5e61-89b5-6e15a5312557', null, 'parent', 'Tariq Robinson', 'trobin@gmail.com', '14417050001')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('26974979-760f-5884-b455-52d02e14f500', '45ae7b1b-51c3-587d-b6da-12ed714421af', null, 'parent', 'Hazel Chee', 'hazelchee17@gmail.com', '14417050671')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('158b965f-6769-579c-8665-26cd3808e878', 'afca7a66-c3ce-5f08-92dd-46881cf1ba46', null, 'parent', 'Ashley Rodgers', 'ashley.jollie@gmail.com', '14415330326')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2eeac1f1-45d3-5524-a749-e5849be75dfa', '21f94594-ada2-5a24-bf7a-c57b46efb927', null, 'parent', 'warren Roe', 'warrenroe75@gmail.com', '14415048321')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3de401c6-facd-5d30-be2b-7868f02e8e53', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', null, 'parent', 'Becky Ronaldson', 'rebecca.ronaldson@gmail.com', '14417043188')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('84f2f407-738b-559b-af00-29e336d9c085', 'e98e762a-69e7-5cd8-8c8a-06bf2aa69207', null, 'parent', 'kevin ronaldson', 'k.ronaldson@hotmail.co.uk', '14417054455')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6229ea3e-577c-567a-ae1c-a37b5b3dd499', '61e658c0-7050-54b6-8e06-61edbf47d9b0', null, 'parent', 'Becky Ronaldson', 'rebecca.ronaldson@gmail.com', '14417043188')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fbb06e19-91c3-50d2-909c-ae6a9db1151c', '61e658c0-7050-54b6-8e06-61edbf47d9b0', null, 'parent', 'kevin ronaldson', 'k.ronaldson@hotmail.co.uk', '14417054455')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('502769f5-6231-53c3-8b41-7ff521663eeb', '01e88696-bc99-5fda-b820-0e17469f58b5', null, 'parent', 'Caroline Roque', 'carolineroquebda@gmail.com', '14413312292')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('18c66ff4-dfb0-5d3f-92ce-44d01907b231', '01e88696-bc99-5fda-b820-0e17469f58b5', null, 'parent', 'Alexander Roque', 'alexander.roque@gmail.com', '14415052539')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2feb59bf-0b85-57f7-a337-f5e6d31ffb18', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', null, 'parent', 'Kim Rose', 'kwheddon@gmail.com', '14415170943')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5f498af0-8443-5124-936c-31de473b80b7', 'b7157502-dc1e-5bf9-a2f3-13555333e0c1', null, 'parent', 'Julian Rose', null, '14415243696')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('69ddfcfa-9dbf-58cd-bd3e-63a967b775ec', '450175ba-a3c9-5440-9a96-09b745c727dc', null, 'parent', 'andrew rossiter', 'rossiter.bda@gmail.com', '14415351150')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a3ab6d28-e637-5945-a37c-c0d5949046ae', '97ed902f-ae41-58de-a2bc-60c85cd0d5f1', null, 'parent', 'sara schroter', 'sschroter@hotmail.com', '14413009883')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('11920b2d-3373-5489-80ba-83d7d3d6ad02', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', null, 'parent', 'monika rowat', 'monika.drabkova@gmail.com', '14417034156')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('11920b2d-3373-5489-80ba-83d7d3d6ad02', '4f0ef0aa-a09f-5235-a91e-f0d72283dd7d', null, 'parent', 'monika rowat', 'monika.drabkova@gmail.com', '14417034156')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fc7f05ae-4ad4-5c70-9e3d-9b1c8810e023', '0dadcb2c-45d6-5317-9373-0837b68dddf5', null, 'parent', 'Kristin Rushe', 'krisrushe@gmail.com', '14413382662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c0d19376-5420-5d5b-be83-b70b2706f583', 'b002d9b8-2a8a-5043-9ff3-dc435291a5c2', null, 'parent', 'craig russell', 'craig.russell@renre.com', '14415916644')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6a7f64a6-be05-5d02-aff5-8d779166d466', '6bce2204-b1f1-58bc-a8af-e736717b63af', null, 'parent', 'lucy Russell', 'chesterlucy@hotmail.com', '14415918588')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('78e87a69-a406-543b-84ee-26d9e73425b8', '6bce2204-b1f1-58bc-a8af-e736717b63af', null, 'parent', 'craig russell', 'craig.russell@renre.com', '14415916644')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d26e4079-1edb-54e9-8d02-3b3d138dab0e', '91c5f86c-4179-517e-a1df-433af4c6bed0', null, 'parent', 'Chandra Ryan', 'chandrarati@gmail.com', '14417032884')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d4f47cac-73cb-5aee-82fc-686fe52a1b2a', 'defbbae5-8b73-502a-ae78-991d0a8944b3', null, 'parent', 'Sonia Rymon-Lipinski', 'soniagreg@hotmail.com', '14415052687')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d8d82ffa-dba5-5b3c-a1f9-ee4bce5702c1', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', null, 'parent', 'Sharmini Samuels', 'sharminisamuels@gmail.com', '14417034116')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fd536fcd-dcb0-539c-bfb0-ff2c687dd142', '81d88d8a-8a9e-5a86-9065-3cf064d8920b', null, 'parent', 'Nathan Samuels', 'nathansamuels@hotmail.com', '14417343603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1c1956f5-730f-572f-a647-b01aa9be49ef', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', null, 'parent', 'Sharmini Samuels', 'sharminisamuels@gmail.com', '14417034116')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4669e0a6-d451-5ae8-a2c8-b350c2f8c5d0', 'b0d50c5c-2e94-5037-b161-50fd3ba8bb9f', null, 'parent', 'Nathan Samuels', 'nathansamuels@hotmail.com', '14417343603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5d4cb66d-681a-5df4-8adc-46be444f2abb', '92403401-fce8-5a9b-b035-5d9ef0994ab4', null, 'parent', 'Sharmini Samuels', 'sharminisamuels@gmail.com', '14417034116')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('67cce174-7f65-582c-8cb1-ce2f6a44fd5b', '92403401-fce8-5a9b-b035-5d9ef0994ab4', null, 'parent', 'Nathan Samuels', 'nathansamuels@hotmail.com', '14417343603')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b8d2dd0a-2f0e-5482-be1e-ee7088ffb782', '446f2701-8cd7-5239-891c-5a97b650af05', null, 'parent', 'Noemi McKee', 'noemismckee@gmail.com', '14415311951')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5146fc2e-0864-5c77-ade8-178f90a15bd6', '768ff813-e5d7-5939-b569-68ccb5b81c3b', null, 'parent', 'Noemi McKee', 'noemismckee@gmail.com', '14415311951')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fbed2f22-29ae-5d7c-a0b6-5e4b7fe0a8df', '98ab6fd6-31dd-5a53-8168-d0b7462adc85', null, 'parent', 'laura saunders', 'laurahcrobinson@gmail.com', '14415041416')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8a26d649-9889-59ad-8374-0c6eb964161b', 'af628e8d-5192-5bbe-927f-d2973c14bc84', null, 'parent', 'Louise Sawers', 'sawers.louise@gmail.com', '14415142849')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4f9e5bd8-4bd6-5cd4-b399-7dd2ea51a109', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', null, 'parent', 'Louise Sawers', 'sawers.louise@gmail.com', '14415142849')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fb853769-5671-574d-a99d-96f51fc6b1af', '145a0014-64c8-56c9-8dba-2f74e3d0ebdd', null, 'parent', 'Sam Sawers', 'samsawers@gmail.com', '14415142850')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e277f5ee-5cf3-5d16-a703-7ef037771c40', '95b250da-918e-5855-9dc1-8b2ee9e83cc9', null, 'parent', 'Kristina Amaro', 'kristina.amaro@gmail.com', '14415041769')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7d33cb97-478c-5412-9da9-853a8cb9bc85', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', null, 'parent', 'shivani seth', '1shivaniseth@gmail.com', '14417059251')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7f15629e-b4cd-5bfc-8e43-01eb26fcd79f', '9cb0defb-97bb-580a-be19-5fa850e7c9f0', null, 'parent', 'anup seth', 'aseth@agamcapital.com', '14417479002')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cbb7b8d9-2ada-5f7c-9dc5-b0e58bbb0642', '2bac191a-5c95-56ec-8070-ecb33dc3e660', null, 'parent', 'Lauren Shah', 'lauren.shah@icloud.com', '14417058892')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ea63dacd-38aa-5c1c-b69d-404deb16836f', 'ef962756-73ae-584e-82cb-db72831ba8f2', null, 'parent', 'Vishal Shah', 'amivishal09@gmail.com', '14415918128')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('bab11c5c-d659-5f05-8816-5fd4c088ecd1', '2ba04f92-7848-588e-81e3-5257ffde9fd7', null, 'parent', 'Lauren Shah', 'lauren.shah@icloud.com', '14417058892')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3a0a5043-1261-52fc-8032-08aa756e6be4', '6ab529c6-13da-5758-9d40-026c7293a328', null, 'parent', 'Thomas Sherratt', 'tom@occ.bm', '14415240209')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fce5fa15-7eaa-51a2-88c5-c829cfa0ffa3', '80fd3dbf-dde0-5a1a-adad-f4bf3929c627', null, 'parent', 'Dana Shirreffs', 'danacshirreffs@gmail.com', '14417341524')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f9eee4f6-de7b-5160-90c8-a82b1ccbf5ad', '80fd3dbf-dde0-5a1a-adad-f4bf3929c627', null, 'parent', 'Brett Shirreffs', null, '14415204058')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ab67f587-516c-5b98-9d8f-3d4f7d3510bb', '7e21071b-9951-5d95-8185-50120743a070', null, 'parent', 'Danny Rodney Mark SIMMONS', 'dannyrms64@gmail.com', '14417990745')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4f96cd14-20a8-54b9-b406-48aae213c390', '7e21071b-9951-5d95-8185-50120743a070', null, 'parent', 'Janie Doreen SIMMONS', null, '14417350745')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7f631606-9c22-5db0-8b49-4396344aef53', '64940f99-cb35-5f69-9a79-96594f569d31', null, 'parent', 'macai simmons', 'macai.simmons@hotmail.com', '14417031585')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('49566fd4-8b24-53b9-b940-d270c78c4f15', 'd85e10d7-2c7c-5cb6-b86b-3f6c536814a7', null, 'parent', 'Asha Jones', 'asjones1234@hotmail.com', '14417774535')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('42e14b23-b997-5b82-82ea-57d156a153fa', 'b78eed33-fa04-56e2-83dc-fde2963ff824', null, 'parent', 'Michael Brangman', 'michaelbrangman@gmail.com', '14415044444')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a5e8b39a-c9b8-5afe-9fad-18bd03346e34', '81c532b2-623d-5d7d-806c-de7bff4b287e', null, 'parent', 'Andrea simons', 'andreamclee@gmail.com', '14417048585')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c04b861c-59f4-55eb-bd1d-1d92aa4e3dd8', '81c532b2-623d-5d7d-806c-de7bff4b287e', null, 'parent', 'Jason Simons', 'jasonsimons@me.com', '14413251634')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1777b9e6-223b-537c-ac54-586d66013043', '123dab8b-1478-5a2a-ac7d-431b67f59348', null, 'parent', 'Monique Simpson', 'monique.l.simpson@outlook.com', '14415047044')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('919636d8-47b5-5a1d-8507-8fb64429a6b7', '123dab8b-1478-5a2a-ac7d-431b67f59348', null, 'parent', 'Traddie Simpson', 'traddie@yahoo.ca', '14415381092')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('09f0908e-f49e-5557-9ee2-d69a01410c8f', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', null, 'parent', 'Monique Simpson', 'monique.l.simpson@outlook.com', '14415047044')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('09c3e978-0f0f-5959-81ff-38c2a48a174b', '8c93c219-9039-5448-bb86-97f8bb5e5ba4', null, 'parent', 'Traddie Simpson', 'traddie@yahoo.ca', '14415381092')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f5b9cb81-4fb5-53b9-bfd1-6dcc82879ade', '706b8279-f37d-50e3-9c09-53fe65d453d4', null, 'parent', 'Maria de los Angeles Alvarez', 'mariangeles_1975@yahoo.com', '14415361975')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7c5c4e49-fc61-5a38-912a-32c84b45656c', '706b8279-f37d-50e3-9c09-53fe65d453d4', null, 'parent', 'Daron John Skipper', null, '14415914622')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('052a5289-e2f2-5416-a0ea-e3a588c534bc', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', null, 'parent', 'Maruska Slater', 'maruskaslater@gmail.com', '14415052332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c26d1b81-8c1d-5100-9156-03d99a95b457', 'bbc66e94-6de6-5edd-9847-a781b83efbd7', null, 'parent', 'richard Slater', 'slater.rm@gmail.com', '14415047454')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e6865ae3-1e6a-5232-b1f9-ae73314b8036', 'bbab054b-e127-5d28-9228-4913340f355b', null, 'parent', 'Maruska Slater', 'maruskaslater@gmail.com', '14415052332')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9c648e1b-0db9-537b-be07-9726e51f5609', 'bbab054b-e127-5d28-9228-4913340f355b', null, 'parent', 'richard Slater', 'slater.rm@gmail.com', '14415047454')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('592adef9-5593-5b86-899a-e2cc2f6a04b8', '97251655-7ebe-5ece-8835-32b08fe83074', null, 'parent', 'Camille Smalling', 'smalling.m.camille@gmail.com', '14415332953')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2157d1a2-dff0-5755-8d63-46d457bd8297', '97251655-7ebe-5ece-8835-32b08fe83074', null, 'parent', 'Andrew smalling', 'smallinga@gmail.com', '14415950904')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('78fe796c-dcf9-54c6-b3fe-10979d55a26b', '5db32778-b4e4-597d-8ffe-fe1754f3e55e', null, 'parent', 'Audrey Smatt', 'audreysmatt@gmail.com', '14415310301')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5e7c4e7d-dcb5-5eae-867b-c466e5e16e65', 'c157f807-0695-5cdf-b56e-95cefabb877a', null, 'parent', 'Mikaela Pearman', 'mikaela.ian@gmail.com', '14415371889')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('228177c4-3213-596c-b70f-800179355b69', 'e92b518e-aa48-5f68-9b6a-8b17db29f5d2', null, 'parent', 'Vima Smith', 'vima.smith@gmail.com', '14413051479')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6b893f76-871c-5e9e-bb51-5a6e46032ad6', '63f770f5-08e9-54eb-be61-87416921b0b0', null, 'parent', 'Rachael Carreiro', 'rachaelcarreiro84@gmail.com', '14415041843')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('fa9b149c-e1f3-5d0f-8b6b-878ae546e5b2', '0e93d3c5-54fb-58d2-b844-641af3bc7a85', null, 'parent', 'Vima Smith', 'vima.smith@gmail.com', '14413051479')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c4aea48a-15c9-56a8-9123-de5e7eccc4ea', 'a479360c-6cfa-5473-a486-db5837193f02', null, 'parent', 'Liz Smith', 'lizziebermuda@icloud.com', '14417340048')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3aa1f476-7ba5-515c-b051-7cdecff2c003', '1fde7850-cf05-5282-8756-9c752c4399c3', null, 'parent', 'Chris Smith', 'chris_golfpro@hotmail.com', '14417046465')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('835635d4-b568-5a87-9e6e-e1cbbc4f0245', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', null, 'parent', 'Valerie Butterfield-Wallbank', 'vbutterfield-w@logic.bm', '14412321893')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('83bbc50d-02d9-5a1c-b86e-0d11c8201473', 'd4cf2bca-fc38-5525-b36a-60120a6444c4', null, 'parent', 'Thomas Smith', 'tommys@logic.bm', '14417058834')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('09af821d-209d-5532-a135-2efe4056474b', 'deb7f292-f34a-5510-be7c-c1168706f643', null, 'parent', 'Yahnee''' Smith', 'yahnee.smith@gmail.com', '14413321900')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0eb2477b-f942-52ff-91b2-2c47ad0e0310', 'deb7f292-f34a-5510-be7c-c1168706f643', null, 'parent', 'Jermaine Smith', 'jermainejvc@gmail.com', '14417055773')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('86cf80e8-377c-5903-b783-3225a203f74e', 'fbbe1890-4752-5627-925d-adbd9ca1930b', null, 'parent', 'Lesley-Jane Smith', 'lesleyjanesmith@hotmail.com', '14415053543')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ec74fc3c-a08c-5739-9528-4c2cf37ddfd3', 'fbbe1890-4752-5627-925d-adbd9ca1930b', null, 'parent', 'Gregg Smith', 'smithregg@gmail.com', '14415052923')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2568547f-adad-5186-8987-cc9a4511d3cf', '828f04d4-a6f8-581c-a217-559ed0659cce', null, 'parent', 'Kathy Carter', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('8d2c0dd5-3655-53e9-b2ef-ad89b2d147f9', '28e12fa8-63f2-53d9-b811-34fd67076268', null, 'parent', 'Chalsey Roberts', 'croberts@airpro.bm', '14415361991')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('707d3cea-9fd1-5597-b7d1-ee0f96712096', '21dbd8cd-9b16-5af1-b7df-304d1d620ca7', null, 'parent', 'Lesley-Jane Smith', 'lesleyjanesmith@hotmail.com', '14415053543')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7ac6ee3d-bc9a-597c-973d-c13efc605a48', '21dbd8cd-9b16-5af1-b7df-304d1d620ca7', null, 'parent', 'Gregg Smith', 'smithregg@gmail.com', '14415052923')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c41a495c-af99-5780-b573-86d4ad9a9372', '1af8919f-cb53-57a2-a691-bc9a57c0aefe', null, 'parent', 'Liz Smith', 'lizziebermuda@icloud.com', '14417340048')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('928fa2a7-17f7-5426-817b-e3710d9fadd2', '836e20ae-d602-5ed0-8f9f-f3d2138c5b25', null, 'parent', 'Glennea Smith', 'glennea4@icloud.com', '14415196723')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('99a23231-4b6e-5b8e-ac2f-6ae15b05a2b6', '595fddd1-e69a-579e-86a1-3ee96a27ca60', null, 'parent', 'sandra soares', null, null)
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6e8fdd80-999b-5716-ac68-2c40b3eb2107', '595fddd1-e69a-579e-86a1-3ee96a27ca60', null, 'parent', 'Greg Soares', 'gregsoares@yahoo.com', '14413004769')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('253d4691-ca3e-5d21-b5cf-7e6b0d70e416', 'a959ca75-49ef-5fe0-aec1-f26a2bd02283', null, 'parent', 'Erica Sousa', 'erica.c.sousa@gmail.com', '14415346450')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d9b975bd-68c9-5b8c-b2f3-d0186b9fe71a', 'b0c7b338-4c70-54d1-ae2c-79509c7da989', null, 'parent', 'Cordelia Sousa', 'cordelia.sm.sousa@gmail.com', '14415173516')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('722c41a2-fc67-5de6-b35b-d9d427edf776', 'eebbd0e5-3ee1-5409-8242-861d9d1c76f8', null, 'parent', 'Colby Sousa', 'colby.j.sousa@gmail.com', '14415359273')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a508748d-ea30-55fa-99e8-c1ffae0332ff', 'f20e98a8-65f6-571f-a1d8-c7a2a4a3d244', null, 'parent', 'Cordelia Sousa', 'cordelia.sm.sousa@gmail.com', '14415173516')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a563fdbc-36d5-524c-804d-36ffdecbd7df', '76bd99ff-b7d3-5111-8963-68def6a11f0e', null, 'parent', 'Cordelia Sousa', 'cordelia.sm.sousa@gmail.com', '14415173516')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9780e498-b86a-5f19-986c-e71bfc883e8a', 'c3c96070-57b6-50d4-9fda-ca400a0e333d', null, 'parent', 'Erica Sousa', 'erica.c.sousa@gmail.com', '14415346450')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('894c41e2-69cd-58bd-ab8f-ec8167fd08d0', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', null, 'parent', 'Beatriz Cobeño Lopez', 'bea_cobe84@hotmail.com', '14415168364')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('328b8419-c91c-552c-8f1b-94d66a9fbfc2', 'b80cf9c5-87ba-54f7-881a-2e97034ad9a7', null, 'parent', 'Jan Spindler', null, '14415336497')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d421b6ee-7df9-5d1e-9ef7-243ab77ff22a', 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a', null, 'parent', 'Beatriz Cobeño Lopez', 'bea_cobe84@hotmail.com', '14415168364')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f285e776-0838-5df5-9d44-ea2e04a1cc1f', 'b8fd5bcc-1511-56dc-b05b-385bbf041d8a', null, 'parent', 'Jan Spindler', null, '14415336497')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3cb76398-c0c0-59a5-980b-ef0bc6935ef1', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', null, 'parent', 'Beatriz Cobeño Lopez', 'bea_cobe84@hotmail.com', '14415168364')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4567e1ea-f6b5-5fe4-aae9-e73d1c011b4a', '9bafa3c3-78e4-5ec8-bf44-1c866173ebbb', null, 'parent', 'Jan Spindler', null, '14415336497')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('14fcedf1-00f2-57bc-b4ad-fe968f3310b7', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', null, 'parent', 'Desiree spriggs', 'dlspriggs71@gmail.com', '14415910830')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('571a94a6-f538-5e6d-91bb-4e04ff4832d3', 'ff92ffc2-d89a-53ff-a4f9-ea6fe5524a9a', null, 'parent', 'Bill Spriggs Jr', 'wspriggs@bedc.bm', '14417049056')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('44f3dc80-e391-59db-80f4-6491837d708c', 'af7555f3-99fd-5dec-b306-667103dde3a5', null, 'parent', 'Rosalind Staples', 'rboycott@gmail.com', '14415999876')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b4a8dcf3-6a7e-5a74-870b-0f84e711bdc8', 'af7555f3-99fd-5dec-b306-667103dde3a5', null, 'parent', 'Miles Staples', null, '14415042296')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3d3e43fd-56ad-59ea-921b-3d5b333bcbd8', '6af19bc3-d5ff-5718-ac7f-42e4788ee663', null, 'parent', 'Rosalind Staples', 'rboycott@gmail.com', '14415999876')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('3bc52292-b412-5571-aa35-e7cf9e32efbb', '6af19bc3-d5ff-5718-ac7f-42e4788ee663', null, 'parent', 'Miles Staples', null, '14415042296')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('311bfccd-d239-5f94-8a24-26f9133cb17a', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', null, 'parent', 'Rosalind Staples', 'rboycott@gmail.com', '14415999876')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('090fdb7e-bb66-5882-9484-83c30d9bdb28', 'afe717be-4ddb-5b41-8c8c-b32869d4cc05', null, 'parent', 'Miles Staples', null, '14415042296')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1ef58f28-4a8f-5913-afdf-cec028f6eee6', '5b572886-577e-5b49-88c2-adc00e33fe49', null, 'parent', 'David Stewart', 'stewartsbda@gmail.com', '14417043283')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e05528e2-daf5-539a-ac56-ad94a364694a', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', null, 'parent', 'Abigail Steynor', 'pleasant_abigail@hotmail.com', '14413338863')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('838c5273-7694-5865-a30d-bc89ab1a02fc', 'ca5c6c52-643c-5db5-ad9e-9c09906f598c', null, 'parent', 'Darryl Steynor', null, '14413318862')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cb2452d3-7c19-5a7d-a3d9-7abba52ed11c', 'bf02a695-0877-5b65-b696-230e0c0c3848', null, 'parent', 'Lynn Superina', 'lynnsuperina82@gmail.com', '14415040797')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('82a4f28c-b5e3-5a19-b3e6-5a46d0b43734', 'e2209776-9d5b-5694-8d6e-493582c51cbf', null, 'parent', 'Chatura Suresh', 'chaturasuresh@gmail.com', '14417371211')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('934299f1-29e1-5e4a-9237-72de741038bd', 'd48f6e4c-2465-57db-9db9-f0630eb3c6b2', null, 'parent', 'Tiffany Swainson', 'tiffany.swainson@hotmail.com', '14417350312')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b3d3c638-333d-55b3-88a7-acfbb9163f2a', 'cdb2e3ed-1ad4-55fe-871d-1c8cc1b12ddc', null, 'parent', 'Ryan Swan', 'ryanriaswan@gmail.com', '14415054758')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cd1263fc-94fc-57aa-887c-3be675cf54c8', '3b706ba3-ea1a-5bea-af55-2360450f1e10', null, 'parent', 'TABISH SYED', 'tabishsyed@yahoo.com', '14416760959')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('9d629044-9cca-5e9c-b21f-18ee94d6cbbc', 'e2f18ede-667e-5208-b9e6-6e5a702f593a', null, 'parent', 'Veronica Medeiros', 'veronicamedeiros_@hotmail.com', '14413362356')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d31d7069-dc1b-5f39-a1d5-9c047f96ffdb', '026ca572-acc7-5b6d-a9ef-8055126c58e3', null, 'parent', 'SHELLY-ANN TAYLOR', 'shellyann.j.taylor79@icloud.com', '14415180897')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ce078ccd-e75c-5abf-91aa-f9e7940d1c9a', '026ca572-acc7-5b6d-a9ef-8055126c58e3', null, 'parent', 'NATHAN TAYLOR', 'shellyann.j.taylor79@icloud.com', '14415198173')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('000ae982-17c2-538d-9e1f-775d41e7c3dc', '3a453e04-914b-576a-8b23-0eaac4e0fade', null, 'parent', 'Lorina Taylor', 'lorinaetaylor@yahoo.com', '14417040673')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a23c9cba-8938-5028-be39-58fede06e883', '639335b7-22d4-5ff0-a893-41dc12df5862', null, 'parent', 'Bruno Teixeira', 'bmateixeira@gmail.com', '14417049983')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e18f35f9-2b16-5f22-90f4-991e052d14a6', '07cccecb-81fb-5941-8300-8276f9a200fc', null, 'parent', 'Simona Terceira', 'simonaterceira@yahoo.com', '14417047372')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('157043f5-c44f-52c7-93ad-b755689c93f1', '07cccecb-81fb-5941-8300-8276f9a200fc', null, 'parent', 'Teddy Terceira', 'teddy@terceiras.bm', '14417047374')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f8027271-e5e4-5094-bad8-bff52096c88a', '96121571-db6d-5e78-98c6-24bdda4684f6', null, 'parent', 'Simona Terceira', 'simonaterceira@yahoo.com', '14417047372')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6531ce33-66e8-5dc1-9f19-fcfe9ed42ff9', '96121571-db6d-5e78-98c6-24bdda4684f6', null, 'parent', 'Teddy Terceira', 'teddy@terceiras.bm', '14417047374')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('40a70e00-1611-57e5-808d-01b0dd664548', '656355ae-4986-5060-866d-a56d4b736262', null, 'parent', 'Jonathan Tindall', 'jt_001@hotmail.com', '14415241200')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4e6bb73c-2b5f-5564-94df-6054ce510c57', '6283144f-d17d-5444-a82a-e9c4f71f89b3', null, 'parent', 'Roger Todd', 'r.l.todd@outlook.com', '14417051045')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6d5c378e-bbbb-5c80-b14a-9d5c273bd504', '6283144f-d17d-5444-a82a-e9c4f71f89b3', null, 'parent', 'Serena Todd', 's.r.todd@hotmail.com', '14415332007')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1eb865b0-946e-5feb-a46a-8c4a7a2b346e', '913c284c-7b61-5111-8e00-da193678c4f1', null, 'parent', 'Richard Todd', 'football@warwick.bm', '14413371120')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7b0d37ad-8dfa-524c-be94-b93ce54cd060', '913c284c-7b61-5111-8e00-da193678c4f1', null, 'parent', 'Tiffanie Todd', 'toddbda@gmail.com', '14417041120')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f996e54b-a9cf-5023-bb9f-905bbf121d17', 'ab442ff2-814b-50fd-9c79-694fe7221c53', null, 'parent', 'Gregory Tolaram', 'gtolaram@mercury.bm', '14413356915')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e88c55c4-615f-5124-a898-74d46fa6cd16', 'ab442ff2-814b-50fd-9c79-694fe7221c53', null, 'parent', 'Molly Tolaram', null, '14417057275')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1b9d0873-033a-5a77-8e51-a6874a941d84', '68c82400-d066-5c2c-9de5-65c04a6cc7db', null, 'parent', 'Hanno Tolhurst', 'haa_tolhurst@hotmail.com', '14415057402')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('46e47197-7654-5e21-a990-b699c889bbb0', '68c82400-d066-5c2c-9de5-65c04a6cc7db', null, 'parent', 'Fran Tolhurst', 'frans80@hotmail.co.uk', '14417470022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('73d769ad-9343-5688-9b16-26df2814be64', '4f96f59c-587e-5426-a547-84191b800f30', null, 'parent', 'Angelita Trott', 'angelitatrott@gmail.com', '14417470441')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c544017c-8214-5ce1-8a29-00067d41ad35', 'f99fd381-408c-5f98-bab3-ba0fce2513ac', null, 'parent', 'Penny Lambe', 'pennylambe@gmail.com', '14417090941')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7f69ff6b-bc1c-5b43-8eb4-47e75df1ffbb', 'b3877c51-eb63-53a7-8bfc-845178c02f7b', null, 'parent', 'Amber Tucker', 'ambert1216@gmail.com', '14413331216')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('28f77e00-b7dc-5b11-b96f-f78e40964ce6', '9e987734-33b3-5c53-826b-38d2eb500e53', null, 'parent', 'Reggie Jr Tuckett', 'rtuckjr@logic.bm', '14417073643')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('937858ae-a78c-55b3-80b8-d0471a3e4aa2', '9e987734-33b3-5c53-826b-38d2eb500e53', null, 'parent', 'Keran Tuckett', 'kerantuckett2011@gmail.com', '14417075989')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('c1c42405-cb23-5840-b985-79cf2a7a7982', '367c3964-57a5-5a60-b09c-f72f3f7d40ce', null, 'parent', 'Sara Tewolde', 'sara.tewolde@gmail.com', '14415321245')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4a5ce5e2-d046-5521-9354-cdc5631b4be4', '1aac7d92-3d67-5dcb-bf19-9c094181189d', null, 'parent', 'Sara Tewolde', 'sara.tewolde@gmail.com', '14415321245')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ba288f80-20b2-578d-861f-bfa139e738e7', '253060aa-bfaa-52f7-8c32-74257f5eb636', null, 'parent', 'Andrea Urbina', 'avurbina86@hotmail.com', '14417352637')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('cd7ee920-c53c-5d00-9d21-debf93f1ddb0', '253060aa-bfaa-52f7-8c32-74257f5eb636', null, 'parent', 'David Urbina', 'davedfe7@hotmail.com', '14415914105')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f6bc7cad-3d90-5bf4-913c-d10897dc2f35', '4cd7770a-1198-5afc-b284-bcc0bc3aeb88', null, 'parent', 'Nicole Valadao', 'niv@renre.com', '14417055028')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('78d4dfe0-9e43-5d20-9510-41c1e3634f56', '4cd7770a-1198-5afc-b284-bcc0bc3aeb88', null, 'parent', 'Manny Valadao', null, '14413314249')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ad3a8535-0f39-5e3f-a17d-f37649ce421a', '479bbb1d-bbef-5f9d-aad3-4d793d2cee02', null, 'parent', 'Jessica Valli', 'jessie.valli@gmail.com', '14417052662')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('044a9892-57c2-5a22-b1d3-89b49e9fad44', 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c', null, 'parent', 'Chantel Vargas', 'chantel.vb92@gmail.com', '14413338789')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7ac77f61-a184-5977-bc05-48d44c98dde2', 'fe28c903-5bd2-52c0-b9c6-1eb272e0740c', null, 'parent', 'Kelvin Vargas', 'kelvinbarber02@gmail.com', '14415185818')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('6c83b067-97bd-5ec7-9e1e-62d6c30b7a24', 'd2f110bf-444c-5fc7-81d2-bcaa9b5c05ea', null, 'parent', 'Nicole von Reitzenstein', 'suhnern@gmail.com', '14417042909')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('b902d527-9b39-5983-877c-b6294cf2cb7d', 'eaed77ed-df7d-5a3d-83b3-d8d6784de80a', null, 'parent', 'Nicole von Reitzenstein', 'suhnern@gmail.com', '14417042909')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d3cc12be-f36b-5b72-b391-d2bb217c56d3', 'b7702901-225a-5856-a7fd-70e45e0ec47e', null, 'parent', 'James Walden', 'james@waldenbrothers.co.uk', '14415354926')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e1c3cd89-b641-5979-bf40-83e65dfba48c', 'b7702901-225a-5856-a7fd-70e45e0ec47e', null, 'parent', 'Fiona Walden', null, '14417055022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('360cde7f-7e2e-5200-b289-77d4163ee8b1', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', null, 'parent', 'James Walden', 'james@waldenbrothers.co.uk', '14415354926')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a63308f0-e34a-5ba7-a59e-6622120f71c4', 'f58e0b7f-14cb-5299-b176-4a8d7e8e9a63', null, 'parent', 'Fiona Walden', null, '14417055022')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2110c252-52e7-5550-b9bb-0e97b4f40d24', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', null, 'parent', 'Karen Walrond', 'karlynton@hotmail.com', '14415998157')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('10abf71b-57a0-5d25-b534-a508921a64fc', 'e4d131a7-5e1d-57f4-994c-0ae76a16ee52', null, 'parent', 'Ricardo Walrond', 'rickywah31@hotmail.com', '14415993298')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('1be081ee-06e8-503d-9aaa-49bb9c01d19b', '6156d37a-33c3-5c2c-b789-669db02ce88a', null, 'parent', 'Minta Watson', 'mwatson@bhs.bm', '14415317114')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('463d29c0-a7bf-5d6a-9936-eda404521043', '6156d37a-33c3-5c2c-b789-669db02ce88a', null, 'parent', 'Matthew Watson', 'mwatsonbda@hotmail.com', '14415350483')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('7a19580d-40aa-5e4a-805c-e70836079670', 'a8998af1-4ae6-5b6c-8385-217ac94c54b9', null, 'parent', 'Victoria Woolridge', 'vw1618@gmail.com', '14413351618')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ac9dd65d-be9a-5260-9e92-140e651836df', '2a1cfaa2-32f9-544d-800d-b42864d13698', null, 'parent', 'Leanne Wheatley', 'leanneelisabeth79@gmail.com', '14413333302')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('16679375-a88e-5b69-9f9b-46834beae21c', '2a1cfaa2-32f9-544d-800d-b42864d13698', null, 'parent', 'Sean Wheatley', 'seancwheatley@gmail.com', '14415992225')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('4a2288fc-1259-5d3e-aa68-3f9efcff1a9c', '29d030e4-60aa-5190-a663-26c2f93349c4', null, 'parent', 'Jamaal White', 'jamaal6@me.com', '14417346524')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f0cfcdc7-80a6-5606-a2d2-cf4cf916a489', '083a0878-4d15-5658-81df-707a995bc1a0', null, 'parent', 'Heather Willens', 'heather.willens@icloud.con', '14417044489')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('5a60e465-badf-5e8b-be46-956d717c7bfa', '66ac5f10-416e-5cff-99b4-fc626479d356', null, 'parent', 'Heather Willens', 'heather.willens@icloud.con', '14417044489')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('ce6cb880-6b4a-5b2b-91c3-944c015c7f6c', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', null, 'parent', 'Shanae Williams', 'shanae.o@hotmail.com', '14417996248')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('aef21d0b-ccd1-5858-905a-a2282bbe52ce', '05eaaeab-cb7b-5f04-9292-ed3867409dfb', null, 'parent', 'Nevin Williams', 'nevin.williams27@gmail.com', '14415919492')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d243be7f-33b0-56fd-b61d-9d05d38eb108', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', null, 'parent', 'Erin Williams', 'erin.williams@orbis.com', '14413317307')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('054cdf6e-bc75-5c77-a7d6-4251a2ead893', 'dcd2d84e-8d9d-598b-a4ab-6734e42c281b', null, 'parent', 'Gareth Williams', 'garethdmwilliams@gmail.com', '14415310730')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('83970878-ef8e-5957-b008-f7c0dc421ae0', '7df7e59e-7a3a-5a20-aebd-b376cf0774fc', null, 'parent', 'Felicia Wilsen', 'feliciawilsen@kpmg.bm', '14415249625')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d145abf3-bbed-5f32-b8c6-1d5d5cf03a4d', '3fb1b3ec-4097-5b77-a449-b88f15d1d11d', null, 'parent', 'Felicia Wilsen', 'feliciawilsen@kpmg.bm', '14415249625')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e2400ade-94cb-53c4-b7ee-50f3ca077d5f', 'd2ed1ffb-3a19-5c4a-b9b1-3bd794a9f253', null, 'parent', 'Ryan Wilson', 'ryanifer@ryanjenn.com', '14415357926')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('99d31aa3-4dfc-5518-902f-bf064dbbb012', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', null, 'parent', 'Sherie Wilson', 'trinsai@logic.bm', '14417076578')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2d22d1cc-be1e-5a47-a889-71a619b57089', 'b4fe9a5b-8f84-500e-8811-79a9113b381e', null, 'parent', 'Alton Wilson', null, '14415052338')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('21429a9f-2176-5a1b-b260-89170d120880', '00ceab57-a71c-5798-89d0-01223878ec61', null, 'parent', 'Mark Wong', 'mkmwong@gmail.com', '14413003388')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('33284d36-ebc2-5b93-942c-1ff7b6bfe2b5', '638228a4-ad9f-53b5-84de-edacec116df4', null, 'parent', 'Mark Wong', 'mkmwong@gmail.com', '14413003388')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0ecf50c9-bec2-5978-9fc8-217a1078d152', '83b27f4d-62fd-5668-bbd5-d4a64923f4ea', null, 'parent', 'CLAIRE PAPADOPOULOU', 'clairepap@gmail.com', '14417035961')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('842ae9d5-9688-57f4-b5dd-f4f6841b6071', '83b27f4d-62fd-5668-bbd5-d4a64923f4ea', null, 'parent', 'Thomas Wood', null, '14417058207')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d23c4e50-1e06-5986-9d1f-5bc5afe2564e', 'aa22478f-7ff5-5597-bb7b-abc14116ff16', null, 'parent', 'Kristen Woodward', 'kristenmwoodward@gmail.com', '14415320082')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('53731ad2-d1a7-5151-b398-f873ec785e86', '4a57fafd-212d-5fc2-80aa-117906e034ab', null, 'parent', 'Kristen Woodward', 'kristenmwoodward@gmail.com', '14415320082')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0ba06843-b86b-56a9-9dad-8edbecee4cdf', '4a57fafd-212d-5fc2-80aa-117906e034ab', null, 'parent', 'Andrew Woodward', null, '16179743085')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('09ec2b9b-e4a1-56e0-a879-39208545930f', '5accd2e9-de4f-53d4-ae98-a5fc5df69c27', null, 'parent', 'Kian Wookey', 'kianwookey@gmail.com', '14415364534')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dd2f138c-6c3a-55b2-9b54-fda5a60fa650', '9811f143-7eed-59d7-a699-4f05fbf06197', null, 'parent', 'Miglena Yaneva', 'miglena.uzuncheva@gmail.com', '14415195109')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('db198897-cdb2-597f-bb89-5c73735ae45a', '9811f143-7eed-59d7-a699-4f05fbf06197', null, 'parent', 'Kaloyan Yanev', 'kaalabg@gmail.com', '14415188818')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('90a9053e-e908-5fad-8159-791dba281a7e', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', null, 'parent', 'Miglena Yaneva', 'miglena.uzuncheva@gmail.com', '14415195109')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f4e93e90-eabe-5969-8824-27d11a873662', 'f2399ab9-f74c-5a10-9d06-762ab9abd3dc', null, 'parent', 'Kaloyan Yanev', 'kaalabg@gmail.com', '14415188818')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('d03d6839-21d6-5f92-9906-34da02fe6522', 'ffc55e88-628d-5b9e-b218-f70a9292fe03', null, 'parent', 'lucy yiasoumi', 'lucyyiasoumi@hotmail.com', '14417032710')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('f787a60a-62f4-5453-924d-2fabae9c7c6f', 'ecb7866a-5879-5873-8e92-d11f407b6779', null, 'parent', 'nicole cavanagh', 'nicole.cavanagh@rocketmail.com', '14417070213')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('0a1c3ed7-4490-5224-9443-88dd6bfddccf', 'ecb7866a-5879-5873-8e92-d11f407b6779', null, 'parent', 'paul york', null, '14417770708')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('a1a1e2c1-f51a-5615-9de0-50cf1c845488', '73516539-22cd-5303-b1ba-00f0d76de573', null, 'parent', 'nicole cavanagh', 'nicole.cavanagh@rocketmail.com', '14417070213')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('887b3f86-707f-5c03-a4bf-b04c52de4e4f', '73516539-22cd-5303-b1ba-00f0d76de573', null, 'parent', 'paul york', null, '14417770708')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('e595068b-2c47-58aa-8e42-edb5bd205528', 'be87d31a-d092-5bb4-b7ac-9aa3e502e05a', null, 'parent', 'Jessica Young', 'jyoung@warwick.bm', '14415042182')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('dec343bb-64e7-5b9c-acfe-10c3a83a6f23', '452ede10-4072-5b66-a193-9935b6595347', null, 'parent', 'Anthony Young', 'anthony.young@rgare.com', '13143127338')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;
insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('2f64be16-703b-5e14-82dd-781dfd135cc3', 'dcaa1009-bf0f-50aa-b789-6ebed668f6f0', null, 'parent', 'Volodymyr Zakharov', 'ecolive29@gmail.com', '14415172539')
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;


commit;
