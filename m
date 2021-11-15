Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEF64504B0
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 Nov 2021 13:45:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mmbMc-0002cl-Bq; Mon, 15 Nov 2021 12:45:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mmbMb-0002cZ-LP
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Nov 2021 12:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p0bR6S9IemDhVbzyC7oeXbEZsCr90h1u64hNJLpC1K0=; b=hgDEEy/I6al4rRDwhl3iX1Xizq
 xl0BEmCcMLT6yJJx530oo3eTdPkJIHQuG3sfPEJfHrOPd8ZrjTy6PqDXQvqtNYjbE0qqEuDTSwu9B
 sv75aw2PUD5/YKL7FgQqUAtds1D/CqShyXGBKCqytOAjfJYwSPT05vIjUqGQghsp0p0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p0bR6S9IemDhVbzyC7oeXbEZsCr90h1u64hNJLpC1K0=; b=V
 yehEoptqN6PWP+Wbq8YrNfnWP4FMiOgM7VKKbihOE5HouccAk2Kt4Mzaa2ljNKZJj+Ez6Lo2SU3w1
 IJQyRj5JiK9sa0IGU+ZS0BpeSJg078VAVT6oCGX6E2TpKuZ50xR4TgA2UeJSy845Nyk841PEnZthL
 J5gXzaTjYofEg0Fc=;
Received: from mail-qv1-f46.google.com ([209.85.219.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mmbMZ-0000ST-IC
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Nov 2021 12:45:34 +0000
Received: by mail-qv1-f46.google.com with SMTP id b11so11182179qvm.7
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 15 Nov 2021 04:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p0bR6S9IemDhVbzyC7oeXbEZsCr90h1u64hNJLpC1K0=;
 b=V2Pi3e2hJK152R7uiFZhYbfyI/dmYHlz6H9ILNXwEIGogKhNehLuq88YFH7vJIJ4yE
 fF6OOGzxdMDesxCHgc6e8JEtBLW+5A/TJq1CQ3qbrCxCUgXXMTm9rX9E0IhI/lRTTN3Z
 HtAwdvxUG9jyOEjCkpFbUZ1LJR9klejZdTkJsNoW6kcxatQGJ8fAd5Sq3rv3Iz4ik5xE
 6ROy4LiHJctrlD7ui3KPGamhSZKXm7XH/G4nlUCIdK8BIDT1eAcUcnqiGrpdeb/3uw4I
 gaHmvywICXWF6JAGJihX/VB3cxzXQfMzJA563SuYT++xtxnnrSLWlGHGF7us79RD63GZ
 bUqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p0bR6S9IemDhVbzyC7oeXbEZsCr90h1u64hNJLpC1K0=;
 b=FK3k02RVVS0fMuHIGYEXpPWGUmg9Rvgeyoq46f9VlOKccSBMjSoVufJWrLnqVlcIEm
 whMsijMutxyqDa5xdr+WGNEnxNfqEu6GG5Rs3bktzZgvWwMiaNxs537ONzgdifSmpNSd
 kHM0yInfZauWdHEfYHeU6NbAOGDieL2QenGJz8EJp2EW/ZC8ttWOvXuYcratug8BmNFd
 XkXKbmeQvIWCtfLtZDrdhx2RRTVLeLjlzPag5g9bz8UI4ITbzfFUKzzdtxhFZto49Jha
 faMY87bh3kg3QFb+qRbll5Zn4W+OdxVkZXkDPtxe/52lQFOers9tPNncOAYFh2uh5cGL
 GDJw==
X-Gm-Message-State: AOAM530pDiHosPtqCB3rBJBzoUlAtRHS8pBnU2uzqka8JEBCR4WXUarJ
 Zx+sim0cU9RCIAIa6IC3gqk=
X-Google-Smtp-Source: ABdhPJz1w2go5pl0qknuAuEKP+9enfd8Dw9ZyND0zQs2kkFg+9iVQu170EgDkp7HRlaLmZOne9OtyQ==
X-Received: by 2002:a05:6214:96e:: with SMTP id
 do14mr37101402qvb.39.1636980325820; 
 Mon, 15 Nov 2021 04:45:25 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id o17sm6876588qkp.89.2021.11.15.04.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 04:45:25 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Mon, 15 Nov 2021 07:45:24 -0500
Message-Id: <127f576a209dfaa9a4ada59b298e575296f6bc10.1636980324.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The MSG_CRYPTO msgs are always encrypted and sent to other
 nodes for keys' deployment. But when receiving in peers, if those nodes do
 not validate it and make sure it's encrypted, one could craft a ma [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.46 listed in wl.mailspike.net]
X-Headers-End: 1mmbMZ-0000ST-IC
Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
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
Cc: kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The MSG_CRYPTO msgs are always encrypted and sent to other nodes
for keys' deployment. But when receiving in peers, if those nodes
do not validate it and make sure it's encrypted, one could craft
a malicious MSG_CRYPTO msg to deploy its key with no need to know
other nodes' keys.

This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted
and discard it if this packet never got decrypted.

Note that this is also a supplementary fix to CVE-2021-43267 that
can be triggered by an unencrypted malicious MSG_CRYPTO msg.

Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1b7a487c8841..09ae8448f394 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
 		return false;
 #ifdef CONFIG_TIPC_CRYPTO
 	case MSG_CRYPTO:
-		tipc_crypto_msg_rcv(l->net, skb);
-		return true;
+		if (TIPC_SKB_CB(skb)->decrypted) {
+			tipc_crypto_msg_rcv(l->net, skb);
+			return true;
+		}
+		fallthrough;
 #endif
 	default:
 		pr_warn("Dropping received illegal msg type\n");
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
