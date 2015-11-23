.class public Lcom/android/settings_ext/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# static fields
.field static Kl:Ljava/lang/Object;

.field static Km:Lcom/android/settings_ext/applications/RunningState;


# instance fields
.field final EE:Lcom/android/settings_ext/applications/InterestingConfigChanges;

.field final Jf:Landroid/app/ActivityManager;

.field final Ju:I

.field KA:I

.field final KB:Ljava/util/Comparator;

.field KC:Z

.field KD:Ljava/util/ArrayList;

.field KE:Ljava/util/ArrayList;

.field KF:Ljava/util/ArrayList;

.field KG:I

.field KH:J

.field KI:I

.field KJ:J

.field KK:I

.field KL:J

.field final KM:Landroid/os/HandlerThread;

.field final KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

.field final Kn:Landroid/content/Context;

.field Ko:Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;

.field final Kp:Landroid/util/SparseArray;

.field final Kq:Landroid/util/SparseArray;

.field final Kr:Lcom/android/settings_ext/applications/RunningState$ServiceProcessComparator;

.field final Ks:Ljava/util/ArrayList;

.field final Kt:Landroid/util/SparseArray;

.field final Ku:Ljava/util/ArrayList;

.field final Kv:Ljava/util/ArrayList;

.field final Kw:Landroid/util/SparseArray;

.field final Kx:Landroid/util/SparseArray;

.field final Ky:Landroid/util/SparseArray;

.field final Kz:Landroid/util/SparseArray;

.field final aU:Landroid/os/UserManager;

.field final i:Landroid/content/pm/PackageManager;

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field mItems:Ljava/util/ArrayList;

.field final mLock:Ljava/lang/Object;

