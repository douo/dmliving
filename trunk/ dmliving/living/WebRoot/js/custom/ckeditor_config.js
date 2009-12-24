/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/*
 * 自定义配置 CKEditor
 */
CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.toolbar = 'Basic';
	config.language = 'zh-cn';
	// config.skin = 'office2003';
	config.uiColor = '#E7E6E0';
	config.toolbar = 'MyToolbar';
    config.toolbar_MyToolbar =
    [
        ['NewPage','Preview'],
        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Scayt'],
        ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
        '/',
        ['Styles','Format','Font','FontSize'],
        ['Bold','Italic','Strike'],
        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['Link','Unlink','Anchor'],
        ['Maximize','-','About']
    ];
    config.font_names = '宋体/宋体;黑体/黑体;仿宋/仿宋_GB2312;楷体/楷体_GB2312;隶书/隶书;幼圆/幼圆;'+ config.font_names ;
};
