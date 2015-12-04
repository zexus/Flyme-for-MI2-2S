.class public Lcom/miui/fmradio/StationEditDialog;
.super Landroid/app/AlertDialog;
.source "StationEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationEditDialog$EditStationListener;
    }
.end annotation


# instance fields
.field private mFavorCheckBox:Landroid/widget/CheckBox;

.field private mFreq:Landroid/widget/EditText;

.field private mHasFavorChekc:Z

.field private mIsAddNewStation:Z

.field private mLabel:Landroid/widget/EditText;

.field private mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;

.field private mStationItem:Lcom/miui/fmradio/StationItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/miui/fmradio/StationItem;Lcom/miui/fmradio/StationEditDialog$EditStationListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAdd"    # Z
    .param p3, "hasFavorCheck"    # Z
    .param p4, "stationItem"    # Lcom/miui/fmradio/StationItem;
    .param p5, "l"    # Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p4, p0, Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    .line 38
    iput-object p5, p0, Lcom/miui/fmradio/StationEditDialog;->mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    .line 39
    iput-boolean p2, p0, Lcom/miui/fmradio/StationEditDialog;->mIsAddNewStation:Z

    .line 40
    iput-boolean p3, p0, Lcom/miui/fmradio/StationEditDialog;->mHasFavorChekc:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/fmradio/StationEditDialog;->mFavorCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/fmradio/StationEditDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/miui/fmradio/StationEditDialog;->mIsAddNewStation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationEditDialog$EditStationListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/fmradio/StationEditDialog;->mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/StationEditDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0d0019

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "v":Landroid/view/View;
    iget-boolean v2, p0, Lcom/miui/fmradio/StationEditDialog;->mIsAddNewStation:Z

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030005

    invoke-virtual {v2, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    const v2, 0x7f0d0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;

    .line 49
    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0023

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/fmradio/Utils;->getMinFrequency()I

    move-result v9

    invoke-static {v9}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lcom/miui/fmradio/Utils;->getMaxFrequency()I

    move-result v9

    invoke-static {v9}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;

    .line 53
    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;

    const v6, 0x7f0a0024

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 55
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/StationEditDialog;->setTitle(I)V

    .line 57
    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;

    new-instance v6, Lcom/miui/fmradio/StationEditDialog$1;

    invoke-direct {v6, p0}, Lcom/miui/fmradio/StationEditDialog$1;-><init>(Lcom/miui/fmradio/StationEditDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    :goto_0
    const v2, 0x7f0d001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFavorCheckBox:Landroid/widget/CheckBox;

    .line 99
    iget-boolean v2, p0, Lcom/miui/fmradio/StationEditDialog;->mHasFavorChekc:Z

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFavorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/StationEditDialog;->setView(Landroid/view/View;)V

    .line 105
    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v7, 0x1040000

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v2}, Lcom/miui/fmradio/StationEditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/fmradio/StationEditDialog$2;

    invoke-direct {v3, p0}, Lcom/miui/fmradio/StationEditDialog$2;-><init>(Lcom/miui/fmradio/StationEditDialog;)V

    invoke-virtual {p0, v10, v2, v3}, Lcom/miui/fmradio/StationEditDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 137
    .local v1, "window":Landroid/view/Window;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 138
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0, v10}, Lcom/miui/fmradio/StationEditDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    return-void

    .line 91
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030006

    invoke-virtual {v2, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;

    .line 93
    iget-object v2, p0, Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    iget-object v6, v6, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0a0025

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;

    iget v8, v8, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-static {v8}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/StationEditDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v1    # "window":Landroid/view/Window;
    :cond_2
    move v2, v5

    .line 139
    goto :goto_1
.end method