.field mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ext/applications/RunningState;->Kl:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings_ext/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_ext/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->EE:Lcom/android/settings_ext/applications/InterestingConfigChanges;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings_ext/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kr:Lcom/android/settings_ext/applications/RunningState$ServiceProcessComparator;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kw:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kx:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ky:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    .line 139
    iput v2, p0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    .line 141
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/RunningState$1;-><init>(Lcom/android/settings_ext/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KB:Ljava/util/Comparator;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KD:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KF:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/RunningState$2;-><init>(Lcom/android/settings_ext/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 758
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kn:Landroid/content/Context;

    .line 759
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kn:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Jf:Landroid/app/ActivityManager;

    .line 760
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->i:Landroid/content/pm/PackageManager;

    .line 761
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kn:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->aU:Landroid/os/UserManager;

    .line 762
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    .line 763
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    .line 764
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KM:Landroid/os/HandlerThread;

    .line 765
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KM:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 766
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->KM:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings_ext/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    .line 767
    return-void
.end method

.method static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 732
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 734
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 745
    :cond_1
    :goto_0
    return-object p1

    .line 741
    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 742
    if-ltz v0, :cond_1

    .line 743
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ext/applications/RunningState$MergedItem;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 856
    iget v0, p4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 857
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KW:I

    iget v4, p0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-eq v1, v4, :cond_4

    :cond_0
    move v1, v3

    .line 858
    :goto_0
    if-eqz v1, :cond_8

    .line 859
    if-nez v0, :cond_5

    .line 860
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v1, p4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/settings_ext/applications/RunningState$MergedItem;-><init>(I)V

    .line 861
    iget v1, p4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 865
    :goto_1
    iget v0, p0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    iput v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KW:I

    .line 866
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ky:Landroid/util/SparseArray;

    iget v4, p4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$UserState;

    iput-object v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    if-nez v0, :cond_3

    .line 867
    new-instance v0, Lcom/android/settings_ext/applications/RunningState$UserState;

    invoke-direct {v0}, Lcom/android/settings_ext/applications/RunningState$UserState;-><init>()V

    iput-object v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    .line 868
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->aU:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 869
    iget-object v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    iput-object v4, v0, Lcom/android/settings_ext/applications/RunningState$UserState;->Lu:Landroid/content/pm/UserInfo;

    .line 870
    if-eqz v4, :cond_1

    .line 871
    iget-object v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    iget-object v5, p0, Lcom/android/settings_ext/applications/RunningState;->aU:Landroid/os/UserManager;

    invoke-static {p1, v5, v4}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_ext/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 873
    :cond_1
    if-eqz v4, :cond_6

    iget-object v0, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 874
    :goto_2
    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    .line 875
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 879
    :cond_2
    :goto_3
    iget-object v4, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090589

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 882
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :goto_4
    iget-object v0, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    return-void

    :cond_4
    move v1, v2

    .line 857
    goto :goto_0

    .line 863
    :cond_5
    iget-object v1, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v1, v0

    goto :goto_1

    .line 873
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 876
    :cond_7
    if-nez v4, :cond_2

    .line 877
    const v0, 0x7f090535

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/RunningState;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ext/applications/RunningState;->reset()V

    return-void
.end method

.method private a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 831
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v0

    .line 834
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 841
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 31

    .prologue
    .line 888
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 890
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    .line 892
    const/4 v9, 0x0

    .line 896
    const/16 v4, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v12

    .line 898
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 899
    :goto_0
    const/4 v5, 0x0

    move v6, v4

    :goto_1
    if-ge v5, v6, :cond_2

    .line 900
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 904
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_1

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_1

    .line 905
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 906
    add-int/lit8 v4, v5, -0x1

    .line 907
    add-int/lit8 v5, v6, -0x1

    .line 899
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v4

    goto :goto_1

    .line 898
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 912
    :cond_1
    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5b

    .line 914
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    add-int/lit8 v4, v5, -0x1

    .line 916
    add-int/lit8 v5, v6, -0x1

    .line 917
    goto :goto_2

    .line 923
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 925
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v7, v4

    .line 926
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 927
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-ge v5, v7, :cond_4

    .line 928
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 929
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v14, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;

    invoke-direct {v14, v4}, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v8, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 927
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 925
    :cond_3
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3

    .line 934
    :cond_4
    const/4 v4, 0x0

    move v8, v4

    :goto_5
    if-ge v8, v6, :cond_6

    .line 935
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 936
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_5

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_5

    .line 937
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;

    .line 938
    if-eqz v5, :cond_5

    .line 939
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KR:Z

    .line 940
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_5

    .line 941
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KS:Z

    .line 934
    :cond_5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_5

    .line 948
    :cond_6
    const/4 v4, 0x0

    move v10, v4

    :goto_6
    if-ge v10, v6, :cond_10

    .line 949
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 956
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_9

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_9

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;

    .line 958
    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KS:Z

    if-nez v8, :cond_9

    .line 964
    iget-object v8, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x12c

    if-ge v8, v14, :cond_9

    .line 968
    const/4 v8, 0x0

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;

    .line 970
    :goto_7
    if-eqz v5, :cond_5a

    .line 971
    iget-boolean v14, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KR:Z

    if-nez v14, :cond_7

    iget-object v14, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 972
    :cond_7
    const/4 v5, 0x1

    .line 977
    :goto_8
    if-eqz v5, :cond_9

    .line 948
    :goto_9
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_6

    .line 975
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/applications/RunningState;->Kz:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;

    goto :goto_7

    .line 984
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 985
    if-nez v5, :cond_59

    .line 986
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 987
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v8, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v5

    .line 989
    :goto_a
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 990
    if-nez v5, :cond_a

    .line 991
    const/4 v9, 0x1

    .line 992
    new-instance v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14, v15}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 993
    iget-object v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v8, v9

    .line 996
    iget v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-eq v9, v14, :cond_e

    .line 997
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_f

    iget v9, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 998
    :goto_b
    iget v14, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-eq v9, v14, :cond_d

    .line 999
    const/4 v8, 0x1

    .line 1000
    iget v14, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-eq v14, v9, :cond_d

    .line 1001
    iget v14, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v14, :cond_b

    .line 1002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    iget v15, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 1004
    :cond_b
    if-eqz v9, :cond_c

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    invoke-virtual {v14, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    :cond_c
    iput v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    .line 1010
    :cond_d
    iget-object v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1011
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    iput v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    .line 1013
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int v9, v8, v4

    goto/16 :goto_9

    .line 997
    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    .line 1018
    :cond_10
    const/4 v4, 0x0

    move v8, v4

    move v6, v9

    :goto_c
    if-ge v8, v7, :cond_15

    .line 1019
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1020
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1021
    if-nez v5, :cond_12

    .line 1025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1026
    if-nez v5, :cond_11

    .line 1027
    const/4 v6, 0x1

    .line 1028
    new-instance v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9, v10}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1029
    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1032
    :cond_11
    iget-object v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1035
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1036
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1037
    const/4 v6, 0x1

    .line 1038
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_13
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    iput v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    .line 1041
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lp:Z

    .line 1042
    invoke-virtual {v5, v11}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->c(Landroid/content/pm/PackageManager;)V

    .line 1047
    :goto_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    iput v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Ln:I

    .line 1048
    iput-object v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1018
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_c

    .line 1044
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lp:Z

    goto :goto_d

    .line 1053
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1054
    const/4 v4, 0x0

    move v8, v6

    move v6, v4

    :goto_e
    if-ge v6, v7, :cond_1a

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1056
    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Ln:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-ne v5, v9, :cond_19

    .line 1057
    iget-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 1058
    if-eqz v9, :cond_18

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1060
    if-nez v5, :cond_16

    .line 1061
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1063
    :cond_16
    if-eqz v5, :cond_17

    .line 1064
    iget-object v5, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    iget v9, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    :cond_17
    :goto_f
    add-int/lit8 v4, v6, 0x1

    move v5, v7

    move v6, v8

    :goto_10
    move v7, v5

    move v8, v6

    move v6, v4

    .line 1078
    goto :goto_e

    .line 1070
    :cond_18
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Ll:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    goto :goto_f

    .line 1074
    :cond_19
    const/4 v5, 0x1

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 1076
    add-int/lit8 v4, v7, -0x1

    move/from16 v28, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v28

    goto :goto_10

    .line 1081
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1082
    const/4 v5, 0x0

    move v7, v8

    :goto_11
    if-ge v5, v6, :cond_1c

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1084
    iget-boolean v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lp:Z

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_58

    .line 1085
    :cond_1b
    const/4 v7, 0x1

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1087
    add-int/lit8 v4, v5, -0x1

    .line 1088
    add-int/lit8 v5, v6, -0x1

    move v6, v7

    .line 1082
    :goto_12
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_11

    .line 1095
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1096
    const/4 v4, 0x0

    move v6, v4

    move v5, v7

    :goto_13
    if-ge v6, v8, :cond_1d

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1098
    iget v7, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-ne v7, v9, :cond_57

    .line 1099
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v7}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v4, v5

    .line 1096
    :goto_14
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_13

    .line 1104
    :cond_1d
    const/4 v6, 0x0

    .line 1105
    const/4 v4, 0x0

    move v8, v4

    move v7, v5

    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v8, v4, :cond_25

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    .line 1107
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1108
    :cond_1e
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1109
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1110
    iget v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-ne v10, v12, :cond_21

    .line 1111
    invoke-virtual {v4, v11}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->c(Landroid/content/pm/PackageManager;)V

    .line 1112
    iget v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-nez v10, :cond_1f

    .line 1115
    iget-object v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lk:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1131
    :cond_1f
    iget-object v4, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1132
    :cond_20
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1133
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 1134
    iget v4, v4, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->KW:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-eq v4, v12, :cond_20

    .line 1135
    const/4 v7, 0x1

    .line 1136
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 1118
    :cond_21
    const/4 v7, 0x1

    .line 1119
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1120
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_23

    .line 1121
    if-nez v6, :cond_22

    .line 1122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    :cond_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_23
    iget v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v10, :cond_1e

    .line 1127
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16

    .line 1105
    :cond_24
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_15

    .line 1142
    :cond_25
    if-eqz v6, :cond_26

    .line 1143
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_26

    .line 1144
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1145
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1143
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_18

    .line 1149
    :cond_26
    if-eqz v7, :cond_3a

    .line 1151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    const/4 v4, 0x0

    move v6, v4

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v6, v4, :cond_2b

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1154
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1155
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lq:Z

    .line 1156
    const-wide v12, 0x7fffffffffffffffL

    iput-wide v12, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KX:J

    .line 1157
    iget-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_27
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 1158
    iget-object v10, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_28

    iget-object v10, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_28

    .line 1161
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1163
    :cond_28
    iget-object v10, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v10, :cond_27

    iget-object v10, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v10, :cond_27

    .line 1165
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lq:Z

    .line 1166
    iget-wide v12, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KX:J

    iget-object v10, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v10, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_27

    .line 1167
    iget-object v5, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v12, v5, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v12, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KX:J

    goto :goto_1b

    .line 1171
    :cond_29
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1152
    :cond_2a
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_19

    .line 1175
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kr:Lcom/android/settings_ext/applications/RunningState$ServiceProcessComparator;

    invoke-static {v11, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1177
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1181
    const/4 v4, 0x0

    move v6, v4

    :goto_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_33

    .line 1182
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1183
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lb:Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v4, v12, v5}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1189
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-lez v5, :cond_2c

    .line 1191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_2c
    const/4 v8, 0x0

    .line 1197
    const/4 v5, 0x0

    .line 1198
    iget-object v9, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v9, v5

    :goto_1d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 1199
    iput-boolean v9, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lb:Z

    .line 1200
    const/4 v9, 0x1

    .line 1201
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    iget-object v15, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eqz v15, :cond_2e

    .line 1203
    if-eqz v8, :cond_2d

    iget-object v15, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eq v8, v15, :cond_2d

    .line 1206
    :cond_2d
    iget-object v5, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    :goto_1e
    move-object v8, v5

    .line 1210
    goto :goto_1d

    :cond_2e
    move-object v5, v8

    .line 1208
    goto :goto_1e

    .line 1215
    :cond_2f
    new-instance v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v8, v5}, Lcom/android/settings_ext/applications/RunningState$MergedItem;-><init>(I)V

    .line 1216
    iget-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 1217
    iget-object v14, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    iput-object v8, v5, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    goto :goto_1f

    .line 1220
    :cond_30
    iput-object v4, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1221
    iget-object v4, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v10

    .line 1222
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_31

    .line 1223
    iget-object v5, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1227
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->j(Landroid/content/Context;Z)Z

    .line 1228
    iget v4, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    if-eq v4, v5, :cond_32

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kw:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4, v8}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ext/applications/RunningState$MergedItem;)V

    .line 1181
    :goto_21
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_1c

    .line 1231
    :cond_32
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1237
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1238
    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v6, :cond_37

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1240
    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Ll:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    if-nez v8, :cond_35

    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lj:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gtz v8, :cond_35

    .line 1241
    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-nez v8, :cond_34

    .line 1242
    new-instance v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v9, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v8, v9}, Lcom/android/settings_ext/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1243
    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iput-object v4, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1245
    :cond_34
    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->j(Landroid/content/Context;Z)Z

    .line 1246
    iget-object v8, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v8, v8, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    if-eq v8, v9, :cond_36

    .line 1247
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kw:Landroid/util/SparseArray;

    iget-object v9, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v8, v9}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ext/applications/RunningState$MergedItem;)V

    .line 1252
    :goto_23
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_35
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_22

    .line 1250
    :cond_36
    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    invoke-virtual {v13, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_23

    .line 1258
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kw:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1259
    const/4 v4, 0x0

    move v5, v4

    :goto_24
    if-ge v5, v6, :cond_39

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kw:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1261
    iget v8, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-ne v8, v9, :cond_38

    .line 1262
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->j(Landroid/content/Context;Z)Z

    .line 1259
    :cond_38
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_24

    .line 1266
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1267
    :try_start_0
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ext/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1268
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ext/applications/RunningState;->KD:Ljava/util/ArrayList;

    .line 1269
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1276
    const/4 v9, 0x0

    .line 1277
    const/4 v8, 0x0

    .line 1278
    const/4 v6, 0x0

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1280
    const/4 v4, 0x0

    move v10, v4

    :goto_25
    if-ge v10, v11, :cond_3e

    .line 1281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1282
    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    if-eq v5, v12, :cond_3d

    .line 1285
    iget-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x190

    if-lt v5, v12, :cond_3b

    .line 1287
    add-int/lit8 v5, v9, 0x1

    .line 1288
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v5

    move v5, v8

    .line 1280
    :goto_26
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v9, v6

    move v8, v5

    move v6, v4

    goto :goto_25

    .line 1269
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1289
    :cond_3b
    iget-object v5, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-gt v5, v12, :cond_3c

    .line 1291
    add-int/lit8 v5, v8, 0x1

    .line 1292
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v9

    goto :goto_26

    .line 1294
    :cond_3c
    const-string v5, "RunningState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown non-service process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v4, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    move v5, v8

    move v6, v9

    goto :goto_26

    .line 1298
    :cond_3d
    add-int/lit8 v4, v6, 0x1

    move v5, v8

    move v6, v9

    goto :goto_26

    .line 1302
    :cond_3e
    const-wide/16 v16, 0x0

    .line 1303
    const-wide/16 v14, 0x0

    .line 1304
    const-wide/16 v12, 0x0

    .line 1305
    const/4 v11, 0x0

    .line 1306
    const/16 v18, 0x0

    .line 1307
    const/4 v10, 0x0

    .line 1309
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1310
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 1311
    const/4 v4, 0x0

    move v5, v4

    :goto_27
    move/from16 v0, v19

    if-ge v5, v0, :cond_3f

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    aput v4, v23, v5

    .line 1311
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_27

    .line 1314
    :cond_3f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    .line 1316
    const/4 v5, 0x0

    .line 1317
    const/4 v4, 0x0

    move/from16 v21, v4

    move/from16 v19, v7

    move v7, v5

    :goto_28
    :try_start_3
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_49

    .line 1318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    move-object v5, v0

    .line 1319
    aget-wide v26, v24, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->a(Landroid/content/Context;JI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    or-int v20, v19, v4

    .line 1320
    :try_start_4
    iget v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_40

    .line 1321
    iget-wide v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KY:J

    add-long/2addr v4, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-object/from16 v28, v11

    move-wide/from16 v29, v4

    move v4, v7

    move v5, v10

    move-wide/from16 v10, v29

    move-object/from16 v7, v28

    .line 1317
    :goto_29
    add-int/lit8 v16, v21, 0x1

    move/from16 v21, v16

    move/from16 v19, v20

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-wide v12, v10

    move-object v11, v7

    move v10, v5

    move v7, v4

    goto :goto_28

    .line 1322
    :cond_40
    iget-object v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v19, 0x190

    move/from16 v0, v19

    if-lt v4, v0, :cond_48

    .line 1324
    iget-wide v0, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KY:J

    move-wide/from16 v26, v0

    add-long v16, v16, v26

    .line 1326
    if-eqz v11, :cond_42

    .line 1327
    new-instance v19, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUserId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/android/settings_ext/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1328
    iget-object v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iput-object v5, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1329
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    if-eq v4, v5, :cond_41

    const/4 v4, 0x1

    :goto_2a
    or-int/2addr v10, v4

    .line 1330
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v4, v19

    move v5, v10

    move-object v10, v11

    .line 1348
    :goto_2b
    const/4 v11, 0x1

    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->j(Landroid/content/Context;Z)Z

    .line 1349
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->ad(Landroid/content/Context;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1350
    add-int/lit8 v4, v7, 0x1

    move-object v7, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    .line 1351
    goto :goto_29

    .line 1329
    :cond_41
    const/4 v4, 0x0

    goto :goto_2a

    .line 1332
    :cond_42
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v4, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    if-eq v4, v5, :cond_47

    .line 1334
    :cond_43
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1335
    const/4 v4, 0x0

    move/from16 v22, v4

    :goto_2c
    move/from16 v0, v22

    if-ge v0, v7, :cond_45

    .line 1336
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1337
    iget v11, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v11, v0, :cond_44

    const/4 v11, 0x1

    :goto_2d
    or-int/2addr v10, v11

    .line 1338
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v4, v22, 0x1

    move/from16 v22, v4

    goto :goto_2c

    .line 1337
    :cond_44
    const/4 v11, 0x0

    goto :goto_2d

    .line 1340
    :cond_45
    new-instance v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget v11, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v4, v11}, Lcom/android/settings_ext/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1341
    iget-object v11, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iput-object v5, v11, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    .line 1342
    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    if-eq v5, v11, :cond_46

    const/4 v5, 0x1

    :goto_2e
    or-int/2addr v10, v5

    .line 1343
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move v5, v10

    move-object/from16 v10, v19

    goto :goto_2b

    .line 1342
    :cond_46
    const/4 v5, 0x0

    goto :goto_2e

    .line 1345
    :cond_47
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    move v5, v10

    move-object v10, v11

    goto/16 :goto_2b

    .line 1351
    :cond_48
    iget-object v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v19, 0xc8

    move/from16 v0, v19

    if-gt v4, v0, :cond_56

    .line 1353
    iget-wide v4, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KY:J
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    add-long/2addr v4, v14

    move-wide/from16 v14, v16

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-wide v10, v12

    move-wide v12, v4

    move/from16 v5, v28

    move v4, v7

    move-object/from16 v7, v29

    goto/16 :goto_29

    :cond_49
    move v4, v10

    move-object v7, v11

    move-wide/from16 v20, v16

    move-wide/from16 v16, v14

    move/from16 v11, v19

    move-wide v14, v12

    .line 1359
    :goto_2f
    if-nez v7, :cond_4c

    .line 1361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_4c

    .line 1362
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1363
    const/4 v5, 0x0

    move v12, v5

    move v7, v4

    :goto_30
    if-ge v12, v9, :cond_4b

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1365
    iget v5, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    if-eq v5, v13, :cond_4a

    const/4 v5, 0x1

    :goto_31
    or-int/2addr v7, v5

    .line 1366
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_30

    .line 1356
    :catch_0
    move-exception v4

    :goto_32
    move v4, v10

    move-wide/from16 v20, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-object/from16 v28, v11

    move v11, v7

    move-object/from16 v7, v28

    goto :goto_2f

    .line 1365
    :cond_4a
    const/4 v5, 0x0

    goto :goto_31

    :cond_4b
    move v4, v7

    move-object v7, v10

    .line 1371
    :cond_4c
    if-eqz v7, :cond_55

    .line 1374
    if-nez v4, :cond_4e

    move-object v5, v7

    .line 1404
    :cond_4d
    :goto_33
    const/4 v4, 0x0

    move v10, v4

    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KD:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_52

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->KD:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->ad(Landroid/content/Context;)Z

    .line 1404
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_34

    .line 1380
    :cond_4e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1382
    const/4 v4, 0x0

    move v10, v4

    :goto_35
    if-ge v10, v12, :cond_50

    .line 1383
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1384
    iget v13, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->Ju:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v13, v0, :cond_4f

    .line 1385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ext/applications/RunningState;->Kx:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v13, v4}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ext/applications/RunningState$MergedItem;)V

    .line 1382
    :goto_36
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_35

    .line 1388
    :cond_4f
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1393
    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kx:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1394
    const/4 v4, 0x0

    move v10, v4

    :goto_37
    if-ge v10, v12, :cond_4d

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningState;->Kx:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 1396
    iget v13, v4, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState;->KA:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v13, v0, :cond_51

    .line 1397
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->j(Landroid/content/Context;Z)Z

    .line 1398
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->ad(Landroid/content/Context;)Z

    .line 1394
    :cond_51
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_37

    .line 1408
    :cond_52
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1409
    :try_start_9
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ext/applications/RunningState;->KG:I

    .line 1410
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings_ext/applications/RunningState;->KI:I

    .line 1411
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings_ext/applications/RunningState;->KK:I

    .line 1412
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/applications/RunningState;->KH:J

    .line 1413
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/applications/RunningState;->KJ:J

    .line 1414
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ext/applications/RunningState;->KL:J

    .line 1415
    if-eqz v7, :cond_54

    .line 1416
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings_ext/applications/RunningState;->KE:Ljava/util/ArrayList;

    .line 1417
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->KF:Ljava/util/ArrayList;

    .line 1418
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ext/applications/RunningState;->KC:Z

    if-eqz v4, :cond_54

    .line 1419
    const/4 v4, 0x1

    .line 1422
    :goto_38
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ext/applications/RunningState;->mHaveData:Z

    if-nez v5, :cond_53

    .line 1423
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings_ext/applications/RunningState;->mHaveData:Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    :cond_53
    monitor-exit v10

    .line 1428
    return v4

    .line 1426
    :catchall_1
    move-exception v4

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 1356
    :catch_1
    move-exception v4

    move-object/from16 v11, v19

    move/from16 v7, v20

    goto/16 :goto_32

    :catch_2
    move-exception v4

    move-object v11, v10

    move/from16 v7, v20

    move v10, v5

    goto/16 :goto_32

    :catch_3
    move-exception v4

    move/from16 v7, v19

    goto/16 :goto_32

    :catch_4
    move-exception v4

    move/from16 v7, v20

    goto/16 :goto_32

    :cond_54
    move v4, v11

    goto :goto_38

    :cond_55
    move-object/from16 v5, v18

    goto/16 :goto_33

    :cond_56
    move v4, v7

    move v5, v10

    move-object v7, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    goto/16 :goto_29

    :cond_57
    move v4, v5

    goto/16 :goto_14

    :cond_58
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_12

    :cond_59
    move-object v8, v5

    goto/16 :goto_a

    :cond_5a
    move v5, v8

    goto/16 :goto_8

    :cond_5b
    move v4, v5

    move v5, v6

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;
    .locals 2

    .prologue
    .line 749
    sget-object v1, Lcom/android/settings_ext/applications/RunningState;->Kl:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    sget-object v0, Lcom/android/settings_ext/applications/RunningState;->Km:Lcom/android/settings_ext/applications/RunningState;

    if-nez v0, :cond_0

    .line 751
    new-instance v0, Lcom/android/settings_ext/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ext/applications/RunningState;->Km:Lcom/android/settings_ext/applications/RunningState;

    .line 753
    :cond_0
    sget-object v0, Lcom/android/settings_ext/applications/RunningState;->Km:Lcom/android/settings_ext/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 846
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kq:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 847
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 848
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kt:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 849
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ku:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 850
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Kv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ky:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 852
    return-void
.end method


# virtual methods
.method ak(Z)V
    .locals 2

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1439
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/RunningState;->KC:Z

    .line 1440
    monitor-exit v1

    .line 1441
    return-void

    .line 1440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    .line 772
    iput-object p1, p0, Lcom/android/settings_ext/applications/RunningState;->Ko:Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;

    .line 773
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->EE:Lcom/android/settings_ext/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningState;->Kn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/InterestingConfigChanges;->c(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHaveData:Z

    .line 775
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 776
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 783
    monitor-exit v1

    .line 784
    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ko:Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;

    .line 823
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 825
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 826
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method jP()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KN:Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 790
    monitor-exit v1

    .line 791
    return-void

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method jQ()V
    .locals 4

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 803
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    goto :goto_0

    .line 807
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 808
    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method jR()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KD:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method jS()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->KF:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->Ko:Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;

    .line 814
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    monitor-exit v1

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
