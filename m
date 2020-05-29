Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6C61E727F
	for <lists+tipc-discussion@lfdr.de>; Fri, 29 May 2020 04:16:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeUZj-0006mK-IS; Fri, 29 May 2020 02:16:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jeUZi-0006m8-E6
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 02:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eEQLdxAib6yOmxSMg4l5OA+2p4RMbHuOCVyFN5SSpZE=; b=W4YnOIoE3dSElWUdsuN+cjvzF6
 mXtAxfR/Ghahdnu1iZ562C4xHyZq9dlxPyfubeoB7EEi/w5fGynNLE1mdri5rF1v03IzvYTGoGvoP
 Zo5oAZ4G7jkpdKsoZbXLyW4PobPQCiw/WydF++INOqCEn/VAv5LdO1tEF2TONniK27zw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eEQLdxAib6yOmxSMg4l5OA+2p4RMbHuOCVyFN5SSpZE=; b=QEtuOzKCrd9hwZZpoBIfs4FD1+
 ee8jgm+YLqiTOV/KRTyNSFHT0Bq3DjEpg34iQv7Mms++VoC82q8lwco11FaunK9LZqEOZswLx+vOv
 PFIpAWrWJ9o/eOmP1EOk2wTJSH353F8rtKby9dkKUmOcnDr2GwtlIGUWU2qEB5YrzvW8=;
