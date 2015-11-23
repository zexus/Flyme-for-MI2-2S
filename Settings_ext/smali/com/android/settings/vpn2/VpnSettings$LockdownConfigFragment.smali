.class public Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "VpnSettings.java"


# instance fields
.field private ND:Ljava/util/List;

.field private aof:Ljava/util/List;

.field private aog:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;)I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aog:I

    return v0
.end method

.method private static a(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    const-string v0, "LOCKDOWN_VPN"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 559
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private a(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 563
    const-string v0, "LOCKDOWN_VPN"

    invoke-static {p1, v0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->a(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {p1, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->b(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->ND:Ljava/util/List;

    .line 566
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aof:Ljava/util/List;

    .line 567
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aof:Ljava/util/List;

    const v2, 0x7f0908b6

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iput v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aog:I

    .line 570
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 571
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aof:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aog:I

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aof:Ljava/util/List;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    :cond_1
    return-void
.end method

.method public static a(Lcom/android/settings_ext/vpn2/VpnSettings;)V
    .locals 3

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    new-instance v0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;-><init>()V

    .line 554
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->ND:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 581
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 583
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->a(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    .line 585
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 588
    const v4, 0x7f0908b4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 590
    const v4, 0x7f040127

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 591
    const v0, 0x102000a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 592
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 593
    new-instance v5, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;

    iget-object v6, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aof:Ljava/util/List;

    invoke-direct {v5, v1, v6}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 594
    iget v5, p0, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->aog:I

    invoke-virtual {v0, v5, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 595
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 597
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment$1;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment$1;-><init>(Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 622
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
