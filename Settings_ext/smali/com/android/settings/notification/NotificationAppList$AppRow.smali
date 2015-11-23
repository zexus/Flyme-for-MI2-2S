.class public Lcom/android/settings/notification/NotificationAppList$AppRow;
.super Lcom/android/settings/notification/NotificationAppList$Row;
.source "NotificationAppList.java"


# instance fields
.field public aeP:Landroid/content/Intent;

.field public aeQ:Z

.field public aeR:Z

.field public aeS:Z

.field public aeT:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationAppList$Row;-><init>(Lcom/android/settings/notification/NotificationAppList$1;)V

    return-void
.end method
