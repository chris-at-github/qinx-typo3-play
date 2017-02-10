<?php

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['realurl'] = array(
  '_DEFAULT' => array(
    'init' => array(
      'enableCHashCache' => true,
      'appendMissingSlash' => 'ifNotFile,redirect',
      'adminJumpToBackend' => true,
      'enableUrlDecodeCache' => true,
      'enableUrlEncodeCache' => true,
      'emptyUrlReturnValue' => '/',
    ),

    'pagePath' => array(
      'type' => 'user',
      'userFunc' => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
      'spaceCharacter' => '-',
      'languageGetVar' => 'L',
      'rootpage_id' => '1',
    ),

		'preVars' => array(
			array(
				'GETvar' => 'L',

				'valueMap' => array(
					'' => '0',
					'en' => '1',
				),

				'noMatch' => 'bypass',
			),
		),

		'postVarSets' => array(
			'_DEFAULT' => array(

			),
		),

		'fixedPostVars' => array(
			'_DEFAULT' => array(
				array(
					'GETvar' => 'no_cache',

					'valueMap' => array(
						'nc' => '1',
					),

					'noMatch' => 'bypass',
				),
			),
		),

    'fileName' => array(
      'defaultToHTMLsuffixOnPrev' => true,
      'acceptHTMLsuffix' => true,
      'index' => array(
        'print' => array(
          'keyValues' => array(
            'type' => 98,
          ),
        ),
      ),
    ),
  ),
);