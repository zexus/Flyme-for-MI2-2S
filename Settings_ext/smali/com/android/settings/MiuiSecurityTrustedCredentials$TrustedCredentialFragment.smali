.class public Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;
.super Lcom/android/settings/BaseListFragment;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field private mUserManager:Landroid/os/UserManager;

.field private rG:Z

.field private rH:Z

.field private rq:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings/eu;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->l(Lcom/android/settings/eu;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rG:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->fq()V

    return-void
.end method

.method private fq()V
    .locals 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rG:Z

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 486
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rH:Z

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    const/16 v1, 0x3015

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rH:Z

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rG:Z

    .line 496
    return-void
.end method

.method private l(Lcom/android/settings/eu;)V
    .locals 3

    .prologue
    .line 437
    invoke-static {p1}, Lcom/android/settings/eu;->i(Lcom/android/settings/eu;)Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 438
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    const v2, 0x11070054

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 441
    const v0, 0x104000a

    new-instance v2, Lcom/android/settings/ey;

    invoke-direct {v2, p0}, Lcom/android/settings/ey;-><init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 448
    invoke-static {p1}, Lcom/android/settings/eu;->c(Lcom/android/settings/eu;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/settings/eu;)I

    move-result v0

    new-instance v2, Lcom/android/settings/ez;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ez;-><init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings/eu;)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 481
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 421
    new-instance v0, Lcom/android/settings/ev;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rq:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ev;-><init>(Landroid/app/Activity;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Landroid/view/View;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/es;)V

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ex;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/ex;-><init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings/ev;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 434
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 400
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->setThemeRes(I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tab_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->rz:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rq:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->mUserManager:Landroid/os/UserManager;

    .line 408
    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ry:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->rq:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 413
    return-object v0
.end method
