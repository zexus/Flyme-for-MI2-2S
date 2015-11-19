.class public interface abstract Lmiui/provider/VoipContract$UsersColumn;
.super Ljava/lang/Object;
.source "VoipContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/VoipContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsersColumn"
.end annotation


# static fields
.field public static final ACTIVATED_NUMBER:Ljava/lang/String; = "activated_number"

.field public static final ACTIVATED_NUMBER_INDEX:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activated_number"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/VoipContract$UsersColumn;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
