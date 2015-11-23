.class public Lcom/android/settings/print/PrintJobSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# instance fields
.field private agO:Landroid/graphics/drawable/Drawable;

.field private final agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private agQ:Landroid/print/PrintManager;

.field private agR:Landroid/preference/Preference;

.field private agS:Landroid/preference/Preference;

.field private agT:Landroid/print/PrintJobId;

.field private agU:Landroid/print/PrintJob;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/print/a;

    invoke-direct {v0, p0}, Lcom/android/settings/print/a;-><init>(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->aq()V

    return-void
.end method

.method private aq()V
    .locals 11

    .prologue
    const v3, 0x7f09069b

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->ra()Landroid/print/PrintJob;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 244
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v6

    .line 182
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v8, 0x7f090699

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 231
    :goto_2
    :pswitch_1
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getStateReason()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "print_job_message_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agS:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agS:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v1, 0x7f09069a

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 195
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v1, 0x7f09069c

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    :pswitch_4
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v1, 0x7f09069d

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 220
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v1, 0x110200a0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 227
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    const v1, 0x110200a1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 239
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private qZ()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agT:Landroid/print/PrintJobId;

    .line 155
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agT:Landroid/print/PrintJobId;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 158
    :cond_0
    return-void
.end method

.method private ra()Landroid/print/PrintJob;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agU:Landroid/print/PrintJob;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agQ:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agT:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agU:Landroid/print/PrintJob;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agU:Landroid/print/PrintJob;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "print_job_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agR:Landroid/preference/Preference;

    .line 77
    const-string v0, "print_job_message_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agS:Landroid/preference/Preference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agQ:Landroid/print/PrintManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090696

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->qZ()V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->ra()Landroid/print/PrintJob;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    const v1, 0x7f090698

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 123
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    :cond_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x2

    const v1, 0x7f090697

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->ra()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->cancel()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->ra()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->restart()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agQ:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agQ:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->aq()V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 94
    return-void
.end method
