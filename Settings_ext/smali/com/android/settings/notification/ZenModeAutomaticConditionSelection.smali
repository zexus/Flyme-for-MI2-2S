.class public Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;
.super Landroid/widget/LinearLayout;
.source "ZenModeAutomaticConditionSelection.java"


# instance fields
.field private final aft:Landroid/app/INotificationManager;

.field private final agc:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;

.field private final agd:Landroid/util/ArraySet;

.field private final age:Landroid/service/notification/IConditionListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;-><init>(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agc:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$2;-><init>(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->age:Landroid/service/notification/IConditionListener;

    .line 48
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->setOrientation(I)V

    .line 50
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->setPadding(IIII)V

    .line 53
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->aft:Landroid/app/INotificationManager;

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->qR()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;)Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agc:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$H;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 86
    const-string v0, "ZenModeAutomaticConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedCondition conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v2, v0, [Landroid/net/Uri;

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    aput-object v0, v2, v1

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->aft:Landroid/app/INotificationManager;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->setAutomaticZenModeConditions([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_2
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "ZenModeAutomaticConditionSelection"

    const-string v2, "Error calling setAutomaticZenModeConditions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->a(Landroid/net/Uri;Z)V

    return-void
.end method

.method private o(Ljava/lang/Object;)Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;-><init>(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->addView(Landroid/view/View;)V

    .line 82
    return-object v0
.end method

.method private qR()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->aft:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 62
    if-eqz v1, :cond_0

    .line 63
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 64
    iget-object v4, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "ZenModeAutomaticConditionSelection"

    const-string v2, "Error calling getAutomaticZenModeConditions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method protected a([Landroid/service/notification/Condition;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 126
    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, p1, v3

    .line 127
    iget-object v0, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 128
    iget v2, v5, Landroid/service/notification/Condition;->state:I

    if-eq v2, v6, :cond_3

    .line 129
    if-nez v0, :cond_3

    .line 130
    iget-object v0, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->o(Ljava/lang/Object;)Landroid/widget/CheckBox;

    move-result-object v0

    move-object v2, v0

    .line 133
    :goto_1
    if-eqz v2, :cond_0

    .line 134
    iget-object v0, v5, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget v0, v5, Landroid/service/notification/Condition;->state:I

    if-eq v0, v6, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->agd:Landroid/util/ArraySet;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_2

    .line 139
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method protected cd(I)V
    .locals 3

    .prologue
    .line 117
    const-string v0, "ZenModeAutomaticConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestZenModeConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->aft:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->age:Landroid/service/notification/IConditionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "ZenModeAutomaticConditionSelection"

    const-string v2, "Error calling requestZenModeConditions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->cd(I)V

    .line 108
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->cd(I)V

    .line 114
    return-void
.end method
