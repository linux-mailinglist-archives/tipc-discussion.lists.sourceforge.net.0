Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC25EF6C6
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 09:03:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRtoD-0000ot-Fw; Tue, 05 Nov 2019 08:03:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iRtoC-0000om-7i
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 08:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Unn3bjFdtpr9Pp5TO41EKV+Bub/bEhpBL2bKFQ5TcMg=; b=T97QRso0gQkcl0JsDfJsi6Nbh9
 ZyqSPeQm/AUQkoe3HNM/gEteMw81bomd6K07AtP6CEGTm9uw3vQo9VaBNNG5jsdolRdvpA5XrVeSG
 Fd0VdxZk8cM0qClHOVNWF1GAKDT/VXK9KOHQdeIzy24EQgwfAmWBWlBnEOOg4AhpaIfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Unn3bjFdtpr9Pp5TO41EKV+Bub/bEhpBL2bKFQ5TcMg=; b=clEczD+/G2svzXfvTTCM6xDGWz
 J7r8yIi7dnk8cGsxbTW3hVKfZli3VWvH0xn3JWP0B2Z5Vc5oH30TdVOnGYcbFB6ck41mZ7DWVBV66
 R/36YhPPMz8SZ/m+vrWVISf39D3q/+n3lSLj9IocO2GFtSh4tndOzc6GPmPo0DZ6cTQI=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iRto7-000bpU-VT
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 08:03:24 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xA5833hV016461
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Tue, 5 Nov 2019 00:03:04 -0800 (PST)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 5 Nov
 2019 00:03:02 -0800
To: Jon Maloy <jon.maloy@ericsson.com>, Tuong Tong Lien
 <tuong.t.lien@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
 <0b8c01d59303$2653aaa0$72faffe0$@dektech.com.au>
 <CH2PR15MB35756FD7A8A2A9C4B6AE04D49A7F0@CH2PR15MB3575.namprd15.prod.outlook.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <e962530b-619c-81bc-4d11-e4d24a9284a4@windriver.com>
Date: Tue, 5 Nov 2019 16:02:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CH2PR15MB35756FD7A8A2A9C4B6AE04D49A7F0@CH2PR15MB3575.namprd15.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iRto7-000bpU-VT
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] TIPC encryption
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

On 11/5/19 5:33 AM, Jon Maloy wrote:
> Tuong, Ying
> I am ok with a kernel option, as long as it is enabled by default. I can imagine smaller embedded systems where the deployer want a small module, and encryption anyway is managed differently, or not at all.
> 
> ///jon

When I gave the suggestion to add a new kernel option, I also ever
figured out how to reach this goal based on this series of patches.

In my opinion, we don't need to modify the patches of making some
preparation things. For example, we don't need to change patch #1 at all.

Patch #3, #4 and #5 are almost completely separate with current code.
The only thing is that we need to consider how to modify patch #2. In
sum, it looks like it's not very difficult to introduce the new kernel
configuration option.

The kernel option not only can help us keep TIPC module size smaller,
but also can help us maintain it easily particularly with TIPC becoming
more and more complex. Lastly, probably it can help to make it possible
that the series of patches can be easily accepted by upstream if user
can disable the feature with a kernel option.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
