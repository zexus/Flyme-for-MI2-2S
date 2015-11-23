.class public Lcom/android/settings_ext/dashboard/f;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Ri:Landroid/widget/TextView;

.field private Rj:Landroid/widget/TextView;

.field private Rk:Landroid/view/View;

.field private Rl:I

.field private Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

.field private sM:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/dashboard/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/android/settings_ext/dashboard/f;->Rl:I

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    const v0, 0x7f100051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/f;->sM:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f100052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Ri:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10003a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Rj:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Rk:Landroid/view/View;

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/settings_ext/dashboard/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f020064

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dashboard/f;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/dashboard/f;->setFocusable(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public ax(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/settings_ext/dashboard/f;->Rk:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Lcom/android/settings_ext/dashboard/DashboardTile;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    .line 76
    return-void
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings_ext/dashboard/f;->Rl:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/f;->sM:Landroid/widget/ImageView;

    return-object v0
.end method

.method public nK()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Ri:Landroid/widget/TextView;

    return-object v0
.end method

.method public nL()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Rj:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ext/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ext/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings_ext/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings_ext/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/f;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ext/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ext/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dashboard/f;->Rm:Lcom/android/settings_ext/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ext/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
