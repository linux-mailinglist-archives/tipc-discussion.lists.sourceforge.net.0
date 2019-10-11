Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38662D480F
	for <lists+tipc-discussion@lfdr.de>; Fri, 11 Oct 2019 21:00:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJ09N-0004d0-1E; Fri, 11 Oct 2019 19:00:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iJ09L-0004cs-T2
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Oct 2019 19:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9731zU5NLNSPSGBfLm2wx+kGdR+Zkr8aTdK4mlJZfmw=; b=QEVsaKUABklQ+XKT2qqkCO68/d
 QHGCCV8eAyFCMtQpmCGVsguapEW4tFiDblPU0Xe1uX01MxU5ek7IWm1TcDPMVW6ddMUZQamU5ubfz
 bLMO1Ymx6DwNnpbKTQ0NmuR0ZH9MFsUrlOM46utw52EFrW3UNx9zO0hSdhWZPpn8avXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9731zU5NLNSPSGBfLm2wx+kGdR+Zkr8aTdK4mlJZfmw=; b=RH+Zg6dwANAFt1MtXcsnmpuVQU
 4DwoQLGS0lFizzcjSsZuSxEJKKcUNcUsfJi/baG+tK4QYJ+JXWcO6E8lx7pc7KSz1pQZbGsFtea9b
 7PCAf0xCi5HEk7cYIsFY3r5AhGApkSop/pdlSYZfgA7uQj0ecVl+0ySNZZbIS/AOHHrE=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iJ09F-00EUKd-Sa
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Oct 2019 19:00:27 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9BEqFuC001971
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 11 Oct 2019 07:52:16 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.72]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Fri,
 11 Oct 2019 07:52:14 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [PATCH RFC 2/2] tipc: improve message bundling algorithm
Thread-Index: AQHVXl4CG/7nzcVGb0WgLw164jPmHKdVx8Pw
Date: Fri, 11 Oct 2019 14:52:13 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CA328B3@ALA-MBD.corp.ad.wrs.com>
References: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
 <20190829113607.13772-2-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190829113607.13772-2-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.151]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iJ09F-00EUKd-Sa
Subject: Re: [tipc-discussion] [PATCH RFC 2/2] tipc: improve message
 bundling algorithm
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

I can recognize this is a good improvement except that the following switch cases of return values of tipc_msg_try_bundle() are not very friendly for code reader. Although I do understand their real meanings, I have to spend time checking its context back and forth. At least we should the meaningless hard code case numbers or we try to change return value numbers of tipc_msg_try_bundle().

+		n = tipc_msg_try_bundle(&l->backlog[imp].target_bskb, skb,
+					mtu - INT_H_SIZE,
+					l->addr);
+		switch (n) {
+		case 0:
+			break;
+		case 1:
+			__skb_queue_tail(backlogq, skb);
 			l->backlog[imp].len++;
-			l->stats.sent_bundled++;
+			continue;
+		case 2:
 			l->stats.sent_bundles++;
+			l->stats.sent_bundled++;
+		default:
+			kfree_skb(skb);
+			l->stats.sent_bundled++;
 			continue;





_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
