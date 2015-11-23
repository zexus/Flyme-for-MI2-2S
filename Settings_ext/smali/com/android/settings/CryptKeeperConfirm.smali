.class public Lcom/android/settings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# instance fields
.field private fh:Landroid/view/View;

.field private fi:Landroid/widget/Button;

.field private fj:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/aR;

    invoke-direct {v0, p0}, Lcom/android/settings/aR;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fj:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private aX()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fh:Landroid/view/View;

    const v1, 0x7f10006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fi:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fi:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm;->fj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 145
    const v0, 0x7f04002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fh:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->aX()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->fh:Landroid/view/View;

    return-object v0
.end method
