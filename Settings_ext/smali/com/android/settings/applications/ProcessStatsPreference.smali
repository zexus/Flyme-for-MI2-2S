.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Landroid/preference/Preference;
.source "ProcessStatsPreference.java"


# instance fields
.field private IF:Ljava/lang/CharSequence;

.field private Ik:Lcom/android/settings/applications/ProcStatsEntry;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    .line 66
    double-to-int v0, p3

    invoke-static {v0}, Lcom/android/settings/hl;->ai(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->IF:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsPreference;->notifyChanged()V

    .line 68
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1

    .prologue
    .line 56
    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    .line 57
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void

    .line 57
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public jC()Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    .line 75
    iget v1, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 77
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsPreference;->IF:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
