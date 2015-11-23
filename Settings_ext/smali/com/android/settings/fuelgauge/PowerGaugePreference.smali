.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private IF:Ljava/lang/CharSequence;

.field private aaC:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    .line 48
    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->aaC:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 49
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 3

    .prologue
    .line 55
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    .line 56
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/hl;->ai(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->IF:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 58
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    .line 69
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 71
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->IF:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method

.method ps()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->aaC:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method
