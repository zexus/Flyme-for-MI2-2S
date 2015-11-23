.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field GH:F

.field GI:F

.field GJ:F

.field GP:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field GQ:I

.field Hb:I

.field Hc:I

.field Hd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    const v0, -0x55afd0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->Hb:I

    .line 29
    const v0, -0x5555d0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->Hc:I

    .line 30
    const v0, -0xcf55b0

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->Hd:I

    .line 31
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->GQ:I

    .line 36
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorPreference;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->GH:F

    .line 41
    iput p2, p0, Lcom/android/settings/applications/LinearColorPreference;->GI:F

    .line 42
    iput p3, p0, Lcom/android/settings/applications/LinearColorPreference;->GJ:F

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 44
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->Hb:I

    .line 48
    iput p2, p0, Lcom/android/settings/applications/LinearColorPreference;->Hc:I

    .line 49
    iput p3, p0, Lcom/android/settings/applications/LinearColorPreference;->Hd:I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 51
    return-void
.end method

.method public aB(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->GQ:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorPreference;->notifyChanged()V

    .line 61
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f1001bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->ag(Z)V

    .line 70
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->Hb:I

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->Hc:I

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->Hd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(III)V

    .line 71
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->GH:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->GI:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->GJ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 72
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->GQ:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->aB(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->GP:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->a(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method
