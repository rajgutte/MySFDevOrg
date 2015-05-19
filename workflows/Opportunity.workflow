<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>OppDiscApprovalNotificationEmail</fullName>
        <description>OppDiscApprovalNotificationEmail</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/FebCampaignMassEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>DiscountApprovedUpdate</fullName>
        <field>Discount_Approved__c</field>
        <literalValue>1</literalValue>
        <name>DiscountApprovedUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
