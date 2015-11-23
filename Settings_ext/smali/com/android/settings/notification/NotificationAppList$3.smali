.class Lcom/android/settings/notification/NotificationAppList$3;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeO:Lcom/android/settings/notification/NotificationAppList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppList;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppList$3;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$3;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->k(Lcom/android/settings/notification/NotificationAppList;)V

    .line 527
    return-void
.end method
