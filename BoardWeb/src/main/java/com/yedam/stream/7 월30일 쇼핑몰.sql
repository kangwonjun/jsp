CREATE table tbl_product(
prod_code VARCHAR2(30),
prod_name VARCHAR2(100),
prod_price number,
prod_description VARCHAR2(1000),
prod_image VARCHAR2(100)
);

 
select *
from tbl_product;


insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000202771' , '[1+1/7���ÿ���] ����Ƽ�� �ܹ�������ũ �Ŀ�ġ�� 40g 4��', '3900' , '[1+1/7���ÿ���] ����Ƽ�� �ܹ�������ũ �Ŀ�ġ�� 40g 4��.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000171427' , '[35����] �޵��� ����ī�һ��̵� ���� �е� 100�� (+100�� �������� ��ȹ)', '39900' , '[35����] �޵��� ����ī�һ��̵� ���� �е� 100�� (+100�� �������� ��ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000186672' , 'ƼŸ�� ������ �극�� �÷��� ġ�� �����ȹ (100g*2 + 50g ����)', '22000' , 'ƼŸ�� ������ �극�� �÷��� ġ�� �����ȹ (100g*2 + 50g ����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000183731' , '[�ƶ�Pick] VT ���鼦 100 ������ 50ml ��ȹ/��ǰ', '32000' , '[�ƶ�Pick] VT ���鼦 100 ������ 50ml ��ȹ/��ǰ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000160659' , '[6�⿬��1��] �޵��� ������ ����ũ�� 1�� 5�� ��1', '2000' , '[6�⿬��1��] �޵��� ������ ����ũ�� 1�� 5�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000185466' , '[7�� �ÿ���/������ȹ] ���� �޽� ��Ʈ ��� ��� ���̺� �����(��ǰ+����+Ű���Ŀ�ġ)', '34000' , '[7�� �ÿ���/������ȹ] ���� �޽� ��Ʈ ��� ��� ���̺� �����(��ǰ+����+Ű���Ŀ�ġ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000171417' , '[35����] �޵��� ƼƮ�� �е� 100�� (+100�� �������� ��ȹ)', '39900' , '[35����] �޵��� ƼƮ�� �е� 100�� (+100�� �������� ��ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000171423' , '[����ɾ� 1��] ���� ��뷮 �� ������ Ʈ��Ʈ��Ʈ EX ����/��� ��ȹ 4�� ��1(�ٴ����/����Ż)', '42000' , '[����ɾ� 1��] ���� ��뷮 �� ������ Ʈ��Ʈ��Ʈ EX ����/��� ��ȹ 4�� ��1(�ٴ����/����Ż).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000179127' , '[1+1/���۸�Ʈ] ���ں� ��ư ����Ʈ ����ƽ 19g SPF50+ PA++++', '22000' , '[1+1/���۸�Ʈ] ���ں� ��ư ����Ʈ ����ƽ 19g SPF50+ PA++++.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000192568' , '[����Ŭ����] �ϼ� ���� ���� ���� ����Ʈ�� 150ml ��ȹ (+�� 40�� ����)', '21000' , '[����Ŭ����] �ϼ� ���� ���� ���� ����Ʈ�� 150ml ��ȹ (+�� 40�� ����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000169711' , '[������] �������Ǽ� ������ ������ ƾƮ ��ȹ/��ǰ ��1', '18000' , '[������] �������Ǽ� ������ ������ ƾƮ ��ȹ/��ǰ ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207312' , '[������PICK] �¼�Ʈ ABC ��� �ٵ�ũ��&amp;���� 300ml 3�� ��1', '19000' , '[������PICK] �¼�Ʈ ABC ��� �ٵ�ũ��&amp;���� 300ml 3�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000180505' , '[35����] �޵��� ��Ÿ���̵� ��Ƽ �е� 100�� (+100�� �������� ��ȹ)', '39900' , '[35����] �޵��� ��Ÿ���̵� ��Ƽ �е� 100�� (+100�� �������� ��ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000198527' , '[7�� �ÿ���][������PICK/1+1] ���� ���� ��� ���� ���� ��ũ�� 50ml 1+1��ȹ', '20000' , '[7�� �ÿ���][������PICK/1+1] ���� ���� ��� ���� ���� ��ũ�� 50ml 1+1��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000185844' , '[�ܵ���ȹ] �ϾƸ� ���͸𸮿� Ż����� 100ml ��ȹ (+��Ǫ 75ml ����)', '34900' , '[�ܵ���ȹ] �ϾƸ� ���͸𸮿� Ż����� 100ml ��ȹ (+��Ǫ 75ml ����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000147779' , '������Ʈ ������Ʈ ���̱�Ĩ 6�� ��1', '2700' , '������Ʈ ������Ʈ ���̱�Ĩ 6�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000175878' , '[7�� �ÿ���/�ƶ�PICK] ��Ƽ�� �뽺ī���� Ʈ���� ���� �ܵ� ��ȹ (50ml+15ml)', '38000' , '[7�� �ÿ���/�ƶ�PICK] ��Ƽ�� �뽺ī���� Ʈ���� ���� �ܵ� ��ȹ (50ml+15ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205085' , '[��������/1+1]������ ���� ���̽� Ŭ���� ���� ũ�� 70ml 1+1 ��ȹ', '38000' , '[��������/1+1]������ ���� ���̽� Ŭ���� ���� ũ�� 70ml 1+1 ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000128084' , '[�ξ�PICK] ������ƾ �����ʷ���Ƽ�� ��Ʈ ũ�� 50g', '45000' , '[�ξ�PICK] ������ƾ �����ʷ���Ƽ�� ��Ʈ ũ�� 50g.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000208020' , '[����X���۱�][���ʱ�ȹ] ���� û�� ��ŸC ��Ƽ�ɾ� ���� 50ml �ݶ󺸱�ȹ (50ml+50ml����+�Ŀ�ġ)', '43000' , '[����X���۱�][���ʱ�ȹ] ���� û�� ��ŸC ��Ƽ�ɾ� ���� 50ml �ݶ󺸱�ȹ (50ml+50ml����+�Ŀ�ġ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207229' , '[�������]�ѹ����� 3�� ���麸�� �� ���� 50ml ���ʱ�ȹ(50ml+50ml)', '38000' , '[�������]�ѹ����� 3�� ���麸�� �� ���� 50ml ���ʱ�ȹ(50ml+50ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206562' , '[7�� �ÿ���] ���̺귦 �����̺� �׶��� ��� ��Į�� �� ��ο� ���� �����ȹ (+���ڽ��� 33ml����)', '45000' , '[7�� �ÿ���] ���̺귦 �����̺� �׶��� ��� ��Į�� �� ��ο� ���� �����ȹ (+���ڽ��� 33ml����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207018' , '[7�� �ÿ���]�������X�̴Ͼ��� ǻ�� Ŭ��¡���� 300ml ��ȹ (+25ml+����Ŀ Ű��)', '25000' , '[7�� �ÿ���]�������X�̴Ͼ��� ǻ�� Ŭ��¡���� 300ml ��ȹ (+25ml+����Ŀ Ű��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205145' , '���޸��� ��Ż ��� ������ ����', '25000' , '���޸��� ��Ż ��� ������ ����.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000186988' , '��Ʈ 3�� ��ġ���� 30�� (30�Ϻ�)', '49000' , '��Ʈ 3�� ��ġ���� 30�� (30�Ϻ�).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000181819' , '[�ν��� �������� Ȫ�� �߰�] ���ٵ� �� �Ƚ� ����ī�� 8g_4 Colors', '16000' , '[�ν��� �������� Ȫ�� �߰�] ���ٵ� �� �Ƚ� ����ī�� 8g_4 Colors.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000115192' , '����������Ų ��������� ���(��ǰ+����)', '33000' , '����������Ų ��������� ���(��ǰ+����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000185046' , '[NEW�÷�] ��ũ ���������� ���� ���̶��̳� 15colors', '13900' , '[NEW�÷�] ��ũ ���������� ���� ���̶��̳� 15colors.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000125955' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� ��� ������ ƾƮ', '9900' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� ��� ������ ƾƮ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205216' , '[�ӿ���PICK/5���ӻ�] ��ǻ�� ����33 Ż����� 20ml NEW', '24900' , '[�ӿ���PICK/5���ӻ�] ��ǻ�� ����33 Ż����� 20ml NEW.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000139022' , '[7�� �ÿ���] ������ ������ ��Ų ���� �տ��� ��� ��ȹ �����÷� (��ǰ+����+���η����� �ǴϽ��Ŀ�� �̴�����)', '45000' , '[7�� �ÿ���] ������ ������ ��Ų ���� �տ��� ��� ��ȹ �����÷� (��ǰ+����+���η����� �ǴϽ��Ŀ�� �̴�����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205555' , '[������ȹ/�� 400ml] �ƴ��� ��� ���� ��Ʈ�� Ŭ��¡���� 200ml ���� ��ȹ', '40000' , '[������ȹ/�� 400ml] �ƴ��� ��� ���� ��Ʈ�� Ŭ��¡���� 200ml ���� ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000180872' , '���� �� ������ ����� ��Ǫ 500g (�ܹ��� ���� ��Ǫ)', '18000' , '���� �� ������ ����� ��Ǫ 500g (�ܹ��� ���� ��Ǫ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000202912' , '[7�� �ÿ���/�� �۷ν� ����] ���� �� �۷ο� �� ƾƮ ��� ���̺� ���� ��ȹ', '17000' , '[7�� �ÿ���/�� �۷ν� ����] ���� �� �۷ο� �� ƾƮ ��� ���̺� ���� ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000171422' , '[1&amp;1] ���� ��ũ ���� ������ ���� ��ȹ��Ʈ (70ml+70ml) 2�� ��1(�ٴ����/����Ż)', '35000' , '[1&amp;1] ���� ��ũ ���� ������ ���� ��ȹ��Ʈ (70ml+70ml) 2�� ��1(�ٴ����/����Ż).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000203949' , '���� �������� ������ 9�� ��1 (��ǰ/����)', '8500' , '���� �������� ������ 9�� ��1 (��ǰ/����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000202899' , '[���������ⷯ] �޵��� ����� ���� Ŭ���� ���� 4��', '14000' , '[���������ⷯ] �޵��� ����� ���� Ŭ���� ���� 4��.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000200614' , '[7�� �ÿ���/���溸��] �޹� ����Ǯ ���� ��� ��ũ�� ��� ��ȹ (50ml+50ml)', '51000' , '[7�� �ÿ���/���溸��] �޹� ����Ǯ ���� ��� ��ũ�� ��� ��ȹ (50ml+50ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206531' , '[7�� �ÿ���] �󺸿���ġX��ι� ���ǰ�ȭ ��Ǫ 750ml+120ml*2 ������ȹ', '36000' , '[7�� �ÿ���] �󺸿���ġX��ι� ���ǰ�ȭ ��Ǫ 750ml+120ml*2 ������ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206904' , '��ν����� ��ī�ö�Ʈ �� B5+ 100ml ��ȹ (+3ml �߰�����)', '39000' , '��ν����� ��ī�ö�Ʈ �� B5+ 100ml ��ȹ (+3ml �߰�����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207266' , '[NEW] ����ũ���� ������ �� �ƹ̳� �������� Ŭ��¡�� 100ml', '24000' , '[NEW] ����ũ���� ������ �� �ƹ̳� �������� Ŭ��¡�� 100ml.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000202491' , '[ȭ�߸Լ�ũ��]���̿����� ���ι��̿��� �ݶ�� ��� ��ũ�� 1+1 ��ȹ��Ʈ', '30000' , '[ȭ�߸Լ�ũ��]���̿����� ���ι��̿��� �ݶ�� ��� ��ũ�� 1+1 ��ȹ��Ʈ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206850' , '[��12��] �ѹ����� 4�� SOS �������� �������� 10�� (+2�� ������ȹ)', '40000' , '[��12��] �ѹ����� 4�� SOS �������� �������� 10�� (+2�� ������ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000189837' , '[�����̹�] �ѹ����� 5�� �۷�Ÿġ��C ���� ���� 30ml+30ml �����ȹ', '46000' , '[�����̹�] �ѹ����� 5�� �۷�Ÿġ��C ���� ���� 30ml+30ml �����ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000180237' , '[7�� �ÿ���/��ũ�� ���Ɽä] �޹� ����Ǯ ��ũ ��� ��ũ�� ��� ��ȹ (50ml+50ml)', '51000' , '[7�� �ÿ���/��ũ�� ���Ɽä] �޹� ����Ǯ ��ũ ��� ��ũ�� ��� ��ȹ (50ml+50ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000154091' , '[7���ÿ���/�𸵻��� ���۹�Ʈ] ���ͺ�γʽ� ǻ�� ĳ��ƿ �� 950ml 10�� �� 1', '33000' , '[7���ÿ���/�𸵻��� ���۹�Ʈ] ���ͺ�γʽ� ǻ�� ĳ��ƿ �� 950ml 10�� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000201297' , '[NEW ��� �귯�� ��ȹ] ���ٵ� �׸��� ���� ��� �귯�� ��ȹ', '20000' , '[NEW ��� �귯�� ��ȹ] ���ٵ� �׸��� ���� ��� �귯�� ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000120656' , '[�ֱ������Ŀ] ���������� ����Ÿ�� �潽', '12000' , '[�ֱ������Ŀ] ���������� ����Ÿ�� �潽.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000198343' , 'Ŭ���� ���� �� ���� ���������� �潽���̳�', '11000' , 'Ŭ���� ���� �� ���� ���������� �潽���̳�.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207349' , '[��۹�PICK] ������ �ڽ���ƽ �̴� ���̶����� 3g 8�� �� 1', '33000' , '[��۹�PICK] ������ �ڽ���ƽ �̴� ���̶����� 3g 8�� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206815' , '[1+1/���кν���] �佽�� ����Ŵ� ������ ��� ���������� 300ml', '36000' , '[1+1/���кν���] �佽�� ����Ŵ� ������ ��� ���������� 300ml.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000199624' , '�̿����� �ǰ��̽� ȿ�� �÷��� 30�� 3�� �� ��1 (����/����/����)', '22000' , '�̿����� �ǰ��̽� ȿ�� �÷��� 30�� 3�� �� ��1 (����/����/����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000158896' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� �� ���� ƾƮ', '13000' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� �� ���� ƾƮ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000176735' , 'Į�� ��Ʈ�� PLUS 15�� (15�Ϻ�)', '17500' , 'Į�� ��Ʈ�� PLUS 15�� (15�Ϻ�).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000148549' , '[7�� �ÿ���/7�⿬�� 1��] Ʈ���� �þ� ���� ��ũ�� 510g 14�� ��1', '22500' , '[7�� �ÿ���/7�⿬�� 1��] Ʈ���� �þ� ���� ��ũ�� 510g 14�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205166' , '[������ȹ]���̿����� ���ú�� H2O 500ml ���� ��ȹ (+��� ȭ��� 10��)', '42000' , '[������ȹ]���̿����� ���ú�� H2O 500ml ���� ��ȹ (+��� ȭ��� 10��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207389' , '[1+1/������ȹ] �޵�ť�� ���� ��� �е� 2.0 ���ʱ�ȹ (70��+70��)', '33000' , '[1+1/������ȹ] �޵�ť�� ���� ��� �е� 2.0 ���ʱ�ȹ (70��+70��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207267' , '[NEW] ����ũ���� ������ �� �ƹ̳� �������� Ŭ��¡�� 150ml', '18000' , '[NEW] ����ũ���� ������ �� �ƹ̳� �������� Ŭ��¡�� 150ml.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207225' , '[��������]�ѹ����� 1�� �����ٻ� ��Ƽ��� �������� 50ml ���ʱ�ȹ(50ml+50ml)', '38000' , '[��������]�ѹ����� 1�� �����ٻ� ��Ƽ��� �������� 50ml ���ʱ�ȹ(50ml+50ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000185572' , '[140��] �ѹ����� 1�� ��ī ���Ƹ��� �ʷ��е� 70�� (+70�� ���ʱ�ȹ)', '42000' , '[140��] �ѹ����� 1�� ��ī ���Ƹ��� �ʷ��е� 70�� (+70�� ���ʱ�ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207953' , '[����Pick] �̴Ͻ����� ��Ƽ�� �ǵ�˿� ��Ų�ν��� ���� 25ml (+25ml)', '40000' , '[����Pick] �̴Ͻ����� ��Ƽ�� �ǵ�˿� ��Ų�ν��� ���� 25ml (+25ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000193919' , '[ȭ��1��] �������Ʈ Ŭ�� �� �۷ο� û���� LHA �� Ŭ���� 205ml ��ȹ(+����е� 12ml 4EA ����)', '22000' , '[ȭ��1��] �������Ʈ Ŭ�� �� �۷ο� û���� LHA �� Ŭ���� 205ml ��ȹ(+����е� 12ml 4EA ����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000186151' , '[�ڱԿ� PICK] ��Ű�Ϸ� ��ν� ���̾�Ʈ C3G ���̽�Ƽ 16�� (8�Ϻ�)', '20900' , '[�ڱԿ� PICK] ��Ű�Ϸ� ��ν� ���̾�Ʈ C3G ���̽�Ƽ 16�� (8�Ϻ�).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000201963' , '�Ĺ����� ���������� �� �������� 1+1 ��ȹ', '14800' , '�Ĺ����� ���������� �� �������� 1+1 ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000202893' , '[ȭ��1��/����������] ��������ó ����� ���ƽý� ���� ��ũ�� 90ml ��ȹ (+ī���е� 2��)', '34000' , '[ȭ��1��/����������] ��������ó ����� ���ƽý� ���� ��ũ�� 90ml ��ȹ (+ī���е� 2��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206573' , '[Ű������] �����굩 �� �� ��� 12g 2�� �� 1', '32000' , '[Ű������] �����굩 �� �� ��� 12g 2�� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206920' , '[7���ÿ���/�ĴϾ�PICK] ��ǻ���� ����Ʈ ���� �� �е� 70�� ��ȹ (+30��)', '23000' , '[7���ÿ���/�ĴϾ�PICK] ��ǻ���� ����Ʈ ���� �� �е� 70�� ��ȹ (+30��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207873' , '��ũ��Ʈ ���÷� 2�� ��1', '39000' , '��ũ��Ʈ ���÷� 2�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000141845' , '�긵�׸� �˷ο�99% ������ 300ml �����ȹ (300ml+300ml)', '13600' , '�긵�׸� �˷ο�99% ������ 300ml �����ȹ (300ml+300ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000188270' , '[7�� �ÿ���/10�б޼�����] �ƺ�� ������ ��Ʈ ����ũ ��� ��ƼĿ 5�� (+1�� ������ȹ)', '20000' , '[7�� �ÿ���/10�б޼�����] �ƺ�� ������ ��Ʈ ����ũ ��� ��ƼĿ 5�� (+1�� ������ȹ).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000184060' , '[�ܵ���ȹ] ���̿��� ��Ƽ�� ���� �ٿ ���� 30ml ��ȹ(+���� 10ml+���̿�������48ml)', '50000' , '[�ܵ���ȹ] ���̿��� ��Ƽ�� ���� �ٿ ���� 30ml ��ȹ(+���� 10ml+���̿�������48ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000182989' , '[1��*����ƽ/�ڼ��� ��������] AHC �������� ���ġ ����ƽ 22g', '21000' , '[1��*����ƽ/�ڼ��� ��������] AHC �������� ���ġ ����ƽ 22g.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000186228' , '[�ÿ��ܵ�/�߰�����] Į�� ��žPLUS 15+3��/Į�� ��Ʈ��PLUS 15+3�� �� �� 1', '17500' , '[�ÿ��ܵ�/�߰�����] Į�� ��žPLUS 15+3��/Į�� ��Ʈ��PLUS 15+3�� �� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000179685' , '[7�� �ÿ���/���ο��ɾ�] �޹� ȭ��Ʈ Ʈ���� �۽�Ʈ �������� ���� 100ml + 100ml ��ȹ��Ʈ', '59800' , '[7�� �ÿ���/���ο��ɾ�] �޹� ȭ��Ʈ Ʈ���� �۽�Ʈ �������� ���� 100ml + 100ml ��ȹ��Ʈ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000208465' , '�̴Ͻ����� ��Ƽ�� ��ī ���� ���� 30mL ��ȹ ��Ʈ(+25ml+PDRN 5ml)', '40000' , '�̴Ͻ����� ��Ƽ�� ��ī ���� ���� 30mL ��ȹ ��Ʈ(+25ml+PDRN 5ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206053' , '[��������]�ѹ����� 1�� �����ٻ� ��Ƽ�� ����ũ�� 80ml+80ml ���� ��ȹ', '40000' , '[��������]�ѹ����� 1�� �����ٻ� ��Ƽ�� ����ũ�� 80ml+80ml ���� ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000142695' , '����� �̹� ��Ƽ��Ÿ��&amp;�̳׶� 7�� (1�ֺ�)', '38000' , '����� �̹� ��Ƽ��Ÿ��&amp;�̳׶� 7�� (1�ֺ�).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000181697' , '[7�� �ÿ���] �����ò� ��Ŭ ����� �ָ���ġ(�̰�, ����, �̸�, ��) 4�� �� 1', '12900' , '[7�� �ÿ���] �����ò� ��Ŭ ����� �ָ���ġ(�̰�, ����, �̸�, ��) 4�� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207736' , '[���ƾ��� �˵���] ���÷��� ��� ��� �׶��ε� Ŭ��¡�� 100ml', '26000' , '[���ƾ��� �˵���] ���÷��� ��� ��� �׶��ε� Ŭ��¡�� 100ml.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205486' , '[��������/�е�����] �޵��� ���� �𵨸� �� Ǯ��Ű�� 3�� �� 1', '5000' , '[��������/�е�����] �޵��� ���� �𵨸� �� Ǯ��Ű�� 3�� �� 1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000156230' , '[����õ��ũ��] ��������ó ����� ����˶� ����ũ�� 60ml ��ȹ (60ml+30ml)', '24000' , '[����õ��ũ��] ��������ó ����� ����˶� ����ũ�� 60ml ��ȹ (60ml+30ml).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000189195' , '���� ���߷� ����ũ�� 1�� (�˷ο�/����/����/���/���� 5�� �� 1)', '1000' , '���� ���߷� ����ũ�� 1�� (�˷ο�/����/����/���/���� 5�� �� 1).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000166296' , '�Ĺ����� ���� ���̽� �� �ٵ� �� ��ƽ ���� ��ȹ (30gX2)', '32000' , '�Ĺ����� ���� ���̽� �� �ٵ� �� ��ƽ ���� ��ȹ (30gX2).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000205218' , '[1�����] ���左 1025 ���� ��� 500ml ��ȹ (+200ml+ ����ũ�� 1��)', '45000' , '[1�����] ���左 1025 ���� ��� 500ml ��ȹ (+200ml+ ����ũ�� 1��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000147809' , '[�Ӱ����ذ�] ������ ���� ���˷�δ� ��� 100 ���� 100ml ��ȹ (+������ŰƮ2ea)', '28000' , '[�Ӱ����ذ�] ������ ���� ���˷�δ� ��� 100 ���� 100ml ��ȹ (+������ŰƮ2ea).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000180464' , '[���ʱ�ȹ] ���� û�� ��ŸC ��Ƽ�ɾ� ũ�� ���ʿ���� ��ȹ(75ml+75ml����)', '30000' , '[���ʱ�ȹ] ���� û�� ��ŸC ��Ƽ�ɾ� ũ�� ���ʿ���� ��ȹ(75ml+75ml����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000201123' , '[�ܵ�����Ī] ���� ���۷��� �� ƾƮ 30 colors (���� PICK)', '20000' , '[�ܵ�����Ī] ���� ���۷��� �� ƾƮ 30 colors (���� PICK).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000127688' , 'MS44 ���� �� �Ŀ�� ��Ʈ 15�� 3�� ��1', '4900' , 'MS44 ���� �� �Ŀ�� ��Ʈ 15�� 3�� ��1.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000166709' , '[������ȹ/��70��] ��ŲǪ�� ĳ�� ī��ƾ ī�� ���� �е� ��ȹ (60��+10������)', '26000' , '[������ȹ/��70��] ��ŲǪ�� ĳ�� ī��ƾ ī�� ���� �е� ��ȹ (60��+10������).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000180474' , '[�ܵ���ȹ] �丮�� ���̺��� ������ ���˷�л� ��� 500ml ��ȹ (+ȭ��� 60�� ����)', '29000' , '[�ܵ���ȹ] �丮�� ���̺��� ������ ���˷�л� ��� 500ml ��ȹ (+ȭ��� 60�� ����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000190326' , '[�ܵ���ȹ] �丮�� ���̺��� ������ ���˷�л� ���� 50ml ��ȹ(+��Ƽ�е� 10��)', '22000' , '[�ܵ���ȹ] �丮�� ���̺��� ������ ���˷�л� ���� 50ml ��ȹ(+��Ƽ�е� 10��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000163626' , '[7�� �ÿ���] ������ ������ �� ����ũ�� ���� �̽�Ʈ', '33000' , '[7�� �ÿ���] ������ ������ �� ����ũ�� ���� �̽�Ʈ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000206905' , '��ν����� ��ī�ö�Ʈ ��Ƽ ����� ũ�� B5 100ml ��ȹ (+3ml*2 �߰�����)', '49000' , '��ν����� ��ī�ö�Ʈ ��Ƽ ����� ũ�� B5 100ml ��ȹ (+3ml*2 �߰�����).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000152195' , '��ݵ����� �ó����� ���� �ȼ� �ø��꿵 1+1 �ܵ� ��ȹ', '46000' , '��ݵ����� �ó����� ���� �ȼ� �ø��꿵 1+1 �ܵ� ��ȹ.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000178196' , '[�����̳�2 ������ PICK] �ƺ�� �ݶ�� �� ����ũ ������ ���� 4�� ��ȹ (����ź�� ����ũ��)', '20000' , '[�����̳�2 ������ PICK] �ƺ�� �ݶ�� �� ����ũ ������ ���� 4�� ��ȹ (����ź�� ����ũ��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000187728' , '[7�� �ÿ���/1����ġ]�ɾ��÷��� ��óĿ�� ������ġ 102��', '6000' , '[7�� �ÿ���/1����ġ]�ɾ��÷��� ��óĿ�� ������ġ 102��.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207017' , '[7�� �ÿ���]�������X�̴Ͼ��� ǻ��&amp;�� Ŭ��¡�� 120ml 1+1 ��ȹ (+����Ŀ Ű��)', '14000' , '[7�� �ÿ���]�������X�̴Ͼ��� ǻ��&amp;�� Ŭ��¡�� 120ml 1+1 ��ȹ (+����Ŀ Ű��).jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000207894' , '[NEW] ���� ��� �� ����ƽ 14g', '28000' , '[NEW] ���� ��� �� ����ƽ 14g.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000165215' , '�ٴҶ��� ������ �����̸� �ǴϽ� �Ŀ��', '22000' , '�ٴҶ��� ������ �����̸� �ǴϽ� �Ŀ��.jpg');
insert into tbl_product (prod_code,prod_name,prod_price,prod_image)
values('A000000172610' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� ���� �� ġũ', '12000' , '[7�� �ÿ���][�Ҿ�X�̳��ǽ�����] �Ҿ� ���� �� ġũ.jpg');
