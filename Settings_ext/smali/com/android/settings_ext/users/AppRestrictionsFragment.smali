.class public Lcom/android/settings_ext/users/AppRestrictionsFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alA:Z

.field protected alB:Z

.field private alC:I

.field private alD:Ljava/util/HashMap;

.field private alE:Ljava/util/List;

.field private alF:Ljava/util/List;

.field private alG:Landroid/os/AsyncTask;

.field private alH:Landroid/content/BroadcastReceiver;

.field private alI:Landroid/content/BroadcastReceiver;

.field protected alu:Landroid/content/pm/IPackageManager;

.field protected alv:Landroid/os/UserHandle;

.field private alw:Landroid/content/pm/PackageInfo;

.field private alx:Landroid/preference/PreferenceGroup;

.field aly:Ljava/util/HashMap;

.field private alz:Z

.field private mFirstTime:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings_ext/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alC:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alD:Ljava/util/HashMap;

    .line 121
    new-instance v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alH:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alI:Landroid/content/BroadcastReceiver;

    .line 883
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/users/AppRestrictionsFragment;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->c(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1053
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1054
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    aget-object p3, p1, v0

    .line 1058
    :cond_0
    return-object p3

    .line 1053
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    .prologue
    .line 838
    invoke-static {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->g(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 839
    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 841
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->g(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 842
    return-void
.end method

.method private a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 945
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 947
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 949
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 950
    const/4 v2, 0x0

    .line 951
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 988
    :goto_1
    if-eqz v2, :cond_3

    .line 989
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 990
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v9, "pkg_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 995
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 996
    const v0, 0x7f02007a

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 997
    invoke-static {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->g(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v3, v0

    .line 1000
    goto :goto_0

    .line 953
    :pswitch_0
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 954
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 955
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 956
    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 960
    :pswitch_1
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 961
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 962
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    .line 963
    if-nez v1, :cond_4

    .line 964
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 966
    :goto_3
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v1, v9, v5}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 968
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 969
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 970
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v1, v2

    .line 971
    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 974
    :pswitch_2
    new-instance v2, Landroid/preference/MultiSelectListPreference;

    invoke-direct {v2, v7}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 976
    check-cast v1, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 977
    check-cast v1, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 978
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 979
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v1, v6

    :goto_4
    if-ge v1, v10, :cond_0

    aget-object v11, v9, v1

    .line 980
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_0
    move-object v1, v2

    .line 982
    check-cast v1, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v1, v2

    .line 983
    check-cast v1, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1001
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->f(Ljava/util/ArrayList;)V

    .line 1002
    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto/16 :goto_2

    :cond_4
    move-object v5, v1

    goto/16 :goto_3

    .line 951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings_ext/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->v(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/users/AppRestrictionsFragment;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 872
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 874
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 877
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings_ext/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 881
    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 6

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 466
    const/16 v0, 0x2200

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 469
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 470
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 471
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 472
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    .line 476
    :cond_3
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 477
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 478
    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 481
    :cond_4
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 483
    if-eqz v3, :cond_2

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 488
    :cond_5
    new-instance v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v3}, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 489
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 490
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    .line 491
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 492
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    .line 493
    iget-object v0, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    iput-object v0, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    .line 495
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/users/AppRestrictionsFragment;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    return v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 744
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 745
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 845
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->sr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 859
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->sr()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->aN(Z)V

    .line 861
    :cond_0
    return-void

    .line 849
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 852
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Lcom/android/settings_ext/users/RestrictionUtils;->a(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 854
    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0

    .line 859
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->sn()V

    return-void
.end method

.method private b(Ljava/util/Set;)V
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 441
    if-nez v1, :cond_1

    .line 454
    :cond_0
    return-void

    .line 442
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 444
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 447
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 411
    if-eqz v0, :cond_0

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 414
    :cond_0
    return-void
.end method

.method private bC(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 419
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 423
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private bD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2

    .prologue
    .line 1017
    iget v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alC:I

    .line 1018
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alD:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alC:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->so()V

    return-void
.end method

.method private c(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 634
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alw:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->sp()V

    return-void
.end method

.method private d(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 639
    if-nez p1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 640
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 642
    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/high16 v4, 0x800000

    .line 361
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 362
    if-eqz p2, :cond_3

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x2000

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 374
    :cond_1
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 376
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bB(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :cond_2
    :goto_0
    return-void

    .line 387
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_2

    .line 389
    iget-boolean v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    if-eqz v1, :cond_4

    .line 390
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0

    .line 396
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bB(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 753
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 755
    instance-of v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 753
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 761
    :cond_1
    return-void
.end method

.method private sn()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 350
    sget-object v0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Cannot apply application restrictions on another user!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 356
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->f(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private so()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x800000

    const/16 v5, 0x2000

    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 533
    if-nez v0, :cond_1

    .line 631
    :cond_0
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 535
    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    .line 537
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 538
    invoke-direct {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->b(Ljava/util/Set;)V

    .line 541
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v4, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 546
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 549
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 551
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 553
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 555
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    .line 558
    new-instance v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 559
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    .line 561
    iget-object v5, v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    iput-object v5, v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    .line 562
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 563
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    :cond_3
    :try_start_0
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 570
    iget-boolean v5, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 572
    iget-object v4, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    goto :goto_0

    .line 580
    :cond_4
    iput-object v7, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alF:Ljava/util/List;

    .line 582
    const/16 v0, 0x2000

    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alF:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alF:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 588
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 589
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 591
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    .line 594
    new-instance v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v3}, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 595
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    .line 597
    iget-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alS:Ljava/lang/CharSequence;

    iput-object v4, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 605
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    new-instance v1, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLabelComparator;

    invoke-direct {v1, p0, v7}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;Lcom/android/settings_ext/users/AppRestrictionsFragment$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 608
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 609
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_8

    .line 610
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    iget-object v4, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v0, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 609
    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 618
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 623
    :cond_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 624
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 625
    iget-object v1, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 626
    iget-object v1, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    iput-object v1, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_5

    .line 628
    :cond_9
    iget-object v1, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 584
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private sp()V
    .locals 14

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 648
    if-nez v3, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 650
    iget-object v4, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    .line 652
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 653
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 655
    const/4 v0, 0x0

    .line 656
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 657
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 658
    iget-object v7, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 659
    if-eqz v7, :cond_2

    .line 660
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 661
    new-instance v9, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-direct {v9, v3, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 662
    invoke-direct {p0, v5, v7}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    .line 663
    iget-object v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 664
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 665
    iget-object v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v2, :cond_3

    .line 667
    const v2, 0x7f09095e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v13, v13, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alT:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v3, v2, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 671
    if-nez v10, :cond_4

    if-eqz v8, :cond_c

    :cond_4
    iget-object v2, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_3
    invoke-static {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->a(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 673
    invoke-virtual {v9, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 674
    invoke-virtual {v9, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 675
    const/4 v2, 0x0

    .line 677
    const/16 v11, 0x2040

    :try_start_0
    iget-object v12, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-interface {v4, v7, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 682
    :goto_4
    if-eqz v2, :cond_d

    iget-boolean v11, v2, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v11, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 683
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 684
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->aM(Z)V

    .line 686
    if-nez v10, :cond_6

    if-eqz v8, :cond_2

    .line 691
    :cond_6
    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    if-nez v10, :cond_7

    .line 692
    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 697
    :cond_7
    :goto_5
    iget-boolean v10, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    if-eqz v10, :cond_8

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 699
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 700
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->aM(Z)V

    .line 701
    const v10, 0x7f09095f

    invoke-virtual {v9, v10}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 703
    :cond_8
    iget-boolean v10, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    if-eqz v10, :cond_9

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 704
    const v2, 0x7f090960

    invoke-virtual {v9, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 706
    :cond_9
    iget-object v0, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;->alU:Lcom/android/settings_ext/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v0, :cond_a

    .line 707
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->aM(Z)V

    .line 708
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 710
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 711
    if-eqz v8, :cond_e

    .line 712
    const/16 v0, 0x64

    invoke-virtual {v9, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 716
    :goto_6
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    .line 718
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 719
    goto/16 :goto_1

    .line 663
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 671
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 694
    :cond_d
    iget-boolean v10, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alz:Z

    if-nez v10, :cond_7

    invoke-direct {p0, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->d(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 695
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_5

    .line 714
    :cond_e
    add-int/lit8 v0, v1, 0x2

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v9, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    goto :goto_6

    .line 723
    :cond_f
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 725
    invoke-direct {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->sn()V

    goto/16 :goto_0

    .line 680
    :catch_0
    move-exception v11

    goto/16 :goto_4
.end method

.method private v(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-direct {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 321
    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected j(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 246
    if-eqz p1, :cond_2

    .line 247
    new-instance v0, Landroid/os/UserHandle;

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 263
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alu:Landroid/content/pm/IPackageManager;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 265
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alw:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->sl()Landroid/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    .line 274
    return-void

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    .line 254
    :cond_3
    const-string v1, "new_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alz:Z

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1024
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1026
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alD:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1027
    if-nez v0, :cond_0

    .line 1028
    sget-object v0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_0
    return-void

    .line 1032
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1033
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1034
    const-string v2, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1036
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1037
    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {v0, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->f(Ljava/util/ArrayList;)V

    .line 1040
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings_ext/users/RestrictionUtils;->g(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1048
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alD:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1042
    :cond_2
    if-eqz v3, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 765
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f10019c

    if-ne v1, v4, :cond_1

    .line 768
    invoke-direct {p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->b(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 771
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    iget-object v4, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->e(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->f(Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 776
    invoke-direct {p0, v1, v0, v3}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a(Ljava/lang/String;Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 778
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    .line 780
    iget-boolean v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alB:Z

    if-nez v2, :cond_3

    .line 781
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->f(Ljava/lang/String;Z)V

    .line 783
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->g(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 770
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alz:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alH:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$3;->start()V

    .line 313
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 790
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 795
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alx:Landroid/preference/PreferenceGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 797
    invoke-virtual {v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->sq()Ljava/util/ArrayList;

    move-result-object v3

    .line 798
    if-eqz v3, :cond_1

    .line 799
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 800
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 822
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1}, Lcom/android/settings_ext/users/RestrictionUtils;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 834
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 807
    :pswitch_1
    check-cast p1, Landroid/preference/ListPreference;

    move-object v1, p2

    .line 808
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 814
    :pswitch_2
    check-cast p2, Ljava/util/Set;

    .line 815
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 816
    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 817
    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings_ext/users/RestrictionUtils;->g(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1063
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    check-cast p1, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1065
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1066
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1067
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1068
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 1069
    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->aly:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-virtual {p1}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->g(Ljava/lang/String;Z)V

    .line 1071
    iput-boolean v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    .line 1072
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->f(Ljava/lang/String;Z)V

    .line 1076
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alH:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alA:Z

    .line 295
    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alG:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alG:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 296
    :cond_0
    new-instance v1, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings_ext/users/AppRestrictionsFragment;Lcom/android/settings_ext/users/AppRestrictionsFragment$1;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alG:Landroid/os/AsyncTask;

    .line 298
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method protected sl()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method sm()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ext/users/AppRestrictionsFragment;->alv:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ext/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_ext/a/a;

    move-result-object v0

    goto :goto_0
.end method
