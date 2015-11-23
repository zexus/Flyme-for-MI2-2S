.class public Lcom/android/settings/notification/ZenModeConditionSelection;
.super Landroid/widget/RadioGroup;
.source "ZenModeConditionSelection.java"


# instance fields
.field private final aft:Landroid/app/INotificationManager;

.field private final age:Landroid/service/notification/IConditionListener;

.field private final agh:Lcom/android/settings/notification/ZenModeConditionSelection$H;

.field private final agi:Ljava/util/List;

.field private agj:Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/settings/notification/ZenModeConditionSelection$H;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/notification/ZenModeConditionSelection$H;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;Lcom/android/settings/notification/ZenModeConditionSelection$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agh:Lcom/android/settings/notification/ZenModeConditionSelection$H;

    .line 140
    new-instance v0, Lcom/android/settings/notification/ZenModeConditionSelection$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeConditionSelection$2;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->age:Landroid/service/notification/IConditionListener;

    .line 52
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agi:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/settings/notification/ZenModeConditionSelection;->setPadding(IIII)V

    .line 57
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->aft:Landroid/app/INotificationManager;

    .line 59
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeConditionSelection;->a(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    const v2, 0x104069a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/settings/fk;->d(Landroid/content/Context;I)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeConditionSelection;->b(Landroid/service/notification/Condition;)V

    .line 62
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private a(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Lcom/android/settings/notification/ZenModeConditionSelection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection$1;-><init>(Lcom/android/settings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->addView(Landroid/view/View;)V

    .line 81
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeConditionSelection;)Lcom/android/settings/notification/ZenModeConditionSelection$H;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agh:Lcom/android/settings/notification/ZenModeConditionSelection$H;

    return-object v0
.end method


# virtual methods
.method protected a([Landroid/service/notification/Condition;)V
    .locals 3

    .prologue
    .line 106
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeConditionSelection;->b(Landroid/service/notification/Condition;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method protected b(Landroid/service/notification/Condition;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 114
    iget v2, p1, Landroid/service/notification/Condition;->state:I

    if-eq v2, v1, :cond_1

    iget v2, p1, Landroid/service/notification/Condition;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 115
    :cond_1
    if-nez v0, :cond_4

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeConditionSelection;->a(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;

    move-result-object v0

    move-object v2, v0

    .line 119
    :goto_1
    if-eqz v2, :cond_2

    .line 120
    iget-object v0, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method protected c(Landroid/service/notification/Condition;)V
    .locals 3

    .prologue
    .line 127
    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agj:Landroid/service/notification/Condition;

    .line 129
    return-void
.end method

.method protected cd(I)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "ZenModeConditionSelection"

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

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->aft:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->age:Landroid/service/notification/IConditionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RadioGroup;->onAttachedToWindow()V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->cd(I)V

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/RadioGroup;->onDetachedFromWindow()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->cd(I)V

    .line 94
    return-void
.end method

.method public qS()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "ZenModeConditionSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agj:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->aft:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection;->agj:Landroid/service/notification/Condition;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method
