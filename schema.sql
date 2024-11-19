DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS carts;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS menus;
CREATE TABLE menus
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    percentage INT NOT NULL,
    category VARCHAR(20) NOT NULL,
    taste INT NOT NULL,
    depth INT NOT NULL,
    glass VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    recipe VARCHAR(200) NOT NULL,
    point VARCHAR(200) NOT NULL,
    image_path VARCHAR(255) NOT NULL
);

CREATE TABLE clients
(
    id SERIAL PRIMARY KEY,
    menu_id INT,
    order_count INT,
    is_provided BOOLEAN,
    FOREIGN KEY (menu_id) REFERENCES menus(id)
);

CREATE TABLE carts
(
    id SERIAL PRIMARY KEY,
    menu_id INT,
    order_count INT,
    FOREIGN KEY (menu_id) REFERENCES menus(id)
);

CREATE TABLE ingredients
(
    id SERIAL PRIMARY KEY,
    menu_id INT NOT NULL,
    name varchar(20) NOT NULL,
    amount varchar(20) NOT NULL,
    FOREIGN KEY (menu_id) REFERENCES menus(id)
);

INSERT INTO menus (name, percentage, category, taste, depth, glass, price, recipe, point, image_path) VALUES
    ('ジントニック', 10, 'ジン', 2, -1, 'ハイボール', 900,
     '氷を入れたグラスにジンを注ぎ、トニックウォーターを加え、軽くステアする。ライムウェッジを飾る',
     'ジンの爽やかさとトニックのほのかな苦味が特徴のカクテル', 'uploads\\jintonic.jpg'),
    ('モスコミュール', 12, 'ウォッカ', 3, -2, 'マグカップ', 1000,
     '氷を入れたマグカップにウォッカとジンジャービール、ライムジュースを注ぎ、軽くステアする',
     'ジンジャービールの爽やかさとライムの酸味が特徴のカクテル', 'uploads\\mosukomyuru.jpg'),
    ('テキーラサンライズ', 12, 'テキーラ', 3, -2, 'ハイボール', 1100,
     'グラスに氷を入れ、テキーラとオレンジジュースを注ぐ。グレナデンシロップを静かに注ぎ、日の出のようなグラデーションを作る',
     'オレンジジュースの甘さとテキーラの風味が楽しめるカクテル', 'uploads\\tekirasunrise.jpg'),
    ('ラムコーク', 12, 'ラム', 1, -1, 'ハイボール', 900,
     'グラスに氷を入れ、ラムを注ぎ、コーラで満たす。軽くステアしてライムウェッジを飾る',
     'コーラの甘さとラムの風味が絶妙にマッチしたカクテル', 'uploads\\rumcoke.jpg'),
    ('カイピリーニャ', 18, 'その他', 3, -2, 'ロック', 1200,
     'ライムを切ってグラスに入れ、砂糖を加えてマドラーで潰す。氷を入れ、カシャッサを注ぎ、ステアする',
     'ライムの酸味とカシャッサの風味が特徴のブラジリアンカクテル', 'uploads\\caipirinha.jpg'),
    ('ミモザ', 7, 'その他', 3, -3, 'フルート', 800,
     'フルートグラスにシャンパンとオレンジジュースを注ぎ、軽くステアする',
     'シャンパンの泡とオレンジジュースのフレッシュさが楽しめるカクテル', 'uploads\\mimoza.jpg'),
    ('サングリア', 12, 'ワイン', 3, -1, 'ワイングラス', 1000,
     'ワイングラスに赤ワインとオレンジジュースを注ぎ、カットしたフルーツを加える',
     'フルーツの甘さと赤ワインのコクが楽しめるカクテル', 'uploads\\sungria.jpg'),
    ('キール', 10, 'その他', 3, -3, 'ワイングラス', 900,
     'ワイングラスに白ワインを注ぎ、カシスリキュールを加えて軽くステアする',
     '白ワインの爽やかさとカシスの甘さが特徴のカクテル', 'uploads\\keer.jpg'),
    ('ブラックロシアン', 20, 'ウォッカ', 0, -3, 'ロック', 1100,
     '氷を入れたグラスにウォッカとコーヒーリキュールを注ぎ、軽くステアする',
     'ウォッカの力強さとコーヒーリキュールの香りが特徴のカクテル', 'uploads\\blackrossisan.jpg'),
    ('レモンドロップマティーニ', 25, 'ジン', 3, -3, 'マティーニ', 1300,
     '材料をシェイクして冷やしたマティーニグラスに注ぎ、レモンピールを飾る',
     'レモンの酸味とジンの爽やかさが特徴のカクテル', 'uploads\\lemon-drop-martini.jpg'),
    ('カシスオレンジ', 8, 'リキュール', 3, -1, 'ハイボール', 800,
     '氷を入れたグラスにカシスリキュールを注ぎ、オレンジジュースを加えて軽くステアする',
     'カシスの甘さとオレンジジュースのフレッシュさが楽しめるカクテル', 'uploads\\cassorange.jpg'),
    ('ハイボール', 12, 'ウイスキー', 2, 0, 'ハイボール', 1000,
     '氷を入れたグラスにウイスキーを注ぎ、ソーダ水で満たし軽くステアする',
     'ウイスキーの香りとソーダ水の爽快さが楽しめるカクテル', 'uploads\\kakuhai.jpg'),
    ('ダイキリ', 14, 'ラム', 3, -3, 'マティーニ', 1200,
     '材料をシェイクして冷やしたマティーニグラスに注ぐ',
     'ラムの風味とライムの酸味が特徴のカクテル', 'uploads\\daiquiri.jpg'),
    ('アメリカーノ', 9, 'その他', 1, -3, 'ロック', 900,
     '氷を入れたグラスにカンパリとスイートベルモットを注ぎ、ソーダ水で満たし軽くステアする',
     'カンパリの苦味とベルモットの甘さが調和したカクテル', 'uploads\\AmelieCano.jpg'),
    ('グラスホッパー', 15, 'リキュール', 1, -2, 'カクテル', 1100,
     '材料をシェイクして冷やしたグラスに注ぐ',
     'ミントの爽やかさとクリームの甘さが特徴のカクテル', 'uploads\\Grasshopper.jpg'),
    ('アペロールスプリッツ', 11, 'その他', 3, -2, 'ワイングラス', 1000,
     '氷を入れたグラスにアペロールを注ぎ、プロセッコとソーダ水を加え軽くステアする',
     'アペロールのほろ苦さとプロセッコの爽やかさが特徴のカクテル', 'uploads\\AperolSpritz.jpg'),
    ('ミルクカクテル', 8, 'リキュール', 0, -3, 'ロック', 900,
     '氷を入れたグラスにベイリーズとミルクを注ぎ、軽くステアする',
     'クリーミーな甘さが特徴のデザートカクテル', 'uploads\\MilkCocktail.jpg'),
    ('シャンディガフ', 5, 'ビール', 3, -3, 'ハイボール', 800,
     'グラスにビールを注ぎ、ジンジャーエールを加えて軽くステアする',
     'ビールのコクとジンジャーエールの甘さが特徴のカクテル', 'uploads\\ShandyGaff.jpg'),
    ('ボッチェンボール', 10, 'リキュール', 3, -3, 'ハイボール', 1000,
     '氷を入れたグラスにアマレットを注ぎ、オレンジジュースを加えて軽くステアする',
     'アマレットの甘さとオレンジジュースのフレッシュさが特徴のカクテル', 'uploads\\Boccie-Ball.jpg'),
    ('ニューヨークサワー', 20, 'ウイスキー', 3, -1, 'ロック', 1200,
     '氷を入れたグラスにバーボンとレモンジュースを注ぎ、赤ワインをフロートさせる',
     'バーボンの深い味わいと赤ワインのフルーティーさが特徴のカクテル', 'uploads\\NewYorkSour.jpg'),
    ('ブルーハワイ', 15, 'リキュール', 3, -3, 'ハイボール', 1100,
     '材料をシェイクして冷やしたグラスに注ぐ',
     'ブルーキュラソーの鮮やかな色とトロピカルな味わいが特徴のカクテル', 'uploads\\blueHawaii.jpg'),
    ('ネグローニ', 24, 'ジン', 1, -2, 'ロック', 1100,
     '氷を入れたグラスにジン、カンパリ、スイートベルモットを注ぎ、軽くステアする。オレンジスライスを飾る',
     'ジンとカンパリ、スイートベルモットの調和が取れたビターなカクテル', 'uploads\\negroni.jpg'),
    ('マルガリータ', 20, 'テキーラ', 3, -3, 'カクテル', 1200,
     '材料をシェイクして冷やしたカクテルグラスに注ぎ、ライムウェッジを飾る',
     'テキーラとライムの酸味が特徴のカクテル', 'uploads\\margarita.jpg'),
    ('マンハッタン', 24, 'ウイスキー', 1, -2, 'カクテル', 1300,
     '材料をステアして冷やしたカクテルグラスに注ぎ、チェリーを飾る',
     'ウイスキーとスイートベルモット、ビターズのバランスが取れたカクテル', 'uploads\\manhattan.jpg'),
    ('ピニャコラーダ', 15, 'ラム', 2, -3, 'ハイボール', 1200,
     '材料をシェイクして冷やしたグラスに注ぎ、パイナップルスライスを飾る',
     'ココナッツとパイナップルの甘さが特徴のトロピカルカクテル', 'uploads\\pina_colada.jpg'),
    ('キューバリブレ', 12, 'ラム', 2, -2, 'ハイボール', 1000,
     'グラスに氷を入れ、ラムを注ぎ、コーラとライムジュースを加え軽くステアする',
     'ラムとコーラ、ライムの爽やかさが特徴のカクテル', 'uploads\\cuba_libre.jpg'),
    ('サイドカー', 22, 'ブランデー', 3, -2, 'カクテル', 1300,
     '材料をシェイクして冷やしたカクテルグラスに注ぐ',
     'ブランデーとレモンジュースの酸味が特徴のクラシックカクテル', 'uploads\\sidecar.jpg'),
    ('ベリーニ', 7, 'ワイン', 3, -3, 'フルート', 900,
     'ピュレとスパークリングワインを注ぎ軽くステアする',
     'ピーチの甘さとスパークリングワインの爽やかさが特徴のカクテル', 'uploads\\bellini.jpg'),
    ('ラスティネイル', 25, 'ウイスキー', 2, -3, 'ロック', 1100,
     '氷を入れたグラスにウイスキーとドランブイを注ぎ軽くステアする',
     'ウイスキーの力強さとドランブイの甘さが特徴のカクテル', 'uploads\\rusty_nail.jpg'),
    ('ブラッディマリー', 10, 'ウォッカ', 0, -1, 'ハイボール', 900,
     '氷を入れたグラスにウォッカとトマトジュースを注ぎ、タバスコやウスターソースで味を調える',
     'トマトジュースのフレッシュさとスパイシーな風味が特徴のカクテル', 'uploads\\bloody_mary.jpg'),
    ('コスモポリタン', 20, 'ウォッカ', 3, -3, 'カクテル', 1200,
     '材料をシェイクして冷やしたカクテルグラスに注ぎ、ライムウェッジを飾る',
     'クランベリージュースの甘酸っぱさが特徴のモダンカクテル', 'uploads\\cosmopolitan.jpg');




