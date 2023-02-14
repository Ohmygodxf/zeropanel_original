<!DOCTYPE html>
<html lang="en">
    <head>
        <title>{$config["appName"]} Dashboard</title>
        <link href="/theme/zero/assets/css/zero.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8" />
        <meta name="renderer" content="webkit" />
        <meta name="description" content="Updates and statistics" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="format-detection" content="telephone=no,email=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta name="theme-color" content="#3B5598" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
        <meta http-equiv="expires" content="0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
        <link href="/theme/zero/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
        <link href="/theme/zero/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="/theme/zero/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
        <link href="/favicon.png" rel="shortcut icon">
        <link href="/apple-touch-icon.png" rel="apple-touch-icon">
    </head>
	{include file ='include/index/menu.tpl'}
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <div class="d-flex flex-column flex-column-fluid mt-10">
                            <div id="kt_app_content" class="app-content flex-column-fluid">
                                <div id="kt_app_content_container" class="app-container container-xxl">
									<div class="row g-5 g-xl-10 mb-5 mb-xl-10">
										<div class="col-xxl-6">
											<div class="card card-flush h-md-100">
												<div class="card-header border-0">
													<div class="card-title text-dark fs-3 fw-bolder">{$trans->t('product details')}</div>
												</div>     
												<div class="card-body pt-0">
													<div class="d-flex align-items-center mb-9 bg-light-warning rounded p-5">
														<span class="svg-icon svg-icon-warning svg-icon-1 me-5">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
																<path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z"/>
																<path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z"/>
																<path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
															</svg>
														</span>
														<div class="d-flex flex-column flex-grow-1 mr-2">
															<a class="fs-lg fw-bolder text-gray-800 mb-1">
																{if $user->class_expire != "1989-06-04 00:05:00" && $user->class >= 1}
																	<span class="counter">{$trans->t('time')}:&nbsp;{$class_left_days}&nbsp;{$trans->t('day')}</span>
																{else if $user->class_expire != "1989-06-04 00:05:00" && $user->class <= 0}
																	<span class="counter">{$trans->t('time')}:&nbsp;{$trans->t('no product')}</span>
																{else}<span class="counter">No product</span>
																{/if}
															</a>					   
															<span class="text-muted fw-semibold d-block">
																{if $user->class_expire != "1989-06-04 00:05:00" && $user->class >= 1}
																	{$trans->t('expired date')}:&nbsp;{substr($user->class_expire, 0, 10)}
																{/if}
															</span>
														</div>
													</div>
													<div class="d-flex align-items-center bg-light-success rounded p-5 mb-9">
														<span class="svg-icon svg-icon-success svg-icon-1 me-5">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-soundwave" viewBox="0 0 16 16">
																<path fill-rule="evenodd" d="M8.5 2a.5.5 0 0 1 .5.5v11a.5.5 0 0 1-1 0v-11a.5.5 0 0 1 .5-.5zm-2 2a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zm4 0a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zm-6 1.5A.5.5 0 0 1 5 6v4a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm8 0a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm-10 1A.5.5 0 0 1 3 7v2a.5.5 0 0 1-1 0V7a.5.5 0 0 1 .5-.5zm12 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0V7a.5.5 0 0 1 .5-.5z"/>
															</svg>
														</span>
														<div class="d-flex flex-column flex-grow-1 mr-2">
															<a class="fw-bolder text-gray-800 fs-lg mb-1">
																{$trans->t('traffic')}:&nbsp;{$user->usedTraffic()} / <span id="traffic">{$user->enableTraffic()}</span>
															</a>
															<span class="text-muted fw-semibold d-block">
																{$trans->t('reset date')}:&nbsp;{$user->productTrafficResetDate()}
															</span>
														</div>
													</div>
													<div class="d-flex align-items-center bg-light-danger rounded p-5 mb-9">
														<span class="svg-icon svg-icon-danger svg-icon-1 me-5">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16">
																<path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
																<path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
															</svg>
														</span>
														<div class="d-flex flex-column flex-grow-1 mr-2">
															<a class="fw-bolder text-gray-800 fs-lg mb-1">
																{$trans->t('online ip')}:&nbsp;{$user->online_ip_count()} / {if $user->node_connector === 0 }{$trans->t('unlimited')}{else}{$user->node_connector}{/if}
															</a>
															<span class="text-muted fw-semibold d-block">
																{$trans->t('latest used date')}:&nbsp;{$user->lastUseTime()}
															</span>
														</div>
													</div>
													<div class="d-flex align-items-center bg-light-info rounded p-5 mb-5">
														<span class="svg-icon svg-icon-info svg-icon-1 me-5">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
																<path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
															</svg>
														</span>
														<div class="d-flex flex-column flex-grow-1 mr-2">
															<a class="fw-bolder text-gray-800 fs-lg mb-1">
																{$trans->t('credit')}:&nbsp;{$user->money} $
															</a>
															<span class="text-muted fw-semibold d-block">
																{$trans->t('commission')}:&nbsp;{$user->commission} $
															</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xxl-6">
											<div class="card card-flush mb-5">
												<div class="card-header pt-5">
													<div class="card-title  fw-bold text-dark fs-3">{$trans->t('traffic details')}</div>
												</div>
												<div class="card-body d-flex flex-column pt-0">
													<div id="traffic_widgets" data-kt-chart-color="success" style="height: 150px; min-height: 130px;"></div>
												</div>
											</div>
											<div class="card card-flush">
												<div class="card-header border-0">
													<div class="card-title text-dark fw-bolder fs-3">
														
															{$trans->t('subscription url')}
														
													</div>
												</div>
												<div class="card-body pt-0">
													<div class="row">
														<div class="col">
															{if in_array('clash',$zeroconfig['index_sub'])}
															<!-- Clash订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-clash dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-clash text-white"></i>&nbsp;&nbsp;{$trans->t('clash')}&nbsp;&nbsp;</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo['clash']}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('clash', '{$subInfo['clash']}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
															{if in_array('surge',$zeroconfig['index_sub'])}
															<!-- Surge订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-surge dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-surge text-white"></i>&nbsp;&nbsp;{$trans->t('surge')}&nbsp;&nbsp;</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo["surge"]}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('surge4', '{$subInfo["surge"]}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
															{if in_array('ss',$zeroconfig['index_sub'])}
															<!-- ss订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-surfboard copy-text" data-clipboard-text="{$subInfo["ss"]}"><i class="zero-ssr text-white"></i>&nbsp;&nbsp;复制 SS 订阅&nbsp;&nbsp;</button>
															</div>
															{/if}
															{if in_array('v2ray',$zeroconfig['index_sub'])}
															<!-- V2Ray订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-v2ray copy-text" data-clipboard-text="{$subInfo["v2ray"]}"><i class="zero-v2rayng text-white"></i>{$trans->t('v2ray')}</button>
															</div>
															{/if}
															{if in_array('shadowrocket',$zeroconfig['index_sub'])}
															<!-- Shadowrocket订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-shadowrocket dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-shadowrocket text-white"></i>{$trans->t('shadowrocket')}</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo["shadowrocket"]}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('shadowrocket', '{$subInfo["shadowrocket"]}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
															{if in_array('quantumult',$zeroconfig['index_sub'])}
															<!-- Quantumult订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-quantumult dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-quantumult text-white"></i>{$trans->t('quan')}</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo["quantumult"]}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('quantumult', '{$subInfo["quantumult"]}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
															{if in_array('quantumultx',$zeroconfig['index_sub'])}
															<!-- QuantumultX订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-quantumultx copy-text" data-clipboard-text="{$subInfo["quantumultx"]}"><i class="zero-quantumultx text-white"></i>{$trans->t('quanx')}</button>
															</div>
															{/if}
															{if in_array('v2rayvless',$zeroconfig['index_sub'])}
																<!-- V2Ray订阅 -->
																<div class="btn-group mb-3 mr-3">
																	<button type="button" class="btn btn-pill btn-v2ray copy-text" data-clipboard-text="{$subInfo["v2ray_vless"]}"><i class="zero-v2rayng text-white"></i>&nbsp;&nbsp;复制 V2Ray-VLESS 订阅&nbsp;&nbsp;</button>
																</div>
															{/if}
															{if in_array('surfboard',$zeroconfig['index_sub'])}
															<!-- Surfboard订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-surfboard dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-surfboard text-white"></i>{$trans->t('surfboard')}</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo["surfboard"]}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('surfboard', '{$subInfo["surfboard"]}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
															{if in_array('kitsunebi',$zeroconfig['index_sub'])}
															<!-- Kitsunebi订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-kitsunebi copy-text" data-clipboard-text="{$subInfo["kitsunebi"]}"><i class="zero-kitsunebi text-white"></i>&nbsp;&nbsp;复制 Kitsunebi 订阅&nbsp;&nbsp;</button>
															</div>
															{/if}
															{if in_array('anxray',$zeroconfig['index_sub'])}
															<!-- AnXray订阅 -->
															<div class="btn-group mb-3 mr-3">
																<button type="button" class="btn btn-pill btn-kitsunebi dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zero-ssr text-white"></i>&nbsp;&nbsp;{$trans->t('sagernet')}&nbsp;&nbsp;</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item copy-text" href="Javascript:;" data-clipboard-text="{$subInfo["anxray"]}">{$trans->t('copy')}</a></li>
																	<li><hr class="dropdown-divider"></li>
																	<li><a class="dropdown-item" href="Javascript:;" onclick="oneclickImport('sagernet', '{$subInfo["anxray"]}')">{$trans->t('import')}</a></li>
																</ul>
															</div>
															{/if}
														</div>
													</div>
												</div>
											</div>
										</div>                                   
									</div>
									<div class="row g-5 g-xl-10 mb-5 mb-xl-10">
										<div class="col-xxl-8">
										<div class="card card-flush">
												<div class="card-header">
													<div class="card-title">
														<div class="fw-bolder text-dark fs-h3">
															{$trans->t('tutorial details')}
														</div>
													</div>
												
													<div class="card-toolbar">
														<ul class="nav">
															<li class="nav-item">
																<a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary active fw-bold px-4 me-1" data-bs-toggle="tab" href="#kt_tab_pane_1_1">Android</a>
															</li>
															<li class="nav-item">
																<a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary fw-bold px-4 me-1" data-bs-toggle="tab" href="#kt_tab_pane_2_2">IOS</a>
															</li>
															<li class="nav-item">
																<a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary fw-bold px-4 me-1" data-bs-toggle="tab" href="#kt_tab_pane_3_3">MACOS</a>
															</li>
															<li class="nav-item">
																<a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary fw-bold px-4" data-bs-toggle="tab" href="#kt_tab_pane_4_4">Windows</a>
															</li>
														</ul>
													</div>
												</div>
												<div class="card-body pt-0">
													<div class="tab-content mt-5">
													<div class="tab-pane fade show active" id="kt_tab_pane_1_1">
														{foreach $zeroconfig['client_android'] as $c_w}
														<div class="d-flex align-items-center flex-wrap mb-8">
															<div class="symbol symbol-40px symbol-light me-5">
																<span class="symbol-label">
																	<img src="{$c_w['img']}" class="h-50 align-self-center" alt="">
																</span>
															</div>
															<div class="d-flex flex-column flex-grow-1 me-2">
																<a  class="fw-bold text-gray-800 fs-h5 mb-1">{$c_w['name']}</a>
															</div>
															<a href="{$c_w['url']}" class="badge badge-light-primary my-lg-0 my-2  fw-bolde fs-5">{$trans->t('view')}</a>
														</div>
														{/foreach}
													</div>
													<div class="tab-pane fade" id="kt_tab_pane_2_2" role="tabpanel" aria-labelledby="kt_tab_pane_2_2">
														{foreach $zeroconfig['client_ios'] as $c_w}
														<div class="d-flex align-items-center flex-wrap mb-8">
															<div class="symbol symbol-40px symbol-light me-5">
																<span class="symbol-label">
																	<img src="{$c_w['img']}" class="h-50 align-self-center" alt="">
																</span>
															</div>
															<div class="d-flex flex-column flex-grow-1 mr-2">
																<a  class="fw-bold text-gray-800 fs-h5 mb-1">{$c_w['name']}</a>
															</div>
															<a href="{$c_w['url']}" class="badge badge-light-primary my-lg-0 my-2  fw-bolde fs-5">{$trans->t('view')}</a>
														</div>
														{/foreach}
													</div>
													<div class="tab-pane fade" id="kt_tab_pane_3_3" role="tabpanel" aria-labelledby="kt_tab_pane_3_3">
														{foreach $zeroconfig['client_macos'] as $c_w}
														<div class="d-flex align-items-center flex-wrap mb-8">
															<div class="symbol symbol-40px symbol-light me-5">
																<span class="symbol-label">
																	<img src="{$c_w['img']}" class="h-50 align-self-center" alt="">
																</span>
															</div>
															<div class="d-flex flex-column flex-grow-1 mr-2">
																<a  class="fw-bold text-gray-800 fs-h5 mb-1">{$c_w['name']}</a>
															</div>
															<a href="{$c_w['url']}" class="badge badge-light-primary my-lg-0 my-2  fw-bolde fs-5">{$trans->t('view')}</a>
														</div>
														{/foreach}
													</div>
													<div class="tab-pane fade" id="kt_tab_pane_4_4" role="tabpanel" aria-labelledby="kt_tab_pane_4_4">
														{foreach $zeroconfig['client_windows'] as $c_w}
														<div class="d-flex align-items-center flex-wrap mb-8">
															<div class="symbol symbol-40px symbol-light me-5">
																<span class="symbol-label">
																	<img src="{$c_w['img']}" class="h-50 align-self-center" alt="">
																</span>
															</div>
															<div class="d-flex flex-column flex-grow-1 mr-2">
																<a  class="fw-bold text-gray-800 fs-h5 mb-1">{$c_w['name']}</a>
															</div>
															<a href="{$c_w['url']}" class="badge badge-light-primary my-lg-0 my-2  fw-bolde fs-5">{$trans->t('view')}</a>
														</div>
														{/foreach}
													</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xxl-4">
										<div class="card card-flush h-md-100" style="background: linear-gradient(112.14deg, #00D2FF 0%, #3A7BD5 100%)">                                   
                                                <div class="card-body">                                        
                                                    <div class="row align-items-center h-100">                                           
                                                        <div class="col-7 ps-xl-13">                                                
                                                            <div class="text-white mb-6 pt-6">
                                                                <span class="fs-h4 fw-bold me-2 d-block lh-1 pb-2 opacity-75">{$trans->t('ref.gift')}</span>
                                                                <span class="fs-h2 fw-bolder">{$trans->t('ref.referral')}</span>
                                                            </div>                                                                                              
                                                            <span class="fw-bold text-white fs-h6 mb-8 d-block opacity-75">{$trans->t('ref.content 1')}{$config['rebate_ratio'] * 100}%</span>                                               
                                                            <span class="fw-bold text-white fs-h6 mb-8 d-block opacity-75">{$trans->t('ref.content 2')}</span>                                                                                          
                                                            <div class="d-flex flex-column flex-sm-row">
                                                                <a href="JavaScript:;" class="btn btn-success flex-shrink-0 mr-2 fw-bold copy-text" data-clipboard-text="{$invite_url}">{$trans->t('ref.copy')}</a>
                                                            </div>                                                
                                                        </div>                                                                                        
                                                        <div class="col-5 pt-10">                                               
                                                            <div class="bgi-no-repeat bgi-size-contain bgi-position-x-end h-225px" style="background-image:url('/theme/zero/assets/media/svg/illustrations/easy/5.svg');"></div>                                                
                                                        </div>                                           
                                                    </div>                                       
                                                </div>                                   
                                            </div>
										</div>
									</div>
								</div>
                            </div>
                        </div>
						<div class="app_footer py-4 d-flex flex-lg-column" id="kt_app_footer">
							<div class="app-container container-fluid d-flex flex-column flex-md-row flex-center flex-md-stack py-3">
								<div class="text-dark-75 order-2 order-md-1">
									&copy;<script>document.write(new Date().getFullYear());</script>,&nbsp;<a>{$config["appName"]},&nbsp;Inc.&nbsp;All rights reserved.</a>
								</div>
							</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
		{include file='include/global/scripts.tpl'}
		{include file='include/index/news.tpl'}										
	</body>
</html>
