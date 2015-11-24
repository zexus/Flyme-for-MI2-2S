.class final Lcom/android/settings_ext/notification/NotificationAppList$1;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/notification/NotificationAppList$AppRow;Lcom/android/settings_ext/notification/NotificationAppList$AppRow;)I
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 364
    check-cast p1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    check-cast p2, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/notification/NotificationAppList$1;->a(Lcom/android/settings_ext/notification/NotificationAppList$AppRow;Lcom/android/settings_ext/notification/NotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
