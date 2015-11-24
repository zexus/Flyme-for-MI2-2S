.class public Lcom/android/settings_ext/CarrierCustomEditFragment;
.super Lcom/android/settings_ext/BaseFragment;
.source "CarrierCustomEditFragment.java"


# instance fields
.field private cn:[Landroid/widget/EditText;

.field co:[Ljava/lang/String;

.field private cp:I

.field private cq:[Landroid/database/ContentObserver;

.field private cr:[Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 63
    const v0, 0x7f10029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget v1, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    if-ne v1, v3, :cond_0

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cn:[Landroid/widget/EditText;

    const v0, 0x7f10029c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, p1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status_bar_custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cn:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cr:[Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/settings_ext/ad;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/ad;-><init>(Lcom/android/settings_ext/CarrierCustomEditFragment;I)V

    aput-object v1, v0, p1

    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cn:[Landroid/widget/EditText;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cr:[Landroid/text/TextWatcher;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cq:[Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/settings_ext/ae;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings_ext/ae;-><init>(Lcom/android/settings_ext/CarrierCustomEditFragment;Landroid/os/Handler;I)V

    aput-object v1, v0, p1

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cq:[Landroid/database/ContentObserver;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 105
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090062

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/CarrierCustomEditFragment;)[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cn:[Landroid/widget/EditText;

    return-object v0
.end method

.method private af()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->af()V

    .line 127
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->finish()V

    .line 128
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->af()V

    .line 118
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    if-ge v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cq:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onDestroyView()V

    .line 122
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 32
    const v0, 0x7f04010b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 37
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 38
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 41
    :cond_0
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    .line 47
    iget v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cn:[Landroid/widget/EditText;

    .line 48
    iget v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->co:[Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cq:[Landroid/database/ContentObserver;

    .line 50
    iget v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    new-array v0, v0, [Landroid/text/TextWatcher;

    iput-object v0, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cr:[Landroid/text/TextWatcher;

    .line 51
    const v0, 0x7f10029a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->a(ILandroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    const v0, 0x7f10000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    const/4 v1, 0x1

    :goto_0
    iget v3, p0, Lcom/android/settings_ext/CarrierCustomEditFragment;->cp:I

    if-ge v1, v3, :cond_0

    .line 56
    const v3, 0x7f04010c

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, v1, v3}, Lcom/android/settings_ext/CarrierCustomEditFragment;->a(ILandroid/view/View;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
