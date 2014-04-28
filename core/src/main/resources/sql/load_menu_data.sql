-- Menus
INSERT INTO BLC_CMS_MENU (MENU_ID, NAME) VALUES (1, 'Header Nav');

-- Menu Items
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, CATEGORY_ID) VALUES (1, 1, 0, 'CATEGORY', 2001);
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, CATEGORY_ID) VALUES (2, 1, 1, 'CATEGORY', 2002);
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, CATEGORY_ID) VALUES (3, 1, 2, 'CATEGORY', 2003);
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, CATEGORY_ID) VALUES (4, 1, 3, 'CATEGORY', 2004);
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, CATEGORY_ID) VALUES (5, 1, 4, 'CATEGORY', 2005);
INSERT INTO BLC_CMS_MENU_ITEM (MENU_ITEM_ID, PARENT_MENU_ID, SEQUENCE, MENU_ITEM_TYPE, LINKED_PAGE_ID, LABEL) VALUES (6, 1, 5, 'PAGE', 2, 'FAQ');