.class public Lcom/android/settings_ext/MiuiZonePicker;
.super Lcom/android/settings_ext/ZonePicker;
.source "MiuiZonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ext/ff;


# static fields
.field private static sC:Ljava/lang/String;

.field private static sD:Ljava/lang/String;


# instance fields
.field private sE:Z

.field private sF:Z

.field private sG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "zone_setup_wizard"

    sput-object v0, Lcom/android/settings_ext/MiuiZonePicker;->sC:Ljava/lang/String;

    .line 24
    const-string v0, "pick_zone"

    sput-object v0, Lcom/android/settings_ext/MiuiZonePicker;->sD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/ZonePicker;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    return-void
.end method


# virtual methods
.method public X()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400dc

    invoke-static {v0, p2, v1}, Lcom/android/settings_ext/ZonePicker;->a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/ZonePicker;->e(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ext/ZonePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleAdapter;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 106
    if-ltz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiZonePicker;->setSelection(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 116
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 117
    iput-boolean v2, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->finish()V

    goto :goto_0

    .line 121
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 122
    iput-boolean v2, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->finish()V

    goto :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x7f10021a -> :sswitch_1
        0x7f100224 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings_ext/ZonePicker;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ext/MiuiZonePicker;->sC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ext/MiuiZonePicker;->sD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sF:Z

    .line 35
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_0

    .line 36
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiZonePicker;->setThemeRes(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_disable_back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    .line 40
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/ZonePicker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f10021a

    const/4 v2, -0x1

    .line 44
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v0, :cond_1

    .line 45
    const v0, 0x7f0400d5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const v0, 0x7f100224

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiZonePicker;->sG:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_0
    const v0, 0x7f10021d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f02023f

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    const v0, 0x7f10021e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09010d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v1

    .line 60
    :goto_1
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/ZonePicker;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 85
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    iget-boolean v1, p0, Lcom/android/settings_ext/MiuiZonePicker;->sE:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 88
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ext/MiuiZonePicker;->sF:Z

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string v2, "extra_timezone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiZonePicker;->finish()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/settings_ext/ZonePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
