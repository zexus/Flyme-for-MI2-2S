.class public Lcom/android/settings/NotificationAppListSettings;
.super Lcom/android/settings/BaseFragment;
.source "NotificationAppListSettings.java"


# instance fields
.field private fz:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private ta:Landroid/view/LayoutInflater;

.field private tb:Lcom/android/settings/w;

.field private tc:Lcom/android/settings/eX;

.field private td:Lcom/android/settings/fa;

.field private te:Landroid/content/BroadcastReceiver;

.field private tf:Ljava/util/List;

.field private tg:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 134
    new-instance v0, Lcom/android/settings/eT;

    invoke-direct {v0, p0}, Lcom/android/settings/eT;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->te:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tf:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tg:Ljava/util/List;

    .line 274
    return-void
.end method

.method static synthetic a(Lcom/android/settings/NotificationAppListSettings;Lcom/android/settings/fa;)Lcom/android/settings/fa;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f09005e

    const/4 v1, 0x1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 222
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const/4 v0, 0x0

    .line 226
    const-string v3, "_message"

    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 230
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 231
    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_1
    const v1, 0x7f09005c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3
    const-string v1, "_keyguard"

    invoke-static {p0, p1, v1}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_4
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 235
    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->fJ()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/settings/NotificationAppListSettings;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/NotificationAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/NotificationAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tg:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/NotificationAppListSettings;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/eX;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tc:Lcom/android/settings/eX;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private fJ()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/android/settings/eU;

    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/eU;-><init>(Lcom/android/settings/NotificationAppListSettings;Landroid/app/FragmentManager;)V

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/android/settings/eU;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method static synthetic g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->ta:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/w;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tb:Lcom/android/settings/w;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/fa;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/settings/w;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tb:Lcom/android/settings/w;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/NotificationAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationAppListSettings;->te:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->te:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tb:Lcom/android/settings/w;

    invoke-virtual {v0}, Lcom/android/settings/w;->stop()V

    .line 130
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 131
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings;->ta:Landroid/view/LayoutInflater;

    .line 94
    const v0, 0x7f040105

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 99
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 100
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 103
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    invoke-static {v0}, Lcom/android/settings/fa;->a(Lcom/android/settings/fa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    invoke-virtual {v2}, Lcom/android/settings/fa;->fK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/NotificationAppListSettings;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fa;->a(Lcom/android/settings/fa;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->td:Lcom/android/settings/fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fa;->a(Lcom/android/settings/fa;Z)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tc:Lcom/android/settings/eX;

    invoke-virtual {v0}, Lcom/android/settings/eX;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f100293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->fz:Landroid/widget/ListView;

    .line 111
    new-instance v0, Lcom/android/settings/eX;

    invoke-direct {v0, p0}, Lcom/android/settings/eX;-><init>(Lcom/android/settings/NotificationAppListSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->tc:Lcom/android/settings/eX;

    .line 112
    iget-object v0, p0, Lcom/android/settings/NotificationAppListSettings;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings;->tc:Lcom/android/settings/eX;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/NotificationAppListSettings;->fJ()V

    .line 114
    return-void
.end method
