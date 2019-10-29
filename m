Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E749E8570
	for <lists+tipc-discussion@lfdr.de>; Tue, 29 Oct 2019 11:24:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPOfX-0003Sz-Nt; Tue, 29 Oct 2019 10:24:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iPOfW-0003Ss-9k
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 10:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=prOMlyYcG8Y8GtJdcxL5VL22E1LUb7lxApY1P646TRk=; b=GIhDr6D4yUAo0ljGocBwnazDEn
 /YByF2OQKFnn+MqEk/7ovqTjgHp6O9w/NMJfqCHoES8GATbPzLSxkqSmtj2qmZlzNj0kYzXfAh7XW
 al/DhtOT7CXPRDTI+ybJ278xgG99w3T9OWr28abNpQZRXKn9G4o8Tl6jHzijiDc10fTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=prOMlyYcG8Y8GtJdcxL5VL22E1LUb7lxApY1P646TRk=; b=LlE8F+LIN61dJU3XZDl9DanIR6
 GuzocBTlL2GWGNkvnDObk+in6m5aIFJrO3wlvAZmnsUAwjfGDRL6yBgEiW1+YOAa1rnIewr3IKnvj
 8nSsp2m+hxiBCu0j9tWdLvgKt1q7A8WFiZ/AdQ7O1QDZmVqepxoNF+d33RfRzNGpnKiI=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iPOfT-008J9g-Rn
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 10:24:06 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x9TANhUn022126
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Tue, 29 Oct 2019 03:23:43 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 29 Oct
 2019 03:23:43 -0700
To: Jon Maloy <jon.maloy@ericsson.com>, Jon Maloy <maloy@donjonn.com>
References: <1571817191-20282-1-git-send-email-jon.maloy@ericsson.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA51534@ALA-MBD.corp.ad.wrs.com>
 <CH2PR15MB357517869AAE9937DD7B00B59A6A0@CH2PR15MB3575.namprd15.prod.outlook.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <7b6edd35-5a6d-2fc4-b038-eaa3794f5834@windriver.com>
Date: Tue, 29 Oct 2019 18:11:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CH2PR15MB357517869AAE9937DD7B00B59A6A0@CH2PR15MB3575.namprd15.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iPOfT-008J9g-Rn
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: add smart nagle
 feature
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 10/25/19 12:28 AM, Jon Maloy wrote:
> 1) TIPC_NODELAY might be a good option, although I fear people might misuse it in the belief that TIPC nagle has the same disadvantages as TCP nagle, which it doesn't.
> But ok, I'll add it.
> 
> 2) CONN_PROBE/CONN_PROBE_REPLY are not considered simply because they are so rare (once per hour) that they won't make any difference.
> 
> 3) We don't really have any tools to measure this. The latency measurement in our benchmark tool never trigs nagle mode, so we won't notice any difference.
>      When nagle is enabled, we can only measure latency per direction, not round-trip delay (since there is no return message), but logically it works as follows:
> 
> Scenario 1: 
>      1) Socket goes to nagle mode. The message trigging this is not bundled, but just sent out with the 'response_req' bit set.
>      2) A number of messages and possible skbs are added to the queue.
>      3) The ACK_MSG (response on msg 1) arrives after 1 RTT, and the accumulated messages are sent. So, the first message, probably added just after the 'resp-req' message was sent might have a delay of up to one RTT. The remaining messages in the queue will have a lower delay, and notably a message added just before the ACK_MSG arrives will have almost no delay.
> 
> Scenario 2:
>      1) Socket is in nagle mode, and a number of messages are being accumulated. The last message in the queue always have the resp_req bit set.
>      2) The queue surpasses 64 k, or a larger message than 'maxnagle'is being sent. So the whole send queue is sent out. 
>      3) Obviously we didn't wait for the expected MSG_ACK in this case, so the delay for all messages is less than 1 RTT.
> 
> Remains to know the size of RTT, but in the type of clusters we are running this is rarely more than a few milliseconds, at most. This in contrast to TCP, where the delay may be several hundred milliseconds.
> 

Thank you for your clear explanation. It makes me fully understood why
you stated the delay was no more than one RTT after nagle was enabled.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
