.class public Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

.field private Bh:I

.field private ag:Landroid/content/ComponentName;

.field private cP:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    return-void
.end method

.method private Q(Z)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/widget/K;->ba(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->xp:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 13

    .prologue
    const v12, 0x11030017

    const v11, 0x1102009f

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 217
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 220
    const v1, 0x7f04005b

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 223
    const v1, 0x7f1000cc

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const v2, 0x7f09067a

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :goto_0
    const v1, 0x7f1000cd

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 236
    const v2, 0x7f090679

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v1, 0x7f1000ce

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 258
    invoke-virtual {v0, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b0009

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b000a

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 268
    const v6, 0x7f09067f

    invoke-virtual {p0, v6}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b000b

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 273
    const v6, 0x7f090680

    invoke-virtual {p0, v6}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v6

    .line 278
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 282
    :goto_1
    if-ge v4, v7, :cond_1

    .line 283
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 301
    invoke-virtual {v0, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b0009

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b000a

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 311
    iget v9, v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {p0, v9}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b000b

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 316
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 231
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 321
    :cond_1
    return-object v5
.end method

.method static synthetic a(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->ag:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private hU()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 162
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 163
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 164
    iget-object v5, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->ag:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->ag:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    :goto_1
    return-object v0

    .line 161
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hV()Ljava/lang/String;
    .locals 5

    .prologue
    .line 380
    const v0, 0x7f09067e

    .line 381
    iget-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 390
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->hU()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :sswitch_0
    const v0, 0x7f09067c

    .line 384
    goto :goto_0

    .line 387
    :sswitch_1
    const v0, 0x7f09067d

    goto :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/AccessibilityUtils;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 110
    :goto_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 130
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 136
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 117
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    sget-object v2, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->Ai:Ljava/util/Set;

    .line 120
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 121
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 124
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 141
    if-lez v0, :cond_3

    .line 142
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void

    :cond_4
    move v3, v4

    .line 149
    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method protected g(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->g(Landroid/os/Bundle;)V

    .line 424
    const-string v0, "settings_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, "settings_component_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bn:Ljava/lang/CharSequence;

    .line 432
    iput-object v1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bo:Landroid/content/Intent;

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 437
    :cond_0
    const-string v0, "component_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->ag:Landroid/content/ComponentName;

    .line 438
    return-void
.end method

.method protected hQ()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->hQ()V

    .line 397
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bl:Lcom/android/settings_ext/widget/K;

    new-instance v1, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/K;->a(Lcom/android/settings_ext/widget/L;)V

    .line 418
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ne p1, v1, :cond_0

    .line 327
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 328
    invoke-direct {p0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Q(Z)V

    .line 332
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Q(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 346
    packed-switch p2, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 348
    :pswitch_0
    iget v2, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bh:I

    if-ne v2, v0, :cond_1

    .line 349
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->hV()Ljava/lang/String;

    move-result-object v1

    .line 351
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings_ext/ConfirmDeviceCredentialActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 352
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Q(Z)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Q(Z)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget v2, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bh:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 363
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Q(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 362
    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const v9, 0x104000a

    const/high16 v8, 0x1040000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 176
    :pswitch_0
    iput v6, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bh:I

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->hU()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 178
    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090678

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 190
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Bh:I

    .line 195
    invoke-direct {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->hU()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090681

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090682

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accessibility/SettingsContentObserver;->b(Landroid/content/ContentResolver;)V

    .line 96
    invoke-super {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->Am:Lcom/android/settings_ext/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ext/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accessibility/SettingsContentObserver;->a(Landroid/content/ContentResolver;)V

    .line 90
    invoke-super {p0}, Lcom/android/settings_ext/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 91
    return-void
.end method
