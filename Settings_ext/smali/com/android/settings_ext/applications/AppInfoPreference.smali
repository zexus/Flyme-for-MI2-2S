.class public Lcom/android/settings_ext/applications/AppInfoPreference;
.super Landroid/preference/Preference;
.source "AppInfoPreference.java"


# instance fields
.field private CC:Landroid/widget/TextView;

.field private CD:Landroid/widget/TextView;

.field private CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private aq()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    iget-object v1, v1, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    iget-object v1, v1, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CD:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    iget-boolean v0, v0, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;->CG:Z

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    iget-object v1, v1, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;->CF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CD:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CD:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CE:Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ext/applications/AppInfoPreference;->aq()V

    .line 69
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ext/applications/AppInfoPreference;->aq()V

    .line 64
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/AppInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    const v0, 0x7f100013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->mIcon:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f100014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CC:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f1000a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/AppInfoPreference;->CD:Landroid/widget/TextView;

    .line 55
    return-object v1
.end method
