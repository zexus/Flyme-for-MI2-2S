.class public Lmiui/notification/NotificationItem;
.super Ljava/lang/Object;
.source "NotificationItem.java"


# instance fields
.field public action:Ljava/lang/String;

.field public actionIcon:Landroid/graphics/drawable/Drawable;

.field public clearIntent:Landroid/app/PendingIntent;

.field public clickActionIntent:Landroid/app/PendingIntent;

.field public clickIntent:Landroid/app/PendingIntent;

.field public content:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/notification/NotificationItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/notification/NotificationItem;->actionIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getClearIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/notification/NotificationItem;->clearIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getClickActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/notification/NotificationItem;->clickActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getClickIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/notification/NotificationItem;->clickIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/notification/NotificationItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/notification/NotificationItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lmiui/notification/NotificationItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/notification/NotificationItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lmiui/notification/NotificationItem;->action:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "actionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    iput-object p1, p0, Lmiui/notification/NotificationItem;->actionIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method

.method public setClearIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "clearIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 64
    iput-object p1, p0, Lmiui/notification/NotificationItem;->clearIntent:Landroid/app/PendingIntent;

    .line 65
    return-void
.end method

.method public setClickActionIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "clickActionIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 61
    iput-object p1, p0, Lmiui/notification/NotificationItem;->clickActionIntent:Landroid/app/PendingIntent;

    .line 62
    return-void
.end method

.method public setClickIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "clickIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 58
    iput-object p1, p0, Lmiui/notification/NotificationItem;->clickIntent:Landroid/app/PendingIntent;

    .line 59
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/notification/NotificationItem;->content:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    iput-object p1, p0, Lmiui/notification/NotificationItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 34
    iput p1, p0, Lmiui/notification/NotificationItem;->id:I

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/notification/NotificationItem;->title:Ljava/lang/String;

    .line 41
    return-void
.end method
