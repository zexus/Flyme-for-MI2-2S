.class public final Lcom/miui/fmradio/StationItemHelper$Station;
.super Ljava/lang/Object;
.source "StationItemHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/StationItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Station"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "content://com.miui.fmradio/station"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/StationItemHelper$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "frequnecy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/fmradio/StationItemHelper$Station;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
