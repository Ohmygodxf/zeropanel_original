<!DOCTYPE html>
<html lang="en">
	<head>
		<title>{$config['website_name']} - {$trans->t('signup')}</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<link href="/favicon.png" rel="shortcut icon">
		<link href="/theme/zero/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/theme/zero/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="kt_body" class="app-blank app-blank bgi-size-cover bgi-position-center bgi-no-repeat">
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<div class="d-flex flex-column flex-root" id="kt_app_root">
			<style>body { background-image: url({if empty($config['website_auth_background_image'])}'/theme/zero/assets/media/auth/bg4.jpg'{else}{$config['website_auth_background_image']}{/if}); } [data-bs-theme="dark"] body { background-image: url({if empty($config['website_auth_background_image'])}'/theme/zero/assets/media/auth/bg4-dark.jpg'{else}{$config['website_auth_background_image']}{/if}); }</style>
			<div class="d-flex flex-column flex-column-fluid flex-lg-row">
				<div class="d-flex flex-center w-lg-50 pt-15 pt-lg-0 px-10">
					<div class="d-flex flex-center flex-lg-start flex-column">
						<a href="" class="mb-7 fs-3hx fw-bold text-white">{$config['website_name']}</a>						
					</div>
				</div>
				<div class="d-flex flex-center w-lg-50 p-10">
					<div class="card rounded-3 w-md-550px">
						<div class="card-body p-10 p-lg-20">
							<form class="form w-100" novalidate="novalidate" id="kt_sign_up_form" data-kt-redirect-url="/user/dashboard" action="#">
								<div class="text-center mb-11">
									<h1 class="text-dark fw-bolder mb-6">{$trans->t('signup')}</h1>
								</div>
								<div class="fv-row mb-5">
									<input class="form-control form-control-lg bg-transparent" type="email" placeholder="{$trans->t('email')}" name="email" id="email" autocomplete="off" />
								</div>

								<div class="fv-row mb-5" data-kt-password-meter="true">
									<div class="position-relative mb-3">		
										<input class="form-control form-control-lg bg-transparent" type="password" placeholder="{$trans->t('passwd')}" name="password" id="passwd" autocomplete="off" />
										<span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" data-kt-password-meter-control="visibility">
											<i class="bi bi-eye-slash fs-2"></i>
											<i class="bi bi-eye fs-2 d-none"></i>
										</span>
									</div>
									<div class="d-flex align-items-center mb-3" data-kt-password-meter-control="highlight">
										<div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
										<div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
										<div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
										<div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px"></div>
									</div>
								</div>

								<div class="fv-row mb-5">
									<input class="form-control form-control-lg bg-transparent" type="password" placeholder="{$trans->t('comfirm passwd')}" name="confirm-password" id="repasswd" autocomplete="off" data-kt-translate="sign-up-input-confirm-password" />
								</div>

                                <div class="fv-row mb-5">
                                    <input class="form-control form-control-lg bg-transparent" type="text" placeholder="{$trans->t('referral code')}" name="code" id="referral_code" autocomplete="off" data-kt-translate="sign-up-input-last-name" />
                                </div>
								{if $config['enable_signup_captcha'] == true && $config['captcha_provider'] == 'turnstile' && $captcha['turnstile_sitekey'] != ''}
									<div class="fv-row mb-7">
										<div class="cf-turnstile" data-sitekey="{$captcha['turnstile_sitekey']}" data-theme="light"></div>
									</div>
								{/if}
								<div class="d-grid mb-10">
									<button id="kt_sign_up_submit" class="btn btn-primary">
										<span class="indicator-label" data-kt-translate="sign-up-submit">{$trans->t('signup')}</span>
                                        <span class="indicator-progress">
                                            <span data-kt-translate="general-progress">{$trans->t('please wait')}</span>
                                            <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                                        </span>
									</button>
								</div>
								<div class="text-gray-500 text-center fw-semibold fs-6">
										{$trans->t('already have account')}?
									<a class="link-primary" href="/auth/signin">{$trans->t('signin')}</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="app_footer py-4 d-flex flex-lg-column" id="kt_app_footer">
				<div class="app-container container-fluid d-flex flex-column flex-center py-3">
					<div class="text-white order-2 order-md-1 text-center">
						&copy;<script>document.write(new Date().getFullYear());</script>,&nbsp;<span>{$config["website_name"]},&nbsp;Inc.&nbsp;All rights reserved.</span>
					</div>
				</div>
			</div>
		</div>
		<script src="/theme/zero/assets/plugins/global/plugins.bundle.js"></script>
		<script src="/theme/zero/assets/js/scripts.bundle.js"></script>
		<script src="/js/auth/signup.min.js"></script>
		<script src="/js/i18nextBrowserLanguageDetector.min.js"></script>
		<script src="/js/i18next.min.js"></script>
		<script src="/js/language.js"></script>
		{if $config['enable_signup_captcha'] === true && $config['captcha_provider'] === 'turnstile'}
			<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>
		{/if}	
	</body>
</html>