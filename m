Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C16127B45
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 May 2019 13:01:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hTlTI-0007vD-5M; Thu, 23 May 2019 11:01:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hTlTH-0007v2-9r
 for tipc-discussion@lists.sourceforge.net; Thu, 23 May 2019 11:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lhi8p04L5p6KGd9iN3wMnKLM0yQOfy/i39kazENnZ8c=; b=ENCf7AQH7vSZS988E86THKrqd8
 NDRqN4gc1jPFv46pqd0+x9vUfHudYigKiAmLzfuCtHZ0IPn/XcpKtTkY8b/DNUsCZVQ6gQELcZjGz
 MQwaWlhLaSnJtksZStvPNaW3dhiQ+VuEj/4WfxZvKr3/qiVQOkVqIg+3f5gRGl1cLhSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lhi8p04L5p6KGd9iN3wMnKLM0yQOfy/i39kazENnZ8c=; b=HXZEDj6Vw5C2kCCIh/Z2ZoAjnw
 p8OeHdO6U1V/SQTsofxRuun7HQkhy8DvtNURyx/4X8WVI+FqGme2lmm/995CMFdV4/Q80sACJWTBz
 LvIxP3IibotQWy47K+LrHIz5/Xd6mfkCOIOHJltOmz/9q5kqw1cN/uSAsSaGEOpqUnkA=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hTlSp-008uLf-HT
 for tipc-discussion@lists.sourceforge.net; Thu, 23 May 2019 11:01:15 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x4NAUiWV008275
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Thu, 23 May 2019 03:30:55 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 23 May
 2019 03:30:34 -0700
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "jon.maloy@ericsson.com" <jon.maloy@ericsson.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "niveditas98@gmail.com" <niveditas98@gmail.com>
References: <20190520034536.22782-1-chris.packham@alliedtelesis.co.nz>
 <2830aab3-3fa9-36d2-5646-d5e4672ae263@windriver.com>
 <00ce1b1e52ac4b729d982c86127334aa@svr-chch-ex1.atlnz.lc>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <11c81207-54dd-16d5-3f33-1ccf45a06dac@windriver.com>
Date: Thu, 23 May 2019 18:20:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <00ce1b1e52ac4b729d982c86127334aa@svr-chch-ex1.atlnz.lc>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hTlSp-008uLf-HT
Subject: Re: [tipc-discussion] [PATCH v2] tipc: Avoid copying bytes beyond
 the supplied data
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

On 5/23/19 4:46 AM, Chris Packham wrote:
> On most distros that is generated from include/uapi in the kernel source 
> and packaged as part of libc or a kernel-headers package. So once this 
> patch is accepted and makes it into the distros 
> /usr/include/linux/tipc_config.h will have this fix.

Thanks for the clarification. You are right, so it's unnecessary to make
any change.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
