.class public Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# instance fields
.field private RQ:Ljava/lang/String;

.field private RR:Ljava/lang/String;

.field private RS:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RS:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 62
    const v0, 0x7f090805

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 63
    const v0, 0x7f090806

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RQ:Ljava/lang/String;

    .line 64
    const v0, 0x7f090807

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RR:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RS:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    const v0, 0x7f0400fe

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 70
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 71
    new-instance v1, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->RS:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method
