-- Warwick FA — seed: import photos found on the legacy warwickfootball.bm
-- site (Teamo-hosted). Hot-links the Teamo CDN URLs into the gallery_photos
-- table so they appear at /gallery without re-uploading binaries.
--
-- Idempotent: inserts only rows whose url is not already present.
-- Captions are best-guess from filenames/page context.

with v(url, caption) as (
  values
    -- Sponsor / brand graphics (left out: kappa, pro shop, club logo)
    ('https://media.sites.teamo.chat/3a98/58/291213/Join_Our_Team_Graphic_1024x535_1_.png', 'Join Our Team — 2024/25 recruitment graphic'),
    ('https://media.sites.teamo.chat/3a98/58/291213/Join_Our_Team_Graphic_1024x535_2_.png', 'Join Our Team — 2025/26 recruitment graphic'),
    ('https://media.sites.teamo.chat/3a98/58/291213/WFA_History.png',                      'Warwick FA history feature image'),
    ('https://media.sites.teamo.chat/3a98/58/291213/Pee_Wee_Football.jpeg',                'Pee Wee Football'),
    ('https://media.sites.teamo.chat/3a98/58/291213/Dustin_Pic_2_.png',                    'Coach Dustin'),

    -- Match / training / club moments
    ('https://media.sites.teamo.chat/3a98/58/291213/U11B_Tournament_5.jpeg',                       'U11B tournament action'),
    ('https://media.sites.teamo.chat/3a98/58/291213/IMG_2085_2023_10_15T16_00_15.jpeg',            'Match day — 15 Oct 2023'),
    ('https://media.sites.teamo.chat/3a98/58/291213/device_1699109879153_1000022582.jpeg',         'Squad photo — Nov 2023'),
    ('https://media.sites.teamo.chat/3a98/58/291213/device_1700932518793_photo_1.jpeg',            'Match day — Nov 2023 (1)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/device_1701041071691_photo_2.jpeg',            'Match day — Nov 2023 (2)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2020_10_10_11_15_26.jpeg',               'Training session — 10 Oct 2020'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2022_02_12_20_05_19.jpeg',               'Club night — 12 Feb 2022'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2022_04_30_16_15_03.jpeg',               'Match day — 30 Apr 2022'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2023_03_18_11_39_03.jpeg',               'Match day — 18 Mar 2023 (am)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2023_03_18_16_57_25.jpeg',               'Match day — 18 Mar 2023 (pm)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_02_01_20_17_15_1_.jpeg',            'Club event — 1 Feb 2025 (1)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_02_01_20_17_15_3_.jpeg',            'Club event — 1 Feb 2025 (2)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_04_13_17_32_18_1_.jpeg',            'Match day — 13 Apr 2025'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_06_07_21_00_55.jpeg',               'Club event — 7 Jun 2025 (1)'),
    ('https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_06_07_21_00_556_1_.jpeg',           'Club event — 7 Jun 2025 (2)')
)
insert into public.gallery_photos (url, caption)
select v.url, v.caption from v
where not exists (
  select 1 from public.gallery_photos gp where gp.url = v.url
);