INSERT INTO ingredients (menu_id, name, amount) VALUES
      (1, 'ジン', '45ml'),
      (1, 'トニックウォーター', '適量'),
      (1, 'ライムウェッジ', '適量'),
      (2, 'ウォッカ', '45ml'),
      (2, 'ジンジャービール', '120ml'),
      (2, 'ライムジュース', '15ml'),
      (3, 'テキーラ', '45ml'),
      (3, 'オレンジジュース', '90ml'),
      (3, 'グレナデンシロップ', '15ml'),
      (4, 'ラム', '45ml'),
      (4, 'コーラ', '適量'),
      (4, 'ライムウェッジ', '適量'),
      (5, 'カシャッサ', '50ml'),
      (5, 'ライム', '1個'),
      (5, '砂糖', '2tsp'),
      (6, 'シャンパン', '90ml'),
      (6, 'オレンジジュース', '90ml'),
      (7, '赤ワイン', '180ml'),
      (7, 'オレンジジュース', '60ml'),
      (7, 'フルーツ', '適量'),
      (8, '白ワイン', '90ml'),
      (8, 'カシスリキュール', '15ml'),
      (9, 'ウォッカ', '60ml'),
      (9, 'コーヒーリキュール', '30ml'),
      (10, 'ジン', '45ml'),
      (10, 'レモンジュース', '30ml'),
      (10, 'シュガーシロップ', '15ml'),
      (11, 'カシスリキュール', '30ml'),
      (11, 'オレンジジュース', '90ml'),
      (12, 'ウイスキー', '45ml'),
      (12, 'ソーダ水', '適量'),
      (13, 'ラム', '45ml'),
      (13, 'ライムジュース', '20ml'),
      (13, 'シュガーシロップ', '15ml'),
      (14, 'カンパリ', '30ml'),
      (14, 'スイートベルモット', '30ml'),
      (14, 'ソーダ水', '適量'),
      (15, 'グリーンクリーム', '30ml'),
      (15, 'ホワイトクリーム', '30ml'),
      (15, 'ミントリキュール', '30ml'),
      (16, 'アペロール', '60ml'),
      (16, 'プロセッコ', '90ml'),
      (16, 'ソーダ水', '30ml'),
      (17, 'ベイリーズ', '45ml'),
      (17, 'ミルク', '90ml'),
      (18, 'ビール', '120ml'),
      (18, 'ジンジャーエール', '120ml'),
      (19, 'アマレット', '30ml'),
      (19, 'オレンジジュース', '90ml'),
      (20, 'バーボンウイスキー', '60ml'),
      (20, 'レモンジュース', '30ml'),
      (20, '赤ワイン', '15ml'),
      (21, 'ブルーキュラソー', '30ml'),
      (21, 'ラム', '30ml'),
      (21, 'パインアップルジュース', '60ml'),
      (21, 'ココナッツクリーム', '15ml'),
      (22, 'ジン', '30ml'),
      (22, 'カンパリ', '30ml'),
      (22, 'スイートベルモット', '30ml'),
      (23, 'テキーラ', '45ml'),
      (23, 'ライムジュース', '30ml'),
      (23, 'オレンジキュラソー', '15ml'),
      (24, 'ウイスキー', '60ml'),
      (24, 'スイートベルモット', '30ml'),
      (24, 'アンゴスチュラビターズ', '1dash'),
      (25, 'ラム', '45ml'),
      (25, 'パインアップルジュース', '90ml'),
      (25, 'ココナッツクリーム', '30ml'),
      (26, 'ラム', '45ml'),
      (26, 'コーラ', '適量'),
      (26, 'ライムジュース', '15ml'),
      (27, 'ブランデー', '45ml'),
      (27, 'オレンジキュラソー', '20ml'),
      (27, 'レモンジュース', '15ml'),
      (28, 'ピーチピュレ', '30ml'),
      (28, 'スパークリングワイン', '90ml'),
      (29, 'ウイスキー', '45ml'),
      (29, 'ドランブイ', '25ml'),
      (30, 'ウォッカ', '45ml'),
      (30, 'トマトジュース', '90ml'),
      (30, 'タバスコ', '数滴'),
      (31, 'ウォッカ', '45ml'),
      (31, 'クランベリージュース', '30ml'),
      (31, 'ライムジュース', '15ml'),
      (31, 'オレンジキュラソー', '15ml');