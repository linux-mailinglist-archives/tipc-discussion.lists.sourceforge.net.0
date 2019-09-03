Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1FDA6613
	for <lists+tipc-discussion@lfdr.de>; Tue,  3 Sep 2019 11:53:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i55VA-000188-SI; Tue, 03 Sep 2019 09:53:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1i55V9-00017s-WA
 for tipc-discussion@lists.sourceforge.net; Tue, 03 Sep 2019 09:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BePgudw6S48xyntlSwy9Nj/he6DorpRJE5qzChHU8Xs=; b=Gxt84OYC/yRGOmBJ1O54h5M5dL
 mOY0oUZCtbepHokVfrxCObBgJDtECHINp2Jth9QfQ9XegYbrRb+UsA5aeRbNlv+nd6VqVbdM7lGkm
 PiIuD9ZVLjMhU9ZlRxHZDyZvEYoN7mfBM3CJtcziuOmxSV+Lfqc6K4URwB2rlyokGdIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BePgudw6S48xyntlSwy9Nj/he6DorpRJE5qzChHU8Xs=; b=ko1bj8395L7h2Pf/vX3nW5BHmV
 I4B/GiRPl2rj4hLsHpcdFVp4be1e6aJyLAGOy5Xe2fE2mObaHyhjCcjRhusRb7K30lgbWHLIzNQ2l
 asb244FHs2F4atwb/D8vQZ75cYSh8H/0MYsKgThU7WuSVMH5EGqX1S0e7o3nnMiADcMk=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i55V8-00ENkh-QS
 for tipc-discussion@lists.sourceforge.net; Tue, 03 Sep 2019 09:53:27 +0000
Received: by mail-pf1-f196.google.com with SMTP id s12so3454116pfe.6
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 03 Sep 2019 02:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BePgudw6S48xyntlSwy9Nj/he6DorpRJE5qzChHU8Xs=;
 b=VW4o87nN0bEwEzS1voUk452RV06jx5ikn0sJgdRnVIZ1qtUueE3q+d+Zy8ggvKmduf
 fzLFdiX0qu6mlCS18Gv456izQVe8ISD/d5Z/qLmWneRcy0lKL7pGbqRaXv9Fq167+LHy
 AMU0i5uEJVmRBNcLJpg4JcMKjnc8qrvxhUaD+u0+vmSq6/n4K7K+uolkqy9MovQVnPmg
 10NAt+wYMfmNpWx/2jBVVyPmJXcvPetUblHlfV7MPptAKNurjCxwtRs0dwbRr1tvIgUk
 TlrJWKcm+41J+qKCiM/pSaR7Mvp4YCHSQWpyQ1HI7+6kXwSN22NAgxDP7ZEXHOuoGUwS
 nkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BePgudw6S48xyntlSwy9Nj/he6DorpRJE5qzChHU8Xs=;
 b=rFzMi6n0F7WtI8O4Ebva9ecCP9GxYnDdS/22oMdZ0ecT19x94duAi0liOwpZajo/kv
 J5Ngtm5OUqGW/B+hVuL2TD7Iw+KO9hUHJK+BaL9rl87Vsh1RtYaFm7St5ho7sVewWBG9
 gAyPYshy7cy2ddn7UpOjV7ZV1P6BofnPRhjQuGis60EMrVzMECcden9ASSn6YGS6u7xy
 VfrUFpxAJH8tzKGzE7mNYTT/GYKg3JaY+lxcxeUVGl3gjptT1Om/49WF10Wyqica26BX
 FAPb+7flwq7Phja/yLJZH4c+9l6dHHAXCipVpovXUAI3BUV0ElcM5/a2w68z+sgnC+2v
 Qo3w==
X-Gm-Message-State: APjAAAU8GKez7R/0XyiKVjOVlk8eRG0cDDwX17pf1r9ZpuEaFsyq1i+6
 rCcyC0ntmJ8y6VuvTyaZApg=
X-Google-Smtp-Source: APXvYqwCnuLa+PjLeqQcRsi+2sd7mzCwizuwAW7cdNsjEV2M50hD+b/XUiPfJSrHaEvzw+qAVQkRNg==
X-Received: by 2002:a63:5920:: with SMTP id n32mr28406516pgb.352.1567504400939; 
 Tue, 03 Sep 2019 02:53:20 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id t9sm17604225pgj.89.2019.09.03.02.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 02:53:20 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Tue,  3 Sep 2019 17:53:12 +0800
Message-Id: <f42a6270d821baf1445b5fa40dc201f7c9c5ebd0.1567504392.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1i55V8-00ENkh-QS
Subject: [tipc-discussion] [PATCH net] tipc: add NULL pointer check before
 calling kfree_rcu
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
Cc: tipc-discussion@lists.sourceforge.net, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Unlike kfree(p), kfree_rcu(p, rcu) won't do NULL pointer check. When
tipc_nametbl_remove_publ returns NULL, the panic below happens:

   BUG: unable to handle kernel NULL pointer dereference at 0000000000000068
   RIP: 0010:__call_rcu+0x1d/0x290
   Call Trace:
    <IRQ>
    tipc_publ_notify+0xa9/0x170 [tipc]
    tipc_node_write_unlock+0x8d/0x100 [tipc]
    tipc_node_link_down+0xae/0x1d0 [tipc]
    tipc_node_check_dest+0x3ea/0x8f0 [tipc]
    ? tipc_disc_rcv+0x2c7/0x430 [tipc]
    tipc_disc_rcv+0x2c7/0x430 [tipc]
    ? tipc_rcv+0x6bb/0xf20 [tipc]
    tipc_rcv+0x6bb/0xf20 [tipc]
    ? ip_route_input_slow+0x9cf/0xb10
    tipc_udp_recv+0x195/0x1e0 [tipc]
    ? tipc_udp_is_known_peer+0x80/0x80 [tipc]
    udp_queue_rcv_skb+0x180/0x460
    udp_unicast_rcv_skb.isra.56+0x75/0x90
    __udp4_lib_rcv+0x4ce/0xb90
    ip_local_deliver_finish+0x11c/0x210
    ip_local_deliver+0x6b/0xe0
    ? ip_rcv_finish+0xa9/0x410
    ip_rcv+0x273/0x362

Fixes: 97ede29e80ee ("tipc: convert name table read-write lock to RCU")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/name_distr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 44abc8e..241ed22 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -223,7 +223,8 @@ static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
 		       publ->key);
 	}
 
-	kfree_rcu(p, rcu);
+	if (p)
+		kfree_rcu(p, rcu);
 }
 
 /**
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
