Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338F8470956
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Dec 2021 19:51:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mvkyp-0003nu-Uf; Fri, 10 Dec 2021 18:50:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mvkyo-0003no-0w
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Dec 2021 18:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jvt0hW8j62Yafyq4p5GRxEQBCjarrXPWPoRmQXorS+c=; b=eqg4ipMZPHQzI8ACFvdY4CIaoU
 yKD1sO8vHhbRr6oRfP76RPTiuXXLs3XDRf/EjVveI6lUCbpxsSvj0hjxZ5a2raWTg1rJAwgIX7Q6y
 bnFGw6m9uMhUE+VgWBsY3xBc0PEPIJhnxEybInJkBgBnMfe+nXiN9sM9PpmhLYOdOdBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Jvt0hW8j62Yafyq4p5GRxEQBCjarrXPWPoRmQXorS+c=; b=d
 PoU/ZIXb+tigsSOpNOuXOtRDl51L+W/qIYaHP+FkyhDIPRh0owrwLSELNH+jVUB6JZxqnH8iq9SkY
 eV/fpoHBTbcct25lyQlvfPQtQN6zFotrA/YAxNyEbMAxcazB6FZ/H9Y1Em/sUKbWpSOeNbGBbobhN
 Ex2tJKIGh51NPpTw=;
Received: from mail-qv1-f50.google.com ([209.85.219.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mvkym-0003L2-Ah
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Dec 2021 18:50:49 +0000
Received: by mail-qv1-f50.google.com with SMTP id jo22so8772580qvb.13
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 10 Dec 2021 10:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jvt0hW8j62Yafyq4p5GRxEQBCjarrXPWPoRmQXorS+c=;
 b=EwJytH2Ez4PgXJCUl0six7eM5Je65NyotNZj1chqNHgX9HJHlTqAlpUCB6UV0jbC8P
 Q1P5nlZN077ek3moluRmp/Wl1pfnlsB89n7zjck+bLD/qKypuXp/nox6Qr+ly+fSIWQE
 U4jeLATUpQoY6+wpl1CXzvyhlG9W87jMxXUWyUM8vXuB49+GAFT/5yT+tMNEVZPjURJa
 8En6cVQQzhuN2HoJfi4ZZ1fg92A2DxM1tT29Sub9YPi0F+DUU7JCueyWzDRJkEm55b6Z
 C9b07tr2m72h4BmBRgflMrZxwtHuQGCsCA+WNxjxf/jwpzSWmJeUHWRyzcV51E29hIPW
 e52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jvt0hW8j62Yafyq4p5GRxEQBCjarrXPWPoRmQXorS+c=;
 b=v6LfLK0y4iG80ae2cPO1PrTevfHFSgDfLEJodYNzLuTL4RGERajW8QBxfFiVsq1KfL
 sSv03pkEihyDumAmGSas/Uea0Z0O5bmjpvnHYgawkFlC5Vctk/oKjzveOuw4Hh+61RSG
 4nMMfJUsS2/U5KZdCH3ox/GA4ppiljvki2zQ2jNGo4ZvxLrOM9ja3AvE74pG2ltZnwB4
 OlBsLG3xYqY+d2k1VEINNZTvsvZP0is0ZGXfL8hS9ALTKRnEo3RaxsmESPiJHD+YRY3z
 66JkK0Y9ygr4c6qtyvJ9E0eC5TYGHRN0SE87OjOn96PB7dTXDyKW+kdM4LX9yPMXbaP6
 pKTQ==
X-Gm-Message-State: AOAM531YIMSbwr/gC8oP4oqVwth+JBaZyKE3hXnmb7mWlH+ZOR9ZUT1Y
 vnSml0+qx+xt/3bGEoTS9nP0GK+1n/QPGQ==
X-Google-Smtp-Source: ABdhPJz1g7TJou6QMRZvYYK0/v/f4miOFVthDjCVEmETPZ0zFxoSIABy2On70QIlXoT0hzpsTc9kfg==
X-Received: by 2002:a05:6214:230a:: with SMTP id
 gc10mr26691237qvb.115.1639162242564; 
 Fri, 10 Dec 2021 10:50:42 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id bl8sm1694648qkb.38.2021.12.10.10.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 10:50:41 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 10 Dec 2021 13:50:40 -0500
Message-Id: <30b1e3d5fb5d00c4200837107d26f445fd3a958f.1639162240.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When key_exchange is disabled, there is no reason to accept
 MSG_CRYPTO msgs if it doesn't send MSG_CRYPTO msgs. Signed-off-by: Xin Long
 Acked-by: Jon Maloy --- net/tipc/link.c | 3 ++- 1 file changed, 2 insertions(+),
 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.50 listed in wl.mailspike.net]
X-Headers-End: 1mvkym-0003L2-Ah
Subject: [tipc-discussion] [PATCH net-next] tipc: discard MSG_CRYPTO msgs
 when key_exchange_enabled is not set
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: davem@davemloft.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When key_exchange is disabled, there is no reason to accept MSG_CRYPTO
msgs if it doesn't send MSG_CRYPTO msgs.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/link.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 09ae8448f394..8d9e09f48f4c 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1298,7 +1298,8 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
 		return false;
 #ifdef CONFIG_TIPC_CRYPTO
 	case MSG_CRYPTO:
-		if (TIPC_SKB_CB(skb)->decrypted) {
+		if (sysctl_tipc_key_exchange_enabled &&
+		    TIPC_SKB_CB(skb)->decrypted) {
 			tipc_crypto_msg_rcv(l->net, skb);
 			return true;
 		}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
