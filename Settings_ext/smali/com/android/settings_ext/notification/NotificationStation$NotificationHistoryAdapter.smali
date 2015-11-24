.class Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationStation.java"


# instance fields
.field final synthetic afy:Lcom/android/settings_ext/notification/NotificationStation;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/notification/NotificationStation;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->afy:Lcom/android/settings_ext/notification/NotificationStation;

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 293
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 294
    return-void
.end method

.method private f(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    .line 299
    const-string v1, "getView(%s/%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ext/notification/NotificationStation;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    if-eqz p2, :cond_2

    .line 302
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object v1, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 306
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_0
    iget-object v1, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afz:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 309
    const v1, 0x7f10016b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afz:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_1
    const v1, 0x7f10016c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-wide v2, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 313
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const v1, 0x7f10016e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afA:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v1, 0x7f10016d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-boolean v1, v0, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 320
    new-instance v1, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;-><init>(Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    return-object p2

    .line 301
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->f(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 317
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1
.end method
