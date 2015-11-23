.class final Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings_ext/search/a;
.source "InputMethodAndLanguageSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14

    .prologue
    .line 718
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 720
    const v0, 0x7f0905a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 724
    invoke-static {p1}, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->aQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 725
    new-instance v1, Lcom/android/settings_ext/search/n;

    invoke-direct {v1, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 726
    const-string v2, "phone_language"

    iput-object v2, v1, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 727
    const v2, 0x7f0905aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 728
    iput-object v0, v1, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 729
    iput-object v0, v1, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 730
    iput-object v7, v1, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 731
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_0
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 736
    const-string v1, "spellcheckers_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 737
    const v1, 0x7f0908c2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 738
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 739
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-static {p1}, Lcom/android/settings_ext/inputmethod/UserDictionaryList;->aV(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 743
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 744
    const-string v1, "user_dict_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 745
    const v1, 0x7f0905c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 746
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 747
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_1
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 752
    const-string v1, "keyboard_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 753
    const v1, 0x7f0905a9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 754
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 755
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-static {p1}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->aR(Landroid/content/Context;)Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->pN()V

    .line 762
    invoke-virtual {v1, p1}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->aS(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v2, Lcom/android/settings_ext/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 764
    const-string v3, "current_input_method"

    iput-object v3, v2, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 765
    const v3, 0x7f0905e7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 766
    iput-object v0, v2, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 767
    iput-object v0, v2, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 768
    iput-object v7, v2, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 769
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 775
    invoke-virtual {v1}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 776
    if-nez v8, :cond_3

    const/4 v1, 0x0

    move v3, v1

    .line 777
    :goto_0
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_5

    .line 778
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 780
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 783
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 784
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v11, :cond_4

    .line 785
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 786
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 787
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    :cond_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1, v12, v13}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 792
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 784
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 776
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 794
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 797
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v4, Lcom/android/settings_ext/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 801
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 803
    iput-object v2, v4, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 804
    iput-object v2, v4, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 805
    iput-object v7, v4, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 806
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 810
    :cond_5
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 812
    const/4 v2, 0x0

    .line 814
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    .line 815
    const/4 v1, 0x0

    :goto_3
    array-length v3, v4

    if-ge v1, v3, :cond_a

    .line 816
    aget v3, v4, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 817
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v3

    if-nez v3, :cond_7

    .line 815
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 821
    :cond_7
    const/4 v3, 0x1

    .line 823
    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    .line 824
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 826
    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 830
    :goto_5
    if-eqz v2, :cond_9

    .line 831
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    :goto_6
    new-instance v8, Lcom/android/settings_ext/search/n;

    invoke-direct {v8, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 837
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 838
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 839
    iput-object v2, v8, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 840
    iput-object v2, v8, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 841
    iput-object v7, v8, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 842
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_4

    .line 826
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 833
    :cond_9
    const v2, 0x7f0905c1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 845
    :cond_a
    if-eqz v2, :cond_b

    .line 847
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 848
    const-string v1, "builtin_keyboard_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 849
    const v1, 0x7f0905f4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 851
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 852
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_b
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 857
    const-string v1, "voice_input_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 858
    const v1, 0x7f090726

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 859
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 860
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 865
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 866
    const-string v1, "tts_settings"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 867
    const v1, 0x7f09072d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 868
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 869
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_c
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 874
    const-string v1, "pointer_settings_category"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 875
    const v1, 0x7f0905b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 876
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 877
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 880
    const-string v1, "pointer_speed"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 881
    const v1, 0x7f0905ba

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 882
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 883
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    # invokes: Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->pF()Z
    invoke-static {}, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 887
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 888
    const-string v1, "vibrate_input_devices"

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 889
    const v1, 0x7f0905bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 890
    const v1, 0x7f0905bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->Rz:Ljava/lang/String;

    .line 891
    const v1, 0x7f0905bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->RA:Ljava/lang/String;

    .line 892
    iput-object v7, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 893
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_d
    return-object v6
.end method