Received: from mail-am6eur05on2117.outbound.protection.outlook.com
 ([40.107.22.117] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeUZb-00Gkea-0X
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 02:16:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRjiP36BEbBc8JZAgtnVeapcNSNKC2LQoW0E2M7mnFztu/2HmqC+3mPgaZUQXVApJ/bUSpfHxfXZsMkYe//0t8tNYUxFJfj8t9hCEhn3EuaYn8246l6d9GGnBG+O6St39JkqWa+vh6eeHydWvEStp3wbyPwcbQmoSikvLO5CNyITzVtXl5jG3tjMxBmrt/vgadKpiEZQxLMUQDshOZgxqqsYTRo+ERAYEn+XXRC29SoLIeb+eYEQUnR2uPW3hNynErtN6113+3mdGKrA22X6PJwDCyesri8FRoLdPlxnvGW0DEind2D43lPBjM9GXIa3aL1nfMpcQd/5BQQbgfz16A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eEQLdxAib6yOmxSMg4l5OA+2p4RMbHuOCVyFN5SSpZE=;
 b=U5U5mfTWUK5HSOh/x3dE/UutiSbyh3IAqAe/LTNF4beFKxAGTodkZmrpvVNaEdCngzO/a3HkA8fUy38wMFYMupCMHuvgF84mwFt3/xqSPFwyj6XyaV8aKt8lq2xTxg628Aqa8RwL2/dEd1P3dOoFbZSTYvAd/hICQNu6xKp7t0IC4Q8y29v/+u9fWsyga1XmENEBrJ3simCIAW2eGExSuAQeHInPswgNC7/1LbmRJBFxaHPll+2ZN02wIaJxxfmxS0xGShWO5xkxji+57ZClrTXmfLeE78A2gY+wcQ1nYC5PIMFIFzJz6sDI66MqjVOvNGF+plsHIlusktMg6Rjinw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eEQLdxAib6yOmxSMg4l5OA+2p4RMbHuOCVyFN5SSpZE=;
 b=ieTkVWeKjtiKHzqyhRX95yfeA7XIhlBmPib1QORn+7TYN5/MDJpTrba1EKyIH0B6DrMUuhy5vgap+zVr5h0wkdfMQT1eQ5FTnXQzarda+QFCCfM4kc/uEKYw6akryLiT6iR485tmk+6GyczB+hgua53O9Z81Z5F6xddm7vTISiQ=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3717.eurprd05.prod.outlook.com (2603:10a6:209:9::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Fri, 29 May
 2020 02:16:29 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 02:16:29 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: YueHaibing <yuehaibing@huawei.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
 <kuba@kernel.org>
Thread-Topic: [PATCH net-next] tipc: Fix NULL pointer dereference in
 __tipc_sendstream()
Thread-Index: AQHWNP2vql/kfg7R0UyUpPAX7+9dlai+UCpA
Date: Fri, 29 May 2020 02:16:29 +0000
Message-ID: <AM6PR0502MB39253E3DEA26128B9DDA5A98E28F0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200528143407.56196-1-yuehaibing@huawei.com>
In-Reply-To: <20200528143407.56196-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a1b532b-9821-4691-99d2-08d803764c3f
x-ms-traffictypediagnostic: AM6PR0502MB3717:
x-microsoft-antispam-prvs: <AM6PR0502MB371701842E38364228DE353DE28F0@AM6PR0502MB3717.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BG6CMi6JKHOdNotctTov8mkCBTz46y1l/kvNNhXh6om5RnVOzAgV6tb8CYM1wKtMqw5xD4335dkuZjWgPm+SOW7nByFCHtOzGvmbgwFaYbCiGmXtFHbqyPefGtt5k8tXIiMr7QrH891eZmxnBClHfjP3UVf4y7/qbTZifzKl4ywSriX4UTQ1A7YFVYSOWFuuww0qCj/MXa7y7O5tDTtCiGOy6f3G7XUS4qpBSoxeID0Os3UCRwNttOiteQSmkjqUk41shFMvyHHAfLYTtZUkRcNDx7TGePnGk1OeBYJpDoXSj4/SjSDznIY0OHKkpGV+uokZsngAolatjuuFFQDGpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(346002)(39850400004)(396003)(186003)(478600001)(86362001)(5660300002)(110136005)(53546011)(6506007)(8676002)(64756008)(316002)(54906003)(83380400001)(7696005)(66946007)(33656002)(8936002)(76116006)(71200400001)(55016002)(9326002)(9686003)(2906002)(4326008)(66476007)(52536014)(66446008)(26005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: KhEtn6cqAsRvvZETWlcWkylLqjUtKRi1aXY3xQBHPq7nppMS8Dg0iYF3voZ/1LrpMhkZYToP7V7ULB7Jkxo2NLyXI5I6A4fy5NKnHYr4KRIWCsOUbNukpNKL+utqQYJHQKAZz9BqioYkl8R89oCoRbtkqbkUJyg5idmHXKmebHWHnqqlhYaxjKxg9yKamvsmA4OyJ2VfJPaADDesu85Jge0XQZ4tgiWUPqjtGl3FhMewmc2mt6EsQ70sx7KBXKtMx02AdGFVQ5cQukYDX2VcR8MXCQkEVawUZSVVNPilbgYKIX35yFN4pIaQtDdrFLTNFL2FXP6gg2qNSIc09xHcGI4fAfA1XDZxDt+XBgE5vL5AJ1QsaQUOp1tRQuZ+Q+iYwDuWOfl0QKw2pNqCEckGYxgRAc1HZYlMg3J+mCbB8uXEBhpW5tLDCg/wAdKRc5AHL+Q37VdyeNRAF9aqCdFeeqkgozbfYxHMv5BLMHXxAlM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a1b532b-9821-4691-99d2-08d803764c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 02:16:29.1716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x1o6ApC96t1JfDNTSxo1ZiTHPP4PxFkRAejtc22z7zg5qrBfEouZSHDrWMl4eEtkrMMRo0nQZ0CGq4FN/IWzQlDiafZMkksAhc5Gt9HaT4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3717
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.117 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeUZb-00Gkea-0X
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Fix NULL pointer
 dereference in __tipc_sendstream()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Yue,



Thanks for your patch! Yesterday, I also sent a patch to "tipc-discussion" to solve this issue... Actually, the 'tipc_msg_append()' needs to be fixed instead. In fact, we never expect the 'txq' to be empty, otherwise the crash will still happen but at another place.



BR/Tuong



-----Original Message-----
From: YueHaibing <yuehaibing@huawei.com>
Sent: Thursday, May 28, 2020 9:34 PM
To: jmaloy@redhat.com; ying.xue@windriver.com; davem@davemloft.net; kuba@kernel.org; Tuong Tong Lien <tuong.t.lien@dektech.com.au>
Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-kernel@vger.kernel.org; YueHaibing <yuehaibing@huawei.com>
Subject: [PATCH net-next] tipc: Fix NULL pointer dereference in __tipc_sendstream()



tipc_sendstream() may send zero length packet, then tipc_msg_append()

do not alloc skb, skb_peek_tail() will get NULL, msg_set_ack_required

will trigger NULL pointer dereference.



Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com<mailto:syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com>

Fixes: 0a3e060f340d ("tipc: add test for Nagle algorithm effectiveness")

Signed-off-by: YueHaibing <yuehaibing@huawei.com<mailto:yuehaibing@huawei.com>>

---

net/tipc/socket.c | 8 ++++++--

1 file changed, 6 insertions(+), 2 deletions(-)



diff --git a/net/tipc/socket.c b/net/tipc/socket.c

index d6b67d07d22e..2943561399f1 100644

--- a/net/tipc/socket.c

+++ b/net/tipc/socket.c

@@ -1588,8 +1588,12 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)

                                                               tsk->pkt_cnt += skb_queue_len(txq);

                                               } else {

                                                               skb = skb_peek_tail(txq);

-                                                              msg_set_ack_required(buf_msg(skb));

-                                                              tsk->expect_ack = true;

+                                                             if (skb) {

+                                                                             msg_set_ack_required(buf_msg(skb));

+                                                                             tsk->expect_ack = true;

+                                                             } else {

+                                                                             tsk->expect_ack = false;

+                                                             }

                                                               tsk->msg_acc = 0;

                                                               tsk->pkt_cnt = 0;

                                               }

--

2.17.1





_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
