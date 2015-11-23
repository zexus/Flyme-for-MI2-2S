.class public Lcom/android/settings_ext/wifi/WifiShareActivity;
.super Landroid/app/Activity;
.source "WifiShareActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private awD:Landroid/widget/TextView;

.field private awE:Landroid/widget/TextView;

.field private awF:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WifiShareActivity;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/WifiShareActivity;->br(Z)V

    return-void
.end method

.method private br(Z)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/settings_ext/wifi/aG;->v(Landroid/content/Context;Z)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->finish()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public ju()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {p0}, Lcom/android/settings_ext/wifi/aG;->bK(Landroid/content/Context;)Z

    move-result v2

    .line 48
    invoke-static {p0}, Lcom/android/settings_ext/wifi/aG;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 49
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090ca9

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/wifi/WifiShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090caa

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/wifi/WifiShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awD:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awE:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awF:Landroid/widget/Button;

    if-eqz v2, :cond_2

    const v1, 0x7f090cb6

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(I)V

    .line 55
    if-eqz v2, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awF:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/wifi/ay;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/ay;-><init>(Lcom/android/settings_ext/wifi/WifiShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    .line 53
    :cond_2
    const v1, 0x7f090cb4

    goto :goto_1

    .line 62
    :cond_3
    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awF:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/wifi/az;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/az;-><init>(Lcom/android/settings_ext/wifi/WifiShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awF:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/wifi/aA;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/aA;-><init>(Lcom/android/settings_ext/wifi/WifiShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f04013a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f100326

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awD:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f100327

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awE:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f100328

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiShareActivity;->awF:Landroid/widget/Button;

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->ju()V

    .line 44
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/settings_ext/wifi/aG;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/WifiShareActivity;->br(Z)V

    .line 94
    :cond_0
    return-void
.end method
