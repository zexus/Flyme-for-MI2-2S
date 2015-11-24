.class Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;
.super Lcom/android/settings_ext/location/DimmableIconPreference;
.source "RecentLocationApps.java"


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ext/location/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object p2, p0, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings_ext/location/DimmableIconPreference;->onBindView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ext/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method
