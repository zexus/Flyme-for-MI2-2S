.class synthetic Lcom/miui/internal/content/res/ThemeDefinition$1;
.super Ljava/lang/Object;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->values()[Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    :try_start_0
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
